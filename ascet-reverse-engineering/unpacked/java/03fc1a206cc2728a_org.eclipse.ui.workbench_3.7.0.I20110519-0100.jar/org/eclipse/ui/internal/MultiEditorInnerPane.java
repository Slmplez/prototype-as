/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.part.AbstractMultiEditor;
import org.eclipse.ui.part.MultiEditor;

public class MultiEditorInnerPane
extends EditorPane {
    EditorPane parentPane;
    boolean multiEditorCompatibilityMode;

    public MultiEditorInnerPane(EditorPane pane, IEditorReference ref, WorkbenchPage page, EditorStack workbook, boolean multiEditor) {
        super(ref, page, workbook);
        this.parentPane = pane;
        this.multiEditorCompatibilityMode = multiEditor;
    }

    AbstractMultiEditor getMultiEditor() {
        return (AbstractMultiEditor)this.parentPane.getPartReference().getPart(true);
    }

    public void createControl(Composite parent) {
        super.createControl(parent);
        if (!this.multiEditorCompatibilityMode) {
            Control control = this.getControl();
            control.addListener(26, new Listener(){

                public void handleEvent(Event event) {
                    if (event.type == 26) {
                        IEditorPart part = (IEditorPart)MultiEditorInnerPane.this.getEditorReference().getPart(true);
                        AbstractMultiEditor multiEditor = MultiEditorInnerPane.this.getMultiEditor();
                        multiEditor.activateEditor(part);
                        multiEditor.setFocus();
                    }
                }
            });
            control.setVisible(true);
        }
    }

    public EditorPane getParentPane() {
        return this.parentPane;
    }

    private void updateGradient() {
        IEditorPart part;
        AbstractMultiEditor abstractMultiEditor = this.getMultiEditor();
        if (abstractMultiEditor != null && this.multiEditorCompatibilityMode && (part = (IEditorPart)this.getEditorReference().getPart(true)) != null) {
            ((MultiEditor)abstractMultiEditor).updateGradient(part);
        }
    }

    public void showFocus(boolean inFocus) {
        super.showFocus(inFocus);
        this.updateGradient();
    }

    void shellDeactivated() {
        super.shellDeactivated();
        this.updateGradient();
    }

    void shellActivated() {
        super.shellActivated();
        this.updateGradient();
    }
}

