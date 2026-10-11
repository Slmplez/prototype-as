/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

import java.util.Comparator;
import java.util.Iterator;
import org.sat4j.specs.IVec;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ReadOnlyVec<T>
implements IVec<T> {
    private static final long serialVersionUID = 1L;
    private final IVec<T> vec;

    public ReadOnlyVec(IVec<T> iVec) {
        this.vec = iVec;
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void copyTo(IVec<T> iVec) {
        this.vec.copyTo(iVec);
    }

    @Override
    public <E> void copyTo(E[] EArray) {
        this.vec.copyTo(EArray);
    }

    @Override
    public T delete(int n) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void ensure(int n) {
        throw new UnsupportedOperationException();
    }

    @Override
    public T get(int n) {
        return this.vec.get(n);
    }

    @Override
    public void growTo(int n, T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void insertFirst(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void insertFirstWithShifting(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.vec.isEmpty();
    }

    @Override
    public Iterator<T> iterator() {
        return this.vec.iterator();
    }

    @Override
    public T last() {
        return this.vec.last();
    }

    @Override
    public void moveTo(IVec<T> iVec) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void moveTo(int n, int n2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void pop() {
        throw new UnsupportedOperationException();
    }

    @Override
    public IVec<T> push(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void remove(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void set(int n, T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void shrink(int n) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void shrinkTo(int n) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.vec.size();
    }

    @Override
    public void sort(Comparator<T> comparator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void sortUnique(Comparator<T> comparator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public T[] toArray() {
        Object[] objectArray = new Object[this.vec.size()];
        this.vec.copyTo(objectArray);
        return objectArray;
    }

    @Override
    public void unsafePush(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean contains(T t) {
        return this.vec.contains(t);
    }

    @Override
    public int indexOf(T t) {
        return this.vec.indexOf(t);
    }

    public String toString() {
        return this.vec.toString();
    }
}

