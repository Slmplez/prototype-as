/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.jobs;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import org.eclipse.core.internal.jobs.Deadlock;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

class DeadlockDetector {
    private static int NO_STATE = 0;
    private static int WAITING_FOR_LOCK = -1;
    private static final int[][] EMPTY_MATRIX = new int[0][0];
    private int[][] graph = EMPTY_MATRIX;
    private final ArrayList locks = new ArrayList();
    private final ArrayList lockThreads = new ArrayList();
    private boolean resize = false;

    DeadlockDetector() {
    }

    private boolean addCycleThreads(ArrayList deadlockedThreads, Thread next) {
        Thread[] blocking = this.blockingThreads(next);
        if (blocking.length == 0) {
            return false;
        }
        boolean inCycle = false;
        int i = 0;
        while (i < blocking.length) {
            if (deadlockedThreads.contains(blocking[i])) {
                inCycle = true;
            } else {
                deadlockedThreads.add(blocking[i]);
                if (this.addCycleThreads(deadlockedThreads, blocking[i])) {
                    inCycle = true;
                } else {
                    deadlockedThreads.remove(blocking[i]);
                }
            }
            ++i;
        }
        return inCycle;
    }

    private Thread[] blockingThreads(Thread current) {
        ISchedulingRule lock = (ISchedulingRule)this.getWaitingLock(current);
        return this.getThreadsOwningLock(lock);
    }

    private boolean checkWaitCycles(int[] waitingThreads, int lockIndex) {
        int i = 0;
        while (i < this.graph.length) {
            if (this.graph[i][lockIndex] > NO_STATE) {
                if (waitingThreads[i] > NO_STATE) {
                    return true;
                }
                int n = i;
                waitingThreads[n] = waitingThreads[n] + 1;
                int j = 0;
                while (j < this.graph[i].length) {
                    if (this.graph[i][j] == WAITING_FOR_LOCK && this.checkWaitCycles(waitingThreads, j)) {
                        return true;
                    }
                    ++j;
                }
                int n2 = i;
                waitingThreads[n2] = waitingThreads[n2] - 1;
            }
            ++i;
        }
        return false;
    }

    boolean contains(Thread t) {
        return this.lockThreads.contains(t);
    }

    private void fillPresentEntries(ISchedulingRule newLock, int lockIndex) {
        int i;
        int j = 0;
        while (j < this.locks.size()) {
            if (j != lockIndex && newLock.isConflicting((ISchedulingRule)this.locks.get(j))) {
                i = 0;
                while (i < this.graph.length) {
                    if (this.graph[i][j] > NO_STATE && this.graph[i][lockIndex] == NO_STATE) {
                        this.graph[i][lockIndex] = this.graph[i][j];
                    }
                    ++i;
                }
            }
            ++j;
        }
        j = 0;
        while (j < this.locks.size()) {
            if (j != lockIndex && newLock.isConflicting((ISchedulingRule)this.locks.get(j))) {
                i = 0;
                while (i < this.graph.length) {
                    if (this.graph[i][lockIndex] > NO_STATE && this.graph[i][j] == NO_STATE) {
                        this.graph[i][j] = this.graph[i][lockIndex];
                    }
                    ++i;
                }
            }
            ++j;
        }
    }

    private Object[] getOwnedLocks(Thread current) {
        ArrayList ownedLocks = new ArrayList(1);
        int index = this.indexOf(current, false);
        int j = 0;
        while (j < this.graph[index].length) {
            if (this.graph[index][j] > NO_STATE) {
                ownedLocks.add(this.locks.get(j));
            }
            ++j;
        }
        if (ownedLocks.size() == 0) {
            Assert.isLegal((boolean)false, (String)"A thread with no locks is part of a deadlock.");
        }
        return ownedLocks.toArray();
    }

