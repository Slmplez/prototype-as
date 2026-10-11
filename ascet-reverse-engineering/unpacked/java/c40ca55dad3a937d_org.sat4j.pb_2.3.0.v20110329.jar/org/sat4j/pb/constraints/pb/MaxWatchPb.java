/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.Propagatable
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.WatchPb;
import org.sat4j.specs.ContradictionException;

public final class MaxWatchPb
extends WatchPb {
    private static final long serialVersionUID = 1L;
    private BigInteger watchCumul = BigInteger.ZERO;
    static final /* synthetic */ boolean $assertionsDisabled;

    private MaxWatchPb(ILits iLits, IDataStructurePB iDataStructurePB) {
        super(iDataStructurePB);
        this.voc = iLits;
        this.activity = 0.0;
        this.watchCumul = BigInteger.ZERO;
    }

    private MaxWatchPb(ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        super(nArray, bigIntegerArray, bigInteger);
        this.voc = iLits;
        this.activity = 0.0;
        this.watchCumul = BigInteger.ZERO;
    }

    protected void computeWatches() throws ContradictionException {
        if (!$assertionsDisabled && !this.watchCumul.equals(BigInteger.ZERO)) {
            throw new AssertionError();
        }
        for (int i = 0; i < this.lits.length; ++i) {
            if (this.voc.isFalsified(this.lits[i])) {
                if (!this.learnt) continue;
                this.voc.undos(this.lits[i] ^ 1).push((Object)this);
                this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
                continue;
            }
            this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
            this.watchCumul = this.watchCumul.add(this.coefs[i]);
        }
        if (!$assertionsDisabled && this.watchCumul.compareTo(this.computeLeftSide()) < 0) {
            throw new AssertionError();
        }
        if (!this.learnt && this.watchCumul.compareTo(this.degree) < 0) {
            throw new ContradictionException("non satisfiable constraint");
        }
    }

    protected void computePropagation(UnitPropagationListener unitPropagationListener) throws ContradictionException {
        for (int i = 0; i < this.coefs.length && this.watchCumul.subtract(this.coefs[i]).compareTo(this.degree) < 0; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || unitPropagationListener.enqueue(this.lits[i], (Constr)this)) continue;
            throw new ContradictionException("non satisfiable constraint");
        }
        if (!$assertionsDisabled && this.watchCumul.compareTo(this.computeLeftSide()) < 0) {
            throw new AssertionError();
        }
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        this.voc.watch(n, (Propagatable)this);
        if (!$assertionsDisabled && this.watchCumul.compareTo(this.computeLeftSide()) < 0) {
            throw new AssertionError((Object)("" + this.watchCumul + "/" + this.computeLeftSide() + ":" + this.learnt));
        }
        int n2 = 0;
        while ((this.lits[n2] ^ 1) != n) {
            ++n2;
        }
        BigInteger bigInteger = this.coefs[n2];
        BigInteger bigInteger2 = this.watchCumul.subtract(bigInteger);
        if (bigInteger2.compareTo(this.degree) < 0) {
            if (!$assertionsDisabled && this.isSatisfiable()) {
                throw new AssertionError();
            }
            return false;
        }
        this.voc.undos(n).push((Object)this);
        this.watchCumul = bigInteger2;
        BigInteger bigInteger3 = this.watchCumul.subtract(this.degree);
        for (int i = 0; i < this.coefs.length && bigInteger3.compareTo(this.coefs[i]) < 0; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || unitPropagationListener.enqueue(this.lits[i], (Constr)this)) continue;
            if (!$assertionsDisabled && this.isSatisfiable()) {
                throw new AssertionError();
            }
            return false;
        }
        if (!$assertionsDisabled && !this.learnt && this.watchCumul.compareTo(this.computeLeftSide()) < 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.watchCumul.compareTo(this.computeLeftSide()) < 0) {
            throw new AssertionError();
        }
        return true;
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        for (int i = 0; i < this.lits.length; ++i) {
            if (this.voc.isFalsified(this.lits[i])) continue;
            this.voc.watches(this.lits[i] ^ 1).remove((Object)this);
        }
    }

    public void undo(int n) {
        int n2 = 0;
        while ((this.lits[n2] ^ 1) != n) {
            ++n2;
        }
        if (!$assertionsDisabled && this.coefs[n2].signum() <= 0) {
            throw new AssertionError();
        }
        this.watchCumul = this.watchCumul.add(this.coefs[n2]);
    }

    public static MaxWatchPb normalizedMaxWatchPbNew(UnitPropagationListener unitPropagationListener, ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        MaxWatchPb maxWatchPb = new MaxWatchPb(iLits, nArray, bigIntegerArray, bigInteger);
        if (maxWatchPb.degree.signum() <= 0) {
            return null;
        }
        maxWatchPb.computeWatches();
        maxWatchPb.computePropagation(unitPropagationListener);
        return maxWatchPb;
    }

    public static WatchPb normalizedWatchPbNew(ILits iLits, IDataStructurePB iDataStructurePB) {
        return new MaxWatchPb(iLits, iDataStructurePB);
    }

    static {
        $assertionsDisabled = !MaxWatchPb.class.desiredAssertionStatus();
    }
}

