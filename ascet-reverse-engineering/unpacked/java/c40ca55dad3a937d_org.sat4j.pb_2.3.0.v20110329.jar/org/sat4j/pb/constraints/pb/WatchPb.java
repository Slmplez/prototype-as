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
import org.sat4j.pb.constraints.pb.IWatchPb;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public abstract class WatchPb
implements IWatchPb,
Undoable,
Serializable {
    private static final long serialVersionUID = 1L;
    protected double activity;
    protected BigInteger[] coefs;
    protected BigInteger degree;
    protected int[] lits;
    protected boolean learnt = false;
    protected ILits voc;
    static final /* synthetic */ boolean $assertionsDisabled;

    WatchPb() {
    }

    WatchPb(IDataStructurePB iDataStructurePB) {
        int n = iDataStructurePB.size();
        this.lits = new int[n];
        this.coefs = new BigInteger[n];
        iDataStructurePB.buildConstraintFromMapPb(this.lits, this.coefs);
        this.degree = iDataStructurePB.getDegree();
        this.sort();
    }

    WatchPb(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        this.lits = nArray;
        this.coefs = bigIntegerArray;
        this.degree = bigInteger;
        this.sort();
    }

    public boolean isAssertive(int n) {
        int n2;
        BigInteger bigInteger = BigInteger.ZERO;
        for (n2 = 0; n2 < this.lits.length; ++n2) {
            if (this.coefs[n2].signum() <= 0 || this.voc.isFalsified(this.lits[n2]) && this.voc.getLevel(this.lits[n2]) < n) continue;
            bigInteger = bigInteger.add(this.coefs[n2]);
        }
        if ((bigInteger = bigInteger.subtract(this.degree)).signum() < 0) {
            return false;
        }
        for (n2 = 0; n2 < this.lits.length; ++n2) {
            if (this.coefs[n2].signum() <= 0 || !this.voc.isUnassigned(this.lits[n2]) && this.voc.getLevel(this.lits[n2]) < n || bigInteger.compareTo(this.coefs[n2]) >= 0) continue;
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

    public BigInteger getCoef(int n) {
        return this.coefs[n];
    }

    public double getActivity() {
        return this.activity;
    }

    public void incActivity(double d) {
        if (this.learnt) {
            this.activity += d;
        }
    }

    public BigInteger slackConstraint() {
        return this.computeLeftSide().subtract(this.degree);
    }

    public BigInteger slackConstraint(BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        return this.computeLeftSide(bigIntegerArray).subtract(bigInteger);
    }

    public BigInteger computeLeftSide(BigInteger[] bigIntegerArray) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.lits.length; ++i) {
            if (this.voc.isFalsified(this.lits[i])) continue;
            if (!$assertionsDisabled && bigIntegerArray[i].signum() < 0) {
                throw new AssertionError();
            }
            bigInteger = bigInteger.add(bigIntegerArray[i]);
        }
        return bigInteger;
    }

    public BigInteger computeLeftSide() {
        return this.computeLeftSide(this.coefs);
    }

    protected boolean isSatisfiable() {
        return this.computeLeftSide().compareTo(this.degree) >= 0;
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
                if (this.coefs[j].compareTo(this.coefs[n3]) <= 0 && (!this.coefs[j].equals(this.coefs[n3]) || this.lits[j] <= this.lits[n3])) continue;
                n3 = j;
            }
            BigInteger bigInteger = this.coefs[i];
            this.coefs[i] = this.coefs[n3];
            this.coefs[n3] = bigInteger;
            int n4 = this.lits[i];
            this.lits[i] = this.lits[n3];
            this.lits[n3] = n4;
        }
    }

    public void setLearnt() {
        this.learnt = true;
    }

    public boolean simplify() {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.lits.length && bigInteger.compareTo(this.degree) < 0; ++i) {
            if (!this.voc.isSatisfied(this.lits[i])) continue;
            bigInteger = bigInteger.add(this.coefs[i]);
        }
        return bigInteger.compareTo(this.degree) >= 0;
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
            BigInteger bigInteger = this.coefs[0];
            for (int i = 1; i < this.coefs.length; ++i) {
                if (!$assertionsDisabled && bigInteger.compareTo(this.coefs[i]) < 0) {
                    throw new AssertionError();
                }
                bigInteger = this.coefs[i];
            }
        }
    }

    protected final void sort(int n, int n2) {
        int n3 = n2 - n;
        if (n3 <= 15) {
            this.selectionSort(n, n2);
        } else {
            int n4 = n3 / 2 + n;
            BigInteger bigInteger = this.coefs[n4];
            int n5 = this.lits[n4];
            int n6 = n - 1;
            int n7 = n2;
            while (true) {
                if (this.coefs[++n6].compareTo(bigInteger) > 0 || this.coefs[n6].equals(bigInteger) && this.lits[n6] > n5) {
                    continue;
                }
                while (bigInteger.compareTo(this.coefs[--n7]) > 0 || this.coefs[n7].equals(bigInteger) && this.lits[n7] < n5) {
                }
                if (n6 >= n7) break;
                BigInteger bigInteger2 = this.coefs[n6];
                this.coefs[n6] = this.coefs[n7];
                this.coefs[n7] = bigInteger2;
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
        BigInteger bigInteger = this.slackConstraint();
        for (int i = 0; i < this.lits.length; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || bigInteger.compareTo(this.coefs[i]) >= 0) continue;
            boolean bl = unitPropagationListener.enqueue(this.lits[i], (Constr)this);
            if (!$assertionsDisabled && !bl) {
                throw new AssertionError();
            }
        }
    }

    public BigInteger getDegree() {
        return this.degree;
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

    public BigInteger[] getCoefs() {
        BigInteger[] bigIntegerArray = new BigInteger[this.coefs.length];
        System.arraycopy(this.coefs, 0, bigIntegerArray, 0, this.coefs.length);
        return bigIntegerArray;
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
        BigInteger bigInteger = BigInteger.ZERO;
        int n = this.coefs.length;
        while (bigInteger.compareTo(this.degree) > 0 && n > 0) {
            bigInteger = bigInteger.add(this.coefs[--n]);
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
            WatchPb watchPb = (WatchPb)object;
            if (!this.degree.equals(watchPb.degree) || this.coefs.length != watchPb.coefs.length || this.lits.length != watchPb.lits.length) {
                return false;
            }
            for (int i = 0; i < this.coefs.length; ++i) {
                int n = this.lits[i];
                boolean bl = false;
                for (int j = 0; j < this.coefs.length; ++j) {
                    if (watchPb.lits[j] != n) continue;
                    if (!watchPb.coefs[j].equals(this.coefs[i])) {
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

    static {
        $assertionsDisabled = !WatchPb.class.desiredAssertionStatus();
    }
}

