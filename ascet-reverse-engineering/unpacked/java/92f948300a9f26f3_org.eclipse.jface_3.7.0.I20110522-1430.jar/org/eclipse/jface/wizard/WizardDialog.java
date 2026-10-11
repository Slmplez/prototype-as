/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.wizard;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.ControlEnableState;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IMessageProvider;
import org.eclipse.jface.dialogs.IPageChangeProvider;
import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.IPageChangingListener;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.jface.dialogs.PageChangingEvent;
import org.eclipse.jface.dialogs.TitleAreaDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.operation.ModalContext;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardContainer2;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.ProgressMonitorPart;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;

public class WizardDialog
extends TitleAreaDialog
implements IWizardContainer2,
IPageChangeProvider {
    public static final String WIZ_IMG_ERROR = "dialog_title_error_image";
    private IWizard wizard;
    private ArrayList createdWizards = new ArrayList();
    private ArrayList nestedWizards = new ArrayList();
    private IWizardPage currentPage = null;
    private long activeRunningOperations = 0L;
    private long timeWhenLastJobFinished = -1L;
    private boolean useCustomProgressMonitorPart = true;
    private String pageMessage;
    private int pageMessageType = 0;
    private String pageDescription;
    private ProgressMonitorPart progressMonitorPart;
    private Cursor waitCursor;
    private Cursor arrowCursor;
    private MessageDialog windowClosingDialog;
    private Button backButton;
    private Button nextButton;
    private Button finishButton;
    private Button cancelButton;
    private Button helpButton;
    private SelectionAdapter cancelListener;
    private boolean isMovingToPreviousPage = false;
    private Composite pageContainer;
    private PageContainerFillLayout pageContainerLayout = new PageContainerFillLayout(5, 5, 300, 225);
    private int pageWidth = -1;
    private int pageHeight = -1;
    private static final String FOCUS_CONTROL = "focusControl";
    private static final int RESTORE_ENTER_DELAY = 500;
    private boolean lockedUI = false;
    private ListenerList pageChangedListeners = new ListenerList();
    private ListenerList pageChangingListeners = new ListenerList();

    public WizardDialog(Shell parentShell, IWizard newWizard) {
        super(parentShell);
        this.setShellStyle(0x10C70 | WizardDialog.getDefaultOrientation());
        this.setWizard(newWizard);
        this.cancelListener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WizardDialog.this.cancelPressed();
            }
        };
    }

    private Object aboutToStart(boolean enableCancelButton) {
        Map savedState = null;
        if (this.getShell() != null) {
            Control focusControl = this.getShell().getDisplay().getFocusControl();
            if (focusControl != null && focusControl.getShell() != this.getShell()) {
                focusControl = null;
            }
            boolean needsProgressMonitor = this.wizard.needsProgressMonitor();
            Display d = this.getShell().getDisplay();
            this.waitCursor = new Cursor((Device)d, 1);
            this.setDisplayCursor(this.waitCursor);
            if (this.useCustomProgressMonitorPart) {
                this.cancelButton.removeSelectionListener((SelectionListener)this.cancelListener);
                this.arrowCursor = new Cursor((Device)d, 0);
                this.cancelButton.setCursor(this.arrowCursor);
            }
            savedState = this.saveUIState(this.useCustomProgressMonitorPart && needsProgressMonitor && enableCancelButton);
            if (focusControl != null) {
                savedState.put(FOCUS_CONTROL, focusControl);
            }
            if (needsProgressMonitor) {
                if (enableCancelButton || this.useCustomProgressMonitorPart) {
                    this.progressMonitorPart.attachToCancelComponent((Control)this.cancelButton);
                }
                this.progressMonitorPart.setVisible(true);
            }
            if (this.timeWhenLastJobFinished == -1L) {
                this.timeWhenLastJobFinished = 0L;
                this.getShell().addTraverseListener(new TraverseListener(){

                    public void keyTraversed(TraverseEvent e) {
                        if (e.detail == 4 || e.detail == 128 && e.keyCode == 32) {
                            if (WizardDialog.this.timeWhenLastJobFinished != 0L && System.currentTimeMillis() - WizardDialog.this.timeWhenLastJobFinished < 500L) {
                                e.doit = false;
                                return;
                            }
                            WizardDialog.this.timeWhenLastJobFinished = 0L;
                        }
                    }
                });
            }
        }
        return savedState;
    }

    protected void backPressed() {
        IWizardPage page = this.currentPage.getPreviousPage();
        if (page == null) {
            return;
        }
        this.isMovingToPreviousPage = true;
        this.showPage(page);
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 17: {
                this.helpPressed();
                break;
            }
            case 14: {
                this.backPressed();
                break;
            }
            case 15: {
                this.nextPressed();
                break;
            }
            case 16: {
                this.finishPressed();
            }
        }
    }

    private Point calculatePageSizeDelta(IWizardPage page) {
        Control pageControl = page.getControl();
        if (pageControl == null) {
            return new Point(0, 0);
        }
        Point contentSize = pageControl.computeSize(-1, -1, true);
        Rectangle rect = this.pageContainerLayout.getClientArea(this.pageContainer);
        Point containerSize = new Point(rect.width, rect.height);
        return new Point(Math.max(0, contentSize.x - containerSize.x), Math.max(0, contentSize.y - containerSize.y));
    }

    protected void cancelPressed() {
        if (this.activeRunningOperations <= 0L) {
            this.setReturnCode(1);
            this.close();
        } else {
            this.cancelButton.setEnabled(false);
        }
    }

    public boolean close() {
        if (this.okToClose()) {
            return this.hardClose();
        }
        return false;
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.addHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent event) {
                if (WizardDialog.this.currentPage != null) {
                    WizardDialog.this.currentPage.performHelp();
                }
            }
        });
    }

    protected void createButtonsForButtonBar(Composite parent) {
        ((GridLayout)parent.getLayout()).makeColumnsEqualWidth = false;
        if (this.wizard.isHelpAvailable()) {
            this.helpButton = this.createButton(parent, 17, IDialogConstants.HELP_LABEL, false);
        }
        if (this.wizard.needsPreviousAndNextButtons()) {
            this.createPreviousAndNextButtons(parent);
        }
        this.finishButton = this.createButton(parent, 16, IDialogConstants.FINISH_LABEL, true);
        this.cancelButton = this.createCancelButton(parent);
        if (parent.getDisplay().getDismissalAlignment() == 131072) {
            this.finishButton.moveBelow(null);
        }
    }

    protected void setButtonLayoutData(Button button) {
        GridData data = new GridData(256);
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        widthHint = Math.min(widthHint, button.getDisplay().getBounds().width / 5);
        Point minSize = button.computeSize(-1, -1, true);
        data.widthHint = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
    }

    private Button createCancelButton(Composite parent) {
        ++((GridLayout)parent.getLayout()).numColumns;
        Button button = new Button(parent, 8);
        button.setText(IDialogConstants.CANCEL_LABEL);
        this.setButtonLayoutData(button);
        button.setFont(parent.getFont());
        button.setData((Object)new Integer(1));
        button.addSelectionListener((SelectionListener)this.cancelListener);
        return button;
    }

    protected Button getButton(int id) {
        if (id == 1) {
            return this.cancelButton;
        }
        return super.getButton(id);
    }

    protected Control createContents(Composite parent) {
        this.wizard.addPages();
        Control contents = super.createContents(parent);
        this.createPageControls();
        this.showStartingPage();
        return contents;
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        this.pageContainer = this.createPageContainer(composite);
        GridData gd = new GridData(1808);
        gd.widthHint = this.pageWidth;
        gd.heightHint = this.pageHeight;
        this.pageContainer.setLayoutData((Object)gd);
        this.pageContainer.setFont(parent.getFont());
        this.progressMonitorPart = this.createProgressMonitorPart(composite, new GridLayout());
        GridData gridData = new GridData(768);
        this.progressMonitorPart.setLayoutData(gridData);
        this.progressMonitorPart.setVisible(false);
        Label separator = new Label(composite, 258);
        separator.setLayoutData((Object)new GridData(768));
        WizardDialog.applyDialogFont((Control)this.progressMonitorPart);
        return composite;
    }

    protected ProgressMonitorPart createProgressMonitorPart(Composite composite, GridLayout pmlayout) {
        this.useCustomProgressMonitorPart = false;
        return new ProgressMonitorPart(composite, (Layout)pmlayout, true){
            String currentTask = null;

            public void setBlocked(IStatus reason) {
                super.setBlocked(reason);
                if (!WizardDialog.this.lockedUI) {
                    WizardDialog.getBlockedHandler().showBlocked(this.getShell(), (IProgressMonitor)this, reason, this.currentTask);
                }
            }

            public void clearBlocked() {
                super.clearBlocked();
                if (!WizardDialog.this.lockedUI) {
                    WizardDialog.getBlockedHandler().clearBlocked();
                }
            }

            public void beginTask(String name, int totalWork) {
                super.beginTask(name, totalWork);
                this.currentTask = name;
            }

            public void setTaskName(String name) {
                super.setTaskName(name);
                this.currentTask = name;
            }

            public void subTask(String name) {
                super.subTask(name);
                if (this.currentTask == null) {
                    this.currentTask = name;
                }
            }
        };
    }

    private Composite createPageContainer(Composite parent) {
        Composite result = new Composite(parent, 0);
        result.setLayout((Layout)this.pageContainerLayout);
        return result;
    }

    private void createPageControls() {
        this.wizard.createPageControls(this.pageContainer);
        IWizardPage[] pages = this.wizard.getPages();
        int i = 0;
        while (i < pages.length) {
            IWizardPage page = pages[i];
            if (page.getControl() != null) {
                page.getControl().setVisible(false);
            }
            ++i;
        }
    }

    private Composite createPreviousAndNextButtons(Composite parent) {
        ++((GridLayout)parent.getLayout()).numColumns;
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 0;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = 0;
        layout.verticalSpacing = 0;
        composite.setLayout((Layout)layout);
        GridData data = new GridData(68);
        composite.setLayoutData((Object)data);
        composite.setFont(parent.getFont());
        this.backButton = this.createButton(composite, 14, IDialogConstants.BACK_LABEL, false);
        this.nextButton = this.createButton(composite, 15, IDialogConstants.NEXT_LABEL, false);
        final String backReaderText = IDialogConstants.BACK_LABEL.replace('<', ' ');
        this.backButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = backReaderText;
            }
        });
        final String nextReaderText = IDialogConstants.NEXT_LABEL.replace('>', ' ');
        this.nextButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = nextReaderText;
            }
        });
        return composite;
    }

    private MessageDialog createWizardClosingDialog() {
        MessageDialog result = new MessageDialog(this.getShell(), JFaceResources.getString("WizardClosingDialog.title"), null, JFaceResources.getString("WizardClosingDialog.message"), 3, new String[]{IDialogConstants.OK_LABEL}, 0){

            protected int getShellStyle() {
                return super.getShellStyle() | 0x10000000;
            }
        };
        return result;
    }

    protected void finishPressed() {
        if (this.wizard.performFinish()) {
            int i = 0;
            while (i < this.nestedWizards.size() - 1) {
                ((IWizard)this.nestedWizards.get(i)).performFinish();
                ++i;
            }
            this.setReturnCode(0);
            this.hardClose();
        }
    }

    public IWizardPage getCurrentPage() {
        return this.currentPage;
    }

    protected IProgressMonitor getProgressMonitor() {
        return this.progressMonitorPart;
    }

    protected IWizard getWizard() {
        return this.wizard;
    }

    private boolean hardClose() {
        int i = 0;
        while (i < this.createdWizards.size()) {
            IWizard createdWizard = (IWizard)this.createdWizards.get(i);
            try {
                createdWizard.dispose();
            }
            catch (Exception e) {
                Status status = new Status(4, "org.eclipse.jface", 4, e.getMessage(), (Throwable)e);
                Policy.getLog().log((IStatus)status);
            }
            createdWizard.setContainer(null);
            ++i;
        }
        this.setTitleImage(null);
        return super.close();
    }

    protected void helpPressed() {
        if (this.currentPage != null) {
            this.currentPage.performHelp();
        }
    }

    protected void nextPressed() {
        IWizardPage page = this.currentPage.getNextPage();
        if (page == null) {
            return;
        }
        this.showPage(page);
    }

    private boolean doPageChanging(IWizardPage targetPage) {
        PageChangingEvent e = new PageChangingEvent(this, this.getCurrentPage(), targetPage);
        this.firePageChanging(e);
        return e.doit;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private boolean okToClose() {
        if (this.activeRunningOperations > 0L) {
            WizardDialog wizardDialog = this;
            synchronized (wizardDialog) {
                this.windowClosingDialog = this.createWizardClosingDialog();
            }
            this.windowClosingDialog.open();
            wizardDialog = this;
            synchronized (wizardDialog) {
                this.windowClosingDialog = null;
            }
            return false;
        }
        return this.wizard.performCancel();
    }

    private void restoreEnableState(Control w, Map h, String key) {
        Boolean b;
        if (w != null && (b = (Boolean)h.get(key)) != null) {
            w.setEnabled(b.booleanValue());
        }
    }

    private void restoreUIState(Map state) {
        this.restoreEnableState((Control)this.backButton, state, "back");
        this.restoreEnableState((Control)this.nextButton, state, "next");
        this.restoreEnableState((Control)this.finishButton, state, "finish");
        this.restoreEnableState((Control)this.cancelButton, state, "cancel");
        this.restoreEnableState((Control)this.helpButton, state, "help");
        Object pageValue = state.get("page");
        if (pageValue != null) {
            ((ControlEnableState)pageValue).restore();
        }
    }

    public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        Object state = null;
        if (this.activeRunningOperations == 0L) {
            state = this.aboutToStart(fork && cancelable);
        }
        ++this.activeRunningOperations;
        try {
            if (!fork) {
                this.lockedUI = true;
            }
            ModalContext.run(runnable, fork, this.getProgressMonitor(), this.getShell().getDisplay());
            this.lockedUI = false;
        }
        finally {
            if (this.getProgressMonitor() != null) {
                this.getProgressMonitor().done();
            }
            if (state != null) {
                this.timeWhenLastJobFinished = System.currentTimeMillis();
                this.stopped(state);
            }
            --this.activeRunningOperations;
        }
    }

    private void saveEnableStateAndSet(Control w, Map h, String key, boolean enabled) {
        if (w != null) {
            h.put(key, w.getEnabled() ? Boolean.TRUE : Boolean.FALSE);
            w.setEnabled(enabled);
        }
    }

    private Map saveUIState(boolean keepCancelEnabled) {
        HashMap<String, ControlEnableState> savedState = new HashMap<String, ControlEnableState>(10);
        this.saveEnableStateAndSet((Control)this.backButton, savedState, "back", false);
        this.saveEnableStateAndSet((Control)this.nextButton, savedState, "next", false);
        this.saveEnableStateAndSet((Control)this.finishButton, savedState, "finish", false);
        this.saveEnableStateAndSet((Control)this.cancelButton, savedState, "cancel", keepCancelEnabled);
        this.saveEnableStateAndSet((Control)this.helpButton, savedState, "help", false);
        if (this.currentPage != null) {
            savedState.put("page", ControlEnableState.disable(this.currentPage.getControl()));
        }
        return savedState;
    }

    private void setDisplayCursor(Cursor c) {
        Shell[] shells = this.getShell().getDisplay().getShells();
        int i = 0;
        while (i < shells.length) {
            shells[i].setCursor(c);
            ++i;
        }
    }

    public void setMinimumPageSize(int minWidth, int minHeight) {
        Assert.isTrue((minWidth >= 0 && minHeight >= 0 ? 1 : 0) != 0);
        this.pageContainerLayout.minimumWidth = minWidth;
        this.pageContainerLayout.minimumHeight = minHeight;
    }

    public void setMinimumPageSize(Point size) {
        this.setMinimumPageSize(size.x, size.y);
    }

    public void setPageSize(int width, int height) {
        this.pageWidth = width;
        this.pageHeight = height;
    }

    public void setPageSize(Point size) {
        this.setPageSize(size.x, size.y);
    }

    protected void setWizard(IWizard newWizard) {
        this.wizard = newWizard;
        this.wizard.setContainer(this);
        if (!this.createdWizards.contains(this.wizard)) {
            this.createdWizards.add(this.wizard);
            this.nestedWizards.add(this.wizard);
            if (this.pageContainer != null) {
                this.createPageControls();
                this.updateSizeForWizard(this.wizard);
                this.pageContainer.layout(true);
            }
        } else {
            int size = this.nestedWizards.size();
            if (size >= 2 && this.nestedWizards.get(size - 2) == this.wizard) {
                this.nestedWizards.remove(size - 1);
            } else {
                this.nestedWizards.add(this.wizard);
            }
        }
    }

    public void showPage(IWizardPage page) {
        if (page == null || page == this.currentPage) {
            return;
        }
        if (!this.isMovingToPreviousPage) {
            page.setPreviousPage(this.currentPage);
        } else {
            this.isMovingToPreviousPage = false;
        }
        if (!this.doPageChanging(page)) {
            return;
        }
        if (this.getContents() == null) {
            this.updateForPage(page);
        } else {
            final IWizardPage finalPage = page;
            BusyIndicator.showWhile((Display)this.getContents().getDisplay(), (Runnable)new Runnable(){

                public void run() {
                    WizardDialog.this.updateForPage(finalPage);
                }
            });
        }
    }

    private void updateForPage(IWizardPage page) {
        if (this.wizard != page.getWizard()) {
            this.setWizard(page.getWizard());
        }
        if (page.getControl() == null) {
            page.createControl(this.pageContainer);
            Assert.isNotNull((Object)page.getControl(), (String)JFaceResources.format(JFaceResources.getString("WizardDialog.missingSetControl"), new Object[]{page.getName()}));
            this.updateSize(page);
        }
        IWizardPage oldPage = this.currentPage;
        this.currentPage = page;
        this.currentPage.setVisible(true);
        if (oldPage != null) {
            oldPage.setVisible(false);
        }
        this.update();
    }

    private void showStartingPage() {
        this.currentPage = this.wizard.getStartingPage();
        if (this.currentPage == null) {
            return;
        }
        if (this.currentPage.getControl() == null) {
            this.currentPage.createControl(this.pageContainer);
            Assert.isNotNull((Object)this.currentPage.getControl());
        }
        this.currentPage.setVisible(true);
        this.update();
    }

    private void stopped(Object savedState) {
        if (this.getShell() != null && !this.getShell().isDisposed()) {
            if (this.wizard.needsProgressMonitor()) {
                this.progressMonitorPart.setVisible(false);
                this.progressMonitorPart.removeFromCancelComponent((Control)this.cancelButton);
            }
            Map state = (Map)savedState;
            this.restoreUIState(state);
            this.setDisplayCursor(null);
            if (this.useCustomProgressMonitorPart) {
                this.cancelButton.addSelectionListener((SelectionListener)this.cancelListener);
                this.cancelButton.setCursor(null);
                this.arrowCursor.dispose();
                this.arrowCursor = null;
            }
            this.waitCursor.dispose();
            this.waitCursor = null;
            Control focusControl = (Control)state.get(FOCUS_CONTROL);
            if (focusControl != null && !focusControl.isDisposed()) {
                focusControl.setFocus();
            }
        }
    }

    protected void update() {
        this.updateWindowTitle();
        this.updateTitleBar();
        this.updateButtons();
        this.firePageChanged(new PageChangedEvent(this, this.getCurrentPage()));
    }

    public void updateButtons() {
        boolean canFlipToNextPage = false;
        boolean canFinish = this.wizard.canFinish();
        if (this.backButton != null) {
            this.backButton.setEnabled(this.currentPage.getPreviousPage() != null);
        }
        if (this.nextButton != null) {
            canFlipToNextPage = this.currentPage.canFlipToNextPage();
            this.nextButton.setEnabled(canFlipToNextPage);
        }
        this.finishButton.setEnabled(canFinish);
        if (canFlipToNextPage && !canFinish) {
            this.getShell().setDefaultButton(this.nextButton);
        } else {
            this.getShell().setDefaultButton(this.finishButton);
        }
    }

    private void updateDescriptionMessage() {
        this.pageDescription = this.currentPage.getDescription();
        this.setMessage(this.pageDescription);
    }

    public void updateMessage() {
        if (this.currentPage == null) {
            return;
        }
        this.pageMessage = this.currentPage.getMessage();
        this.pageMessageType = this.pageMessage != null && this.currentPage instanceof IMessageProvider ? ((IMessageProvider)((Object)this.currentPage)).getMessageType() : 0;
        if (this.pageMessage == null) {
            this.setMessage(this.pageDescription);
        } else {
            this.setMessage(this.pageMessage, this.pageMessageType);
        }
        this.setErrorMessage(this.currentPage.getErrorMessage());
    }

    private void setShellSize(int width, int height) {
        Rectangle size = this.getShell().getBounds();
        size.height = height;
        size.width = width;
        this.getShell().setBounds(this.getConstrainedShellBounds(size));
    }

    protected void updateSize(IWizardPage page) {
        if (page == null || page.getControl() == null) {
            return;
        }
        this.updateSizeForPage(page);
        this.pageContainerLayout.layoutPage(page.getControl());
    }

    public void updateSize() {
        this.updateSize(this.currentPage);
    }

    private void updateSizeForPage(IWizardPage page) {
        Point delta = this.calculatePageSizeDelta(page);
        if (delta.x > 0 || delta.y > 0) {
            Shell shell = this.getShell();
            Point shellSize = shell.getSize();
            this.setShellSize(shellSize.x + delta.x, shellSize.y + delta.y);
            this.constrainShellSize();
        }
    }

    private void updateSizeForWizard(IWizard sizingWizard) {
        Point delta = new Point(0, 0);
        IWizardPage[] pages = sizingWizard.getPages();
        int i = 0;
        while (i < pages.length) {
            Point pageDelta = this.calculatePageSizeDelta(pages[i]);
            delta.x = Math.max(delta.x, pageDelta.x);
            delta.y = Math.max(delta.y, pageDelta.y);
            ++i;
        }
        if (delta.x > 0 || delta.y > 0) {
            Shell shell = this.getShell();
            Point shellSize = shell.getSize();
            this.setShellSize(shellSize.x + delta.x, shellSize.y + delta.y);
        }
    }

    public void updateTitleBar() {
        String s = null;
        if (this.currentPage != null) {
            s = this.currentPage.getTitle();
        }
        if (s == null) {
            s = "";
        }
        this.setTitle(s);
        if (this.currentPage != null) {
            this.setTitleImage(this.currentPage.getImage());
            this.updateDescriptionMessage();
        }
        this.updateMessage();
    }

    public void updateWindowTitle() {
        if (this.getShell() == null) {
            return;
        }
        String title = this.wizard.getWindowTitle();
        if (title == null) {
            title = "";
        }
        this.getShell().setText(title);
    }

    public Object getSelectedPage() {
        return this.getCurrentPage();
    }

    public void addPageChangedListener(IPageChangedListener listener) {
        this.pageChangedListeners.add((Object)listener);
    }

    public void removePageChangedListener(IPageChangedListener listener) {
        this.pageChangedListeners.remove((Object)listener);
    }

    protected void firePageChanged(final PageChangedEvent event) {
        Object[] listeners = this.pageChangedListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IPageChangedListener l = (IPageChangedListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.pageChanged(event);
                }
            });
            ++i;
        }
    }

    public void addPageChangingListener(IPageChangingListener listener) {
        this.pageChangingListeners.add((Object)listener);
    }

    public void removePageChangingListener(IPageChangingListener listener) {
        this.pageChangingListeners.remove((Object)listener);
    }

    protected void firePageChanging(final PageChangingEvent event) {
        Object[] listeners = this.pageChangingListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IPageChangingListener l = (IPageChangingListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.handlePageChanging(event);
                }
            });
            ++i;
        }
    }

    protected class PageContainerFillLayout
    extends Layout {
        public int marginWidth = 5;
        public int marginHeight = 5;
        public int minimumWidth = 0;
        public int minimumHeight = 0;

        public PageContainerFillLayout(int mw, int mh, int minW, int minH) {
            this.marginWidth = mw;
            this.marginHeight = mh;
            this.minimumWidth = minW;
            this.minimumHeight = minH;
        }

        public Point computeSize(Composite composite, int wHint, int hHint, boolean force) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Point result = null;
            Control[] children = composite.getChildren();
            if (children.length > 0) {
                result = new Point(0, 0);
                int i = 0;
                while (i < children.length) {
                    Point cp = children[i].computeSize(wHint, hHint, force);
                    result.x = Math.max(result.x, cp.x);
                    result.y = Math.max(result.y, cp.y);
                    ++i;
                }
                result.x += 2 * this.marginWidth;
                result.y += 2 * this.marginHeight;
            } else {
                Rectangle rect = composite.getClientArea();
                result = new Point(rect.width, rect.height);
            }
            result.x = Math.max(result.x, this.minimumWidth);
            result.y = Math.max(result.y, this.minimumHeight);
            if (wHint != -1) {
                result.x = wHint;
            }
            if (hHint != -1) {
                result.y = hHint;
            }
            return result;
        }

        public Rectangle getClientArea(Composite c) {
            Rectangle rect = c.getClientArea();
            rect.x += this.marginWidth;
            rect.y += this.marginHeight;
            rect.width -= 2 * this.marginWidth;
            rect.height -= 2 * this.marginHeight;
            return rect;
        }

        public void layout(Composite composite, boolean force) {
            Rectangle rect = this.getClientArea(composite);
            Control[] children = composite.getChildren();
            int i = 0;
            while (i < children.length) {
                children[i].setBounds(rect);
                ++i;
            }
        }

        public void layoutPage(Control w) {
            w.setBounds(this.getClientArea(w.getParent()));
        }

        public void setPageLocation(Control w) {
            w.setLocation(this.marginWidth, this.marginHeight);
        }
    }
}

