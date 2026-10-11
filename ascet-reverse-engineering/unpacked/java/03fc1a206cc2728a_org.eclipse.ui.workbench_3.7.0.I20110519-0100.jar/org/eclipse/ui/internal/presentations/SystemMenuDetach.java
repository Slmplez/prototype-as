/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuDetach
extends Action
implements ISelfUpdatingAction {
    private ViewPane viewPane;
    private IStackPresentationSite site;
    private WorkbenchPage page;

    public SystemMenuDetach(IStackPresentationSite site) {
        this.site = site;
        this.setText(WorkbenchMessages.PartPane_detach);
        this.update();
    }

    public void update() {
        IPresentablePart presentablePart = this.site.getSelectedPart();
        this.setEnabled(presentablePart != null && this.site.isPartMoveable(presentablePart));
        if (this.viewPane != null) {
            this.setChecked(!this.viewPane.isDocked());
            this.page = this.viewPane.getPage();
        }
    }

    public boolean shouldBeVisible() {
        if (this.page != null) {
            return this.page.getActivePerspective().getPresentation().canDetach();
        }
        return false;
    }

    public void dispose() {
        this.site = null;
    }

    public void setPane(ViewPane current) {
        this.viewPane = current;
        this.update();
    }

    public void run() {
        if (this.site != null) {
            if (!this.isChecked()) {
                this.viewPane.doDetach();
            } else {
                this.viewPane.doAttach();
            }
        }
    }
}

