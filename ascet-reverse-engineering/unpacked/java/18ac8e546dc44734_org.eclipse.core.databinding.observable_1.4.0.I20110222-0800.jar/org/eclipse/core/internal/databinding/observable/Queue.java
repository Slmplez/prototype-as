/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

public class Queue {
    Entry first;
    Entry last;

    public void enqueue(Object o) {
        Entry oldLast = this.last;
        this.last = new Entry(o);
        if (oldLast != null) {
            oldLast.next = this.last;
        } else {
            this.first = this.last;
        }
    }

    public Object dequeue() {
        Entry oldFirst = this.first;
        if (oldFirst == null) {
            throw new IllegalStateException();
        }
        this.first = oldFirst.next;
        if (this.first == null) {
            this.last = null;
        }
        oldFirst.next = null;
        return oldFirst.object;
    }

    public boolean isEmpty() {
        return this.first == null;
    }

    static class Entry {
        Object object;
        Entry next;

        Entry(Object o) {
            this.object = o;
        }
    }
}

