/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.sat4j.specs.IVec;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Vec<T>
implements IVec<T> {
    private static final long serialVersionUID = 1L;
    private int nbelem;
    private T[] myarray;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$core$Vec;

    public Vec() {
        this(5);
    }

    public Vec(T[] TArray) {
        this.myarray = TArray;
        this.nbelem = TArray.length;
    }

    public Vec(int n) {
        this.myarray = new Object[n];
    }

    public Vec(int n, T t) {
        this.myarray = new Object[n];
        for (int i = 0; i < n; ++i) {
            this.myarray[i] = t;
        }
        this.nbelem = n;
    }

    @Override
    public int size() {
        return this.nbelem;
    }

    @Override
    public void shrink(int n) {
        while (n-- > 0) {
            this.myarray[--this.nbelem] = null;
        }
    }

    @Override
    public void shrinkTo(int n) {
        for (int i = this.nbelem; i > n; --i) {
            this.myarray[i - 1] = null;
        }
        this.nbelem = n;
    }

    @Override
    public void pop() {
        this.myarray[--this.nbelem] = null;
    }

    @Override
    public void growTo(int n, T t) {
        this.ensure(n);
        for (int i = this.nbelem; i < n; ++i) {
            this.myarray[i] = t;
        }
        this.nbelem = n;
    }

    @Override
    public void ensure(int n) {
        if (n >= this.myarray.length) {
            Object[] objectArray = new Object[Math.max(n, this.nbelem * 2)];
            System.arraycopy(this.myarray, 0, objectArray, 0, this.nbelem);
            this.myarray = objectArray;
        }
    }

    @Override
    public IVec<T> push(T t) {
        this.ensure(this.nbelem + 1);
        this.myarray[this.nbelem++] = t;
        return this;
    }

    @Override
    public void unsafePush(T t) {
        this.myarray[this.nbelem++] = t;
    }

    @Override
    public void insertFirst(T t) {
        if (this.nbelem > 0) {
            this.push(this.myarray[0]);
            this.myarray[0] = t;
            return;
        }
        this.push(t);
    }

    @Override
    public void insertFirstWithShifting(T t) {
        if (this.nbelem > 0) {
            this.ensure(this.nbelem + 1);
            for (int i = this.nbelem; i > 0; --i) {
                this.myarray[i] = this.myarray[i - 1];
            }
            this.myarray[0] = t;
            ++this.nbelem;
            return;
        }
        this.push(t);
    }

    @Override
    public void clear() {
        Arrays.fill(this.myarray, 0, this.nbelem, null);
        this.nbelem = 0;
    }

    @Override
    public T last() {
        return this.myarray[this.nbelem - 1];
    }

    @Override
    public T get(int n) {
        return this.myarray[n];
    }

    @Override
    public void set(int n, T t) {
        this.myarray[n] = t;
    }

    @Override
    public void remove(T t) {
        int n = 0;
        while (this.myarray[n] != t) {
            if (!$assertionsDisabled && n >= this.size()) {
                throw new AssertionError();
            }
            ++n;
        }
        System.arraycopy(this.myarray, n + 1, this.myarray, n, this.size() - n - 1);
        this.myarray[--this.nbelem] = null;
    }

    @Override
    public T delete(int n) {
        T t = this.myarray[n];
        this.myarray[n] = this.myarray[--this.nbelem];
        this.myarray[this.nbelem] = null;
        return t;
    }

    @Override
    public void copyTo(IVec<T> iVec) {
        Vec vec = (Vec)iVec;
        int n = this.nbelem + vec.nbelem;
        iVec.ensure(n);
        System.arraycopy(this.myarray, 0, vec.myarray, vec.nbelem, this.nbelem);
        vec.nbelem = n;
    }

    @Override
    public <E> void copyTo(E[] EArray) {
        System.arraycopy(this.myarray, 0, EArray, 0, this.nbelem);
    }

    @Override
    public void moveTo(IVec<T> iVec) {
        this.copyTo(iVec);
        this.clear();
    }

    @Override
    public void moveTo(int n, int n2) {
        if (n != n2) {
            this.myarray[n] = this.myarray[n2];
            this.myarray[n2] = null;
        }
    }

    @Override
    public T[] toArray() {
        return this.myarray;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.nbelem - 1; ++i) {
            stringBuffer.append(this.myarray[i]);
            stringBuffer.append(",");
        }
        if (this.nbelem > 0) {
            stringBuffer.append(this.myarray[this.nbelem - 1]);
        }
        return stringBuffer.toString();
    }

    void selectionSort(int n, int n2, Comparator<T> comparator) {
        for (int i = n; i < n2 - 1; ++i) {
            int n3 = i;
            for (int j = i + 1; j < n2; ++j) {
                if (comparator.compare(this.myarray[j], this.myarray[n3]) >= 0) continue;
                n3 = j;
            }
            T t = this.myarray[i];
            this.myarray[i] = this.myarray[n3];
            this.myarray[n3] = t;
        }
    }

    void sort(int n, int n2, Comparator<T> comparator) {
        int n3 = n2 - n;
        if (n3 <= 15) {
            this.selectionSort(n, n2, comparator);
        } else {
            T t = this.myarray[n3 / 2 + n];
            int n4 = n - 1;
            int n5 = n2;
            while (true) {
                if (comparator.compare(this.myarray[++n4], t) < 0) {
                    continue;
                }
                while (comparator.compare(t, this.myarray[--n5]) < 0) {
                }
                if (n4 >= n5) break;
                T t2 = this.myarray[n4];
                this.myarray[n4] = this.myarray[n5];
                this.myarray[n5] = t2;
            }
            this.sort(n, n4, comparator);
            this.sort(n4, n2, comparator);
        }
    }

    @Override
    public void sort(Comparator<T> comparator) {
        this.sort(0, this.nbelem, comparator);
    }

    @Override
    public void sortUnique(Comparator<T> comparator) {
        if (this.nbelem == 0) {
            return;
        }
        this.sort(0, this.nbelem, comparator);
        int n = 1;
        T t = this.myarray[0];
        for (int i = 1; i < this.nbelem; ++i) {
            if (comparator.compare(t, this.myarray[i]) >= 0) continue;
            t = this.myarray[n] = this.myarray[i];
            ++n;
        }
        this.nbelem = n;
    }

    public boolean equals(Object object) {
        if (object instanceof IVec) {
            IVec iVec = (IVec)object;
            if (iVec.size() != this.size()) {
                return false;
            }
            for (int i = 0; i < this.size(); ++i) {
                if (iVec.get(i).equals(this.get(i))) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int n = 0;
        for (int i = 0; i < this.nbelem; ++i) {
            n += this.myarray[i].hashCode() / this.nbelem;
        }
        return n;
    }

    @Override
    public Iterator<T> iterator() {
        return new Iterator<T>(){
            private int i = 0;

            @Override
            public boolean hasNext() {
                return this.i < Vec.this.nbelem;
            }

            @Override
            public T next() {
                if (this.i == Vec.this.nbelem) {
                    throw new NoSuchElementException();
                }
                return Vec.this.myarray[this.i++];
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override
    public boolean isEmpty() {
        return this.nbelem == 0;
    }

    @Override
    public boolean contains(T t) {
        for (int i = 0; i < this.nbelem; ++i) {
            if (!this.myarray[i].equals(t)) continue;
            return true;
        }
        return false;
    }

    @Override
    public int indexOf(T t) {
        for (int i = 0; i < this.nbelem; ++i) {
            if (!this.myarray[i].equals(t)) continue;
            return i;
        }
        return -1;
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    static {
        $assertionsDisabled = !(class$org$sat4j$core$Vec == null ? (class$org$sat4j$core$Vec = Vec.class$("org.sat4j.core.Vec")) : class$org$sat4j$core$Vec).desiredAssertionStatus();
    }
}

