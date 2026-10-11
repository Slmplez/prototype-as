/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.tools;

import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.pb.tools.DependencyHelper;
import org.sat4j.pb.tools.ImplicationNamer;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DisjunctionRHS<T, C> {
    private final IVecInt literals;
    private final DependencyHelper<T, C> helper;
    private final IVec<IConstr> toName = new Vec();

    public DisjunctionRHS(DependencyHelper<T, C> dependencyHelper, IVecInt iVecInt) {
        this.literals = iVecInt;
        this.helper = dependencyHelper;
    }

    public ImplicationNamer<T, C> implies(T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt();
        for (T t : TArray) {
            vecInt.push(this.helper.getIntValue(t));
        }
        for (int n : this.literals) {
            vecInt.push(n);
            IConstr iConstr = this.helper.solver.addClause((IVecInt)vecInt);
            if (iConstr == null) {
                throw new IllegalStateException("Constraints are not supposed to be null when using the helper");
            }
            this.toName.push((Object)iConstr);
            vecInt.remove(n);
        }
        return new ImplicationNamer<T, C>(this.helper, this.toName);
    }
}

