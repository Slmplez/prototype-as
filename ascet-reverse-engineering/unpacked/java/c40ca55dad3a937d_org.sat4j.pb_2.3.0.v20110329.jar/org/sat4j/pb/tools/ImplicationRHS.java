/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.tools;

import org.sat4j.core.Vec;
import org.sat4j.pb.tools.DependencyHelper;
import org.sat4j.pb.tools.ImplicationAnd;
import org.sat4j.pb.tools.ImplicationNamer;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplicationRHS<T, C> {
    private final IVecInt clause;
    private final DependencyHelper<T, C> helper;
    private final IVec<IConstr> toName = new Vec();

    public ImplicationRHS(DependencyHelper<T, C> dependencyHelper, IVecInt iVecInt) {
        this.clause = iVecInt;
        this.helper = dependencyHelper;
    }

    public ImplicationAnd<T, C> implies(T t) throws ContradictionException {
        ImplicationAnd<T, C> implicationAnd = new ImplicationAnd<T, C>(this.helper, this.clause);
        implicationAnd.and(t);
        return implicationAnd;
    }

    public ImplicationNamer<T, C> implies(T[] TArray) throws ContradictionException {
        for (T t : TArray) {
            this.clause.push(this.helper.getIntValue(t));
        }
        this.toName.push((Object)this.helper.solver.addClause(this.clause));
        return new ImplicationNamer<T, C>(this.helper, this.toName);
    }

    public ImplicationAnd<T, C> impliesNot(T t) throws ContradictionException {
        ImplicationAnd<T, C> implicationAnd = new ImplicationAnd<T, C>(this.helper, this.clause);
        implicationAnd.andNot(t);
        return implicationAnd;
    }
}

