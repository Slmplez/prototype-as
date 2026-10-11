/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.DialogTray
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialogWithToggle
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Link
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.DialogTray;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialogWithToggle;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Link;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.statushandlers.DetailsAreaManager;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.internal.statushandlers.LabelProviderWrapper;
import org.eclipse.ui.internal.statushandlers.SupportTray;
import org.eclipse.ui.internal.statushandlers.WorkbenchStatusDialogManagerImpl;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.views.IViewDescriptor;

public class InternalDialog
extends TrayDialog {
    static final int GOTO_ACTION_ID = 1025;
    static final String LOG_VIEW_ID = "org.eclipse.pde.runtime.LogView";
    static final String PREF_SKIP_GOTO_ACTION_PROMPT = "pref_skip_goto_action_prompt";
    private Composite dialogArea;
    private Composite listArea;
    private Composite singleStatusDisplayArea;
    private Label singleStatusLabel;
    private TableViewer statusListViewer;
    private Composite linkComposite;
    private Link launchTrayLink;
    private Link showErrorLogLink;
    private Label titleImageLabel;
    private Label mainMessageLabel;
    private Composite titleArea;
    private SupportTray supportTray;
    private DetailsAreaManager detailsManager;
    private Map dialogState;
    static /* synthetic */ Class class$0;

    public InternalDialog(final Map dialogState, boolean modal) {
        super(ProgressManagerUtil.getDefaultParent());
        this.dialogState = dialogState;
        this.supportTray = new SupportTray(dialogState, new Listener(){

            public void handleEvent(Event event) {
                dialogState.put(IStatusDialogConstants.TRAY_OPENED, Boolean.FALSE);
                InternalDialog.this.closeTray();
                InternalDialog.this.getShell().setFocus();
            }
        });
        this.detailsManager = new DetailsAreaManager(dialogState);
        this.setShellStyle(0x490 | this.getShellStyle());
        this.setBlockOnOpen(false);
        if (!modal) {
            this.setShellStyle(0xFFFEFFFF & this.getShellStyle());
        }
    }

    protected void buttonPressed(int id) {
        IAction gotoAction;
        if (id == 1025 && (gotoAction = this.getGotoAction()) != null && this.isPromptToClose()) {
            this.okPressed();
            gotoAction.run();
        }
        if (id == 13) {
            this.dialogState.put(IStatusDialogConstants.DETAILS_OPENED, new Boolean(this.toggleDetailsArea()));
        } else {
            super.buttonPressed(id);
        }
    }

    protected final void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(this.getString(IStatusDialogConstants.TITLE));
    }

    protected void setButtonLayoutData(Button button) {
        GridData data = new GridData(0x1000008, 0x1000000, false, false);
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        Point minSize = button.computeSize(-1, -1, true);
        data.widthHint = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
    }

    protected Control createDialogArea(Composite parent) {
        this.createTitleArea(parent);
        this.createListArea(parent);
        this.dialogArea = parent;
        Dialog.applyDialogFont((Control)this.dialogArea);
        return parent;
    }

    protected boolean isResizable() {
        return true;
    }

    private void createTitleArea(Composite parent) {
        this.titleArea = new Composite(parent, 0);
        this.titleArea.setLayoutData((Object)new GridData(4, 4, true, false));
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.horizontalSpacing = 10;
        layout.marginLeft = 10;
        layout.marginTop = 10;
        layout.marginBottom = 0;
        this.titleArea.setLayout((Layout)layout);
        this.titleImageLabel = new Label(this.titleArea, 0);
        this.titleImageLabel.setImage(this.getLabelProviderWrapper().getImage(this.getCurrentStatusAdapter()));
        GridData layoutData = new GridData();
        layoutData.verticalSpan = 2;
        layoutData.verticalAlignment = 128;
        this.titleImageLabel.setLayoutData((Object)layoutData);
        GridData messageData = new GridData(4, 4, true, true);
        messageData.widthHint = this.convertWidthInCharsToPixels(50);
        this.mainMessageLabel = new Label(this.titleArea, 64);
        this.mainMessageLabel.setLayoutData((Object)messageData);
        this.mainMessageLabel.setText(this.getLabelProviderWrapper().getMainMessage(this.getCurrentStatusAdapter()));
        if (!this.isMulti()) {
            this.singleStatusDisplayArea = this.createSingleStatusDisplayArea(this.titleArea);
        }
    }

    private void createListArea(Composite parent) {
        this.listArea = new Composite(parent, 0);
        GridData layoutData = new GridData(4, 4, true, true);
        layoutData.heightHint = 0;
        layoutData.widthHint = 0;
        this.listArea.setLayoutData((Object)layoutData);
        GridLayout layout = new GridLayout();
        this.listArea.setLayout((Layout)layout);
        if (this.isMulti()) {
            this.fillListArea(this.listArea);
        }
    }

    public boolean isModal() {
        return (this.getShellStyle() & 0x10000) == 65536;
    }

    public SupportTray getSupportTray() {
        return this.supportTray;
    }

    public void setSupportTray(SupportTray supportTray) {
        this.supportTray = supportTray;
    }

    public int open() {
        boolean modalitySwitch = this.getBooleanValue(IStatusDialogConstants.MODALITY_SWITCH);
        int result = super.open();
        if (modalitySwitch) {
            if (this.getBooleanValue(IStatusDialogConstants.DETAILS_OPENED)) {
                this.showDetailsArea();
            }
            if (this.getBooleanValue(IStatusDialogConstants.TRAY_OPENED)) {
                this.openTray();
            }
        } else if (this.getBooleanValue(IStatusDialogConstants.ANIMATION)) {
            Rectangle shellPosition = this.getShell().getBounds();
            ProgressManagerUtil.animateUp(shellPosition);
        }
        return result;
    }

    public void closeTray() throws IllegalStateException {
        if (this.getTray() != null) {
            super.closeTray();
        }
        if (!this.getBooleanValue(IStatusDialogConstants.MODALITY_SWITCH)) {
            this.dialogState.put(IStatusDialogConstants.TRAY_OPENED, Boolean.FALSE);
        }
        if (this.launchTrayLink != null && !this.launchTrayLink.isDisposed()) {
            this.launchTrayLink.setEnabled(this.providesSupport() && !this.getBooleanValue(IStatusDialogConstants.TRAY_OPENED));
        }
    }

    void refresh() {
        if (this.dialogArea == null || this.dialogArea.isDisposed()) {
            return;
        }
        this.updateTitleArea();
        this.updateListArea();
        this.updateEnablements();
        Point currentSize = this.getShell().getSize();
        Point desiredSize = this.getShell().computeSize(-1, -1);
        if (currentSize.x < desiredSize.x) {
            this.getShell().setSize(desiredSize.x, currentSize.y);
        } else {
            this.getShell().layout();
        }
    }

    void refreshDialogSize() {
        Point newSize = this.getShell().computeSize(-1, -1);
        this.getShell().setSize(newSize);
    }

    private void showDetailsArea() {
        if (this.dialogArea != null && !this.dialogArea.isDisposed()) {
            if (this.detailsManager.isOpen()) {
                this.detailsManager.close();
                this.detailsManager.createDetailsArea(this.dialogArea, this.getCurrentStatusAdapter());
                this.dialogState.put(IStatusDialogConstants.DETAILS_OPENED, Boolean.TRUE);
            } else {
                this.toggleDetailsArea();
                this.dialogState.put(IStatusDialogConstants.DETAILS_OPENED, Boolean.TRUE);
            }
            this.dialogArea.layout();
        }
    }

    private boolean toggleDetailsArea() {
        boolean opened = false;
        Point windowSize = this.getShell().getSize();
        if (this.detailsManager.isOpen()) {
            this.detailsManager.close();
            this.getButton(13).setText(IDialogConstants.SHOW_DETAILS_LABEL);
            opened = false;
        } else {
            this.detailsManager.createDetailsArea(this.dialogArea, this.getCurrentStatusAdapter());
            this.getButton(13).setText(IDialogConstants.HIDE_DETAILS_LABEL);
            opened = true;
        }
        GridData listAreaGridData = (GridData)this.listArea.getLayoutData();
        if (!this.isMulti()) {
            listAreaGridData.heightHint = 0;
        }
        listAreaGridData.grabExcessVerticalSpace = !opened;
        this.listArea.setLayoutData((Object)listAreaGridData);
        Point newSize = this.getShell().computeSize(-1, -1);
        int diffY = newSize.y - windowSize.y;
        if (opened && diffY > 0 || !opened && diffY < 0) {
            this.getShell().setSize(new Point(windowSize.x, windowSize.y + diffY));
        }
        this.dialogArea.layout();
        return opened;
    }

    protected void initializeBounds() {
        super.initializeBounds();
        this.refreshDialogSize();
        boolean modalitySwitch = this.getBooleanValue(IStatusDialogConstants.MODALITY_SWITCH);
        if (modalitySwitch) {
            this.getShell().setBounds(this.getShellBounds());
        }
    }

    public Point getInitialLocation(Point initialSize) {
        return super.getInitialLocation(initialSize);
    }

    private void handleSelectionChange() {
        StatusAdapter newSelection = this.getSingleSelection();
        if (newSelection != null) {
            this.dialogState.put(IStatusDialogConstants.CURRENT_STATUS_ADAPTER, newSelection);
            this.showDetailsArea();
            this.refresh();
        }
    }

    private void fillListArea(Composite parent) {
        GridData listAreaGD = (GridData)parent.getLayoutData();
        listAreaGD.grabExcessHorizontalSpace = true;
        if (!this.detailsManager.isOpen()) {
            listAreaGD.grabExcessVerticalSpace = true;
        }
        listAreaGD.heightHint = -1;
        this.statusListViewer = new TableViewer(parent, 2820);
        this.statusListViewer.setComparator((ViewerComparator)this.getLabelProviderWrapper());
        Control control = this.statusListViewer.getControl();
        GridData data = new GridData(4, 4, true, true);
        data.heightHint = this.convertHeightInCharsToPixels(5);
        control.setLayoutData((Object)data);
        this.initContentProvider();
        this.initLabelProvider();
        this.statusListViewer.addPostSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                InternalDialog.this.handleSelectionChange();
                if (InternalDialog.this.getTray() == null && InternalDialog.this.getBooleanValue(IStatusDialogConstants.TRAY_OPENED) && InternalDialog.this.providesSupport()) {
                    InternalDialog.this.silentTrayOpen();
                    return;
                }
                if (InternalDialog.this.getTray() != null && !InternalDialog.this.providesSupport()) {
                    InternalDialog.this.silentTrayClose();
                    return;
                }
                InternalDialog.this.supportTray.selectionChanged(event);
            }
        });
        Dialog.applyDialogFont((Control)parent);
    }

    private void silentTrayClose() {
        super.closeTray();
    }

    private void silentTrayOpen() {
        if (this.getTray() == null) {
            super.openTray((DialogTray)this.supportTray);
        }
    }

    private void updateListArea() {
        if (this.isMulti()) {
            if (this.singleStatusDisplayArea != null) {
                this.singleStatusDisplayArea.dispose();
            }
            if (this.statusListViewer == null || this.statusListViewer.getControl().isDisposed()) {
                this.fillListArea(this.listArea);
                this.listArea.layout();
                this.listArea.getParent().layout();
                this.getShell().setSize(this.getShell().computeSize(-1, -1));
            }
            this.refreshStatusListArea();
        }
    }

    private void updateTitleArea() {
        Image image = this.getLabelProviderWrapper().getImage(this.getCurrentStatusAdapter());
        this.titleImageLabel.setImage(image);
        if (this.getCurrentStatusAdapter() != null) {
            this.mainMessageLabel.setText(this.getLabelProviderWrapper().getMainMessage(this.getCurrentStatusAdapter()));
        }
        if (this.singleStatusDisplayArea != null) {
            if (this.isMulti()) {
                this.singleStatusDisplayArea.dispose();
            } else {
                this.refreshSingleStatusArea();
            }
        }
        this.titleArea.layout();
    }

    protected Control createButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = this.convertHorizontalDLUsToPixels(7);
        layout.marginHeight = this.convertVerticalDLUsToPixels(7);
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(4, 4, true, false));
        this.linkComposite = this.createLinkComposite(composite);
        this.createButtonsForButtonBar(composite);
        composite.layout();
        return composite;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        IAction gotoAction = this.getGotoAction();
        String text = null;
        if (gotoAction != null) {
            text = gotoAction.getText();
        }
        Button button = this.createButton(parent, 1025, text == null ? "" : text, false);
        if (text == null) {
            this.hideButton(button, true);
        }
        this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 13, IDialogConstants.SHOW_DETAILS_LABEL, false);
    }

    private Composite createSingleStatusDisplayArea(Composite parent) {
        Composite singleStatusParent = new Composite(parent, 0);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginWidth = 0;
        singleStatusParent.setLayout((Layout)gridLayout);
        GridData gd = new GridData(4, 4, true, false);
        singleStatusParent.setLayoutData((Object)gd);
        this.singleStatusLabel = new Label(singleStatusParent, 64);
        GridData labelLayoutData = new GridData(4, 4, true, true);
        labelLayoutData.widthHint = this.convertWidthInCharsToPixels(50);
        this.singleStatusLabel.setLayoutData((Object)labelLayoutData);
        this.singleStatusLabel.setText(this.getLabelProviderWrapper().getColumnText(this.getCurrentStatusAdapter(), 0));
        this.singleStatusLabel.addMouseListener(new MouseListener(){

            public void mouseDoubleClick(MouseEvent e) {
            }

            public void mouseDown(MouseEvent e) {
                InternalDialog.this.showDetailsArea();
            }

            public void mouseUp(MouseEvent e) {
            }
        });
        return singleStatusParent;
    }

    public boolean close() {
        boolean modalitySwitch = this.getBooleanValue(IStatusDialogConstants.MODALITY_SWITCH);
        if (this.detailsManager.isOpen()) {
            this.dialogState.put(IStatusDialogConstants.DETAILS_OPENED, Boolean.TRUE);
            this.toggleDetailsArea();
        }
        if (this.getBooleanValue(IStatusDialogConstants.TRAY_OPENED)) {
            this.closeTray();
            if (modalitySwitch) {
                this.dialogState.put(IStatusDialogConstants.DETAILS_OPENED, Boolean.TRUE);
            }
        }
        this.dialogState.put(IStatusDialogConstants.SHELL_BOUNDS, this.getShell().getBounds());
        this.statusListViewer = null;
        boolean result = super.close();
        if (!modalitySwitch && this.getBooleanValue(IStatusDialogConstants.ANIMATION)) {
            ProgressManagerUtil.animateDown(this.getShellBounds());
        }
        return result;
    }

    private void hideButton(Button button, boolean hide) {
        ((GridData)button.getLayoutData()).exclude = hide;
        button.setVisible(!hide);
        button.setEnabled(!hide);
    }

    private void updateEnablements() {
        Button gotoButton;
        Button details = this.getButton(13);
        if (details != null) {
            details.setEnabled(true);
        }
        if ((gotoButton = this.getButton(1025)) != null) {
            boolean hasValidGotoAction;
            IAction gotoAction = this.getGotoAction();
            boolean bl = hasValidGotoAction = gotoAction != null && gotoAction.getText() != null;
            if (hasValidGotoAction) {
                this.hideButton(gotoButton, false);
                gotoButton.setText(gotoAction.getText());
                ((GridData)gotoButton.getLayoutData()).widthHint = gotoButton.computeSize((int)-1, (int)-1).x;
                gotoButton.getParent().layout();
            } else {
                this.hideButton(gotoButton, true);
            }
        }
        if (this.providesSupport() && !this.getBooleanValue(IStatusDialogConstants.HIDE_SUPPORT_BUTTON)) {
            if (this.launchTrayLink == null || this.launchTrayLink.isDisposed()) {
                this.launchTrayLink = this.createGetSupportLink();
            }
            this.launchTrayLink.setEnabled(!this.getBooleanValue(IStatusDialogConstants.TRAY_OPENED));
        } else if (this.launchTrayLink != null && !this.launchTrayLink.isDisposed()) {
            this.launchTrayLink.dispose();
            this.launchTrayLink = null;
        }
        IViewDescriptor descriptor = this.shouldDisplayLinkToErrorLog();
        if (descriptor != null) {
            if (this.showErrorLogLink == null || this.showErrorLogLink.isDisposed()) {
                this.showErrorLogLink = this.createShowErrorLogLink();
            }
        } else if (this.showErrorLogLink != null && !this.showErrorLogLink.isDisposed()) {
            this.showErrorLogLink.dispose();
        }
        this.linkComposite.getParent().layout();
    }

    private IViewDescriptor shouldDisplayLinkToErrorLog() {
        if (!this.getBooleanValue(IStatusDialogConstants.ERRORLOG_LINK)) {
            return null;
        }
        boolean shouldDisplay = false;
        Iterator it = ((Collection)this.dialogState.get(IStatusDialogConstants.STATUS_ADAPTERS)).iterator();
        while (it.hasNext()) {
            StatusAdapter adapter = (StatusAdapter)it.next();
            Integer hint = (Integer)adapter.getProperty(WorkbenchStatusDialogManagerImpl.HINT);
            if (hint == null || (hint & 1) == 0) continue;
            shouldDisplay |= true;
            break;
        }
        if (!shouldDisplay) {
            return null;
        }
        return Workbench.getInstance().getViewRegistry().find(LOG_VIEW_ID);
    }

    public void openTray(DialogTray tray) throws IllegalStateException, UnsupportedOperationException {
        if (this.launchTrayLink != null && !this.launchTrayLink.isDisposed()) {
            this.launchTrayLink.setEnabled(false);
        }
        if (this.providesSupport()) {
            super.openTray(tray);
        }
        this.dialogState.put(IStatusDialogConstants.TRAY_OPENED, Boolean.TRUE);
    }

    private void refreshSingleStatusArea() {
        String description = this.getLabelProviderWrapper().getColumnText(this.getCurrentStatusAdapter(), 0);
        if (description.equals(this.singleStatusLabel.getText())) {
            this.singleStatusLabel.setText(" ");
        }
        this.singleStatusLabel.setText(description);
        this.singleStatusDisplayArea.layout();
        this.getShell().setText(this.getString(IStatusDialogConstants.TITLE));
    }

    private void refreshStatusListArea() {
        if (this.statusListViewer != null && !this.statusListViewer.getControl().isDisposed()) {
            this.statusListViewer.refresh();
            if (this.statusListViewer.getTable().getItemCount() > 1) {
                this.getShell().setText(WorkbenchMessages.WorkbenchStatusDialog_MultipleProblemsHaveOccured);
            } else {
                this.getShell().setText(this.getString(IStatusDialogConstants.TITLE));
            }
        }
    }

    private void initContentProvider() {
        IStructuredContentProvider provider = new IStructuredContentProvider(){

            public void dispose() {
            }

            public Object[] getElements(Object inputElement) {
                return ((Collection)InternalDialog.this.dialogState.get(IStatusDialogConstants.STATUS_ADAPTERS)).toArray();
            }

            public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
                if (newInput != null) {
                    InternalDialog.this.refreshStatusListArea();
                }
            }
        };
        this.statusListViewer.setContentProvider((IContentProvider)provider);
        this.statusListViewer.setInput((Object)this);
        this.statusListViewer.setSelection((ISelection)new StructuredSelection((Object)this.getCurrentStatusAdapter()));
    }

    private Composite createLinkComposite(Composite parent) {
        Composite linkArea = new Composite(parent, 0){

            public Point computeSize(int wHint, int hHint, boolean changed) {
                Point newSize = super.computeSize(wHint, hHint, changed);
                if (this.getChildren().length == 0) {
                    newSize.x = 0;
                    newSize.y = 0;
                }
                return newSize;
            }
        };
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        linkArea.setLayout((Layout)layout);
        ++((GridLayout)parent.getLayout()).numColumns;
        GridData layoutData = new GridData(1, 0x1000000, true, false);
        linkArea.setLayoutData((Object)layoutData);
        return linkArea;
    }

    private Link createGetSupportLink() {
        if (!this.providesSupport() || this.getBooleanValue(IStatusDialogConstants.HIDE_SUPPORT_BUTTON)) {
            return null;
        }
        Link link = new Link(this.linkComposite, 0);
        link.setText(WorkbenchMessages.WorkbenchStatusDialog_SupportHyperlink);
        link.setToolTipText(WorkbenchMessages.WorkbenchStatusDialog_SupportTooltip);
        link.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                InternalDialog.this.openTray();
            }
        });
        Dialog.applyDialogFont((Control)link);
        return link;
    }

    private Link createShowErrorLogLink() {
        Link link = new Link(this.linkComposite, 0);
        link.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                try {
                    Workbench.getInstance().getActiveWorkbenchWindow().getActivePage().showView(InternalDialog.LOG_VIEW_ID);
                }
                catch (CoreException ce) {
                    StatusManager.getManager().handle(ce, WorkbenchPlugin.PI_WORKBENCH);
                }
            }
        });
        link.setText(WorkbenchMessages.ErrorLogUtil_ShowErrorLogHyperlink);
        link.setToolTipText(WorkbenchMessages.ErrorLogUtil_ShowErrorLogTooltip);
        Dialog.applyDialogFont((Control)link);
        return link;
    }

    private void initLabelProvider() {
        this.statusListViewer.setLabelProvider((IBaseLabelProvider)this.getLabelProviderWrapper());
    }

    private IAction getGotoAction() {
        Job job;
        Object property = null;
        StatusAdapter statusAdapter = this.getCurrentStatusAdapter();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((job = (Job)statusAdapter.getAdapter(clazz)) != null) {
            property = job.getProperty(IProgressConstants.ACTION_PROPERTY);
        }
        if (property instanceof IAction) {
            return (IAction)property;
        }
        return null;
    }

    private StatusAdapter getSingleSelection() {
        IStructuredSelection selection;
        ISelection rawSelection = this.statusListViewer.getSelection();
        if (rawSelection != null && rawSelection instanceof IStructuredSelection && (selection = (IStructuredSelection)rawSelection).size() == 1) {
            return (StatusAdapter)selection.getFirstElement();
        }
        return null;
    }

    private boolean isPromptToClose() {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        if (!store.contains(PREF_SKIP_GOTO_ACTION_PROMPT) || !store.getString(PREF_SKIP_GOTO_ACTION_PROMPT).equals("always")) {
            MessageDialogWithToggle dialog = MessageDialogWithToggle.open((int)5, (Shell)this.getShell(), (String)ProgressMessages.JobErrorDialog_CloseDialogTitle, (String)ProgressMessages.JobErrorDialog_CloseDialogMessage, (String)ProgressMessages.JobErrorDialog_DoNotShowAgainMessage, (boolean)false, (IPreferenceStore)store, (String)PREF_SKIP_GOTO_ACTION_PROMPT, (int)0x10000000);
            return dialog.getReturnCode() == 0;
        }
        return true;
    }

    public void openTray() {
        this.openTray(this.supportTray);
    }

    public boolean providesSupport() {
        return this.supportTray.providesSupport(this.getCurrentStatusAdapter()) != null;
    }

    private String getString(Object key) {
        return (String)this.dialogState.get(key);
    }

    private StatusAdapter getCurrentStatusAdapter() {
        return (StatusAdapter)this.dialogState.get(IStatusDialogConstants.CURRENT_STATUS_ADAPTER);
    }

    private boolean getBooleanValue(Object key) {
        Boolean b = (Boolean)this.dialogState.get(key);
        if (b == null) {
            return false;
        }
        return b;
    }

    private Rectangle getShellBounds() {
        return (Rectangle)this.dialogState.get(IStatusDialogConstants.SHELL_BOUNDS);
    }

    private LabelProviderWrapper getLabelProviderWrapper() {
        return (LabelProviderWrapper)((Object)this.dialogState.get(IStatusDialogConstants.LABEL_PROVIDER));
    }

    private boolean isMulti() {
        return ((Collection)this.dialogState.get(IStatusDialogConstants.STATUS_ADAPTERS)).size() > 1;
    }
}

