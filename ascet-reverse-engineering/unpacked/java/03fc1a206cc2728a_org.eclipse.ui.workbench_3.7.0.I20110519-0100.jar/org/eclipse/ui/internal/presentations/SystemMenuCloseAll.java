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

public class SystemMenuCloseAll
extends Action
implements ISelfUpdatingAction {
    private IStackPresentationSite presentation;

    public SystemMenuCloseAll(IStackPresentationSite presentation) {
        this.presentation = presentation;
        this.setText(WorkbenchMessages.PartPane_closeAll);
    }

    public void dispose() {
        this.presentation = null;
    }

    public void run() {
        this.presentation.close(this.presentation.getPartList());
    }

    public void update() {
        IPresentablePart[] parts = this.presentation.getPartList();
        this.setEnabled(parts.length != 0);
    }

    public boolean shouldBeVisible() {
        return true;
    }
}

