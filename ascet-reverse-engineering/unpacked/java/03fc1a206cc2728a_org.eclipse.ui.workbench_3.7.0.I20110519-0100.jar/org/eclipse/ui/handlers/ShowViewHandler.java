/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.handlers;

import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.ShowViewDialog;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.views.IViewDescriptor;

public final class ShowViewHandler
extends AbstractHandler {
    private boolean makeFast = false;

    public ShowViewHandler() {
    }

    public ShowViewHandler(boolean makeFast) {
        this.makeFast = makeFast;
    }

    public final Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        Map parameters = event.getParameters();
        Object viewId = parameters.get("org.eclipse.ui.views.showView.viewId");
        Object secondary = parameters.get("org.eclipse.ui.views.showView.secondaryId");
        this.makeFast = "true".equals(parameters.get("org.eclipse.ui.views.showView.makeFast"));
        if (viewId == null) {
            this.openOther(window);
        } else {
            try {
                this.openView((String)viewId, (String)secondary, window);
            }
            catch (PartInitException e) {
                throw new ExecutionException("Part could not be initialized", (Throwable)((Object)e));
            }
        }
        return null;
    }

    private final void openOther(IWorkbenchWindow window) {
        IWorkbenchPage page = window.getActivePage();
        if (page == null) {
            return;
        }
        ShowViewDialog dialog = new ShowViewDialog(window, WorkbenchPlugin.getDefault().getViewRegistry());
        dialog.open();
        if (dialog.getReturnCode() == 1) {
            return;
        }
        IViewDescriptor[] descriptors = dialog.getSelection();
        int i = 0;
        while (i < descriptors.length) {
            try {
                this.openView(descriptors[i].getId(), null, window);
            }
            catch (PartInitException e) {
                StatusUtil.handleStatus(e.getStatus(), String.valueOf(WorkbenchMessages.ShowView_errorTitle) + ": " + e.getMessage(), 2);
            }
            ++i;
        }
    }

    private final void openView(String viewId, String secondaryId, IWorkbenchWindow activeWorkbenchWindow) throws PartInitException {
        IWorkbenchPage activePage = activeWorkbenchWindow.getActivePage();
        if (activePage == null) {
            return;
        }
        if (this.makeFast) {
            WorkbenchPage wp = (WorkbenchPage)activePage;
            Perspective persp = wp.getActivePerspective();
            boolean useNewMinMax = Perspective.useNewMinMax(persp);
            if (useNewMinMax) {
                IViewReference ref = persp.getViewReference(viewId, secondaryId);
                if (ref == null) {
                    return;
                }
                persp.getFastViewManager().addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, ref, true);
                wp.activate(ref.getPart(true));
                return;
            }
            IViewReference ref = wp.findViewReference(viewId, secondaryId);
            if (ref == null) {
                IViewPart part = wp.showView(viewId, secondaryId, 3);
                ref = (IViewReference)wp.getReference(part);
            }
            if (!wp.isFastView(ref)) {
                wp.addFastView(ref);
            }
            wp.activate(ref.getPart(true));
        } else {
            activePage.showView(viewId, secondaryId, 1);
        }
    }
}

