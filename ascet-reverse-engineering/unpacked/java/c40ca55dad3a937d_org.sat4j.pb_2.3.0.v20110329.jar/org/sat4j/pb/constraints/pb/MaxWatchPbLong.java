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
import org.sat4j.pb.constraints.pb.WatchPbLong;
import org.sat4j.specs.ContradictionException;

public final class MaxWatchPbLong
extends WatchPbLong {
    private static final long serialVersionUID = 1L;
    private long watchCumul = 0L;
    static final /* synthetic */ boolean $assertionsDisabled;

    private MaxWatchPbLong(ILits iLits, IDataStructurePB iDataStructurePB) {
        super(iDataStructurePB);
        this.voc = iLits;
        this.activity = 0.0;
        this.watchCumul = 0L;
    }

    private MaxWatchPbLong(ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        super(nArray, bigIntegerArray, bigInteger);
        this.voc = iLits;
        this.activity = 0.0;
        this.watchCumul = 0L;
    }

    protected void computeWatches() throws ContradictionException {
        if (!$assertionsDisabled && this.watchCumul != 0L) {
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
            this.watchCumul += this.coefs[i];
        }
        if (!$assertionsDisabled && this.watchCumul < this.computeLeftSide()) {
            throw new AssertionError();
        }
        if (!this.learnt && this.watchCumul < this.degree) {
            throw new ContradictionException("non satisfiable constraint");
        }
    }

    protected void computePropagation(UnitPropagationListener unitPropagationListener) throws ContradictionException {
        for (int i = 0; i < this.coefs.length && this.watchCumul - this.coefs[i] < this.degree; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || unitPropagationListener.enqueue(this.lits[i], (Constr)this)) continue;
            throw new ContradictionException("non satisfiable constraint");
        }
        if (!$assertionsDisabled && this.watchCumul < this.computeLeftSide()) {
            throw new AssertionError();
        }
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        this.voc.watch(n, (Propagatable)this);
        if (!$assertionsDisabled && this.watchCumul < this.computeLeftSide()) {
            throw new AssertionError((Object)("" + this.watchCumul + "/" + this.computeLeftSide() + ":" + this.learnt));
        }
        int n2 = 0;
        while ((this.lits[n2] ^ 1) != n) {
            ++n2;
        }
        long l = this.coefs[n2];
        long l2 = this.watchCumul - l;
        if (l2 < this.degree) {
            if (!$assertionsDisabled && this.isSatisfiable()) {
                throw new AssertionError();
            }
            return false;
        }
        this.voc.undos(n).push((Object)this);
        this.watchCumul = l2;
        long l3 = this.watchCumul - this.degree;
        for (int i = 0; i < this.coefs.length && l3 < this.coefs[i]; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || unitPropagationListener.enqueue(this.lits[i], (Constr)this)) continue;
            if (!$assertionsDisabled && this.isSatisfiable()) {
                throw new AssertionError();
            }
            return false;
        }
        if (!$assertionsDisabled && !this.learnt && this.watchCumul < this.computeLeftSide()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.watchCumul < this.computeLeftSide()) {
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
        if (!$assertionsDisabled && this.coefs[n2] <= 0L) {
            throw new AssertionError();
        }
        this.watchCumul += this.coefs[n2];
    }

    public static MaxWatchPbLong normalizedMaxWatchPbNew(UnitPropagationListener unitPropagationListener, ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        MaxWatchPbLong maxWatchPbLong = new MaxWatchPbLong(iLits, nArray, bigIntegerArray, bigInteger);
        if (maxWatchPbLong.degree <= 0L) {
            return null;
        }
        maxWatchPbLong.computeWatches();
        maxWatchPbLong.computePropagation(unitPropagationListener);
        return maxWatchPbLong;
    }

    public static WatchPbLong normalizedWatchPbNew(ILits iLits, IDataStructurePB iDataStructurePB) {
        return new MaxWatchPbLong(iLits, iDataStructurePB);
    }

    static {
        $assertionsDisabled = !MaxWatchPbLong.class.desiredAssertionStatus();
    }
}

