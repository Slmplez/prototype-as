/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

import java.util.NoSuchElementException;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;

public final class VecInt
implements IVecInt {
    private static final long serialVersionUID = 1L;
    public static final IVecInt EMPTY;
    private int nbelem;
    private int[] myarray;
    static final /* synthetic */ boolean $assertionsDisabled;

    public VecInt() {
        this(5);
    }

    public VecInt(int n) {
        this.myarray = new int[n];
    }

    public VecInt(int[] nArray) {
        this.myarray = nArray;
        this.nbelem = nArray.length;
    }

    public VecInt(int n, int n2) {
        this.myarray = new int[n];
        for (int i = 0; i < n; ++i) {
            this.myarray[i] = n2;
        }
        this.nbelem = n;
    }

    public int size() {
        return this.nbelem;
    }

    public void shrink(int n) {
        this.nbelem -= n;
    }

    public void shrinkTo(int n) {
        this.nbelem = n;
    }

    public IVecInt pop() {
        --this.nbelem;
        return this;
    }

    public void growTo(int n, int n2) {
        this.ensure(n);
        while (--n >= 0) {
            this.myarray[this.nbelem++] = n2;
        }
    }

    public void ensure(int n) {
        if (n >= this.myarray.length) {
            int[] nArray = new int[Math.max(n, this.nbelem * 2)];
            System.arraycopy(this.myarray, 0, nArray, 0, this.nbelem);
            this.myarray = nArray;
        }
    }

    public IVecInt push(int n) {
        this.ensure(this.nbelem + 1);
        this.myarray[this.nbelem++] = n;
        return this;
    }

    public void unsafePush(int n) {
        this.myarray[this.nbelem++] = n;
    }

    public void clear() {
        this.nbelem = 0;
    }

    public int last() {
        return this.myarray[this.nbelem - 1];
    }

    public int get(int n) {
        return this.myarray[n];
    }

    public int unsafeGet(int n) {
        return this.myarray[n];
    }

    public void set(int n, int n2) {
        if (!($assertionsDisabled || n >= 0 && n < this.nbelem)) {
            throw new AssertionError();
        }
        this.myarray[n] = n2;
    }

    public boolean contains(int n) {
        int[] nArray = this.myarray;
        for (int i = 0; i < this.nbelem; ++i) {
            if (nArray[i] != n) continue;
            return true;
        }
        return false;
    }

    public int indexOf(int n) {
        int[] nArray = this.myarray;
        for (int i = 0; i < this.nbelem; ++i) {
            if (nArray[i] != n) continue;
            return i;
        }
        return -1;
    }

    public int containsAt(int n) {
        return this.containsAt(n, -1);
    }

    public int containsAt(int n, int n2) {
        int[] nArray = this.myarray;
        for (int i = n2 + 1; i < this.nbelem; ++i) {
            if (nArray[i] != n) continue;
            return i;
        }
        return -1;
    }

    public void copyTo(IVecInt iVecInt) {
        VecInt vecInt = (VecInt)iVecInt;
        int n = this.nbelem + vecInt.nbelem;
        vecInt.ensure(n);
        System.arraycopy(this.myarray, 0, vecInt.myarray, vecInt.nbelem, this.nbelem);
        vecInt.nbelem = n;
    }

    public void copyTo(int[] nArray) {
        System.arraycopy(this.myarray, 0, nArray, 0, this.nbelem);
    }

    public void moveTo(IVecInt iVecInt) {
        this.copyTo(iVecInt);
        this.nbelem = 0;
    }

    public void moveTo2(IVecInt iVecInt) {
        VecInt vecInt = (VecInt)iVecInt;
        int n = vecInt.nbelem;
        int[] nArray = vecInt.myarray;
        vecInt.myarray = this.myarray;
        vecInt.nbelem = this.nbelem;
        this.myarray = nArray;
        this.nbelem = n;
        this.nbelem = 0;
    }

    public void moveTo(int n, int n2) {
        this.myarray[n] = this.myarray[n2];
    }

    public void moveTo(int[] nArray) {
        System.arraycopy(this.myarray, 0, nArray, 0, this.nbelem);
        this.nbelem = 0;
    }

    public void moveTo(int n, int[] nArray) {
        System.arraycopy(this.myarray, n, nArray, 0, this.nbelem - n);
        this.nbelem = 0;
    }

    public void insertFirst(int n) {
        if (this.nbelem > 0) {
            this.push(this.myarray[0]);
            this.myarray[0] = n;
            return;
        }
        this.push(n);
    }

    public void remove(int n) {
        int n2 = 0;
        while (this.myarray[n2] != n) {
            if (!$assertionsDisabled && n2 >= this.size()) {
                throw new AssertionError();
            }
            ++n2;
        }
        System.arraycopy(this.myarray, n2 + 1, this.myarray, n2, this.size() - n2 - 1);
        this.pop();
    }

    public int delete(int n) {
        int n2 = this.myarray[n];
        this.myarray[n] = this.myarray[--this.nbelem];
        return n2;
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

    void selectionSort(int n, int n2) {
        for (int i = n; i < n2 - 1; ++i) {
            int n3 = i;
            for (int j = i + 1; j < n2; ++j) {
                if (this.myarray[j] >= this.myarray[n3]) continue;
                n3 = j;
            }
            int n4 = this.myarray[i];
            this.myarray[i] = this.myarray[n3];
            this.myarray[n3] = n4;
        }
    }

    void sort(int n, int n2) {
        int n3 = n2 - n;
        if (n3 <= 15) {
            this.selectionSort(n, n2);
        } else {
            int[] nArray = this.myarray;
            int n4 = nArray[n3 / 2 + n];
            int n5 = n - 1;
            int n6 = n2;
            while (true) {
                if (nArray[++n5] < n4) {
                    continue;
                }
                while (n4 < nArray[--n6]) {
                }
                if (n5 >= n6) break;
                int n7 = nArray[n5];
                nArray[n5] = nArray[n6];
                nArray[n6] = n7;
            }
            this.sort(n, n5);
            this.sort(n5, n2);
        }
    }

    public void sort() {
        this.sort(0, this.nbelem);
    }

    public void sortUnique() {
        if (this.nbelem == 0) {
            return;
        }
        this.sort(0, this.nbelem);
        int n = 1;
        int[] nArray = this.myarray;
        int n2 = nArray[0];
        for (int i = 1; i < this.nbelem; ++i) {
            if (n2 >= nArray[i]) continue;
            n2 = nArray[n] = nArray[i];
            ++n;
        }
        this.nbelem = n;
    }

    public boolean equals(Object object) {
        if (object instanceof VecInt) {
            VecInt vecInt = (VecInt)object;
            if (vecInt.nbelem != this.nbelem) {
                return false;
            }
            for (int i = 0; i < this.nbelem; ++i) {
                if (vecInt.myarray[i] == this.myarray[i]) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        long l = 0L;
        for (int i = 0; i < this.nbelem; ++i) {
            l += (long)this.myarray[i];
        }
        return (int)l / this.nbelem;
    }

    public void pushAll(IVecInt iVecInt) {
        VecInt vecInt = (VecInt)iVecInt;
        int n = this.nbelem + vecInt.nbelem;
        this.ensure(n);
        System.arraycopy(vecInt.myarray, 0, this.myarray, this.nbelem, vecInt.nbelem);
        this.nbelem = n;
    }

    public boolean isSubsetOf(VecInt vecInt) {
        int n = 0;
        for (int i = 0; i < this.nbelem && n < vecInt.nbelem; ++i) {
            while (n < vecInt.nbelem && vecInt.myarray[n] < this.myarray[i]) {
                ++n;
            }
            if (n != vecInt.nbelem && this.myarray[i] == vecInt.myarray[n]) continue;
            return false;
        }
        return true;
    }

    public IteratorInt iterator() {
        return new IteratorInt(){
            private int i = 0;

            public boolean hasNext() {
                return this.i < VecInt.this.nbelem;
            }

            public int next() {
                if (this.i == VecInt.this.nbelem) {
                    throw new NoSuchElementException();
                }
                return VecInt.this.myarray[this.i++];
            }
        };
    }

    public boolean isEmpty() {
        return this.nbelem == 0;
    }

    public int[] toArray() {
        return this.myarray;
    }

    static {
        $assertionsDisabled = !VecInt.class.desiredAssertionStatus();
        EMPTY = new IVecInt(){
            private static final long serialVersionUID = 1L;

            public int size() {
                return 0;
            }

            public void shrink(int n) {
            }

            public void shrinkTo(int n) {
            }

            public IVecInt pop() {
                throw new UnsupportedOperationException();
            }

            public void growTo(int n, int n2) {
            }

            public void ensure(int n) {
            }

            public IVecInt push(int n) {
                throw new UnsupportedOperationException();
            }

            public void unsafePush(int n) {
                throw new UnsupportedOperationException();
            }

            public void clear() {
            }

            public int last() {
                throw new UnsupportedOperationException();
            }

            public int get(int n) {
                throw new UnsupportedOperationException();
            }

            public void set(int n, int n2) {
                throw new UnsupportedOperationException();
            }

            public boolean contains(int n) {
                return false;
            }

            public void copyTo(IVecInt iVecInt) {
            }

            public void copyTo(int[] nArray) {
            }

            public void moveTo(IVecInt iVecInt) {
            }

            public void moveTo2(IVecInt iVecInt) {
            }

            public void moveTo(int[] nArray) {
            }

            public void insertFirst(int n) {
                throw new UnsupportedOperationException();
            }

            public void remove(int n) {
                throw new UnsupportedOperationException();
            }

            public int delete(int n) {
                throw new UnsupportedOperationException();
            }

            public void sort() {
            }

            public void sortUnique() {
            }

            public int unsafeGet(int n) {
                throw new UnsupportedOperationException();
            }

            public int containsAt(int n) {
                throw new UnsupportedOperationException();
            }

            public int containsAt(int n, int n2) {
                throw new UnsupportedOperationException();
            }

            public void moveTo(int n, int n2) {
                throw new UnsupportedOperationException();
            }

            public boolean isEmpty() {
                return true;
            }

            public IteratorInt iterator() {
                return new IteratorInt(){

                    public boolean hasNext() {
                        return false;
                    }

                    public int next() {
                        throw new UnsupportedOperationException();
                    }
                };
            }

            public int[] toArray() {
                throw new UnsupportedOperationException();
            }

            public int indexOf(int n) {
                return -1;
            }

            public String toString() {
                return "[]";
            }

            public void moveTo(int n, int[] nArray) {
                throw new UnsupportedOperationException();
            }
        };
    }
}

