/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.learning;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.minisat.learning.AbstractLearning;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class NoLearningButHeuristics<D extends DataStructureFactory>
extends AbstractLearning<D> {
    private static final long serialVersionUID = 1L;

    @Override
    public void learns(Constr constr) {
        this.claBumpActivity(constr);
    }

    @Override
    public /* synthetic */ void init() {
        super.init();
    }

    @Override
    public /* synthetic */ void setSolver(Solver solver) {
        super.setSolver(solver);
    }

    @Override
    public /* synthetic */ void setVarActivityListener(VarActivityListener varActivityListener) {
        super.setVarActivityListener(varActivityListener);
    }
}

