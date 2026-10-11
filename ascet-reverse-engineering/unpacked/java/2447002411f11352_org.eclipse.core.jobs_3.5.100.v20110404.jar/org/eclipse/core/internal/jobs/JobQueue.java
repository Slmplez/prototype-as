/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.jobs;

import java.util.Iterator;
import org.eclipse.core.internal.jobs.InternalJob;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public final class JobQueue {
    protected final InternalJob dummy;
    private final boolean allowConflictOvertaking;
    private final boolean allowPriorityOvertaking;

    public JobQueue(boolean allowConflictOvertaking) {
        this(allowConflictOvertaking, true);
    }

    public JobQueue(boolean allowConflictOvertaking, boolean allowPriorityOvertaking) {
        this.allowPriorityOvertaking = allowPriorityOvertaking;
        this.dummy = new InternalJob("Queue-Head"){

            public IStatus run(IProgressMonitor m) {
                return Status.OK_STATUS;
            }
        };
        this.dummy.setNext(this.dummy);
        this.dummy.setPrevious(this.dummy);
        this.allowConflictOvertaking = allowConflictOvertaking;
    }

    public void clear() {
        this.dummy.setNext(this.dummy);
        this.dummy.setPrevious(this.dummy);
    }

    public InternalJob dequeue() {
        InternalJob toRemove = this.dummy.previous();
        if (toRemove == this.dummy) {
            return null;
        }
        return toRemove.remove();
    }

    public void enqueue(InternalJob newEntry) {
        Assert.isTrue((newEntry.next() == null ? 1 : 0) != 0);
        Assert.isTrue((newEntry.previous() == null ? 1 : 0) != 0);
        InternalJob tail = this.dummy.next();
        while (this.canOvertake(newEntry, tail)) {
            tail = tail.next();
        }
        InternalJob tailPrevious = tail.previous();
        newEntry.setNext(tail);
        newEntry.setPrevious(tailPrevious);
        tailPrevious.setNext(newEntry);
        tail.setPrevious(newEntry);
    }

    private boolean canOvertake(InternalJob newEntry, InternalJob queueEntry) {
        if (queueEntry == this.dummy) {
            return false;
        }
        if (newEntry.getWaitQueueStamp() > 0L && newEntry.getWaitQueueStamp() < queueEntry.getWaitQueueStamp()) {
            return true;
        }
        if (this.allowPriorityOvertaking && queueEntry.compareTo(newEntry) >= 0) {
            return false;
        }
        return this.allowConflictOvertaking || !newEntry.isConflicting(queueEntry);
    }

    public void remove(InternalJob toRemove) {
        toRemove.remove();
    }

    public void resort(InternalJob entry) {
        this.remove(entry);
        this.enqueue(entry);
    }

    public boolean isEmpty() {
        return this.dummy.next() == this.dummy;
    }

    public InternalJob peek() {
        return this.dummy.previous() == this.dummy ? null : this.dummy.previous();
    }

    public Iterator iterator() {
        return new Iterator(){
            InternalJob pointer;
            {
                this.pointer = JobQueue.this.dummy;
            }

            public boolean hasNext() {
                this.pointer = this.pointer.previous() == JobQueue.this.dummy ? null : this.pointer.previous();
                return this.pointer != null;
            }

            public Object next() {
                return this.pointer;
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }
}

