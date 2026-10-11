/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.WorkspaceJob
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.sphinx.platform.resources;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.messages.PlatformMessages;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerJob
extends WorkspaceJob {
    public static final MarkerJob INSTANCE = new MarkerJob();
    protected Queue<MarkerTask> taskQueue = new ConcurrentLinkedQueue<MarkerTask>();

    protected MarkerJob() {
        super(PlatformMessages.job_updatingProblemMarkers);
        this.setSystem(true);
        this.setPriority(40);
        this.setRule((ISchedulingRule)ResourcesPlugin.getWorkspace().getRoot());
    }

    public IStatus runInWorkspace(IProgressMonitor monitor) throws CoreException {
        MarkerTask mt = null;
        while ((mt = this.taskQueue.poll()) != null) {
            try {
                mt.execute();
            }
            catch (CoreException ex) {
                if (!mt.resource.isAccessible() || !mt.resource.isSynchronized(0)) continue;
                PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
            }
        }
        return Status.OK_STATUS;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addCreateMarkerTask(IResource resource, String type, int severity, String message) {
        CreateMarkerTask cmt = new CreateMarkerTask();
        cmt.resource = resource;
        cmt.type = type;
        cmt.severity = severity;
        cmt.message = message;
        Queue<MarkerTask> queue = this.taskQueue;
        synchronized (queue) {
            this.taskQueue.add(cmt);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addCreateMarkerTask(IResource resource, String type, Map<String, Object> attributes) {
        CreateMarkerTask cmt = new CreateMarkerTask();
        cmt.resource = resource;
        cmt.type = type;
        cmt.attributes = attributes;
        Queue<MarkerTask> queue = this.taskQueue;
        synchronized (queue) {
            this.taskQueue.add(cmt);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addDeleteMarkerTask(IResource resource, String type) {
        DeleteMarkerTask dmt = new DeleteMarkerTask();
        dmt.resource = resource;
        dmt.type = type;
        Queue<MarkerTask> queue = this.taskQueue;
        synchronized (queue) {
            this.taskQueue.add(dmt);
        }
    }

    protected static class CreateMarkerTask
    extends MarkerTask {
        int severity;
        String message;
        Map<String, Object> attributes;

        protected CreateMarkerTask() {
        }

        void execute() throws CoreException {
            IMarker m = this.resource.createMarker(this.type);
            m.setAttribute("severity", this.severity);
            m.setAttribute("message", (Object)this.message);
            if (this.attributes != null) {
                m.setAttributes(this.attributes);
            }
        }
    }

    protected static class DeleteMarkerTask
    extends MarkerTask {
        protected DeleteMarkerTask() {
        }

        void execute() throws CoreException {
            this.resource.deleteMarkers(this.type, false, 0);
        }
    }

    protected static abstract class MarkerTask {
        IResource resource;
        String type;

        protected MarkerTask() {
        }

        abstract void execute() throws CoreException;
    }
}

