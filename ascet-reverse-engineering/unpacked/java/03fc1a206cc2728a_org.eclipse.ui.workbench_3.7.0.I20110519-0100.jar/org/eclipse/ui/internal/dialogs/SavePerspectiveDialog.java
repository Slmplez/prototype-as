/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.activities.ws.ActivityViewerFilter;
import org.eclipse.ui.internal.dialogs.PerspContentProvider;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;
import org.eclipse.ui.model.PerspectiveLabelProvider;

public class SavePerspectiveDialog
extends Dialog
implements ISelectionChangedListener,
ModifyListener {
    private Text text;
    private TableViewer list;
    private Button okButton;
    private PerspectiveRegistry perspReg;
    private String perspName;
    private IPerspectiveDescriptor persp;
    private IPerspectiveDescriptor initialSelection;
    private boolean ignoreSelection = false;
    private static final int LIST_WIDTH = 40;
    private static final int TEXT_WIDTH = 40;
    private static final int LIST_HEIGHT = 14;

    public SavePerspectiveDialog(Shell parentShell, PerspectiveRegistry perspReg) {
        super(parentShell);
        this.perspReg = perspReg;
        this.setShellStyle(this.getShellStyle() | 0x10000000);
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(WorkbenchMessages.SavePerspective_shellTitle);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.save_perspective_dialog_context");
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        this.updateButtons();
        this.text.setFocus();
    }

    protected Control createDialogArea(Composite parent) {
        Font font = parent.getFont();
        Composite composite = (Composite)super.createDialogArea(parent);
        Label descLabel = new Label(composite, 64);
        descLabel.setText(WorkbenchMessages.SavePerspectiveDialog_description);
        descLabel.setFont(parent.getFont());
        Label label = new Label(composite, 0);
        GridData data = new GridData();
        data.heightHint = 8;
        label.setLayoutData((Object)data);
        Composite nameGroup = new Composite(composite, 0);
        nameGroup.setLayoutData((Object)new GridData(768));
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        nameGroup.setLayout((Layout)layout);
        label = new Label(nameGroup, 0);
        label.setText(WorkbenchMessages.SavePerspective_name);
        label.setFont(font);
        this.text = new Text(nameGroup, 2048);
        this.text.setFocus();
        data = new GridData(768);
        data.widthHint = this.convertWidthInCharsToPixels(40);
        this.text.setLayoutData((Object)data);
        this.text.setFont(font);
        this.text.addModifyListener((ModifyListener)this);
        label = new Label(composite, 0);
        data = new GridData();
        data.heightHint = 5;
        label.setLayoutData((Object)data);
        label = new Label(composite, 0);
        label.setText(WorkbenchMessages.SavePerspective_existing);
        label.setFont(font);
        this.list = new TableViewer(composite, 2816);
        this.list.setLabelProvider((IBaseLabelProvider)new PerspectiveLabelProvider());
        this.list.setContentProvider((IContentProvider)new PerspContentProvider());
        this.list.addFilter((ViewerFilter)new ActivityViewerFilter());
        this.list.setComparator(new ViewerComparator());
        this.list.setInput((Object)this.perspReg);
        this.list.addSelectionChangedListener((ISelectionChangedListener)this);
        this.list.getTable().setFont(font);
        Control ctrl = this.list.getControl();
        GridData spec = new GridData(1808);
        spec.widthHint = this.convertWidthInCharsToPixels(40);
        spec.heightHint = this.convertHeightInCharsToPixels(14);
        ctrl.setLayoutData((Object)spec);
        if (this.initialSelection != null) {
            StructuredSelection sel = new StructuredSelection((Object)this.initialSelection);
            this.list.setSelection((ISelection)sel, true);
        }
        this.text.selectAll();
        return composite;
    }

    public IPerspectiveDescriptor getPersp() {
        return this.persp;
    }

    public String getPerspName() {
        return this.perspName;
    }

    public void modifyText(ModifyEvent e) {
        this.perspName = this.text.getText();
        this.ignoreSelection = true;
        this.persp = this.perspReg.findPerspectiveWithLabel(this.perspName);
        if (this.persp == null) {
            StructuredSelection sel = new StructuredSelection();
            this.list.setSelection((ISelection)sel);
        } else {
            StructuredSelection sel = new StructuredSelection((Object)this.persp);
            this.list.setSelection((ISelection)sel);
        }
        this.ignoreSelection = false;
        this.updateButtons();
    }

    protected void okPressed() {
        this.perspName = this.text.getText();
        this.persp = this.perspReg.findPerspectiveWithLabel(this.perspName);
        if (this.persp != null) {
            String message = NLS.bind((String)WorkbenchMessages.SavePerspective_overwriteQuestion, (Object)this.perspName);
            String[] buttons = new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.CANCEL_LABEL};
            MessageDialog d = new MessageDialog(this.getShell(), WorkbenchMessages.SavePerspective_overwriteTitle, null, message, 3, buttons, 0){

                protected int getShellStyle() {
                    return super.getShellStyle() | 0x10000000;
                }
            };
            switch (d.open()) {
                case 0: {
                    break;
                }
                case 1: {
                    return;
                }
                case 2: {
                    this.cancelPressed();
                    return;
                }
                default: {
                    return;
                }
            }
        }
        super.okPressed();
    }

    public void selectionChanged(SelectionChangedEvent event) {
        if (this.ignoreSelection) {
            return;
        }
        IStructuredSelection sel = (IStructuredSelection)this.list.getSelection();
        this.persp = null;
        if (!sel.isEmpty()) {
            this.persp = (IPerspectiveDescriptor)sel.getFirstElement();
        }
        if (this.persp != null) {
            this.perspName = this.persp.getLabel();
            this.text.setText(this.perspName);
        }
        this.updateButtons();
    }

    public void setInitialSelection(IPerspectiveDescriptor selectedElement) {
        this.initialSelection = selectedElement;
    }

    private void updateButtons() {
        if (this.okButton != null) {
            String label = this.text.getText();
            this.okButton.setEnabled(this.perspReg.validateLabel(label));
        }
    }
}