    private Thread[] getThreadsInDeadlock(Thread cause) {
        ArrayList<Thread> deadlockedThreads = new ArrayList<Thread>(2);
        if (this.ownsLocks(cause)) {
            deadlockedThreads.add(cause);
        }
        this.addCycleThreads(deadlockedThreads, cause);
        return deadlockedThreads.toArray(new Thread[deadlockedThreads.size()]);
    }

    private Thread[] getThreadsOwningLock(ISchedulingRule rule) {
        if (rule == null) {
            return new Thread[0];
        }
        int lockIndex = this.indexOf(rule, false);
        ArrayList blocking = new ArrayList(1);
        int i = 0;
        while (i < this.graph.length) {
            if (this.graph[i][lockIndex] > NO_STATE) {
                blocking.add(this.lockThreads.get(i));
            }
            ++i;
        }
        if (blocking.size() == 0 && JobManager.DEBUG_LOCKS) {
            System.out.println("Lock " + rule + " is involved in deadlock but is not owned by any thread.");
        }
        if (blocking.size() > 1 && rule instanceof ILock && JobManager.DEBUG_LOCKS) {
            System.out.println("Lock " + rule + " is owned by more than 1 thread, but it is not a rule.");
        }
        return blocking.toArray(new Thread[blocking.size()]);
    }

    private Object getWaitingLock(Thread current) {
        int index = this.indexOf(current, false);
        int j = 0;
        while (j < this.graph[index].length) {
            if (this.graph[index][j] == WAITING_FOR_LOCK) {
                return this.locks.get(j);
            }
            ++j;
        }
        return null;
    }

    private int indexOf(ISchedulingRule lock, boolean add) {
        int index = this.locks.indexOf(lock);
        if (index < 0 && add) {
            this.locks.add(lock);
            this.resize = true;
            index = this.locks.size() - 1;
        }
        return index;
    }

    private int indexOf(Thread owner, boolean add) {
        int index = this.lockThreads.indexOf(owner);
        if (index < 0 && add) {
            this.lockThreads.add(owner);
            this.resize = true;
            index = this.lockThreads.size() - 1;
        }
        return index;
    }

    boolean isEmpty() {
        return this.locks.size() == 0 && this.lockThreads.size() == 0 && this.graph.length == 0;
    }

    void lockAcquired(Thread owner, ISchedulingRule lock) {
        int lockIndex = this.indexOf(lock, true);
        int threadIndex = this.indexOf(owner, true);
        if (this.resize) {
            this.resizeGraph();
        }
        if (this.graph[threadIndex][lockIndex] == WAITING_FOR_LOCK) {
            this.graph[threadIndex][lockIndex] = NO_STATE;
        }
        ArrayList<ISchedulingRule> conflicting = new ArrayList<ISchedulingRule>(1);
        int NUM_PASSES = 2;
        conflicting.add(lock);
        int[] nArray = this.graph[threadIndex];
        int n = lockIndex;
        nArray[n] = nArray[n] + 1;
        int i = 0;
        while (i < NUM_PASSES) {
            int k = 0;
            while (k < conflicting.size()) {
                ISchedulingRule current = (ISchedulingRule)conflicting.get(k);
                int j = 0;
                while (j < this.locks.size()) {
                    ISchedulingRule possible = (ISchedulingRule)this.locks.get(j);
                    if (current.isConflicting(possible) && !conflicting.contains(possible)) {
                        conflicting.add(possible);
                        int[] nArray2 = this.graph[threadIndex];
                        int n2 = j;
                        nArray2[n2] = nArray2[n2] + 1;
                    }
                    ++j;
                }
                ++k;
            }
            ++i;
        }
    }

