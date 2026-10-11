/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import org.sat4j.minisat.core.Constr;
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
public interface DataStructureFactory {
    public Constr createClause(IVecInt var1) throws ContradictionException;

    public Constr createUnregisteredClause(IVecInt var1);

    public void learnConstraint(Constr var1);

    public Constr createCardinalityConstraint(IVecInt var1, int var2) throws ContradictionException;

    public void setUnitPropagationListener(UnitPropagationListener var1);

    public void setLearner(Learner var1);

    public void reset();

    public ILits getVocabulary();

    public IVec<Propagatable> getWatchesFor(int var1);

    public void conflictDetectedInWatchesFor(int var1, int var2);
}

