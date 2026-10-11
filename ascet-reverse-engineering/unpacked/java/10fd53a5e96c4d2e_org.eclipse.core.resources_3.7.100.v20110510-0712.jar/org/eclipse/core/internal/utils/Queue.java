/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

import java.util.Collections;
import java.util.Iterator;
import org.eclipse.core.internal.utils.ArrayIterator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Queue<T> {
    protected Object[] elements;
    protected int head;
    protected int tail;
    protected boolean reuse;

    public Queue() {
        this(20, false);
    }

    public Queue(int size, boolean reuse) {
        this.elements = new Object[size];
        this.tail = 0;
        this.head = 0;
        this.reuse = reuse;
    }

    public void add(T element) {
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

    public T elementAt(int index) {
        return (T)this.elements[index];
    }

    public Iterator<T> iterator() {
        if (this.isEmpty()) {
            return Collections.EMPTY_LIST.iterator();
        }
        if (this.head <= this.tail) {
            return new ArrayIterator<Object>(this.elements, this.head, this.tail - 1);
        }
        Object[] newElements = new Object[this.size()];
        int end = this.elements.length - this.head;
        System.arraycopy(this.elements, this.head, newElements, 0, end);
        System.arraycopy(this.elements, 0, newElements, end, this.tail);
        return new ArrayIterator<Object>(newElements);
    }

    public T getNextAvailableObject() {
        int index = this.tail;
        while (index != this.head) {
            if (this.elements[index] != null) {
                Object result = this.elements[index];
                this.elements[index] = null;
                return (T)result;
            }
            index = this.increment(index);
        }
        return null;
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

    public int indexOf(T target) {
        if (this.tail >= this.head) {
            int i = this.head;
            while (i < this.tail) {
                if (target.equals(this.elements[i])) {
                    return i;
                }
                ++i;
            }
        } else {
            int i = this.head;
            while (i < this.elements.length) {
                if (target.equals(this.elements[i])) {
                    return i;
                }
                ++i;
            }
            i = 0;
            while (i < this.tail) {
                if (target.equals(this.elements[i])) {
                    return i;
                }
                ++i;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.tail == this.head;
    }

    public T peek() {
        return (T)this.elements[this.head];
    }

    public T peekTail() {
        return (T)this.elements[this.decrement(this.tail)];
    }

    public T remove() {
        if (this.isEmpty()) {
            return null;
        }
        T result = this.peek();
        if (!this.reuse) {
            this.elements[this.head] = null;
        }
        this.head = this.increment(this.head);
        return result;
    }

    public T removeTail() {
        T result = this.peekTail();
        this.tail = this.decrement(this.tail);
        if (!this.reuse) {
            this.elements[this.tail] = null;
        }
        return result;
    }

    public void reset() {
        this.head = 0;
        this.tail = 0;
    }

    public int size() {
        return this.tail > this.head ? this.tail - this.head : this.elements.length - this.head + this.tail;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append('[');
        int count = 0;
        if (!this.isEmpty()) {
            Iterator<T> it = this.iterator();
            while (count < 100) {
                sb.append(it.next());
                if (!it.hasNext()) break;
                sb.append(',').append(' ');
            }
        }
        if (count < this.size()) {
            sb.append('.').append('.').append('.');
        }
        sb.append(']');
        return sb.toString();
    }
}

