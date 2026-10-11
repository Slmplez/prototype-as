/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.SelectionDialog;
import org.eclipse.ui.internal.WorkbenchMessages;

public class ListSelectionDialog
extends SelectionDialog {
    private Object inputElement;
    private ILabelProvider labelProvider;
    private IStructuredContentProvider contentProvider;
    CheckboxTableViewer listViewer;
    private static final int SIZING_SELECTION_WIDGET_HEIGHT = 250;
    private static final int SIZING_SELECTION_WIDGET_WIDTH = 300;

    public ListSelectionDialog(Shell parentShell, Object input, IStructuredContentProvider contentProvider, ILabelProvider labelProvider, String message) {
        super(parentShell);
        this.setTitle(WorkbenchMessages.ListSelection_title);
        this.inputElement = input;
        this.contentProvider = contentProvider;
        this.labelProvider = labelProvider;
        if (message != null) {
            this.setMessage(message);
        } else {
            this.setMessage(WorkbenchMessages.ListSelection_message);
        }
    }

    private void addSelectionButtons(Composite composite) {
        Composite buttonComposite = new Composite(composite, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        buttonComposite.setLayout((Layout)layout);
        buttonComposite.setLayoutData((Object)new GridData(0x1000008, 128, true, false));
        Button selectButton = this.createButton(buttonComposite, 18, SELECT_ALL_TITLE, false);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ListSelectionDialog.this.listViewer.setAllChecked(true);
            }
        };
        selectButton.addSelectionListener((SelectionListener)listener);
        Button deselectButton = this.createButton(buttonComposite, 19, DESELECT_ALL_TITLE, false);
        listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ListSelectionDialog.this.listViewer.setAllChecked(false);
            }
        };
        deselectButton.addSelectionListener((SelectionListener)listener);
    }

    private void checkInitialSelections() {
        Iterator itemsToCheck = this.getInitialElementSelections().iterator();
        while (itemsToCheck.hasNext()) {
            this.listViewer.setChecked(itemsToCheck.next(), true);
        }
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.list_selection_dialog_context");
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        this.initializeDialogUnits((Control)composite);
        this.createMessageArea(composite);
        this.listViewer = CheckboxTableViewer.newCheckList((Composite)composite, (int)2048);
        GridData data = new GridData(1808);
        data.heightHint = 250;
        data.widthHint = 300;
        this.listViewer.getTable().setLayoutData((Object)data);
        this.listViewer.setLabelProvider((IBaseLabelProvider)this.labelProvider);
        this.listViewer.setContentProvider((IContentProvider)this.contentProvider);
        this.addSelectionButtons(composite);
        this.initializeViewer();
        if (!this.getInitialElementSelections().isEmpty()) {
            this.checkInitialSelections();
        }
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    protected CheckboxTableViewer getViewer() {
        return this.listViewer;
    }

    private void initializeViewer() {
        this.listViewer.setInput(this.inputElement);
    }

    protected void okPressed() {
        Object[] children = this.contentProvider.getElements(this.inputElement);
        if (children != null) {
            ArrayList<Object> list = new ArrayList<Object>();
            int i = 0;
            while (i < children.length) {
                Object element = children[i];
                if (this.listViewer.getChecked(element)) {
                    list.add(element);
                }
                ++i;
            }
            this.setResult(list);
        }
        super.okPressed();
    }
}

