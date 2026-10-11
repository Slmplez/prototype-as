/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.Action;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuMoveFolder
extends Action
implements ISelfUpdatingAction {
    private IStackPresentationSite site;

    public SystemMenuMoveFolder(IStackPresentationSite site) {
        this.site = site;
        this.setText(WorkbenchMessages.ViewPane_moveFolder);
    }

    public void run() {
        this.site.dragStart(Display.getDefault().getCursorLocation(), true);
    }

    public void update() {
        this.setEnabled(this.site.isStackMoveable());
    }

    public boolean shouldBeVisible() {
        return this.site.isStackMoveable();
    }
}

