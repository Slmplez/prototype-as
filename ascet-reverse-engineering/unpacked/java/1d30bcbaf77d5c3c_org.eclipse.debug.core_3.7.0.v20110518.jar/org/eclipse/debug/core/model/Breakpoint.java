/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.debug.core.model;

import java.util.Map;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public abstract class Breakpoint
extends PlatformObject
implements IBreakpoint {
    private IMarker fMarker = null;

    static {
        DebugPlugin.getDefault().getBreakpointManager().getBreakpoints();
    }

    public void setMarker(IMarker marker) throws CoreException {
        this.fMarker = marker;
    }

    public boolean equals(Object item) {
        if (item instanceof IBreakpoint) {
            return this.getMarker().equals((Object)((IBreakpoint)item).getMarker());
        }
        return false;
    }

    public int hashCode() {
        return this.getMarker().hashCode();
    }

    public void setEnabled(boolean enabled) throws CoreException {
        if (enabled != this.isEnabled()) {
            this.setAttribute("org.eclipse.debug.core.enabled", enabled);
        }
    }

    public boolean isEnabled() throws CoreException {
        return this.getMarker().getAttribute("org.eclipse.debug.core.enabled", false);
    }

    public boolean isRegistered() throws CoreException {
        IMarker marker = this.getMarker();
        return marker.exists() && marker.getAttribute("org.eclipse.debug.core.registered", true);
    }

    public void setRegistered(boolean registered) throws CoreException {
        if (this.isRegistered() != registered) {
            this.setAttribute("org.eclipse.debug.core.registered", registered);
            IBreakpointManager mgr = DebugPlugin.getDefault().getBreakpointManager();
            if (registered) {
                mgr.addBreakpoint(this);
            } else {
                mgr.removeBreakpoint(this, false);
            }
        }
    }

    public void delete() throws CoreException {
        DebugPlugin.getDefault().getBreakpointManager().removeBreakpoint(this, false);
        this.getMarker().delete();
    }

    public IMarker getMarker() {
        return this.fMarker;
    }

    public boolean isPersisted() throws CoreException {
        return this.getMarker().getAttribute("org.eclipse.debug.core.persisted", true);
    }

    public void setPersisted(boolean persisted) throws CoreException {
        if (this.isPersisted() != persisted) {
            this.setAttributes(new String[]{"org.eclipse.debug.core.persisted", "transient"}, new Object[]{persisted, !persisted});
        }
    }

    protected void setAttribute(final String attributeName, final boolean value) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                Breakpoint.this.ensureMarker().setAttribute(attributeName, value);
            }
        };
        workspace.run(runnable, this.getMarkerRule(), 0, null);
    }

    protected void setAttribute(final String attributeName, final int value) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                Breakpoint.this.ensureMarker().setAttribute(attributeName, value);
            }
        };
        workspace.run(runnable, this.getMarkerRule(), 0, null);
    }

    protected void setAttribute(final String attributeName, final Object value) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                Breakpoint.this.ensureMarker().setAttribute(attributeName, value);
            }
        };
        workspace.run(runnable, this.getMarkerRule(), 0, null);
    }

    protected void setAttributes(final String[] attributeNames, final Object[] values) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                Breakpoint.this.ensureMarker().setAttributes(attributeNames, values);
            }
        };
        workspace.run(runnable, this.getMarkerRule(), 1, null);
    }

    protected void setAttributes(final Map attributes) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                Breakpoint.this.ensureMarker().setAttributes(attributes);
            }
        };
        workspace.run(runnable, this.getMarkerRule(), 1, null);
    }

    protected IMarker ensureMarker() throws DebugException {
        IMarker m = this.getMarker();
        if (m == null || !m.exists()) {
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.Breakpoint_no_associated_marker, null));
        }
        return m;
    }

    protected boolean markerExists() {
        IMarker m = this.getMarker();
        return m != null && m.exists();
    }

    protected ISchedulingRule getMarkerRule(IResource resource) {
        ISchedulingRule rule = null;
        if (resource != null) {
            IResourceRuleFactory ruleFactory = ResourcesPlugin.getWorkspace().getRuleFactory();
            rule = ruleFactory.markerRule(resource);
        }
        return rule;
    }

    protected ISchedulingRule getMarkerRule() {
        IResource resource;
        ISchedulingRule rule = null;
        IMarker marker = this.getMarker();
        if (marker != null && (resource = marker.getResource()) != null) {
            IResourceRuleFactory ruleFactory = ResourcesPlugin.getWorkspace().getRuleFactory();
            rule = ruleFactory.markerRule(resource);
        }
        return rule;
    }

    protected void run(ISchedulingRule rule, IWorkspaceRunnable wr) throws DebugException {
        try {
            ResourcesPlugin.getWorkspace().run(wr, rule, 0, null);
        }
        catch (CoreException e) {
            throw new DebugException(e.getStatus());
        }
    }
}

