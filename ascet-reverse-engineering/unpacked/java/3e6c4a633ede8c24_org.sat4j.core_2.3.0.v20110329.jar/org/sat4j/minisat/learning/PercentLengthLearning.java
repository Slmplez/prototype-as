/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.learning;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.learning.LimitedLearning;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class PercentLengthLearning<D extends DataStructureFactory>
extends LimitedLearning<D> {
    private static final long serialVersionUID = 1L;
    private int maxpercent;
    private int bound;

    public PercentLengthLearning() {
        this(10);
    }

    public PercentLengthLearning(int n) {
        this.maxpercent = n;
    }

    public void setLimit(int n) {
        this.maxpercent = n;
    }

    public int getLimit() {
        return this.maxpercent;
    }

    @Override
    public void init() {
        super.init();
        this.setBound(this.lits.realnVars() * this.maxpercent / 100);
    }

    public String toString() {
        return new StringBuffer().append("Limit learning to clauses of size smaller or equal to ").append(this.maxpercent).append("% of the number of variables").toString();
    }

    protected void setBound(int n) {
        this.bound = n;
    }

    @Override
    protected boolean learningCondition(Constr constr) {
        return constr.size() <= this.bound;
    }
}

