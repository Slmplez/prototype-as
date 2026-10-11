/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.jobs;

import java.util.HashMap;
import java.util.Stack;
import org.eclipse.core.internal.jobs.Deadlock;
import org.eclipse.core.internal.jobs.DeadlockDetector;
import org.eclipse.core.internal.jobs.OrderedLock;
import org.eclipse.core.internal.jobs.Worker;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.LockListener;

public class LockManager {
    protected LockListener lockListener;
    private DeadlockDetector locks = new DeadlockDetector();
    private HashMap suspendedLocks = new HashMap();

    public void aboutToRelease() {
        if (this.lockListener == null) {
            return;
        }
        try {
            this.lockListener.aboutToRelease();
        }
        catch (Exception e) {
            LockManager.handleException(e);
        }
        catch (LinkageError e) {
            LockManager.handleException(e);
        }
    }

    public boolean canBlock() {
        if (this.lockListener == null) {
            return true;
        }
        try {
            return this.lockListener.canBlock();
        }
        catch (Exception e) {
            LockManager.handleException(e);
        }
        catch (LinkageError e) {
            LockManager.handleException(e);
        }
        return false;
    }

    public boolean aboutToWait(Thread lockOwner) {
        if (this.lockListener == null) {
            return false;
        }
        try {
            return this.lockListener.aboutToWait(lockOwner);
        }
        catch (Exception e) {
            LockManager.handleException(e);
        }
        catch (LinkageError e) {
            LockManager.handleException(e);
        }
        return false;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addLockThread(Thread thread, ISchedulingRule lock) {
        DeadlockDetector tempLocks = this.locks;
        if (tempLocks == null) {
            return;
        }
        try {
            DeadlockDetector deadlockDetector = tempLocks;
            synchronized (deadlockDetector) {
                tempLocks.lockAcquired(thread, lock);
            }
        }
        catch (Exception e) {
            this.handleInternalError(e);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addLockWaitThread(Thread thread, ISchedulingRule lock) {
        DeadlockDetector tempLocks = this.locks;
        if (tempLocks == null) {
            return;
        }
        try {
            Deadlock found = null;
            DeadlockDetector deadlockDetector = tempLocks;
            synchronized (deadlockDetector) {
                found = tempLocks.lockWaitStart(thread, lock);
            }
            if (found == null) {
                return;
            }
            ISchedulingRule[] toSuspend = found.getLocks();
            LockState[] suspended = new LockState[toSuspend.length];
            int i = 0;
            while (i < toSuspend.length) {
                suspended[i] = LockState.suspend((OrderedLock)toSuspend[i]);
                ++i;
            }
            HashMap hashMap = this.suspendedLocks;
            synchronized (hashMap) {
                Stack<LockState[]> prevLocks = (Stack<LockState[]>)this.suspendedLocks.get(found.getCandidate());
                if (prevLocks == null) {
                    prevLocks = new Stack<LockState[]>();
                }
                prevLocks.push(suspended);
                this.suspendedLocks.put(found.getCandidate(), prevLocks);
            }
        }
        catch (Exception e) {
            this.handleInternalError(e);
        }
    }

    private static void handleException(Throwable e) {
        MultiStatus status;
        if (e instanceof CoreException) {
            status = new MultiStatus("org.eclipse.core.jobs", 2, "LockManager.handleException", e);
            status.merge(((CoreException)e).getStatus());
        } else {
            status = new Status(4, "org.eclipse.core.jobs", 2, "LockManager.handleException", e);
        }
        RuntimeLog.log((IStatus)status);
    }

    private void handleInternalError(Throwable t) {
        try {
            LockManager.handleException(t);
            LockManager.handleException(new Exception(this.locks.toDebugString()));
        }
        catch (Exception exception) {}
        this.locks = null;
    }

    public boolean isEmpty() {
        return this.locks.isEmpty();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isLockOwner() {
        Thread current = Thread.currentThread();
        if (current instanceof Worker) {
            return true;
        }
        DeadlockDetector tempLocks = this.locks;
        if (tempLocks == null) {
            return false;
        }
        DeadlockDetector deadlockDetector = tempLocks;
        synchronized (deadlockDetector) {
            return tempLocks.contains(Thread.currentThread());
        }
    }

    public synchronized OrderedLock newLock() {
        return new OrderedLock(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeLockCompletely(Thread thread, ISchedulingRule rule) {
        DeadlockDetector tempLocks = this.locks;
        if (tempLocks == null) {
            return;
        }
        try {
            DeadlockDetector deadlockDetector = tempLocks;
            synchronized (deadlockDetector) {
                tempLocks.lockReleasedCompletely(thread, rule);
            }
        }
        catch (Exception e) {
            this.handleInternalError(e);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeLockThread(Thread thread, ISchedulingRule lock) {
        DeadlockDetector tempLocks = this.locks;
        if (tempLocks == null) {
            return;
        }
        try {
            DeadlockDetector deadlockDetector = tempLocks;
            synchronized (deadlockDetector) {
                tempLocks.lockReleased(thread, lock);
            }
        }
        catch (Exception e) {
            this.handleInternalError(e);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeLockWaitThread(Thread thread, ISchedulingRule lock) {
        DeadlockDetector tempLocks = this.locks;
        if (tempLocks == null) {
            return;
        }
        try {
            DeadlockDetector deadlockDetector = tempLocks;
            synchronized (deadlockDetector) {
                tempLocks.lockWaitStop(thread, lock);
            }
        }
        catch (Exception e) {
            this.handleInternalError(e);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void resumeSuspendedLocks(Thread owner) {
        LockState[] toResume;
        HashMap hashMap = this.suspendedLocks;
        synchronized (hashMap) {
            Stack prevLocks = (Stack)this.suspendedLocks.get(owner);
            if (prevLocks == null) {
                return;
            }
            toResume = (LockState[])prevLocks.pop();
            if (prevLocks.empty()) {
                this.suspendedLocks.remove(owner);
            }
        }
        int i = 0;
        while (i < toResume.length) {
            toResume[i].resume();
            ++i;
        }
    }

    public void setLockListener(LockListener listener) {
        this.lockListener = listener;
    }

    private static class LockState {
        private int depth;
        private OrderedLock lock;

        private LockState() {
        }

        protected static LockState suspend(OrderedLock lock) {
            LockState state = new LockState();
            state.lock = lock;
            state.depth = lock.forceRelease();
            return state;
        }

        public void resume() {
            while (true) {
                try {
                    while (!this.lock.acquire(Long.MAX_VALUE)) {
                    }
                }
                catch (InterruptedException interruptedException) {
                    continue;
                }
                break;
            }
            this.lock.setDepth(this.depth);
        }
    }
}

