/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 */
package org.eclipse.ui.dialogs;

import java.util.List;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.ui.dialogs.SelectionDialog;

public class ListDialog
extends SelectionDialog {
    private IStructuredContentProvider fContentProvider;
    private ILabelProvider fLabelProvider;
    private Object fInput;
    private TableViewer fTableViewer;
    private boolean fAddCancelButton = true;
    private int widthInChars = 55;
    private int heightInChars = 15;

    public ListDialog(Shell parent) {
        super(parent);
    }

    public void setInput(Object input) {
        this.fInput = input;
    }

    public void setContentProvider(IStructuredContentProvider sp) {
        this.fContentProvider = sp;
    }

    public void setLabelProvider(ILabelProvider lp) {
        this.fLabelProvider = lp;
    }

    public void setAddCancelButton(boolean addCancelButton) {
        this.fAddCancelButton = addCancelButton;
    }

    public TableViewer getTableViewer() {
        return this.fTableViewer;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        if (!this.fAddCancelButton) {
            this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        } else {
            super.createButtonsForButtonBar(parent);
        }
    }

    protected Control createDialogArea(Composite container) {
        Composite parent = (Composite)super.createDialogArea(container);
        this.createMessageArea(parent);
        this.fTableViewer = new TableViewer(parent, this.getTableStyle());
        this.fTableViewer.setContentProvider((IContentProvider)this.fContentProvider);
        this.fTableViewer.setLabelProvider((IBaseLabelProvider)this.fLabelProvider);
        this.fTableViewer.setInput(this.fInput);
        this.fTableViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                if (ListDialog.this.fAddCancelButton) {
                    ListDialog.this.okPressed();
                }
            }
        });
        List initialSelection = this.getInitialElementSelections();
        if (initialSelection != null) {
            this.fTableViewer.setSelection((ISelection)new StructuredSelection(initialSelection));
        }
        GridData gd = new GridData(1808);
        gd.heightHint = this.convertHeightInCharsToPixels(this.heightInChars);
        gd.widthHint = this.convertWidthInCharsToPixels(this.widthInChars);
        Table table = this.fTableViewer.getTable();
        table.setLayoutData((Object)gd);
        table.setFont(container.getFont());
        return parent;
    }

    protected int getTableStyle() {
        return 2820;
    }

    protected void okPressed() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        this.setResult(selection.toList());
        super.okPressed();
    }

    public int getHeightInChars() {
        return this.heightInChars;
    }

    public int getWidthInChars() {
        return this.widthInChars;
    }

    public void setHeightInChars(int heightInChars) {
        this.heightInChars = heightInChars;
    }

    public void setWidthInChars(int widthInChars) {
        this.widthInChars = widthInChars;
    }
}

