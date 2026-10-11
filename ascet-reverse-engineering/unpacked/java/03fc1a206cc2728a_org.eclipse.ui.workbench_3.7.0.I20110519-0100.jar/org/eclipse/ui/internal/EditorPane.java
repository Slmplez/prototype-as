/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public class EditorPane
extends PartPane {
    private EditorStack workbook;

    public EditorPane(IEditorReference ref, WorkbenchPage page, EditorStack workbook) {
        super(ref, page);
        this.workbook = workbook;
    }

    protected void createTitleBar() {
    }

    public void doHide() {
        this.getPage().closeEditor(this.getEditorReference(), true);
    }

    public IEditorReference getEditorReference() {
        return (IEditorReference)this.getPartReference();
    }

    int getStyle() {
        return 0;
    }

    public EditorStack getWorkbook() {
        return this.workbook;
    }

    public void requestActivation() {
        if (!this.workbook.isActiveWorkbook()) {
            this.workbook.getEditorArea().setActiveWorkbook(null, false);
        }
        super.requestActivation();
    }

    public void setWorkbook(EditorStack editorWorkbook) {
        this.workbook = editorWorkbook;
    }

    void shellActivated() {
    }

    void shellDeactivated() {
    }

    public void setFocus() {
        super.setFocus();
        this.workbook.becomeActiveWorkbook(true);
    }

    public void showFocus(boolean inFocus) {
        if (inFocus) {
            this.workbook.becomeActiveWorkbook(true);
        } else {
            this.workbook.setActive(this.workbook.isActiveWorkbook() ? 2 : 0);
        }
    }

    protected void addPinEditorItem(Menu parent) {
        boolean reuseEditor;
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        boolean bl = reuseEditor = store.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") || ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction();
        if (!reuseEditor) {
            return;
        }
        final WorkbenchPartReference ref = (WorkbenchPartReference)this.getPartReference();
        final MenuItem item = new MenuItem(parent, 32);
        item.setText(WorkbenchMessages.EditorPane_pinEditor);
        item.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                IWorkbenchPart part = EditorPane.this.getPartReference().getPart(true);
                if (part == null) {
                    item.setSelection(false);
                    item.setEnabled(false);
                } else {
                    ref.setPinned(item.getSelection());
                }
            }
        });
        item.setEnabled(true);
        item.setSelection(ref.isPinned());
    }

    public void updateTitles() {
    }

    public void testInvariants() {
        super.testInvariants();
        if (this.getContainer() != null) {
            Assert.isTrue((this.getContainer() == this.workbook ? 1 : 0) != 0);
        }
    }

    public String getName() {
        return null;
    }

    public Control getToolBar() {
        return null;
    }

    public boolean isCloseable() {
        return true;
    }
}

