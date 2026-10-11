/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuFastView
extends Action
implements ISelfUpdatingAction {
    private PresentablePart viewPane;
    private IStackPresentationSite site;
    private boolean realFV = true;

    public SystemMenuFastView(IStackPresentationSite site) {
        this.site = site;
        this.setText(WorkbenchMessages.ViewPane_fastView);
        this.update();
    }

    public void setPane(PresentablePart newPane) {
        this.viewPane = newPane;
        this.update();
    }

    public void update() {
        IViewReference viewRef = this.getReference();
        if (viewRef == null) {
            this.setEnabled(false);
            return;
        }
        Perspective persp = this.viewPane.getPane().getPage().getActivePerspective();
        FastViewManager fvm = persp.getFastViewManager();
        String trimId = null;
        if (fvm != null) {
            trimId = fvm.getIdForRef(viewRef);
        }
        boolean bl = this.realFV = trimId == null || FastViewBar.FASTVIEWBAR_ID.equals(trimId);
        if (this.realFV) {
            this.setText(WorkbenchMessages.ViewPane_fastView);
        } else {
            this.setText(WorkbenchMessages.StandardSystemToolbar_Restore);
            this.setChecked(false);
        }
        if (!this.site.isPartMoveable(this.viewPane)) {
            this.setEnabled(false);
        } else {
            this.setEnabled(true);
            if (this.realFV) {
                this.setChecked(persp.isFastView(viewRef));
            }
        }
    }

    private IViewReference getReference() {
        IWorkbenchPartReference ref;
        IViewReference viewRef = null;
        if (this.viewPane != null && (ref = this.viewPane.getPane().getPartReference()) instanceof IViewReference) {
            viewRef = (IViewReference)ref;
        }
        return viewRef;
    }

    public boolean shouldBeVisible() {
        if (this.viewPane == null || this.viewPane.getPane().getPage() == null) {
            return false;
        }
        WorkbenchWindow workbenchWindow = (WorkbenchWindow)this.viewPane.getPane().getPage().getWorkbenchWindow();
        return workbenchWindow.getShowFastViewBars() && this.viewPane != null && this.site.isPartMoveable(this.viewPane);
    }

    public void dispose() {
        this.viewPane = null;
    }

    public void run() {
        if (this.realFV) {
            if (this.viewPane.getPane() instanceof ViewPane) {
                ViewPane pane = (ViewPane)this.viewPane.getPane();
                if (!this.isChecked()) {
                    pane.doMakeFast();
                } else {
                    pane.doRemoveFast();
                }
            }
        } else {
            IViewReference viewRef = this.getReference();
            Perspective persp = this.viewPane.getPane().getPage().getActivePerspective();
            FastViewManager fvm = persp.getFastViewManager();
            String trimId = fvm.getIdForRef(viewRef);
            fvm.restoreToPresentation(trimId);
        }
    }
}

