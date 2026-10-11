/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;

public class WorkManager
implements IManager {
    private final ThreadLocal<Boolean> checkInFailed = new ThreadLocal();
    private boolean hasBuildChanges = false;
    private IJobManager jobManager;
    private final ILock lock;
    private int nestedOperations = 0;
    private NotifyRule notifyRule = new NotifyRule();
    private boolean operationCanceled = false;
    private int preparedOperations = 0;
    private Workspace workspace;

    public WorkManager(Workspace workspace) {
        this.workspace = workspace;
        this.jobManager = Job.getJobManager();
        this.lock = this.jobManager.newLock();
    }

    public int beginUnprotected() {
        int depth = this.lock.getDepth();
        int i = 0;
        while (i < depth) {
            this.lock.release();
            ++i;
        }
        return depth;
    }

    public void checkIn(ISchedulingRule rule, IProgressMonitor monitor) throws CoreException {
        boolean success = false;
        try {
            if (this.workspace.isTreeLocked()) {
                String msg = Messages.resources_cannotModify;
                throw new ResourceException(380, null, msg, null);
            }
            this.jobManager.beginRule(rule, monitor);
            this.lock.acquire();
            this.incrementPreparedOperations();
            success = true;
        }
        finally {
            if (!success) {
                this.checkInFailed.set(Boolean.TRUE);
            }
        }
    }

    public boolean checkInFailed(ISchedulingRule rule) {
        if (this.checkInFailed.get() != null) {
            this.checkInFailed.set(null);
            if (!this.workspace.isTreeLocked()) {
                this.jobManager.endRule(rule);
            }
            return true;
        }
        return false;
    }

    public synchronized void checkOut(ISchedulingRule rule) {
        this.decrementPreparedOperations();
        this.rebalanceNestedOperations();
        if (this.preparedOperations == 0) {
            this.hasBuildChanges = false;
            this.operationCanceled = false;
        }
        try {
            this.lock.release();
        }
        finally {
            this.jobManager.endRule(rule);
        }
    }

    private void decrementPreparedOperations() {
        --this.preparedOperations;
    }

    public void endUnprotected(int depth) {
        int i = 0;
        while (i < depth) {
            this.lock.acquire();
            ++i;
        }
    }

    ILock getLock() {
        return this.lock;
    }

    public ISchedulingRule getNotifyRule() {
        return this.notifyRule;
    }

    public synchronized int getPreparedOperationDepth() {
        return this.preparedOperations;
    }

    void incrementNestedOperations() {
        ++this.nestedOperations;
    }

    private void incrementPreparedOperations() {
        ++this.preparedOperations;
    }

    boolean isBalanced() {
        return this.nestedOperations == this.preparedOperations;
    }

    public boolean isLockAlreadyAcquired() {
        boolean result = false;
        try {
            boolean success = this.lock.acquire(0L);
            if (success) {
                result = this.lock.getDepth() > 1;
                this.lock.release();
            }
        }
        catch (InterruptedException interruptedException) {}
        return result;
    }

    public void operationCanceled() {
        this.operationCanceled = true;
    }

    public void rebalanceNestedOperations() {
        this.nestedOperations = this.preparedOperations;
    }

    public void setBuild(boolean hasChanges) {
        this.hasBuildChanges = this.hasBuildChanges || hasChanges;
    }

    public boolean shouldBuild() {
        if (this.hasBuildChanges) {
            return !this.operationCanceled;
        }
        return false;
    }

    public void shutdown(IProgressMonitor monitor) {
    }

    public void startup(IProgressMonitor monitor) {
        this.jobManager.beginRule((ISchedulingRule)this.workspace.getRoot(), monitor);
        this.lock.acquire();
    }

    void postWorkspaceStartup() {
        try {
            this.lock.release();
        }
        finally {
            this.jobManager.endRule((ISchedulingRule)this.workspace.getRoot());
        }
    }

    class NotifyRule
    implements ISchedulingRule {
        NotifyRule() {
        }

        public boolean contains(ISchedulingRule rule) {
            return rule instanceof IResource || rule.getClass().equals(NotifyRule.class);
        }

        public boolean isConflicting(ISchedulingRule rule) {
            return this.contains(rule);
        }
    }
}

