/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public final class SystemMenuClose
extends Action
implements ISelfUpdatingAction {
    private IStackPresentationSite site;
    private IPresentablePart part;

    public SystemMenuClose(IStackPresentationSite site) {
        this.site = site;
        this.setText(WorkbenchMessages.PartPane_close);
    }

    public void dispose() {
        this.site = null;
    }

    public void run() {
        if (this.part != null) {
            this.site.close(new IPresentablePart[]{this.part});
        }
    }

    public void setTarget(IPresentablePart presentablePart) {
        this.part = presentablePart;
        this.setEnabled(presentablePart != null && this.site.isCloseable(presentablePart));
    }

    public void update() {
        this.setTarget(this.site.getSelectedPart());
    }

    public boolean shouldBeVisible() {
        return true;
    }
}

