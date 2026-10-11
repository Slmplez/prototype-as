/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.refresh;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.internal.localstore.PrefixPool;
import org.eclipse.core.internal.refresh.RefreshManager;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RefreshJob
extends WorkspaceJob {
    private static final long UPDATE_DELAY = 200L;
    private final List<IResource> fRequests = new ArrayList<IResource>(1);
    private PrefixPool pathPrefixHistory;
    private PrefixPool rootPathHistory;

    public RefreshJob() {
        super(Messages.refresh_jobName);
    }

    private synchronized void addRequest(IResource resource) {
        IPath toAdd = resource.getFullPath();
        Iterator<IResource> it = this.fRequests.iterator();
        while (it.hasNext()) {
            IPath request = it.next().getFullPath();
            if (toAdd.isPrefixOf(request)) {
                it.remove();
                continue;
            }
            if (!request.isPrefixOf(toAdd)) continue;
            return;
        }
        this.fRequests.add(resource);
    }

    private synchronized void addRequests(List<IResource> list) {
        this.fRequests.addAll(0, list);
    }

    public boolean belongsTo(Object family) {
        return family == ResourcesPlugin.FAMILY_AUTO_REFRESH;
    }

    private List<IResource> collectChildrenToDepth(IResource resource, ArrayList<IResource> children, int depth) {
        IResource[] members;
        if (resource.getType() == 1) {
            return children;
        }
        try {
            members = ((IContainer)resource).members();
        }
        catch (CoreException coreException) {
            return children;
        }
        int i = 0;
        while (i < members.length) {
            if (members[i].getType() != 1) {
                if (depth <= 1) {
                    children.add(members[i]);
                } else {
                    this.collectChildrenToDepth(members[i], children, depth - 1);
                }
            }
            ++i;
        }
        return children;
    }

    public PrefixPool getPathPrefixHistory() {
        if (this.pathPrefixHistory == null) {
            this.pathPrefixHistory = new PrefixPool(20);
        }
        return this.pathPrefixHistory;
    }

    public PrefixPool getRootPathHistory() {
        if (this.rootPathHistory == null) {
            this.rootPathHistory = new PrefixPool(20);
        }
        return this.rootPathHistory;
    }

    private synchronized IResource nextRequest() {
        int len = this.fRequests.size();
        if (len == 0) {
            return null;
        }
        return this.fRequests.remove(len - 1);
    }

    public void refresh(IResource resource) {
        if (resource == null) {
            return;
        }
        this.addRequest(resource);
        this.schedule(200L);
    }

    @Override
    public IStatus runInWorkspace(IProgressMonitor monitor) {
        long start = System.currentTimeMillis();
        String msg = Messages.refresh_refreshErr;
        MultiStatus errors = new MultiStatus("org.eclipse.core.resources", 1, msg, null);
        long longestRefresh = 0L;
        try {
            IResource toRefresh;
            if (RefreshManager.DEBUG) {
                Policy.debug("Auto-refresh:  starting refresh job");
            }
            int refreshCount = 0;
            int depth = 2;
            monitor.beginTask("", -1);
            while ((toRefresh = this.nextRequest()) != null) {
                if (monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                try {
                    ++refreshCount;
                    long refreshTime = -System.currentTimeMillis();
                    toRefresh.refreshLocal(1000 + depth, Policy.subMonitorFor(monitor, 0));
                    if ((refreshTime += System.currentTimeMillis()) > longestRefresh) {
                        longestRefresh = refreshTime;
                    }
                    if (refreshCount % 100 == 0) {
                        monitor.subTask(NLS.bind((String)Messages.refresh_task, (Object)Integer.toString(this.fRequests.size())));
                    }
                    if (refreshCount % 1000 == 0) {
                        Thread.yield();
                        if (longestRefresh > 2000L && depth > 1) {
                            depth = 1;
                        }
                        if (longestRefresh < 1000L) {
                            depth *= 2;
                        }
                        longestRefresh = 0L;
                    }
                    this.addRequests(this.collectChildrenToDepth(toRefresh, new ArrayList<IResource>(), depth));
                }
                catch (CoreException e) {
                    errors.merge((IStatus)new Status(4, "org.eclipse.core.resources", 1, errors.getMessage(), (Throwable)e));
                }
            }
        }
        finally {
            this.pathPrefixHistory = null;
            this.rootPathHistory = null;
            monitor.done();
            if (RefreshManager.DEBUG) {
                System.out.println("Auto-refresh:  finished refresh job in: " + (System.currentTimeMillis() - start) + "ms");
            }
        }
        if (!errors.isOK()) {
            return errors;
        }
        return Status.OK_STATUS;
    }

    public synchronized boolean shouldRun() {
        return !this.fRequests.isEmpty();
    }

    public void start() {
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh:  enabling auto-refresh");
        }
    }

    public void stop() {
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh:  disabling auto-refresh");
        }
        this.cancel();
    }
}

