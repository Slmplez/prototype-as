/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.util;

import org.eclipse.emf.transaction.internal.Tracing;

final class Queue {
    private Wait head;
    private Wait tail;
    private int size;
    private int exclusiveCount;

    public synchronized boolean isEmpty() {
        return this.size == 0;
    }

    public synchronized int size() {
        return this.size;
    }

    public synchronized int exclusiveCount() {
        return this.exclusiveCount;
    }

    public synchronized Wait put(long timeout, boolean exclusive) throws InterruptedException {
        Thread current = Thread.currentThread();
        Wait result = this.findNode(current);
        if (result == null) {
            result = new Wait(current);
            if (this.tail == null) {
                this.head = this.tail = result;
            } else {
                this.tail.next = result;
                this.tail = result;
            }
            ++this.size;
            if (exclusive) {
                ++this.exclusiveCount;
            }
        } else if (exclusive != result.isExclusive()) {
            this.exclusiveCount += exclusive ? 1 : -1;
        }
        result.initialize(exclusive);
        return result;
    }

    public synchronized Wait take(boolean allowExclusive) {
        Wait result = null;
        Wait prev = null;
        Wait node = this.head;
        while (result == null && node != null) {
            if (allowExclusive || !node.isExclusive()) {
                if (prev != null) {
                    prev.next = node.next;
                } else {
                    this.head = node.next;
                }
                if (this.head == null) {
                    this.tail = null;
                } else if (node == this.tail) {
                    this.tail = prev;
                }
                node.next = null;
                --this.size;
                if (node.isExclusive()) {
                    --this.exclusiveCount;
                }
                result = node;
            } else {
                prev = node;
            }
            node = node.next;
        }
        return result;
    }

    private Wait findNode(Thread thread) {
        Wait result = null;
        Wait next = this.head;
        while (next != null) {
            if (next.thread == thread) {
                result = next;
                break;
            }
            next = next.next;
        }
        return result;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        boolean first = true;
        result.append("Queue[");
        Wait next = this.head;
        while (this.head != null) {
            if (first) {
                first = false;
            } else {
                result.append(", ");
            }
            result.append(next);
            next = next.next;
        }
        result.append(']');
        return result.toString();
    }

    static class Wait {
        Wait next;
        private final Thread thread;
        private boolean exclusive;
        private boolean notified;
        private boolean timedOut;

        Wait(Thread thread) {
            this.thread = thread;
        }

        boolean wasNotified() {
            return this.notified && !this.timedOut;
        }

        boolean isExclusive() {
            return this.exclusive;
        }

        void initialize(boolean excl) {
            this.exclusive = excl;
            this.timedOut = false;
            this.notified = false;
        }

        Thread getThread() {
            return this.thread;
        }

        synchronized boolean wakeUp() {
            boolean result = false;
            if (!this.notified && !this.timedOut) {
                this.notified = true;
                result = true;
                this.notify();
            }
            return result;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        synchronized void waitFor(long timeout) throws InterruptedException {
            if (this.notified) {
                return;
            }
            long waitTime = timeout;
            long start = System.currentTimeMillis();
            try {
                do {
                    this.wait(waitTime);
                    if (this.notified) return;
                } while (timeout <= 0L || (waitTime = timeout - (System.currentTimeMillis() - start)) > 0L);
                this.timedOut = true;
                return;
            }
            catch (InterruptedException e) {
                Tracing.catching(Wait.class, "waitFor", e);
                if (!this.notified) {
                    this.timedOut = true;
                    Tracing.throwing(Wait.class, "waitFor", e);
                    throw e;
                }
                Thread.currentThread().interrupt();
            }
        }

        public String toString() {
            return String.valueOf(this.thread.getName()) + "[" + this.notified + ", " + this.timedOut + ']';
        }
    }
}

