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
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuMovePane
extends Action {
    IStackPresentationSite site;
    IPresentablePart part;

    public SystemMenuMovePane(IStackPresentationSite site) {
        this.site = site;
        this.setText(WorkbenchMessages.SystemMenuMovePane_PaneName);
    }

    public void run() {
        this.site.dragStart(this.part, Display.getDefault().getCursorLocation(), true);
    }

    public void setTarget(IPresentablePart part) {
        this.part = part;
        this.setEnabled(part != null && this.site.isPartMoveable(part));
    }
}

