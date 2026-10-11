/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.refresh;

import java.util.ArrayList;
import org.eclipse.core.internal.refresh.RefreshManager;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.refresh.IRefreshMonitor;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.osgi.framework.Bundle;

public class PollingMonitor
extends Job
implements IRefreshMonitor {
    private static final long MAX_DURATION = 250L;
    private static final long HOT_ROOT_DECAY = 90000L;
    private static final long MIN_FREQUENCY = 4000L;
    private final ArrayList<IResource> resourceRoots;
    private final ArrayList<IResource> toRefresh;
    private IResource hotRoot;
    private long hotRootTime;
    private final RefreshManager refreshManager;
    private boolean firstRun = true;

    public PollingMonitor(RefreshManager manager) {
        super(Messages.refresh_pollJob);
        this.refreshManager = manager;
        this.setPriority(50);
        this.setSystem(true);
        this.resourceRoots = new ArrayList();
        this.toRefresh = new ArrayList();
    }

    public synchronized void monitor(IResource root) {
        this.resourceRoots.add(root);
        this.schedule(4000L);
    }

    protected IStatus run(IProgressMonitor monitor) {
        if (this.firstRun) {
            this.firstRun = false;
            Bundle bundle = Platform.getBundle((String)"org.eclipse.core.resources");
            long waitStart = System.currentTimeMillis();
            while (bundle.getState() == 8) {
                try {
                    Thread.sleep(10000L);
                }
                catch (InterruptedException interruptedException) {}
                if (System.currentTimeMillis() - waitStart > 90000L) break;
            }
        }
        long time = System.currentTimeMillis();
        if (this.toRefresh.isEmpty()) {
            this.beginIteration();
            if (RefreshManager.DEBUG) {
                System.out.println("Auto-refresh: New polling iteration on " + this.toRefresh.size() + " roots");
            }
        }
        int oldSize = this.toRefresh.size();
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh: started polling");
        }
        if (time - this.hotRootTime > 90000L) {
            this.hotRoot = null;
        } else if (this.hotRoot != null && !monitor.isCanceled()) {
            this.poll(this.hotRoot);
        }
        long loopStart = System.currentTimeMillis();
        while (!this.toRefresh.isEmpty()) {
            if (monitor.isCanceled()) break;
            this.poll(this.toRefresh.remove(this.toRefresh.size() - 1));
            if (System.currentTimeMillis() - loopStart > 250L) break;
        }
        time = System.currentTimeMillis() - time;
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh: polled " + (oldSize - this.toRefresh.size()) + " roots in " + time + "ms");
        }
        long delay = Math.max(4000L, time * 20L);
        if (!PollingMonitor.getJobManager().isIdle()) {
            delay *= 2L;
        }
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh: rescheduling polling job in: " + delay / 1000L + " seconds");
        }
        if (Platform.getBundle((String)"org.eclipse.core.resources").getState() == 32) {
            this.schedule(delay);
        }
        return Status.OK_STATUS;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void runOnce() {
        PollingMonitor pollingMonitor = this;
        synchronized (pollingMonitor) {
            IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects(8);
            int i = 0;
            while (i < projects.length) {
                this.toRefresh.add(projects[i]);
                ++i;
            }
        }
        this.schedule(4000L);
    }

    private void poll(IResource resource) {
        if (resource.isSynchronized(2)) {
            return;
        }
        if (resource.isLinked() && !((Resource)resource).getStore().fetchInfo().exists()) {
            return;
        }
        this.refreshManager.refresh(resource);
        this.hotRoot = resource;
        this.hotRootTime = System.currentTimeMillis();
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh: new hot root: " + resource);
        }
    }

    public boolean shouldRun() {
        return !this.resourceRoots.isEmpty() || !this.toRefresh.isEmpty();
    }

    private synchronized void beginIteration() {
        this.toRefresh.addAll(this.resourceRoots);
        if (this.hotRoot != null) {
            this.toRefresh.remove(this.hotRoot);
        }
    }

    public synchronized void unmonitor(IResource resource) {
        if (resource == null) {
            this.resourceRoots.clear();
        } else {
            this.resourceRoots.remove(resource);
        }
        if (this.resourceRoots.isEmpty()) {
            this.cancel();
        }
    }
}

