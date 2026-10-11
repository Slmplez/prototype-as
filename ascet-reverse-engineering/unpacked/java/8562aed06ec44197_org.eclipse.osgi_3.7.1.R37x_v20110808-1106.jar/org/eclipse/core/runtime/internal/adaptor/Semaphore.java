/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

public class Semaphore {
    protected long notifications;

    public Semaphore(int count) {
        this.notifications = count;
    }

    public synchronized void acquire() {
        while (true) {
            if (this.notifications > 0L) {
                --this.notifications;
                return;
            }
            try {
                this.wait();
                continue;
            }
            catch (InterruptedException interruptedException) {
                continue;
            }
            break;
        }
    }

    public synchronized boolean acquire(long delay) {
        long start = System.currentTimeMillis();
        long timeLeft = delay;
        while (true) {
            if (this.notifications > 0L) {
                --this.notifications;
                return true;
            }
            if (timeLeft <= 0L) {
                return false;
            }
            try {
                this.wait(timeLeft);
            }
            catch (InterruptedException interruptedException) {}
            timeLeft = start + delay - System.currentTimeMillis();
        }
    }

    public synchronized void release() {
        ++this.notifications;
        this.notifyAll();
    }

    public String toString() {
        return "Semaphore(" + this.notifications + ")";
    }
}

