/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public class SystemMenuPinEditor
extends Action
implements ISelfUpdatingAction {
    private EditorPane editorPane;

    public SystemMenuPinEditor(EditorPane pane) {
        this.setText(WorkbenchMessages.EditorPane_pinEditor);
        this.setPane(pane);
    }

    public void dispose() {
        this.editorPane = null;
    }

    public void setPane(EditorPane pane) {
        this.editorPane = pane;
        this.update();
    }

    public void run() {
        WorkbenchPartReference ref = (WorkbenchPartReference)this.editorPane.getPartReference();
        ref.setPinned(!this.isChecked());
    }

    public void update() {
        if (this.editorPane == null) {
            this.setEnabled(false);
            return;
        }
        WorkbenchPartReference ref = (WorkbenchPartReference)this.editorPane.getPartReference();
        this.setEnabled(true);
        this.setChecked(ref.isPinned());
    }

    public boolean shouldBeVisible() {
        if (this.editorPane == null) {
            return false;
        }
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        boolean reuseEditor = store.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") | ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction();
        return reuseEditor;
    }
}

