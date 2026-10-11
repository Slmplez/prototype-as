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

public class MinWatchPbLong
extends WatchPbLong {
    private static final long serialVersionUID = 1L;
    protected long watchCumul = 0L;
    protected boolean[] watched;
    protected int[] watching;
    protected int watchingCount = 0;
    static final /* synthetic */ boolean $assertionsDisabled;

    protected MinWatchPbLong(ILits iLits, IDataStructurePB iDataStructurePB) {
        super(iDataStructurePB);
        this.voc = iLits;
        this.watching = new int[this.coefs.length];
        this.watched = new boolean[this.coefs.length];
        this.activity = 0.0;
        this.watchCumul = 0L;
        this.watchingCount = 0;
    }

    protected MinWatchPbLong(ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        super(nArray, bigIntegerArray, bigInteger);
        this.voc = iLits;
        this.watching = new int[this.coefs.length];
        this.watched = new boolean[this.coefs.length];
        this.activity = 0.0;
        this.watchCumul = 0L;
        this.watchingCount = 0;
    }

    protected void computeWatches() throws ContradictionException {
        if (!$assertionsDisabled && this.watchCumul != 0L) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.watchingCount != 0) {
            throw new AssertionError();
        }
        for (int i = 0; i < this.lits.length && this.watchCumul - this.coefs[0] < this.degree; ++i) {
            if (this.voc.isFalsified(this.lits[i])) continue;
            this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
            this.watching[this.watchingCount++] = i;
            this.watched[i] = true;
            this.watchCumul += this.coefs[i];
        }
        if (this.learnt) {
            this.watchMoreForLearntConstraint();
        }
        if (this.watchCumul < this.degree) {
            throw new ContradictionException("non satisfiable constraint");
        }
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
    }

    private void watchMoreForLearntConstraint() {
        int n = 1;
        while (this.watchCumul - this.coefs[0] < this.degree && n > 0) {
            n = 0;
            int n2 = -1;
            int n3 = -1;
            for (int i = 0; i < this.lits.length; ++i) {
                if (!this.voc.isFalsified(this.lits[i]) || this.watched[i]) continue;
                ++n;
                int n4 = this.voc.getLevel(this.lits[i]);
                if (n4 <= n2) continue;
                n3 = i;
                n2 = n4;
            }
            if (n <= 0) continue;
            if (!$assertionsDisabled && n3 < 0) {
                throw new AssertionError();
            }
            this.voc.watch(this.lits[n3] ^ 1, (Propagatable)this);
            this.watching[this.watchingCount++] = n3;
            this.watched[n3] = true;
            this.watchCumul += this.coefs[n3];
            if (!$assertionsDisabled && --n < 0) {
                throw new AssertionError();
            }
        }
        if (!$assertionsDisabled && this.lits.length != 1 && this.watchingCount <= 1) {
            throw new AssertionError();
        }
    }

    protected void computePropagation(UnitPropagationListener unitPropagationListener) throws ContradictionException {
        for (int i = 0; i < this.lits.length && this.watchCumul - this.coefs[this.watching[i]] < this.degree; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || unitPropagationListener.enqueue(this.lits[i], (Constr)this)) continue;
            throw new ContradictionException("non satisfiable constraint");
        }
    }

    public static MinWatchPbLong normalizedMinWatchPbNew(UnitPropagationListener unitPropagationListener, ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        MinWatchPbLong minWatchPbLong = new MinWatchPbLong(iLits, nArray, bigIntegerArray, bigInteger);
        if (minWatchPbLong.degree <= 0L) {
            return null;
        }
        minWatchPbLong.computeWatches();
        minWatchPbLong.computePropagation(unitPropagationListener);
        return minWatchPbLong;
    }

    protected int nbOfWatched() {
        int n = 0;
        for (int i = 0; i < this.watched.length; ++i) {
            for (int j = 0; j < this.watchingCount; ++j) {
                if (this.watching[j] == i && !$assertionsDisabled && !this.watched[i]) {
                    throw new AssertionError();
                }
            }
            n += this.watched[i] ? 1 : 0;
        }
        return n;
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        int n2;
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.watchingCount <= 1) {
            throw new AssertionError();
        }
        for (n2 = 0; n2 < this.watchingCount && (this.lits[this.watching[n2]] ^ 1) != n; ++n2) {
        }
        int n3 = this.watching[n2];
        if (!$assertionsDisabled && n != (this.lits[n3] ^ 1)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !this.watched[n3]) {
            throw new AssertionError();
        }
        long l = this.maximalCoefficient(n3);
        l = this.updateWatched(l, n3);
        long l2 = this.watchCumul - this.coefs[n3];
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
        if (l2 < this.degree) {
            this.voc.watch(n, (Propagatable)this);
            if (!$assertionsDisabled && !this.watched[n3]) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.isSatisfiable()) {
                throw new AssertionError();
            }
            return false;
        }
        if (l2 < this.degree + l) {
            if (!$assertionsDisabled && this.watchingCount == 0) {
                throw new AssertionError();
            }
            long l3 = l2 - this.degree;
            for (int i = 0; i < this.watchingCount; ++i) {
                if (l3 >= this.coefs[this.watching[i]] || i == n2 || this.voc.isSatisfied(this.lits[this.watching[i]]) || unitPropagationListener.enqueue(this.lits[this.watching[i]], (Constr)this)) continue;
                this.voc.watch(n, (Propagatable)this);
                if (!$assertionsDisabled && this.isSatisfiable()) {
                    throw new AssertionError();
                }
                return false;
            }
            this.voc.undos(n).push((Object)this);
        }
        this.watched[n3] = false;
        this.watchCumul = l2;
        this.watching[n2] = this.watching[--this.watchingCount];
        if (!$assertionsDisabled && this.watchingCount == 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
        return true;
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        for (int i = 0; i < this.watchingCount; ++i) {
            this.voc.watches(this.lits[this.watching[i]] ^ 1).remove((Object)this);
            this.watched[this.watching[i]] = false;
        }
        this.watchingCount = 0;
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
    }

    public void undo(int n) {
        this.voc.watch(n, (Propagatable)this);
        int n2 = 0;
        while ((this.lits[n2] ^ 1) != n) {
            ++n2;
        }
        if (!$assertionsDisabled && n2 >= this.lits.length) {
            throw new AssertionError();
        }
        this.watchCumul += this.coefs[n2];
        if (!$assertionsDisabled && this.watchingCount != this.nbOfWatched()) {
            throw new AssertionError();
        }
        this.watched[n2] = true;
        this.watching[this.watchingCount++] = n2;
        if (!$assertionsDisabled && this.watchingCount != this.nbOfWatched()) {
            throw new AssertionError();
        }
    }

    public static WatchPbLong normalizedWatchPbNew(ILits iLits, IDataStructurePB iDataStructurePB) {
        return new MinWatchPbLong(iLits, iDataStructurePB);
    }

    protected long maximalCoefficient(int n) {
        long l = 0L;
        for (int i = 0; i < this.watchingCount; ++i) {
            if (this.coefs[this.watching[i]] <= l || this.watching[i] == n) continue;
            l = this.coefs[this.watching[i]];
        }
        if (!$assertionsDisabled && !this.learnt && l == 0L) {
            throw new AssertionError();
        }
        return l;
    }

    protected long updateWatched(long l, int n) {
        long l2 = l;
        if (this.watchingCount < this.size()) {
            long l3 = this.watchCumul - this.coefs[n];
            long l4 = this.degree + l2;
            for (int i = 0; i < this.lits.length && l3 < l4; ++i) {
                if (this.voc.isFalsified(this.lits[i]) || this.watched[i]) continue;
                l3 += this.coefs[i];
                this.watched[i] = true;
                if (!$assertionsDisabled && this.watchingCount >= this.size()) {
                    throw new AssertionError();
                }
                this.watching[this.watchingCount++] = i;
                this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
                if (this.coefs[i] <= l2) continue;
                l2 = this.coefs[i];
                l4 = this.degree + l2;
            }
            this.watchCumul = l3 + this.coefs[n];
        }
        return l2;
    }

    static {
        $assertionsDisabled = !MinWatchPbLong.class.desiredAssertionStatus();
    }
}

