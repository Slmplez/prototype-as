/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IPageChangedListener
 *  org.eclipse.jface.dialogs.PageChangedEvent
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.PartService;
import org.eclipse.ui.internal.WindowSelectionService;
import org.eclipse.ui.internal.WorkbenchPage;

public class WWinPartService
implements IPartService {
    private PartService partService = new PartService("org.eclipse.ui/listeners/IWorkbenchWindow.IPartListener", "org.eclipse.ui/listeners/IWorkbenchWindow.IPartListener2");
    private WindowSelectionService selectionService;
    private IWorkbenchPage activePage;
    private IPartListener2 partListner = new WWinListener();

    public WWinPartService(IWorkbenchWindow window) {
        this.selectionService = new WindowSelectionService(window);
    }

    public void addPartListener(IPartListener l) {
        this.partService.addPartListener(l);
    }

    public void addPartListener(IPartListener2 l) {
        this.partService.addPartListener(l);
    }

    public void removePartListener(IPartListener l) {
        this.partService.removePartListener(l);
    }

    public void removePartListener(IPartListener2 l) {
        this.partService.removePartListener(l);
    }

    public IWorkbenchPart getActivePart() {
        return this.partService.getActivePart();
    }

    private void updateActivePart() {
        IWorkbenchPartReference activeRef = null;
        IWorkbenchPart activePart = null;
        if (this.activePage != null) {
            activePart = this.activePage.getActivePart();
            activeRef = this.activePage.getActivePartReference();
        }
        this.partService.setActivePart(activeRef);
        this.selectionService.setActivePart(activePart);
    }

    public IWorkbenchPartReference getActivePartReference() {
        return this.partService.getActivePartReference();
    }

    ISelectionService getSelectionService() {
        return this.selectionService;
    }

    void pageActivated(IWorkbenchPage newPage) {
        if (newPage == this.activePage) {
            return;
        }
        if (newPage != null) {
            IWorkbenchPartReference[] refs = ((WorkbenchPage)newPage).getOpenParts();
            int i = 0;
            while (i < refs.length) {
                IWorkbenchPartReference reference = refs[i];
                this.partService.firePartOpened(reference);
                IWorkbenchPart part = reference.getPart(false);
                if (part != null && newPage.isPartVisible(part)) {
                    this.partService.firePartVisible(reference);
                }
                ++i;
            }
            this.partService.setActivePart(newPage.getActivePartReference());
            this.selectionService.setActivePart(newPage.getActivePart());
        } else {
            this.partService.setActivePart(null);
            this.selectionService.setActivePart(null);
        }
        this.reset();
        this.activePage = newPage;
        if (newPage != null) {
            newPage.addPartListener(this.partListner);
        }
    }

    void pageClosed(IWorkbenchPage page) {
        if (page == this.activePage) {
            this.reset();
        }
    }

    void pageOpened(IWorkbenchPage page) {
        this.pageActivated(page);
    }

    private void reset() {
        IWorkbenchPage tempPage = this.activePage;
        this.activePage = null;
        if (tempPage != null) {
            WorkbenchPage page = (WorkbenchPage)tempPage;
            IWorkbenchPartReference[] refs = page.getOpenParts();
            int i = 0;
            while (i < refs.length) {
                IWorkbenchPartReference reference = refs[i];
                if (page.isPartVisible(reference)) {
                    this.partService.firePartHidden(reference);
                }
                this.partService.firePartClosed(reference);
                ++i;
            }
            tempPage.removePartListener(this.partListner);
        }
    }

    private class WWinListener
    implements IPartListener2,
    IPageChangedListener {
        private WWinListener() {
        }

        public void partActivated(IWorkbenchPartReference ref) {
            WWinPartService.this.updateActivePart();
        }

        public void partBroughtToTop(IWorkbenchPartReference ref) {
            WWinPartService.this.partService.firePartBroughtToTop(ref);
        }

        public void partClosed(IWorkbenchPartReference ref) {
            WWinPartService.this.partService.firePartClosed(ref);
        }

        public void partDeactivated(IWorkbenchPartReference ref) {
            WWinPartService.this.updateActivePart();
        }

        public void partOpened(IWorkbenchPartReference ref) {
            WWinPartService.this.partService.firePartOpened(ref);
        }

        public void partHidden(IWorkbenchPartReference ref) {
            WWinPartService.this.partService.firePartHidden(ref);
        }

        public void partVisible(IWorkbenchPartReference ref) {
            WWinPartService.this.partService.firePartVisible(ref);
        }

        public void partInputChanged(IWorkbenchPartReference ref) {
            WWinPartService.this.partService.firePartInputChanged(ref);
        }

        public void pageChanged(PageChangedEvent event) {
            WWinPartService.this.partService.firePageChanged(event);
        }
    }
}

