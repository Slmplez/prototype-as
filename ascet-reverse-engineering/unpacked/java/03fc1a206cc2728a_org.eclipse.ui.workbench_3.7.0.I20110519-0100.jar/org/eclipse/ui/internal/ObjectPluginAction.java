/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.PluginAction;

public class ObjectPluginAction
extends PluginAction
implements IPartListener2 {
    public static final String ATT_OVERRIDE_ACTION_ID = "overrideActionId";
    private String overrideActionId;
    private IWorkbenchPart activePart;

    public void partActivated(IWorkbenchPartReference partRef) {
    }

    public void partBroughtToTop(IWorkbenchPartReference partRef) {
    }

    public void partClosed(IWorkbenchPartReference partRef) {
        if (this.activePart != null && partRef.getPart(false) == this.activePart) {
            this.selectionChanged((ISelection)StructuredSelection.EMPTY);
            this.disposeDelegate();
            this.activePart = null;
        }
    }

    public void partDeactivated(IWorkbenchPartReference partRef) {
    }

    public void partHidden(IWorkbenchPartReference partRef) {
    }

    public void partInputChanged(IWorkbenchPartReference partRef) {
    }

    public void partOpened(IWorkbenchPartReference partRef) {
    }

    public void partVisible(IWorkbenchPartReference partRef) {
    }

    public ObjectPluginAction(IConfigurationElement actionElement, String id, int style) {
        super(actionElement, id, style);
        this.overrideActionId = actionElement.getAttribute(ATT_OVERRIDE_ACTION_ID);
    }

    protected void initDelegate() {
        super.initDelegate();
        IActionDelegate actionDelegate = this.getDelegate();
        if (actionDelegate instanceof IObjectActionDelegate && this.activePart != null) {
            final IObjectActionDelegate objectActionDelegate = (IObjectActionDelegate)actionDelegate;
            ISafeRunnable runnable = new ISafeRunnable(){

                public void run() throws Exception {
                    objectActionDelegate.setActivePart((IAction)ObjectPluginAction.this, ObjectPluginAction.this.activePart);
                }

                public void handleException(Throwable exception) {
                }
            };
            Platform.run((ISafeRunnable)runnable);
        }
    }

    public void setActivePart(IWorkbenchPart targetPart) {
        if (this.activePart != targetPart) {
            if (this.activePart != null) {
                this.activePart.getSite().getPage().removePartListener(this);
            }
            if (targetPart != null) {
                targetPart.getSite().getPage().addPartListener(this);
            }
        }
        this.activePart = targetPart;
        IActionDelegate delegate = this.getDelegate();
        if (delegate instanceof IObjectActionDelegate && this.activePart != null) {
            final IObjectActionDelegate objectActionDelegate = (IObjectActionDelegate)delegate;
            ISafeRunnable runnable = new ISafeRunnable(){

                public void run() throws Exception {
                    objectActionDelegate.setActivePart((IAction)ObjectPluginAction.this, ObjectPluginAction.this.activePart);
                }

                public void handleException(Throwable exception) {
                }
            };
            Platform.run((ISafeRunnable)runnable);
        }
    }

    public String getOverrideActionId() {
        return this.overrideActionId;
    }

    public void dispose() {
        if (this.activePart != null) {
            this.activePart.getSite().getPage().removePartListener(this);
            this.activePart = null;
        }
        super.dispose();
    }
}

