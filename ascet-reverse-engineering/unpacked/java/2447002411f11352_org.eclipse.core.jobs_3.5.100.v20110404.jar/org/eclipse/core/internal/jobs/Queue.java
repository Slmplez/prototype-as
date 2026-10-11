/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.jobs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public class Queue {
    protected Object[] elements;
    protected int head;
    protected boolean reuse;
    protected int tail;

    public Queue() {
        this(20, false);
    }

    public Queue(int size, boolean reuse) {
        this.elements = new Object[size];
        this.tail = 0;
        this.head = 0;
        this.reuse = reuse;
    }

    public void enqueue(Object element) {
        int newTail = this.increment(this.tail);
        if (newTail == this.head) {
            this.grow();
            newTail = this.tail + 1;
        }
        this.elements[this.tail] = element;
        this.tail = newTail;
    }

    public int decrement(int index) {
        return index == 0 ? this.elements.length - 1 : index - 1;
    }

    public Iterator elements() {
        if (this.isEmpty()) {
            return new ArrayList(0).iterator();
        }
        if (this.head <= this.tail) {
            return Arrays.asList(this.elements).iterator();
        }
        Object[] newElements = new Object[this.size()];
        int end = this.elements.length - this.head;
        System.arraycopy(this.elements, this.head, newElements, 0, end);
        System.arraycopy(this.elements, 0, newElements, end, this.tail);
        return Arrays.asList(newElements).iterator();
    }

    public Object get(Object o) {
        int index = this.head;
        while (index != this.tail) {
            if (this.elements[index].equals(o)) {
                return this.elements[index];
            }
            index = this.increment(index);
        }
        return null;
    }

    public boolean remove(Object o) {
        int index = this.head;
        while (index != this.tail) {
            if (this.elements[index].equals(o)) break;
            index = this.increment(index);
        }
        if (index == this.tail) {
            return false;
        }
        Object toRemove = this.elements[index];
        int nextIndex = -1;
        while (index != this.tail) {
            nextIndex = this.increment(index);
            if (nextIndex != this.tail) {
                this.elements[index] = this.elements[nextIndex];
            }
            index = nextIndex;
        }
        this.tail = this.decrement(this.tail);
        this.elements[this.tail] = this.reuse ? toRemove : null;
        return true;
    }

    protected void grow() {
        int newSize = (int)((double)this.elements.length * 1.5);
        Object[] newElements = new Object[newSize];
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

    public int increment(int index) {
        return index == this.elements.length - 1 ? 0 : index + 1;
    }

    public boolean isEmpty() {
        return this.tail == this.head;
    }

    public Object peek() {
        return this.elements[this.head];
    }

    public Object dequeue() {
        if (this.isEmpty()) {
            return null;
        }
        Object result = this.peek();
        if (!this.reuse) {
            this.elements[this.head] = null;
        }
        this.head = this.increment(this.head);
        return result;
    }

    public int size() {
        return this.tail > this.head ? this.tail - this.head : this.elements.length - this.head + this.tail;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        if (!this.isEmpty()) {
            Iterator it = this.elements();
            while (true) {
                sb.append(it.next());
                if (!it.hasNext()) break;
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}

