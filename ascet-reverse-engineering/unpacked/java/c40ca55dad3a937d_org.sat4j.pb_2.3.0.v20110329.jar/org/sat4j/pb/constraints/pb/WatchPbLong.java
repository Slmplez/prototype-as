/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.constraints.cnf.Lits
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.Undoable
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.io.Serializable;
import java.math.BigInteger;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Undoable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public abstract class WatchPbLong
implements Constr,
Undoable,
Serializable {
    private static final long serialVersionUID = 1L;
    protected double activity;
    protected long[] coefs;
    protected long degree;
    protected int[] lits;
    protected boolean learnt = false;
    protected ILits voc;
    static final /* synthetic */ boolean $assertionsDisabled;

    WatchPbLong() {
    }

    WatchPbLong(IDataStructurePB iDataStructurePB) {
        int n = iDataStructurePB.size();
        this.lits = new int[n];
        BigInteger[] bigIntegerArray = new BigInteger[n];
        iDataStructurePB.buildConstraintFromMapPb(this.lits, bigIntegerArray);
        this.coefs = WatchPbLong.toLong(bigIntegerArray);
        this.degree = iDataStructurePB.getDegree().longValue();
        this.sort();
    }

    WatchPbLong(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        this.lits = nArray;
        this.coefs = WatchPbLong.toLong(bigIntegerArray);
        this.degree = bigInteger.longValue();
        this.sort();
    }

    public static long[] toLong(BigInteger[] bigIntegerArray) {
        long[] lArray = new long[bigIntegerArray.length];
        for (int i = 0; i < lArray.length; ++i) {
            lArray[i] = bigIntegerArray[i].longValue();
        }
        return lArray;
    }

    public boolean isAssertive(int n) {
        int n2;
        long l = 0L;
        for (n2 = 0; n2 < this.lits.length; ++n2) {
            if (this.coefs[n2] <= 0L || this.voc.isFalsified(this.lits[n2]) && this.voc.getLevel(this.lits[n2]) < n) continue;
            l += this.coefs[n2];
        }
        if ((l -= this.degree) < 0L) {
            return false;
        }
        for (n2 = 0; n2 < this.lits.length; ++n2) {
            if (this.coefs[n2] <= 0L || !this.voc.isUnassigned(this.lits[n2]) && this.voc.getLevel(this.lits[n2]) < n || l >= this.coefs[n2]) continue;
            return true;
        }
        return false;
    }

    public void calcReason(int n, IVecInt iVecInt) {
        int[] nArray;
        int[] nArray2 = nArray = this.lits;
        int n2 = nArray2.length;
        for (int i = 0; i < n2; ++i) {
            int n3 = nArray2[i];
            if (!this.voc.isFalsified(n3)) continue;
            iVecInt.push(n3 ^ 1);
        }
    }

    protected abstract void computeWatches() throws ContradictionException;

    protected abstract void computePropagation(UnitPropagationListener var1) throws ContradictionException;

    public int get(int n) {
        return this.lits[n];
    }

    public double getActivity() {
        return this.activity;
    }

    public void incActivity(double d) {
        if (this.learnt) {
            this.activity += d;
        }
    }

    public long slackConstraint() {
        return this.computeLeftSide() - this.degree;
    }

    public long slackConstraint(long[] lArray, long l) {
        return this.computeLeftSide(lArray) - l;
    }

    public long computeLeftSide(long[] lArray) {
        long l = 0L;
        for (int i = 0; i < this.lits.length; ++i) {
            if (this.voc.isFalsified(this.lits[i])) continue;
            if (!$assertionsDisabled && lArray[i] < 0L) {
                throw new AssertionError();
            }
            l += lArray[i];
        }
        return l;
    }

    public long computeLeftSide() {
        return this.computeLeftSide(this.coefs);
    }

    protected boolean isSatisfiable() {
        return this.computeLeftSide() >= this.degree;
    }

    public boolean learnt() {
        return this.learnt;
    }

    public boolean locked() {
        int[] nArray = this.lits;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            if (this.voc.getReason(n2) != this) continue;
            return true;
        }
        return false;
    }

    protected static BigInteger ppcm(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.divide(bigInteger.gcd(bigInteger2)).multiply(bigInteger2);
    }

    public void rescaleBy(double d) {
        this.activity *= d;
    }

    void selectionSort(int n, int n2) {
        for (int i = n; i < n2 - 1; ++i) {
            int n3 = i;
            for (int j = i + 1; j < n2; ++j) {
                if (this.coefs[j] <= this.coefs[n3] && (this.coefs[j] != this.coefs[n3] || this.lits[j] <= this.lits[n3])) continue;
                n3 = j;
            }
            long l = this.coefs[i];
            this.coefs[i] = this.coefs[n3];
            this.coefs[n3] = l;
            int n4 = this.lits[i];
            this.lits[i] = this.lits[n3];
            this.lits[n3] = n4;
        }
    }

    public void setLearnt() {
        this.learnt = true;
    }

    public boolean simplify() {
        long l = 0L;
        for (int i = 0; i < this.lits.length && l < this.degree; ++i) {
            if (!this.voc.isSatisfied(this.lits[i])) continue;
            l += this.coefs[i];
        }
        return l >= this.degree;
    }

    public final int size() {
        return this.lits.length;
    }

    protected final void sort() {
        if (!$assertionsDisabled && this.lits == null) {
            throw new AssertionError();
        }
        if (this.coefs.length > 0) {
            this.sort(0, this.size());
            long l = this.coefs[0];
            for (int i = 1; i < this.coefs.length; ++i) {
                if (!$assertionsDisabled && l < this.coefs[i]) {
                    throw new AssertionError();
                }
                l = this.coefs[i];
            }
        }
    }

    protected final void sort(int n, int n2) {
        int n3 = n2 - n;
        if (n3 <= 15) {
            this.selectionSort(n, n2);
        } else {
            int n4 = n3 / 2 + n;
            long l = this.coefs[n4];
            int n5 = this.lits[n4];
            int n6 = n - 1;
            int n7 = n2;
            while (true) {
                if (this.coefs[++n6] > l || this.coefs[n6] == l && this.lits[n6] > n5) {
                    continue;
                }
                while (l > this.coefs[--n7] || this.coefs[n7] == l && this.lits[n7] < n5) {
                }
                if (n6 >= n7) break;
                long l2 = this.coefs[n6];
                this.coefs[n6] = this.coefs[n7];
                this.coefs[n7] = l2;
                int n8 = this.lits[n6];
                this.lits[n6] = this.lits[n7];
                this.lits[n7] = n8;
            }
            this.sort(n, n6);
            this.sort(n6, n2);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.lits.length > 0) {
            for (int i = 0; i < this.lits.length; ++i) {
                stringBuffer.append(" + ");
                stringBuffer.append(this.coefs[i]);
                stringBuffer.append(".");
                stringBuffer.append(Lits.toString((int)this.lits[i]));
                stringBuffer.append("[");
                stringBuffer.append(this.voc.valueToString(this.lits[i]));
                stringBuffer.append("@");
                stringBuffer.append(this.voc.getLevel(this.lits[i]));
                stringBuffer.append("]");
                stringBuffer.append(" ");
            }
            stringBuffer.append(">= ");
            stringBuffer.append(this.degree);
        }
        return stringBuffer.toString();
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        long l = this.slackConstraint();
        for (int i = 0; i < this.lits.length; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || l >= this.coefs[i]) continue;
            boolean bl = unitPropagationListener.enqueue(this.lits[i], (Constr)this);
            if (!$assertionsDisabled && !bl) {
                throw new AssertionError();
            }
        }
    }

    public void register() {
        block3: {
            if (!$assertionsDisabled && !this.learnt) {
                throw new AssertionError();
            }
            try {
                this.computeWatches();
            }
            catch (ContradictionException contradictionException) {
                System.out.println(this);
                if ($assertionsDisabled) break block3;
                throw new AssertionError();
            }
        }
    }

    public int[] getLits() {
        int[] nArray = new int[this.lits.length];
        System.arraycopy(this.lits, 0, nArray, 0, this.lits.length);
        return nArray;
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    public IVecInt computeAnImpliedClause() {
        int n = this.coefs.length;
        for (long i = 0L; i > this.degree && n > 0; i += this.coefs[--n]) {
        }
        if (n > 0 && n < this.size() / 2) {
            VecInt vecInt = new VecInt(n);
            for (int i = 0; i <= n; ++i) {
                vecInt.push(this.lits[i]);
            }
            return vecInt;
        }
        return null;
    }

    public boolean coefficientsEqualToOne() {
        return false;
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        try {
            WatchPbLong watchPbLong = (WatchPbLong)object;
            if (this.degree != watchPbLong.degree || this.coefs.length != watchPbLong.coefs.length || this.lits.length != watchPbLong.lits.length) {
                return false;
            }
            for (int i = 0; i < this.coefs.length; ++i) {
                int n = this.lits[i];
                boolean bl = false;
                for (int j = 0; j < this.coefs.length; ++j) {
                    if (watchPbLong.lits[j] != n) continue;
                    if (watchPbLong.coefs[j] != this.coefs[i]) {
                        return false;
                    }
                    bl = true;
                    break;
                }
                if (bl) continue;
                return false;
            }
            return true;
        }
        catch (ClassCastException classCastException) {
            return false;
        }
    }

    public int hashCode() {
        long l = 0L;
        int[] nArray = this.lits;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            l += (long)n2;
        }
        return (int)l / this.lits.length;
    }

    public void forwardActivity(double d) {
        if (!this.learnt) {
            this.activity += d;
        }
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        return false;
    }

    public void undo(int n) {
    }

    static {
        $assertionsDisabled = !WatchPbLong.class.desiredAssertionStatus();
    }
}

