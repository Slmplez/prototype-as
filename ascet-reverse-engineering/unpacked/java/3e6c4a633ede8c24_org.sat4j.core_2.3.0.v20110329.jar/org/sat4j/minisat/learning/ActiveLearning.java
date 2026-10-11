/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.learning;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.learning.LimitedLearning;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ActiveLearning<D extends DataStructureFactory>
extends LimitedLearning<D> {
    private static final long serialVersionUID = 1L;
    private double percent;
    private IOrder order;
    private int maxpercent;

    public ActiveLearning() {
        this(0.95);
    }

    public ActiveLearning(double d) {
        this.percent = d;
    }

    public void setOrder(IOrder iOrder) {
        this.order = iOrder;
    }

    @Override
    public void setSolver(Solver<D> solver) {
        super.setSolver(solver);
        this.order = solver.getOrder();
    }

    public void setActivityPercent(double d) {
        this.percent = d;
    }

    public double getActivityPercent() {
        return this.percent;
    }

    @Override
    protected boolean learningCondition(Constr constr) {
        int n = 0;
        for (int i = 0; i < constr.size(); ++i) {
            if (!(this.order.varActivity(constr.get(i)) > 1.0)) continue;
            ++n;
        }
        return (double)n > (double)constr.size() * this.percent;
    }

    public String toString() {
        return new StringBuffer().append("Limit learning to clauses containing active literals (").append(this.percent * 100.0).append("%)").toString();
    }

    public void setLimit(int n) {
        this.maxpercent = n;
    }

    public int getLimit() {
        return this.maxpercent;
    }
}

