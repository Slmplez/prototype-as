/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.internal.jobs.LockManager;
import org.eclipse.core.internal.jobs.Queue;
import org.eclipse.core.internal.jobs.Semaphore;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public class OrderedLock
implements ILock,
ISchedulingRule {
    private static final boolean DEBUG = false;
    private static int nextLockNumber = 0;
    private volatile Thread currentOperationThread;
    private int depth;
    private final LockManager manager;
    private final int number;
    private final Queue operations = new Queue();

    OrderedLock(LockManager manager) {
        this.manager = manager;
        this.number = nextLockNumber++;
    }

    public void acquire() {
        boolean interrupted = false;
        while (true) {
            try {
                while (!this.acquire(Long.MAX_VALUE)) {
                }
            }
            catch (InterruptedException interruptedException) {
                interrupted = true;
                continue;
            }
            break;
        }
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
    }

    public boolean acquire(long delay) throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        boolean success = false;
        if (delay <= 0L) {
            return this.attempt();
        }
        Semaphore semaphore = this.createSemaphore();
        if (semaphore == null) {
            return true;
        }
        success = this.doAcquire(semaphore, delay);
        this.manager.resumeSuspendedLocks(Thread.currentThread());
        if (!success && Thread.interrupted()) {
            throw new InterruptedException();
        }
        return success;
    }

    private synchronized boolean attempt() {
        if (this.currentOperationThread == Thread.currentThread() || this.currentOperationThread == null && this.operations.isEmpty()) {
            ++this.depth;
            this.setCurrentOperationThread(Thread.currentThread());
            return true;
        }
        return false;
    }

    public boolean contains(ISchedulingRule rule) {
        return rule == this;
    }

    private synchronized Semaphore createSemaphore() {
        return this.attempt() ? null : this.enqueue(new Semaphore(Thread.currentThread()));
    }

    private boolean doAcquire(Semaphore semaphore, long delay) {
        boolean success = false;
        if (this.manager.aboutToWait(this.currentOperationThread)) {
            this.removeFromQueue(semaphore);
            ++this.depth;
            this.manager.addLockThread(this.currentOperationThread, this);
            return true;
        }
        semaphore = this.createSemaphore();
        if (semaphore == null) {
            return true;
        }
        Thread currentThread = Thread.currentThread();
        this.manager.addLockWaitThread(currentThread, this);
        try {
            success = semaphore.acquire(delay);
        }
        catch (InterruptedException interruptedException) {
            currentThread.interrupt();
        }
        return this.updateOperationQueue(semaphore, success);
    }

    private synchronized void doRelease() {
        this.manager.aboutToRelease();
        this.depth = 0;
        Semaphore next = (Semaphore)this.operations.peek();
        this.setCurrentOperationThread(null);
        if (next != null) {
            next.release();
        }
    }

    private synchronized Semaphore enqueue(Semaphore newSemaphore) {
        Semaphore semaphore = (Semaphore)this.operations.get(newSemaphore);
        if (semaphore == null) {
            this.operations.enqueue(newSemaphore);
            return newSemaphore;
        }
        return semaphore;
    }

    protected int forceRelease() {
        int oldDepth = this.depth;
        this.doRelease();
        return oldDepth;
    }

    public int getDepth() {
        return this.depth;
    }

    public boolean isConflicting(ISchedulingRule rule) {
        return rule == this;
    }

    public void release() {
        if (this.depth == 0) {
            return;
        }
        Assert.isTrue((this.depth >= 0 ? 1 : 0) != 0, (String)"Lock released too many times");
        if (--this.depth == 0) {
            this.doRelease();
        } else {
            this.manager.removeLockThread(this.currentOperationThread, this);
        }
    }

    private synchronized void removeFromQueue(Semaphore semaphore) {
        this.operations.remove(semaphore);
    }

    private void setCurrentOperationThread(Thread newThread) {
        if (this.currentOperationThread != null && newThread == null) {
            this.manager.removeLockThread(this.currentOperationThread, this);
        }
        this.currentOperationThread = newThread;
        if (this.currentOperationThread != null) {
            this.manager.addLockThread(this.currentOperationThread, this);
        }
    }

    protected void setDepth(int newDepth) {
        int i = this.depth;
        while (i < newDepth) {
            this.manager.addLockThread(this.currentOperationThread, this);
            ++i;
        }
        this.depth = newDepth;
    }

    public String toString() {
        return "OrderedLock (" + this.number + ")";
    }

    private synchronized void updateCurrentOperation() {
        this.operations.dequeue();
        this.setCurrentOperationThread(Thread.currentThread());
    }

    private synchronized boolean updateOperationQueue(Semaphore semaphore, boolean acquired) {
        if (!acquired) {
            acquired = semaphore.attempt();
        }
        if (acquired) {
            ++this.depth;
            this.updateCurrentOperation();
        } else {
            this.removeFromQueue(semaphore);
            this.manager.removeLockWaitThread(Thread.currentThread(), this);
        }
        return acquired;
    }
}

