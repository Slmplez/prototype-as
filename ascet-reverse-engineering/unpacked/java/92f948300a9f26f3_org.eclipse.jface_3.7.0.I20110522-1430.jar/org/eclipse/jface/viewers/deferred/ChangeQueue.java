/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers.deferred;

import java.util.Iterator;
import java.util.LinkedList;

final class ChangeQueue {
    public static final int ADD = 0;
    public static final int REMOVE = 1;
    public static final int SET = 2;
    public static final int UPDATE = 3;
    private LinkedList queue = new LinkedList();

    ChangeQueue() {
    }

    public synchronized void enqueue(int type, Object[] elements) {
        this.enqueue(new Change(type, elements));
    }

    public synchronized void enqueue(Change toQueue) {
        if (toQueue.type == 2) {
            LinkedList<Change> newQueue = new LinkedList<Change>();
            Iterator iter = this.queue.iterator();
            while (iter.hasNext()) {
                Change next = (Change)iter.next();
                if (next.getType() == 0 || next.getType() == 1 || next.getType() == 2) continue;
                newQueue.add(next);
            }
            this.queue = newQueue;
        }
        this.queue.add(toQueue);
    }

    public synchronized Change dequeue() {
        Change result = (Change)this.queue.removeFirst();
        return result;
    }

    public synchronized boolean isEmpty() {
        return this.queue.isEmpty();
    }

    public static final class Change {
        private int type;
        private Object[] elements;

        public Change(int type, Object[] elements) {
            this.type = type;
            this.elements = elements;
        }

        public int getType() {
            return this.type;
        }

        public Object[] getElements() {
            return this.elements;
        }
    }
}