    void lockReleased(Thread owner, ISchedulingRule lock) {
        int lockIndex = this.indexOf(lock, false);
        int threadIndex = this.indexOf(owner, false);
        if (threadIndex < 0) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("[lockReleased] Lock " + lock + " was already released by thread " + owner.getName());
            }
            return;
        }
        if (lockIndex < 0) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("[lockReleased] Thread " + owner.getName() + " already released lock " + lock);
            }
            return;
        }
        if (lock instanceof ILock && this.graph[threadIndex][lockIndex] == WAITING_FOR_LOCK) {
            this.graph[threadIndex][lockIndex] = NO_STATE;
            return;
        }
        int j = 0;
        while (j < this.graph[threadIndex].length) {
            if (lock.isConflicting((ISchedulingRule)this.locks.get(j)) || !(lock instanceof ILock) && !(this.locks.get(j) instanceof ILock) && this.graph[threadIndex][j] > NO_STATE) {
                if (this.graph[threadIndex][j] == NO_STATE) {
                    if (JobManager.DEBUG_LOCKS) {
                        System.out.println("[lockReleased] More releases than acquires for thread " + owner.getName() + " and lock " + lock);
                    }
                } else {
                    int[] nArray = this.graph[threadIndex];
                    int n = j;
                    nArray[n] = nArray[n] - 1;
                }
            }
            ++j;
        }
        if (this.graph[threadIndex][lockIndex] == NO_STATE) {
            this.reduceGraph(threadIndex, lock);
        }
    }

    void lockReleasedCompletely(Thread owner, ISchedulingRule rule) {
        int ruleIndex = this.indexOf(rule, false);
        int threadIndex = this.indexOf(owner, false);
        if (threadIndex < 0) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("[lockReleasedCompletely] Lock " + rule + " was already released by thread " + owner.getName());
            }
            return;
        }
        if (ruleIndex < 0) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("[lockReleasedCompletely] Thread " + owner.getName() + " already released lock " + rule);
            }
            return;
        }
        int j = 0;
        while (j < this.graph[threadIndex].length) {
            if (!(this.locks.get(j) instanceof ILock) && this.graph[threadIndex][j] > NO_STATE) {
                this.graph[threadIndex][j] = NO_STATE;
            }
            ++j;
        }
        this.reduceGraph(threadIndex, rule);
    }

    Deadlock lockWaitStart(Thread client, ISchedulingRule lock) {
        this.setToWait(client, lock, false);
        int lockIndex = this.indexOf(lock, false);
        int[] temp = new int[this.lockThreads.size()];
        if (!this.checkWaitCycles(temp, lockIndex)) {
            return null;
        }
        Thread[] threads = this.getThreadsInDeadlock(client);
        Thread candidate = this.resolutionCandidate(threads);
        ISchedulingRule[] locksToSuspend = this.realLocksForThread(candidate);
        Deadlock deadlock = new Deadlock(threads, locksToSuspend, candidate);
        this.reportDeadlock(deadlock);
        if (JobManager.DEBUG_DEADLOCK) {
            throw new IllegalStateException("Deadlock detected. Caused by thread " + client.getName() + '.');
        }
        int i = 0;
        while (i < locksToSuspend.length) {
            this.setToWait(deadlock.getCandidate(), locksToSuspend[i], true);
            ++i;
        }
        return deadlock;
    }

    void lockWaitStop(Thread owner, ISchedulingRule lock) {
        int lockIndex = this.indexOf(lock, false);
        int threadIndex = this.indexOf(owner, false);
        if (threadIndex < 0) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("Thread " + owner.getName() + " was already removed.");
            }
            return;
        }
        if (lockIndex < 0) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("Lock " + lock + " was already removed.");
            }
            return;
        }
        if (this.graph[threadIndex][lockIndex] != WAITING_FOR_LOCK) {
            if (JobManager.DEBUG_LOCKS) {
                System.out.println("Lock " + lock + " already granted to depth: " + this.graph[threadIndex][lockIndex]);
            }
            return;
        }
        this.graph[threadIndex][lockIndex] = NO_STATE;
        this.reduceGraph(threadIndex, lock);
    }

    private boolean ownsLocks(Thread cause) {
        int threadIndex = this.indexOf(cause, false);
        int j = 0;
        while (j < this.graph[threadIndex].length) {
            if (this.graph[threadIndex][j] > NO_STATE) {
                return true;
            }
            ++j;
        }
        return false;
    }

    private boolean ownsRealLocks(Thread owner) {
        int threadIndex = this.indexOf(owner, false);
        int j = 0;
        while (j < this.graph[threadIndex].length) {
            Object lock;
            if (this.graph[threadIndex][j] > NO_STATE && (lock = this.locks.get(j)) instanceof ILock) {
                return true;
            }
            ++j;
        }
        return false;
    }

    private boolean ownsRuleLocks(Thread owner) {
        int threadIndex = this.indexOf(owner, false);
        int j = 0;
        while (j < this.graph[threadIndex].length) {
            Object lock;
            if (this.graph[threadIndex][j] > NO_STATE && !((lock = this.locks.get(j)) instanceof ILock)) {
                return true;
            }
            ++j;
        }
        return false;
    }

    private ISchedulingRule[] realLocksForThread(Thread owner) {
        int threadIndex = this.indexOf(owner, false);
        ArrayList ownedLocks = new ArrayList(1);
        int j = 0;
        while (j < this.graph[threadIndex].length) {
            if (this.graph[threadIndex][j] > NO_STATE && this.locks.get(j) instanceof ILock) {
                ownedLocks.add(this.locks.get(j));
            }
            ++j;
        }
        if (ownedLocks.size() == 0) {
            Assert.isLegal((boolean)false, (String)"A thread with no real locks was chosen to resolve deadlock.");
        }
        return ownedLocks.toArray(new ISchedulingRule[ownedLocks.size()]);
    }

    /*
     * Unable to fully structure code
     */
    private void reduceGraph(int row, ISchedulingRule lock) {
        numLocks = this.locks.size();
        emptyColumns = new boolean[numLocks];
        j = 0;
        while (j < numLocks) {
            if (lock.isConflicting((ISchedulingRule)this.locks.get(j)) || !(this.locks.get(j) instanceof ILock)) {
                emptyColumns[j] = true;
            }
            ++j;
        }
        rowEmpty = true;
        numEmpty = 0;
        j = 0;
        while (j < this.graph[row].length) {
            if (this.graph[row][j] != DeadlockDetector.NO_STATE) {
                rowEmpty = false;
                break;
            }
            ++j;
        }
        j = emptyColumns.length - 1;
        while (j >= 0) {
            i = 0;
            while (i < this.graph.length) {
                if (emptyColumns[j] && this.graph[i][j] != DeadlockDetector.NO_STATE) {
                    emptyColumns[j] = false;
                    break;
                }
                ++i;
            }
            if (emptyColumns[j]) {
                this.locks.remove(j);
                ++numEmpty;
            }
            --j;
        }
        if (numEmpty == 0 && !rowEmpty) {
            return;
        }
        if (rowEmpty) {
            this.lockThreads.remove(row);
        }
        numThreads = this.lockThreads.size();
        numLocks = this.locks.size();
        if (numThreads == 0 && numLocks == 0) {
            this.graph = DeadlockDetector.EMPTY_MATRIX;
            return;
        }
        tempGraph = new int[numThreads][numLocks];
        numRowsSkipped = 0;
        i = 0;
        while (i < this.graph.length - numRowsSkipped) {
            block15: {
                block14: {
                    if (i == row && rowEmpty && i >= this.graph.length - ++numRowsSkipped) break;
                    numColsSkipped = 0;
                    j = 0;
                    break block14;
                    while (j < this.graph[i].length - ++numColsSkipped) lbl-1000:
                    // 2 sources

                    {
                        ** while (!emptyColumns[j + numColsSkipped])
lbl53:
                        // 1 sources

                    }
lbl54:
                    // 2 sources

                    if (j >= this.graph[i].length - numColsSkipped) break block15;
                    tempGraph[i][j] = this.graph[i + numRowsSkipped][j + numColsSkipped];
                    ++j;
                }
                if (j < this.graph[i].length - numColsSkipped) ** GOTO lbl-1000
            }
            ++i;
        }
        this.graph = tempGraph;
        Assert.isTrue((boolean)(numThreads == this.graph.length), (String)"Rows and threads don't match.");
        Assert.isTrue((boolean)(numLocks == (this.graph.length > 0 ? this.graph[0].length : 0)), (String)"Columns and locks don't match.");
    }

    private void reportDeadlock(Deadlock deadlock) {
        String msg = "Deadlock detected. All locks owned by thread " + deadlock.getCandidate().getName() + " will be suspended.";
        MultiStatus main = new MultiStatus("org.eclipse.core.jobs", 2, msg, (Throwable)new IllegalStateException());
        Thread[] threads = deadlock.getThreads();
        int i = 0;
        while (i < threads.length) {
            Object[] ownedLocks = this.getOwnedLocks(threads[i]);
            Object waitLock = this.getWaitingLock(threads[i]);
            StringBuffer buf = new StringBuffer("Thread ");
            buf.append(threads[i].getName());
            buf.append(" has locks: ");
            int j = 0;
            while (j < ownedLocks.length) {
                buf.append(ownedLocks[j]);
                buf.append(j < ownedLocks.length - 1 ? ", " : " ");
                ++j;
            }
            buf.append("and is waiting for lock ");
            buf.append(waitLock);
            Status child = new Status(4, "org.eclipse.core.jobs", 2, buf.toString(), null);
            main.add((IStatus)child);
            ++i;
        }
        RuntimeLog.log((IStatus)main);
    }

    private void resizeGraph() {
        int newRows = this.lockThreads.size();
        int newCols = this.locks.size();
        if (newRows == 0 && newCols == 0) {
            this.graph = EMPTY_MATRIX;
            return;
        }
        int[][] tempGraph = new int[newRows][newCols];
        int i = 0;
        while (i < this.graph.length) {
            System.arraycopy(this.graph[i], 0, tempGraph[i], 0, this.graph[i].length);
            ++i;
        }
        this.graph = tempGraph;
        this.resize = false;
    }

    private Thread resolutionCandidate(Thread[] candidates) {
        int i = 0;
        while (i < candidates.length) {
            if (!this.ownsRuleLocks(candidates[i])) {
                return candidates[i];
            }
            ++i;
        }
        i = 0;
        while (i < candidates.length) {
            if (this.ownsRealLocks(candidates[i])) {
                return candidates[i];
            }
            ++i;
        }
        return candidates[0];
    }

    private void setToWait(Thread owner, ISchedulingRule lock, boolean suspend) {
        boolean needTransfer = false;
        if (!suspend && !(lock instanceof ILock)) {
            needTransfer = true;
        }
        int lockIndex = this.indexOf(lock, !suspend);
        int threadIndex = this.indexOf(owner, !suspend);
        if (this.resize) {
            this.resizeGraph();
        }
        this.graph[threadIndex][lockIndex] = WAITING_FOR_LOCK;
        if (needTransfer) {
            this.fillPresentEntries(lock, lockIndex);
        }
    }

    public String toDebugString() {
        StringWriter sWriter = new StringWriter();
        PrintWriter out = new PrintWriter(sWriter, true);
        out.println(" :: ");
        int j = 0;
        while (j < this.locks.size()) {
            out.print(" " + this.locks.get(j) + ',');
            ++j;
        }
        out.println();
        int i = 0;
        while (i < this.graph.length) {
            out.print(" " + ((Thread)this.lockThreads.get(i)).getName() + " : ");
            int j2 = 0;
            while (j2 < this.graph[i].length) {
                out.print(" " + this.graph[i][j2] + ',');
                ++j2;
            }
            out.println();
            ++i;
        }
        out.println("-------");
        return sWriter.toString();
    }
}

