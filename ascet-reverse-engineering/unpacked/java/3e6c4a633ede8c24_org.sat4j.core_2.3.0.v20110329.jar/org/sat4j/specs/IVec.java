/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IVec<T>
extends Serializable {
    public int size();

    public void shrink(int var1);

    public void shrinkTo(int var1);

    public void pop();

    public void growTo(int var1, T var2);

    public void ensure(int var1);

    public IVec<T> push(T var1);

    public void unsafePush(T var1);

    public void insertFirst(T var1);

    public void insertFirstWithShifting(T var1);

    public void clear();

    public T last();

    public T get(int var1);

    public void set(int var1, T var2);

    public void remove(T var1);

    public T delete(int var1);

    public void copyTo(IVec<T> var1);

    public <E> void copyTo(E[] var1);

    public T[] toArray();

    public void moveTo(IVec<T> var1);

    public void moveTo(int var1, int var2);

    public void sort(Comparator<T> var1);

    public void sortUnique(Comparator<T> var1);

    public boolean isEmpty();

    public Iterator<T> iterator();

    public boolean contains(T var1);

    public int indexOf(T var1);
}

