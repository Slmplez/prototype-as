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

public class MinWatchPb
extends WatchPb {
    private static final long serialVersionUID = 1L;
    protected BigInteger watchCumul = BigInteger.ZERO;
    protected boolean[] watched;
    protected int[] watching;
    protected int watchingCount = 0;
    static final /* synthetic */ boolean $assertionsDisabled;

    protected MinWatchPb(ILits iLits, IDataStructurePB iDataStructurePB) {
        super(iDataStructurePB);
        this.voc = iLits;
        this.watching = new int[this.coefs.length];
        this.watched = new boolean[this.coefs.length];
        this.activity = 0.0;
        this.watchCumul = BigInteger.ZERO;
        this.watchingCount = 0;
    }

    protected MinWatchPb(ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        super(nArray, bigIntegerArray, bigInteger);
        this.voc = iLits;
        this.watching = new int[this.coefs.length];
        this.watched = new boolean[this.coefs.length];
        this.activity = 0.0;
        this.watchCumul = BigInteger.ZERO;
        this.watchingCount = 0;
    }

    protected void computeWatches() throws ContradictionException {
        if (!$assertionsDisabled && this.watchCumul.signum() != 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.watchingCount != 0) {
            throw new AssertionError();
        }
        for (int i = 0; i < this.lits.length && this.watchCumul.subtract(this.coefs[0]).compareTo(this.degree) < 0; ++i) {
            if (this.voc.isFalsified(this.lits[i])) continue;
            this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
            this.watching[this.watchingCount++] = i;
            this.watched[i] = true;
            this.watchCumul = this.watchCumul.add(this.coefs[i]);
        }
        if (this.learnt) {
            this.watchMoreForLearntConstraint();
        }
        if (this.watchCumul.compareTo(this.degree) < 0) {
            throw new ContradictionException("non satisfiable constraint");
        }
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
    }

    private void watchMoreForLearntConstraint() {
        int n = 1;
        while (this.watchCumul.subtract(this.coefs[0]).compareTo(this.degree) < 0 && n > 0) {
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
            this.watchCumul = this.watchCumul.add(this.coefs[n3]);
            if (!$assertionsDisabled && --n < 0) {
                throw new AssertionError();
            }
        }
        if (!$assertionsDisabled && this.lits.length != 1 && this.watchingCount <= 1) {
            throw new AssertionError();
        }
    }

    protected void computePropagation(UnitPropagationListener unitPropagationListener) throws ContradictionException {
        for (int i = 0; i < this.lits.length && this.watchCumul.subtract(this.coefs[this.watching[i]]).compareTo(this.degree) < 0; ++i) {
            if (!this.voc.isUnassigned(this.lits[i]) || unitPropagationListener.enqueue(this.lits[i], (Constr)this)) continue;
            throw new ContradictionException("non satisfiable constraint");
        }
    }

    public static MinWatchPb normalizedMinWatchPbNew(UnitPropagationListener unitPropagationListener, ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        MinWatchPb minWatchPb = new MinWatchPb(iLits, nArray, bigIntegerArray, bigInteger);
        if (minWatchPb.degree.signum() <= 0) {
            return null;
        }
        minWatchPb.computeWatches();
        minWatchPb.computePropagation(unitPropagationListener);
        return minWatchPb;
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
        BigInteger bigInteger = this.maximalCoefficient(n3);
        bigInteger = this.updateWatched(bigInteger, n3);
        BigInteger bigInteger2 = this.watchCumul.subtract(this.coefs[n3]);
        if (!$assertionsDisabled && this.nbOfWatched() != this.watchingCount) {
            throw new AssertionError();
        }
        if (bigInteger2.compareTo(this.degree) < 0) {
            this.voc.watch(n, (Propagatable)this);
            if (!$assertionsDisabled && !this.watched[n3]) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.isSatisfiable()) {
                throw new AssertionError();
            }
            return false;
        }
        if (bigInteger2.compareTo(this.degree.add(bigInteger)) < 0) {
            if (!$assertionsDisabled && this.watchingCount == 0) {
                throw new AssertionError();
            }
            BigInteger bigInteger3 = bigInteger2.subtract(this.degree);
            for (int i = 0; i < this.watchingCount; ++i) {
                if (bigInteger3.compareTo(this.coefs[this.watching[i]]) >= 0 || i == n2 || this.voc.isSatisfied(this.lits[this.watching[i]]) || unitPropagationListener.enqueue(this.lits[this.watching[i]], (Constr)this)) continue;
                this.voc.watch(n, (Propagatable)this);
                if (!$assertionsDisabled && this.isSatisfiable()) {
                    throw new AssertionError();
                }
                return false;
            }
            this.voc.undos(n).push((Object)this);
        }
        this.watched[n3] = false;
        this.watchCumul = bigInteger2;
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
        this.watchCumul = this.watchCumul.add(this.coefs[n2]);
        if (!$assertionsDisabled && this.watchingCount != this.nbOfWatched()) {
            throw new AssertionError();
        }
        this.watched[n2] = true;
        this.watching[this.watchingCount++] = n2;
        if (!$assertionsDisabled && this.watchingCount != this.nbOfWatched()) {
            throw new AssertionError();
        }
    }

    public static WatchPb normalizedWatchPbNew(ILits iLits, IDataStructurePB iDataStructurePB) {
        return new MinWatchPb(iLits, iDataStructurePB);
    }

    protected BigInteger maximalCoefficient(int n) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.watchingCount; ++i) {
            if (this.coefs[this.watching[i]].compareTo(bigInteger) <= 0 || this.watching[i] == n) continue;
            bigInteger = this.coefs[this.watching[i]];
        }
        if (!$assertionsDisabled && !this.learnt && bigInteger.signum() == 0) {
            throw new AssertionError();
        }
        return bigInteger;
    }

    protected BigInteger updateWatched(BigInteger bigInteger, int n) {
        BigInteger bigInteger2 = bigInteger;
        if (this.watchingCount < this.size()) {
            BigInteger bigInteger3 = this.watchCumul.subtract(this.coefs[n]);
            BigInteger bigInteger4 = this.degree.add(bigInteger2);
            for (int i = 0; i < this.lits.length && bigInteger3.compareTo(bigInteger4) < 0; ++i) {
                if (this.voc.isFalsified(this.lits[i]) || this.watched[i]) continue;
                bigInteger3 = bigInteger3.add(this.coefs[i]);
                this.watched[i] = true;
                if (!$assertionsDisabled && this.watchingCount >= this.size()) {
                    throw new AssertionError();
                }
                this.watching[this.watchingCount++] = i;
                this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
                if (this.coefs[i].compareTo(bigInteger2) <= 0) continue;
                bigInteger2 = this.coefs[i];
                bigInteger4 = this.degree.add(bigInteger2);
            }
            this.watchCumul = bigInteger3.add(this.coefs[n]);
        }
        return bigInteger2;
    }

    static {
        $assertionsDisabled = !MinWatchPb.class.desiredAssertionStatus();
    }
}

