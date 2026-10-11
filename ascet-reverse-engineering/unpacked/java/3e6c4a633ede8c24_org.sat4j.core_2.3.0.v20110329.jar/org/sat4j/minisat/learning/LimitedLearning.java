/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.learning;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.core.SolverStats;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.minisat.learning.MiniSATLearning;
import org.sat4j.minisat.learning.NoLearningButHeuristics;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class LimitedLearning<D extends DataStructureFactory>
implements LearningStrategy<D> {
    private static final long serialVersionUID = 1L;
    private final NoLearningButHeuristics<D> none = new NoLearningButHeuristics();
    private final MiniSATLearning<D> all = new MiniSATLearning();
    protected ILits lits;
    private SolverStats stats;

    @Override
    public void setSolver(Solver<D> solver) {
        this.lits = solver.getVocabulary();
        this.setVarActivityListener(solver);
        this.all.setDataStructureFactory(solver.getDSFactory());
        this.stats = solver.getStats();
    }

    @Override
    public void learns(Constr constr) {
        if (this.learningCondition(constr)) {
            this.all.learns(constr);
        } else {
            this.none.learns(constr);
            ++this.stats.ignoredclauses;
        }
    }

    protected abstract boolean learningCondition(Constr var1);

    @Override
    public void init() {
        this.all.init();
        this.none.init();
    }

    @Override
    public void setVarActivityListener(VarActivityListener varActivityListener) {
        this.none.setVarActivityListener(varActivityListener);
        this.all.setVarActivityListener(varActivityListener);
    }
}

