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
public final class FixedLengthLearning<D extends DataStructureFactory>
extends LimitedLearning<D> {
    private static final long serialVersionUID = 1L;
    private int maxlength;
    private int bound;

    public FixedLengthLearning() {
        this(3);
    }

    public FixedLengthLearning(int n) {
        this.maxlength = n;
    }

    @Override
    public void init() {
        this.setBound(this.maxlength);
    }

    public void setMaxLength(int n) {
        this.maxlength = n;
    }

    public int getMaxLength() {
        return this.maxlength;
    }

    public String toString() {
        return new StringBuffer().append("Limit learning to clauses of size smaller or equal to ").append(this.maxlength).toString();
    }

    protected void setBound(int n) {
        this.bound = n;
    }

    @Override
    protected boolean learningCondition(Constr constr) {
        return constr.size() <= this.bound;
    }
}

