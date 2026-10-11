/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.PageChangedEvent
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.PageSelectionService;
import org.eclipse.ui.internal.PartList;
import org.eclipse.ui.internal.PartService;

public class WorkbenchPagePartList
extends PartList {
    private PageSelectionService selectionService;
    private PartService partService = new PartService("org.eclipse.ui/listeners/IWorkbenchPage.IPartListener", "org.eclipse.ui/listeners/IWorkbenchPage.IPartListener2");

    public WorkbenchPagePartList(PageSelectionService selectionService) {
        this.selectionService = selectionService;
    }

    public IPartService getPartService() {
        return this.partService;
    }

    protected void firePartOpened(IWorkbenchPartReference part) {
        this.partService.firePartOpened(part);
    }

    protected void firePartClosed(IWorkbenchPartReference part) {
        this.partService.firePartClosed(part);
    }

    protected void firePartAdded(IWorkbenchPartReference part) {
    }

    protected void firePartRemoved(IWorkbenchPartReference part) {
    }

    protected void fireActiveEditorChanged(IWorkbenchPartReference ref) {
        if (ref != null) {
            this.firePartBroughtToTop(ref);
        }
    }

    protected void fireActivePartChanged(IWorkbenchPartReference oldRef, IWorkbenchPartReference newRef) {
        this.partService.setActivePart(newRef);
        IWorkbenchPart realPart = newRef == null ? null : newRef.getPart(false);
        this.selectionService.setActivePart(realPart);
    }

    protected void firePartHidden(IWorkbenchPartReference ref) {
        this.partService.firePartHidden(ref);
    }

    protected void firePartVisible(IWorkbenchPartReference ref) {
        this.partService.firePartVisible(ref);
    }

    protected void firePartInputChanged(IWorkbenchPartReference ref) {
        this.partService.firePartInputChanged(ref);
    }

    public void firePartBroughtToTop(IWorkbenchPartReference ref) {
        this.partService.firePartBroughtToTop(ref);
    }

    protected void firePageChanged(PageChangedEvent event) {
        this.partService.firePageChanged(event);
    }
}

