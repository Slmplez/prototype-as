/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.emf.transaction.util;

import java.util.IdentityHashMap;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.transaction.internal.EMFTransactionDebugOptions;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.ITransactionLock;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.transaction.util.Queue;

public class Lock
implements ITransactionLock {
    private static final IJobManager jobmgr = Job.getJobManager();
    private static long nextId = 0L;
    static final IStatus UI_REENTERED_STATUS = new Status(1, EMFTransactionPlugin.getPluginId(), 1, "UI thread re-entered to get the lock", null);
    private final long id;
    private volatile Thread owner = null;
    private int depth = 0;
    private final Queue waiting = new Queue();
    private final Map<Thread, Lock> yielders = new IdentityHashMap<Thread, Lock>();
    private final ThreadLocal<ILock> threadLock = new ThreadLocal<ILock>(){

        @Override
        protected ILock initialValue() {
            return Job.getJobManager().newLock();
        }
    };

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Lock() {
        Class<Lock> clazz = Lock.class;
        synchronized (Lock.class) {
            this.id = ++nextId;
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return;
        }
    }

    public Thread getOwner() {
        return this.owner;
    }

    public int getDepth() {
        if (Thread.currentThread() != this.owner) {
            return 0;
        }
        return this.depth;
    }

    public void acquire(boolean exclusive) throws InterruptedException {
        this.acquire(0L, exclusive);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean acquire(long timeout, boolean exclusive) throws InterruptedException {
        if (timeout < 0L) {
            IllegalArgumentException exc = new IllegalArgumentException("negative timeout");
            Tracing.throwing(Lock.class, "acquire", exc);
            throw exc;
        }
        if (Thread.interrupted()) {
            InterruptedException exc = new InterruptedException();
            Tracing.throwing(Lock.class, "acquire", exc);
            throw exc;
        }
        Thread current = Thread.currentThread();
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
            if (timeout > 0L) {
                Tracing.trace("::: Timed Acquire    [id=" + this.id + ", thread=" + current.getName() + ", exclusive=" + exclusive + ", timeout=" + timeout + ']' + " at " + Tracing.now());
            } else {
                Tracing.trace("::: Acquire          [id=" + this.id + ", thread=" + current.getName() + ", exclusive=" + exclusive + ']' + " at " + Tracing.now());
            }
        }
        boolean result = false;
        Queue.Wait node = null;
        Lock lock = this;
        synchronized (lock) {
            if (!exclusive || this.notYielded()) {
                if (current == this.owner) {
                    ++this.depth;
                    result = true;
                } else if (this.owner == null) {
                    this.depth = 1;
                    this.owner = current;
                    result = true;
                    this.getThreadLock().acquire();
                } else {
                    node = this.waiting.put(timeout, exclusive);
                }
            } else {
                if (this.owner == current) {
                    throw new InterruptedException(Messages.upgradeReadLock);
                }
                node = this.waiting.put(timeout, exclusive);
            }
        }
        if (node != null) {
            node.waitFor(timeout);
            lock = this;
            synchronized (lock) {
                if (node.wasNotified()) {
                    this.depth = 1;
                    this.owner = current;
                    result = true;
                }
            }
        }
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
            if (result) {
                Tracing.trace("::: Taken            [id=" + this.id + ", thread=" + current.getName() + ", depth=" + this.depth + ']' + " at " + Tracing.now());
            } else {
                Tracing.trace("::: Timed Out        [id=" + this.id + ", thread=" + current.getName() + ']' + " at " + Tracing.now());
            }
        }
        if (result) {
            this.resume();
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void uiSafeAcquire(boolean exclusive) throws InterruptedException {
        boolean acquired = false;
        Thread current = Thread.currentThread();
        Job currentJob = jobmgr.currentJob();
        AcquireRule jobRule = currentJob != null ? null : new AcquireRule();
        Thread.interrupted();
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
            Tracing.trace("::: UI-Safe Acquire  [id=" + this.id + ", thread=" + current.getName() + ']' + " at " + Tracing.now());
        }
        if (acquired = this.uninterruptibleAcquire(250L, exclusive)) {
            assert (this.getOwner() == current);
            return;
        }
        AcquireJob job = new AcquireJob(current, exclusive);
        job.setRule(jobRule);
        while (!acquired) {
            Object object;
            ILock jobLock;
            Object sync;
            block42: {
                sync = job.getSync();
                jobLock = job.getILock();
                job.aborted = false;
                Object object2 = sync;
                synchronized (object2) {
                    if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                        Tracing.trace("::: Scheduling       [id=" + this.id + ", thread=" + current.getName() + ']' + " at " + Tracing.now());
                    }
                    job.schedule();
                    if (Job.getJobManager().isSuspended()) {
                        job.abort();
                        this.acquire(exclusive);
                        return;
                    }
                    Lock.uninterruptibleWait(sync);
                }
                try {
                    InterruptedException exc;
                    try {
                        IStatus jobStatus;
                        if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                            Tracing.trace("::: Blocking         [id=" + this.id + ", thread=" + current.getName() + ']' + " at " + Tracing.now());
                        }
                        if (jobRule == null) {
                            jobLock.acquire();
                        } else {
                            jobmgr.beginRule((ISchedulingRule)jobRule, null);
                        }
                        if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                            Tracing.trace("::: Unblocked        [id=" + this.id + ", thread=" + current.getName() + ']' + " at " + Tracing.now());
                        }
                        if ((jobStatus = job.getAcquireStatus()) == null) {
                            throw new InterruptedException("Interrupted because a deadlock was detected");
                        }
                        if (jobStatus.getSeverity() < 2) {
                            Lock lock = this;
                            synchronized (lock) {
                                if (jobStatus == UI_REENTERED_STATUS) {
                                    if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                                        Tracing.trace("::: Lock Recursion   [id=" + this.id + ", thread=" + current.getName() + ']' + " at " + Tracing.now());
                                    }
                                    try {
                                        acquired = this.acquire(250L, exclusive);
                                    }
                                    catch (InterruptedException interruptedException) {
                                        Thread.interrupted();
                                    }
                                } else {
                                    acquired = this.getOwner() == current;
                                    this.getThreadLock().acquire();
                                    if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING) && acquired) {
                                        Tracing.trace("::: Taken            [id=" + this.id + ", thread=" + current.getName() + ", depth=" + this.depth + ']' + " at " + Tracing.now());
                                    }
                                }
                            }
                            this.resume();
                            break block42;
                        }
                        if (jobStatus.getSeverity() == 8) {
                            Thread.interrupted();
                            exc = new InterruptedException();
                            Tracing.throwing(Lock.class, "uiSafeAcquire", exc);
                            throw exc;
                        }
                    }
                    catch (OperationCanceledException operationCanceledException) {
                        Thread.interrupted();
                        InterruptedException exc2 = new InterruptedException();
                        Tracing.throwing(Lock.class, "uiSafeAcquire", exc2);
                        throw exc2;
                    }
                    catch (IllegalArgumentException e) {
                        Tracing.catching(Lock.class, "uiSafeAcquire", e);
                        exc = e.getLocalizedMessage() != null ? new InterruptedException(e.getLocalizedMessage()) : new InterruptedException();
                        Tracing.throwing(Lock.class, "uiSafeAcquire", exc);
                        throw exc;
                    }
                }
                catch (Throwable throwable) {
                    object = sync;
                    synchronized (object) {
                        if (!acquired && !job.abort()) {
                            this.release();
                        }
                    }
                    if (jobRule == null) {
                        jobLock.release();
                    } else {
                        jobmgr.endRule((ISchedulingRule)jobRule);
                    }
                    throw throwable;
                }
            }
            object = sync;
            synchronized (object) {
                if (!acquired && !job.abort()) {
                    this.release();
                }
            }
            if (jobRule == null) {
                jobLock.release();
                continue;
            }
            jobmgr.endRule((ISchedulingRule)jobRule);
        }
        assert (this.getOwner() == current);
    }

    private boolean uninterruptibleAcquire(long timeout, boolean exclusive) {
        if (timeout <= 0L) {
            IllegalArgumentException exc = new IllegalArgumentException("nonpositive timeout");
            Tracing.throwing(Lock.class, "uninterruptibleAcquire", exc);
            throw exc;
        }
        long start = System.currentTimeMillis();
        boolean result = false;
        while (timeout > 0L) {
            try {
                result = this.acquire(timeout, exclusive);
                break;
            }
            catch (InterruptedException interruptedException) {
                Thread.interrupted();
                long when = System.currentTimeMillis();
                timeout -= when - start;
                start = when;
            }
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void uninterruptibleWait(Object o) {
        Object object = o;
        synchronized (object) {
            while (true) {
                try {
                    o.wait();
                }
                catch (InterruptedException interruptedException) {
                    Thread.interrupted();
                    continue;
                }
                break;
            }
        }
    }

    public synchronized void release() {
        block4: {
            if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                Tracing.trace("::: Release          [id=" + this.id + ", thread=" + Thread.currentThread().getName() + ", depth=" + (this.depth - 1) + ']' + " at " + Tracing.now());
            }
            if (Thread.currentThread() != this.owner) {
                IllegalArgumentException exc = new IllegalArgumentException("Lock not owned by current thread");
                Tracing.throwing(Lock.class, "release", exc);
                throw exc;
            }
            --this.depth;
            if (this.depth == 0) {
                Queue.Wait node;
                this.getThreadLock().release();
                boolean allowExclusive = this.notYielded();
                do {
                    if ((node = this.waiting.take(allowExclusive)) != null) continue;
                    this.owner = null;
                    break block4;
                } while (!node.wakeUp());
                this.owner = node.getThread();
            }
        }
    }

    private boolean notYielded() {
        return this.yielders.isEmpty();
    }

    public synchronized boolean yield() {
        boolean result;
        boolean bl = result = this.waiting.size() > this.waiting.exclusiveCount();
        if (result) {
            this.yielders.put(Thread.currentThread(), this);
        }
        if (result && Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
            Tracing.trace("::: Yielding         [id=" + this.id + ", thread=" + Thread.currentThread().getName() + ']' + " at " + Tracing.now());
        }
        return result;
    }

    private void resume() {
        boolean removed;
        boolean bl = removed = this.yielders.remove(Thread.currentThread()) == this;
        if (removed && Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
            Tracing.trace("::: Resuming         [id=" + this.id + ", thread=" + Thread.currentThread().getName() + ']' + " at " + Tracing.now());
        }
    }

    synchronized void transfer(Thread thread) {
        if (thread == null) {
            throw new IllegalArgumentException("thread is null");
        }
        if (this.owner != null) {
            Thread current = Thread.currentThread();
            if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                Tracing.trace("::: Transfer         [id=" + this.id + ", src=" + current.getName() + ", dst=" + thread.getName() + ']' + " at " + Tracing.now());
            }
            if (current == thread) {
                this.getThreadLock().acquire();
            } else if (current == this.owner) {
                this.getThreadLock().release();
            }
            this.owner = thread;
        }
    }

    private ILock getThreadLock() {
        return this.threadLock.get();
    }

    public String toString() {
        Thread lastKnownOwner = this.owner;
        return "Lock[id=" + this.id + ", depth=" + this.depth + ", owner=" + (lastKnownOwner == null ? null : lastKnownOwner.getName()) + ", waiting=" + this.waiting + ']';
    }

    public void checkedTransfer(Thread thread) {
        new Access(){}.transfer(thread);
    }

    public abstract class Access {
        protected Access() {
            this.checkSubclass();
        }

        public void transfer(Thread thread) {
            Lock.this.transfer(thread);
        }

        private void checkSubclass() {
            String name = this.getClass().getName();
            String packageName = name.substring(0, name.lastIndexOf(46) + 1);
            if (!packageName.startsWith("org.eclipse.emf.transaction")) {
                throw new IllegalArgumentException("Illegal subclass");
            }
        }
    }

    class AcquireJob
    extends Job {
        private final Object sync;
        private final Thread thread;
        private final boolean exclusive;
        private final ILock ilock;
        private IStatus acquireStatus;
        private boolean aborted;
        private boolean transferred;

        AcquireJob(Thread schedulingThread, boolean exclusive) {
            super(Messages.acquireJobLabel);
            this.sync = new Object();
            this.ilock = jobmgr.newLock();
            this.thread = schedulingThread;
            this.exclusive = exclusive;
            this.setSystem(true);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         * WARNING - Removed back jump from a try to a catch block - possible behaviour change.
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        protected IStatus run(IProgressMonitor monitor) {
            this.ilock.acquire();
            var2_2 = this.sync;
            synchronized (var2_2) {
                this.sync.notifyAll();
                ** GOTO lbl-1000
            }
            finally {
                this.ilock.release();
            }
            while (true) {
                try {
                    var2_2 = Lock.this;
                    synchronized (var2_2) {
                        if (Lock.this.getOwner() == this.thread) {
                            var4_3 = this.acquireStatus = Lock.UI_REENTERED_STATUS;
                            return var4_3;
                        }
                    }
                }
                catch (InterruptedException v2) {
                    Thread.interrupted();
                    var4_5 = this.acquireStatus = Status.CANCEL_STATUS;
                    return var4_5;
                }
                var2_2 = this.sync;
                synchronized (var2_2) {
                    if (this.aborted || monitor.isCanceled()) {
                        var4_4 = this.acquireStatus = Status.CANCEL_STATUS;
                        return var4_4;
                    }
                    ** finally { 
                }
                break;
            }
lbl-1000:
            // 1 sources

            {
                if (!Lock.this.acquire(250L, this.exclusive)) ** continue;
            }
            var2_2 = this.sync;
            synchronized (var2_2) {
                if (this.aborted) {
                    Lock.this.release();
                    this.acquireStatus = Status.CANCEL_STATUS;
                } else {
                    Lock.this.transfer(this.thread);
                    this.transferred = true;
                    this.acquireStatus = Status.OK_STATUS;
                }
                return this.acquireStatus;
            }
        }

        public final Object getSync() {
            return this.sync;
        }

        ILock getILock() {
            return this.ilock;
        }

        IStatus getAcquireStatus() {
            return this.acquireStatus;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        boolean abort() {
            boolean result;
            Object object = this.sync;
            synchronized (object) {
                result = !this.transferred;
                this.transferred = false;
                this.aborted = true;
                if (Tracing.shouldTrace(EMFTransactionDebugOptions.LOCKING)) {
                    Tracing.trace("::: Aborted          [id=" + Lock.this.id + ", thread=" + Thread.currentThread().getName() + ", for=" + this.thread.getName() + ']' + " at " + Tracing.now());
                }
            }
            return result;
        }
    }

    static class AcquireRule
    implements ISchedulingRule {
        AcquireRule() {
        }

        public boolean contains(ISchedulingRule rule) {
            return rule == this;
        }

        public boolean isConflicting(ISchedulingRule rule) {
            return rule == this;
        }
    }
}

