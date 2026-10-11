/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.registry.ViewDescriptor;
import org.eclipse.ui.views.IViewDescriptor;

public class ShowViewAction
extends Action
implements IPluginContribution {
    private IWorkbenchWindow window;
    private IViewDescriptor desc;
    private boolean makeFast = false;

    protected ShowViewAction(IWorkbenchWindow window, IViewDescriptor desc, boolean makeFast) {
        super("");
        String accel = desc instanceof ViewDescriptor ? ((ViewDescriptor)desc).getAccelerator() : null;
        String label = desc.getLabel();
        this.setText(accel == null ? label : String.valueOf(label) + "@" + accel);
        this.setImageDescriptor(desc.getImageDescriptor());
        this.setToolTipText(label);
        window.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.show_view_action_context");
        this.window = window;
        this.desc = desc;
        this.makeFast = makeFast;
    }

    public void run() {
        IWorkbenchPage page = this.window.getActivePage();
        if (page != null) {
            try {
                if (this.makeFast) {
                    WorkbenchPage wp = (WorkbenchPage)page;
                    Perspective persp = wp.getActivePerspective();
                    boolean useNewMinMax = Perspective.useNewMinMax(persp);
                    if (useNewMinMax) {
                        IViewReference ref = persp.getViewReference(this.desc.getId(), null);
                        if (ref == null) {
                            return;
                        }
                        persp.getFastViewManager().addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, ref, true);
                        wp.activate(ref.getPart(true));
                        return;
                    }
                    IViewReference ref = wp.findViewReference(this.desc.getId());
                    if (ref == null) {
                        IViewPart part = page.showView(this.desc.getId(), null, 3);
                        ref = (IViewReference)wp.getReference(part);
                    }
                    if (!wp.isFastView(ref) && persp != null) {
                        persp.getFastViewManager().addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, ref, true);
                    }
                    wp.activate(ref.getPart(true));
                } else {
                    page.showView(this.desc.getId());
                }
            }
            catch (PartInitException e) {
                ErrorDialog.openError((Shell)this.window.getShell(), (String)WorkbenchMessages.ShowView_errorTitle, (String)e.getMessage(), (IStatus)e.getStatus());
            }
        }
    }

    public String getLocalId() {
        return this.desc.getId();
    }

    public String getPluginId() {
        return this.desc instanceof IPluginContribution ? ((IPluginContribution)((Object)this.desc)).getPluginId() : null;
    }
}

