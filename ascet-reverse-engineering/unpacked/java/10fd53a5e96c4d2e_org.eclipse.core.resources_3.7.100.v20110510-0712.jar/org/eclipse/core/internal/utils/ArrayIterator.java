/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArrayIterator<T>
implements Iterator<T> {
    T[] elements;
    int index;
    int lastElement;

    public ArrayIterator(T[] elements) {
        this(elements, 0, elements.length - 1);
    }

    public ArrayIterator(T[] elements, int firstElement, int lastElement) {
        this.elements = elements;
        this.index = firstElement;
        this.lastElement = lastElement;
    }

    @Override
    public boolean hasNext() {
        return this.elements != null && this.index <= this.lastElement;
    }

    @Override
    public T next() throws NoSuchElementException {
        if (!this.hasNext()) {
            throw new NoSuchElementException();
        }
        return this.elements[this.index++];
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}

