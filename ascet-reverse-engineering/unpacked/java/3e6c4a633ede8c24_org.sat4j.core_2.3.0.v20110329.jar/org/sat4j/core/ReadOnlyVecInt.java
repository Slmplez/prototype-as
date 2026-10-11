/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;

public final class ReadOnlyVecInt
implements IVecInt {
    private static final long serialVersionUID = 1L;
    private final IVecInt vec;

    public ReadOnlyVecInt(IVecInt iVecInt) {
        this.vec = iVecInt;
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean contains(int n) {
        return this.vec.contains(n);
    }

    public int containsAt(int n) {
        return this.vec.containsAt(n);
    }

    public int containsAt(int n, int n2) {
        return this.vec.containsAt(n, n2);
    }

    public void copyTo(IVecInt iVecInt) {
        this.vec.copyTo(iVecInt);
    }

    public void copyTo(int[] nArray) {
        this.vec.copyTo(nArray);
    }

    public int delete(int n) {
        throw new UnsupportedOperationException();
    }

    public void ensure(int n) {
        throw new UnsupportedOperationException();
    }

    public int get(int n) {
        return this.vec.get(n);
    }

    public void growTo(int n, int n2) {
        throw new UnsupportedOperationException();
    }

    public void insertFirst(int n) {
        throw new UnsupportedOperationException();
    }

    public boolean isEmpty() {
        return this.vec.isEmpty();
    }

    public IteratorInt iterator() {
        return this.vec.iterator();
    }

    public int last() {
        return this.vec.last();
    }

    public void moveTo(IVecInt iVecInt) {
        throw new UnsupportedOperationException();
    }

    public void moveTo(int[] nArray) {
        throw new UnsupportedOperationException();
    }

    public void moveTo(int n, int n2) {
        throw new UnsupportedOperationException();
    }

    public void moveTo2(IVecInt iVecInt) {
        throw new UnsupportedOperationException();
    }

    public IVecInt pop() {
        throw new UnsupportedOperationException();
    }

    public IVecInt push(int n) {
        throw new UnsupportedOperationException();
    }

    public void remove(int n) {
        throw new UnsupportedOperationException();
    }

    public void set(int n, int n2) {
        throw new UnsupportedOperationException();
    }

    public void shrink(int n) {
        throw new UnsupportedOperationException();
    }

    public void shrinkTo(int n) {
        throw new UnsupportedOperationException();
    }

    public int size() {
        return this.vec.size();
    }

    public void sort() {
        throw new UnsupportedOperationException();
    }

    public void sortUnique() {
        throw new UnsupportedOperationException();
    }

    public int unsafeGet(int n) {
        return this.vec.unsafeGet(n);
    }

    public void unsafePush(int n) {
        throw new UnsupportedOperationException();
    }

    public int[] toArray() {
        throw new UnsupportedOperationException();
    }

    public int indexOf(int n) {
        return this.vec.indexOf(n);
    }

    public String toString() {
        return this.vec.toString();
    }

    public void moveTo(int n, int[] nArray) {
        throw new UnsupportedOperationException();
    }
}

