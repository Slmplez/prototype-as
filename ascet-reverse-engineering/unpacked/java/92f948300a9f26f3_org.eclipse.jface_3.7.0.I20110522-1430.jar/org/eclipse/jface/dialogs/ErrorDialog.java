/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ErrorSupportProvider;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IconAndMessageDialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;

public class ErrorDialog
extends IconAndMessageDialog {
    public static boolean AUTOMATED_MODE = false;
    private static final int LIST_ITEM_COUNT = 7;
    private static final String NESTING_INDENT = "  ";
    private Button detailsButton;
    private String title;
    private List list;
    private boolean listCreated = false;
    private int displayMask = 65535;
    private IStatus status;
    private Clipboard clipboard;
    private boolean shouldIncludeTopLevelErrorInDetails = false;

    public ErrorDialog(Shell parentShell, String dialogTitle, String message, IStatus status, int displayMask) {
        super(parentShell);
        this.title = dialogTitle == null ? JFaceResources.getString("Problem_Occurred") : dialogTitle;
        this.message = message == null ? status.getMessage() : JFaceResources.format("Reason", new Object[]{message, status.getMessage()});
        this.status = status;
        this.displayMask = displayMask;
    }

    protected void buttonPressed(int id) {
        if (id == 13) {
            this.toggleDetailsArea();
        } else {
            super.buttonPressed(id);
        }
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(this.title);
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createDetailsButton(parent);
    }

    private void createSupportArea(Composite parent) {
        ErrorSupportProvider provider = Policy.getErrorSupportProvider();
        if (provider == null) {
            return;
        }
        if (!provider.validFor(this.status)) {
            return;
        }
        Composite supportArea = new Composite(parent, 0);
        provider.createSupportArea(supportArea, this.status);
        GridData supportData = new GridData(4, 4, true, true);
        supportData.verticalSpan = 3;
        supportArea.setLayoutData((Object)supportData);
        if (supportArea.getLayout() == null) {
            GridLayout layout = new GridLayout();
            layout.marginWidth = 0;
            layout.marginHeight = 0;
            supportArea.setLayout((Layout)layout);
        }
    }

    protected void createDetailsButton(Composite parent) {
        if (this.shouldShowDetailsButton()) {
            this.detailsButton = this.createButton(parent, 13, IDialogConstants.SHOW_DETAILS_LABEL, false);
        }
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        this.createMessageArea(composite);
        this.createSupportArea(parent);
        GridLayout layout = new GridLayout();
        layout.marginHeight = this.convertVerticalDLUsToPixels(7);
        layout.marginWidth = this.convertHorizontalDLUsToPixels(7);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.numColumns = 2;
        composite.setLayout((Layout)layout);
        GridData childData = new GridData(1808);
        childData.horizontalSpan = 2;
        childData.grabExcessVerticalSpace = false;
        composite.setLayoutData((Object)childData);
        composite.setFont(parent.getFont());
        return composite;
    }

    protected void createDialogAndButtonArea(Composite parent) {
        Composite dialogComposite;
        super.createDialogAndButtonArea(parent);
        if (this.dialogArea instanceof Composite && (dialogComposite = (Composite)this.dialogArea).getChildren().length == 0) {
            new Label(dialogComposite, 0);
        }
    }

    protected Image getImage() {
        if (this.status != null) {
            if (this.status.getSeverity() == 2) {
                return this.getWarningImage();
            }
            if (this.status.getSeverity() == 1) {
                return this.getInfoImage();
            }
        }
        return this.getErrorImage();
    }

    protected List createDropDownList(Composite parent) {
        this.list = new List(parent, 2818);
        this.populateList(this.list);
        GridData data = new GridData(1808);
        data.heightHint = this.list.getItemHeight() * 7;
        data.horizontalSpan = 2;
        this.list.setLayoutData((Object)data);
        this.list.setFont(parent.getFont());
        Menu copyMenu = new Menu((Control)this.list);
        MenuItem copyItem = new MenuItem(copyMenu, 0);
        copyItem.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                ErrorDialog.this.copyToClipboard();
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                ErrorDialog.this.copyToClipboard();
            }
        });
        copyItem.setText(JFaceResources.getString("copy"));
        this.list.setMenu(copyMenu);
        this.listCreated = true;
        return this.list;
    }

    public int open() {
        if (!AUTOMATED_MODE && ErrorDialog.shouldDisplay(this.status, this.displayMask)) {
            return super.open();
        }
        this.setReturnCode(0);
        return 0;
    }

    public static int openError(Shell parent, String dialogTitle, String message, IStatus status) {
        return ErrorDialog.openError(parent, dialogTitle, message, status, 7);
    }

    public static int openError(Shell parentShell, String title, String message, IStatus status, int displayMask) {
        ErrorDialog dialog = new ErrorDialog(parentShell, title, message, status, displayMask);
        return dialog.open();
    }

    private void populateList(List listToPopulate) {
        this.populateList(listToPopulate, this.status, 0, this.shouldIncludeTopLevelErrorInDetails);
    }

    private boolean listContentExists() {
        return this.listContentExists(this.status, this.shouldIncludeTopLevelErrorInDetails);
    }

    private void populateList(List listToPopulate, IStatus buildingStatus, int nesting, boolean includeStatus) {
        String message;
        StringBuffer sb;
        if (!buildingStatus.matches(this.displayMask)) {
            return;
        }
        Throwable t = buildingStatus.getException();
        boolean isCoreException = t instanceof CoreException;
        boolean incrementNesting = false;
        if (includeStatus) {
            sb = new StringBuffer();
            int i = 0;
            while (i < nesting) {
                sb.append(NESTING_INDENT);
                ++i;
            }
            message = buildingStatus.getMessage();
            sb.append(message);
            listToPopulate.add(sb.toString());
            incrementNesting = true;
        }
        if (!isCoreException && t != null) {
            sb = new StringBuffer();
            int i = 0;
            while (i < nesting) {
                sb.append(NESTING_INDENT);
                ++i;
            }
            message = t.getLocalizedMessage();
            if (message == null) {
                message = t.toString();
            }
            sb.append(message);
            listToPopulate.add(sb.toString());
            incrementNesting = true;
        }
        if (incrementNesting) {
            ++nesting;
        }
        if (isCoreException) {
            CoreException ce = (CoreException)t;
            IStatus eStatus = ce.getStatus();
            if (this.message == null || this.message.indexOf(eStatus.getMessage()) == -1) {
                this.populateList(listToPopulate, eStatus, nesting, true);
            }
        }
        IStatus[] children = buildingStatus.getChildren();
        int i = 0;
        while (i < children.length) {
            this.populateList(listToPopulate, children[i], nesting, true);
            ++i;
        }
    }

    private boolean listContentExists(IStatus buildingStatus, boolean includeStatus) {
        if (!buildingStatus.matches(this.displayMask)) {
            return false;
        }
        Throwable t = buildingStatus.getException();
        boolean isCoreException = t instanceof CoreException;
        if (includeStatus) {
            return true;
        }
        if (!isCoreException && t != null) {
            return true;
        }
        boolean result = false;
        if (isCoreException) {
            CoreException ce = (CoreException)t;
            IStatus eStatus = ce.getStatus();
            if (this.message == null || this.message.indexOf(eStatus.getMessage()) == -1) {
                result |= this.listContentExists(eStatus, true);
            }
        }
        IStatus[] children = buildingStatus.getChildren();
        int i = 0;
        while (i < children.length) {
            result |= this.listContentExists(children[i], true);
            ++i;
        }
        return result;
    }

    protected static boolean shouldDisplay(IStatus status, int mask) {
        IStatus[] children = status.getChildren();
        if (children == null || children.length == 0) {
            return status.matches(mask);
        }
        int i = 0;
        while (i < children.length) {
            if (children[i].matches(mask)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void toggleDetailsArea() {
        Point windowSize = this.getShell().getSize();
        Point oldSize = this.getShell().computeSize(-1, -1);
        if (this.listCreated) {
            this.list.dispose();
            this.listCreated = false;
            this.detailsButton.setText(IDialogConstants.SHOW_DETAILS_LABEL);
        } else {
            this.list = this.createDropDownList((Composite)this.getContents());
            this.detailsButton.setText(IDialogConstants.HIDE_DETAILS_LABEL);
            this.getContents().getShell().layout();
        }
        Point newSize = this.getShell().computeSize(-1, -1);
        this.getShell().setSize(new Point(windowSize.x, windowSize.y + (newSize.y - oldSize.y)));
    }

    private void populateCopyBuffer(IStatus buildingStatus, StringBuffer buffer, int nesting) {
        if (!buildingStatus.matches(this.displayMask)) {
            return;
        }
        int i = 0;
        while (i < nesting) {
            buffer.append(NESTING_INDENT);
            ++i;
        }
        buffer.append(buildingStatus.getMessage());
        buffer.append("\n");
        Throwable t = buildingStatus.getException();
        if (t instanceof CoreException) {
            CoreException ce = (CoreException)t;
            this.populateCopyBuffer(ce.getStatus(), buffer, nesting + 1);
        } else if (t != null) {
            int i2 = 0;
            while (i2 < nesting) {
                buffer.append(NESTING_INDENT);
                ++i2;
            }
            String message = t.getLocalizedMessage();
            if (message == null) {
                message = t.toString();
            }
            buffer.append(message);
            buffer.append("\n");
        }
        IStatus[] children = buildingStatus.getChildren();
        int i3 = 0;
        while (i3 < children.length) {
            this.populateCopyBuffer(children[i3], buffer, nesting + 1);
            ++i3;
        }
    }

    private void copyToClipboard() {
        if (this.clipboard != null) {
            this.clipboard.dispose();
        }
        StringBuffer statusBuffer = new StringBuffer();
        this.populateCopyBuffer(this.status, statusBuffer, 0);
        this.clipboard = new Clipboard(this.list.getDisplay());
        this.clipboard.setContents(new Object[]{statusBuffer.toString()}, new Transfer[]{TextTransfer.getInstance()});
    }

    public boolean close() {
        if (this.clipboard != null) {
            this.clipboard.dispose();
        }
        return super.close();
    }

    protected final void showDetailsArea() {
        Control control;
        if (!this.listCreated && (control = this.getContents()) != null && !control.isDisposed()) {
            this.toggleDetailsArea();
        }
    }

    protected boolean shouldShowDetailsButton() {
        return this.listContentExists();
    }

    protected final void setStatus(IStatus status) {
        if (this.status != status) {
            this.status = status;
        }
        this.shouldIncludeTopLevelErrorInDetails = true;
        if (this.listCreated) {
            this.repopulateList();
        }
    }

    private void repopulateList() {
        if (this.list != null && !this.list.isDisposed()) {
            this.list.removeAll();
            this.populateList(this.list);
        }
    }

    int getColumnCount() {
        if (Policy.getErrorSupportProvider() == null) {
            return 2;
        }
        return 3;
    }

    protected boolean isResizable() {
        return true;
    }
}

