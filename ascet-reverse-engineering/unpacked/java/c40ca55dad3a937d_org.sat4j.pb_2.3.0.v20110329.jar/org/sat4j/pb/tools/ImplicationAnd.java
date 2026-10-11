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

import java.util.Iterator;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.pb.tools.DependencyHelper;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplicationAnd<T, C> {
    private final DependencyHelper<T, C> helper;
    private final IVecInt clause;
    private final IVec<IConstr> toName = new Vec();

    public ImplicationAnd(DependencyHelper<T, C> dependencyHelper, IVecInt iVecInt) {
        this.clause = iVecInt;
        this.helper = dependencyHelper;
    }

    public ImplicationAnd<T, C> and(T t) throws ContradictionException {
        VecInt vecInt = new VecInt();
        this.clause.copyTo((IVecInt)vecInt);
        vecInt.push(this.helper.getIntValue(t));
        IConstr iConstr = this.helper.solver.addClause((IVecInt)vecInt);
        if (iConstr != null) {
            this.toName.push((Object)iConstr);
        }
        return this;
    }

    public ImplicationAnd<T, C> andNot(T t) throws ContradictionException {
        VecInt vecInt = new VecInt();
        this.clause.copyTo((IVecInt)vecInt);
        vecInt.push(-this.helper.getIntValue(t));
        IConstr iConstr = this.helper.solver.addClause((IVecInt)vecInt);
        if (iConstr != null) {
            this.toName.push((Object)iConstr);
        }
        return this;
    }

    public void named(C c) {
        Iterator iterator = this.toName.iterator();
        while (iterator.hasNext()) {
            this.helper.descs.put((IConstr)iterator.next(), c);
        }
    }
}

