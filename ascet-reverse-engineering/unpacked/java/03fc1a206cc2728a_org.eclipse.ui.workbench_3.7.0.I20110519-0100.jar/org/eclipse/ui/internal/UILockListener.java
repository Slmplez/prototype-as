/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.LockListener
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.jobs.LockListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.Semaphore;

public class UILockListener
extends LockListener {
    protected Display display;
    protected final Queue pendingWork = new Queue();
    protected Semaphore currentWork = null;
    protected Thread ui;

    public UILockListener(Display display) {
        this.display = display;
    }

    public void aboutToRelease() {
        if (this.isUI()) {
            this.ui = null;
        }
    }

    public boolean aboutToWait(Thread lockOwner) {
        if (this.isUI()) {
            if (this.currentWork != null && this.currentWork.getOperationThread() == lockOwner) {
                return true;
            }
            this.ui = Thread.currentThread();
            try {
                this.doPendingWork();
            }
            finally {
                this.ui = Thread.currentThread();
            }
        }
        return false;
    }

    void addPendingWork(Semaphore work) {
        this.pendingWork.add(work);
    }

    public boolean canBlock() {
        return !this.isUI();
    }

    void doPendingWork() {
        Semaphore work;
        Thread.interrupted();
        while ((work = this.pendingWork.remove()) != null) {
            Semaphore oldWork = this.currentWork;
            try {
                this.currentWork = work;
                Runnable runnable = work.getRunnable();
                if (runnable == null) continue;
                runnable.run();
            }
            finally {
                this.currentWork = oldWork;
                work.release();
            }
        }
    }

    void interruptUI() {
        this.display.getThread().interrupt();
    }

    boolean isLockOwner() {
        return this.isLockOwnerThread();
    }

    boolean isUI() {
        return !this.display.isDisposed() && this.display.getThread() == Thread.currentThread();
    }

    boolean isUIWaiting() {
        return this.ui != null && Thread.currentThread() != this.ui;
    }

    public class Queue {
        private static final int BASE_SIZE = 8;
        protected Semaphore[] elements = new Semaphore[8];
        protected int head = 0;
        protected int tail = 0;

        public synchronized void add(Semaphore element) {
            int newTail = this.increment(this.tail);
            if (newTail == this.head) {
                this.grow();
                newTail = this.tail + 1;
            }
            this.elements[this.tail] = element;
            this.tail = newTail;
        }

        private void grow() {
            int newSize = this.elements.length * 2;
            Semaphore[] newElements = new Semaphore[newSize];
            if (this.tail >= this.head) {
                System.arraycopy(this.elements, this.head, newElements, this.head, this.size());
            } else {
                int newHead = newSize - (this.elements.length - this.head);
                System.arraycopy(this.elements, 0, newElements, 0, this.tail + 1);
                System.arraycopy(this.elements, this.head, newElements, newHead, newSize - newHead);
                this.head = newHead;
            }
            this.elements = newElements;
        }

        private int increment(int index) {
            return index == this.elements.length - 1 ? 0 : index + 1;
        }

        public synchronized Semaphore remove() {
            if (this.tail == this.head) {
                return null;
            }
            Semaphore result = this.elements[this.head];
            this.elements[this.head] = null;
            this.head = this.increment(this.head);
            if (this.tail == this.head && this.elements.length > 8) {
                this.elements = new Semaphore[8];
                this.head = 0;
                this.tail = 0;
            }
            return result;
        }

        private int size() {
            return this.tail > this.head ? this.tail - this.head : this.elements.length - this.head + this.tail;
        }
    }
}

