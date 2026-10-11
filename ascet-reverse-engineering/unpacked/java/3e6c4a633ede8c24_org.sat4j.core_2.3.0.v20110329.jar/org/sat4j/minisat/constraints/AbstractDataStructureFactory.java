/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints;

import java.io.Serializable;
import org.sat4j.core.Vec;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Learner;
import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractDataStructureFactory
implements DataStructureFactory,
Serializable {
    private static final long serialVersionUID = 1L;
    protected ILits lits;
    private final IVec<Propagatable> tmp = new Vec<Propagatable>();
    protected UnitPropagationListener solver;
    protected Learner learner;

    @Override
    public void conflictDetectedInWatchesFor(int n, int n2) {
        for (int i = n2 + 1; i < this.tmp.size(); ++i) {
            this.lits.watch(n, this.tmp.get(i));
        }
    }

    @Override
    public IVec<Propagatable> getWatchesFor(int n) {
        this.tmp.clear();
        this.lits.watches(n).moveTo(this.tmp);
        return this.tmp;
    }

    protected AbstractDataStructureFactory() {
        this.lits = this.createLits();
    }

    protected abstract ILits createLits();

    @Override
    public ILits getVocabulary() {
        return this.lits;
    }

    @Override
    public void setUnitPropagationListener(UnitPropagationListener unitPropagationListener) {
        this.solver = unitPropagationListener;
    }

    @Override
    public void setLearner(Learner learner) {
        this.learner = learner;
    }

    @Override
    public void reset() {
    }

    @Override
    public void learnConstraint(Constr constr) {
        this.learner.learn(constr);
    }

    @Override
    public Constr createCardinalityConstraint(IVecInt iVecInt, int n) throws ContradictionException {
        throw new UnsupportedOperationException();
    }
}

