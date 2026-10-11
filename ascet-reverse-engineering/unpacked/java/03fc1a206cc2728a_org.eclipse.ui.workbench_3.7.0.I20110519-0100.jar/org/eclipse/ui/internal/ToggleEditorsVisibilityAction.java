/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.PerspectiveAction;
import org.eclipse.ui.internal.WorkbenchMessages;

public class ToggleEditorsVisibilityAction
extends PerspectiveAction
implements IPerspectiveListener {
    public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        if (page.isEditorAreaVisible()) {
            this.setText(WorkbenchMessages.ToggleEditor_hideEditors);
        } else {
            this.setText(WorkbenchMessages.ToggleEditor_showEditors);
        }
    }

    public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
        if (changeId == "reset" || changeId == "editorAreaHide" || changeId == "editorAreaShow") {
            if (page.isEditorAreaVisible()) {
                this.setText(WorkbenchMessages.ToggleEditor_hideEditors);
            } else {
                this.setText(WorkbenchMessages.ToggleEditor_showEditors);
            }
        }
    }

    public ToggleEditorsVisibilityAction(IWorkbenchWindow window) {
        super(window);
        this.setText(WorkbenchMessages.ToggleEditor_hideEditors);
        this.setActionDefinitionId("org.eclipse.ui.window.hideShowEditors");
        this.setToolTipText(WorkbenchMessages.ToggleEditor_toolTip);
        window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.target_editors_visibility_action_context");
        window.addPerspectiveListener(this);
    }

    protected void run(IWorkbenchPage page, IPerspectiveDescriptor persp) {
        boolean visible = page.isEditorAreaVisible();
        if (visible) {
            page.setEditorAreaVisible(false);
            this.setText(WorkbenchMessages.ToggleEditor_showEditors);
        } else {
            page.setEditorAreaVisible(true);
            this.setText(WorkbenchMessages.ToggleEditor_hideEditors);
        }
    }

    public void dispose() {
        if (this.getWindow() != null) {
            this.getWindow().removePerspectiveListener(this);
        }
        super.dispose();
    }
}

