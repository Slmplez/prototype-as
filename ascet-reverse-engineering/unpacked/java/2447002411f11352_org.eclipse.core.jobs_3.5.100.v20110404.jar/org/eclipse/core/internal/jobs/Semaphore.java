/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.jobs;

public class Semaphore {
    protected long notifications;
    protected Runnable runnable;

    public Semaphore(Runnable runnable) {
        this.runnable = runnable;
        this.notifications = 0L;
    }

    public synchronized boolean acquire(long delay) throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
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
            this.wait(timeLeft);
            timeLeft = start + delay - System.currentTimeMillis();
        }
    }

    public synchronized boolean attempt() {
        if (this.notifications > 0L) {
            --this.notifications;
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        return this.runnable == ((Semaphore)obj).runnable;
    }

    public int hashCode() {
        return this.runnable == null ? 0 : this.runnable.hashCode();
    }

    public synchronized void release() {
        ++this.notifications;
        this.notifyAll();
    }

    public String toString() {
        return "Semaphore(" + this.runnable + ")";
    }
}

