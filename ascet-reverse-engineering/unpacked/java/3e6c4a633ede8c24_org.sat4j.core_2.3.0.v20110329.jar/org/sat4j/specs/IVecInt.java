/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

import java.io.Serializable;
import org.sat4j.specs.IteratorInt;

public interface IVecInt
extends Serializable {
    public int size();

    public void shrink(int var1);

    public void shrinkTo(int var1);

    public IVecInt pop();

    public void growTo(int var1, int var2);

    public void ensure(int var1);

    public IVecInt push(int var1);

    public void unsafePush(int var1);

    public int unsafeGet(int var1);

    public void clear();

    public int last();

    public int get(int var1);

    public void set(int var1, int var2);

    public boolean contains(int var1);

    public int indexOf(int var1);

    public int containsAt(int var1);

    public int containsAt(int var1, int var2);

    public void copyTo(IVecInt var1);

    public void copyTo(int[] var1);

    public void moveTo(IVecInt var1);

    public void moveTo(int var1, int[] var2);

    public void moveTo2(IVecInt var1);

    public void moveTo(int[] var1);

    public void moveTo(int var1, int var2);

    public void insertFirst(int var1);

    public void remove(int var1);

    public int delete(int var1);

    public void sort();

    public void sortUnique();

    public boolean isEmpty();

    public IteratorInt iterator();

    public int[] toArray();
}

