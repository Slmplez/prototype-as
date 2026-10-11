/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.ISolver
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb;

import java.math.BigInteger;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPBSolver
extends ISolver {
    public IConstr addPseudoBoolean(IVecInt var1, IVec<BigInteger> var2, boolean var3, BigInteger var4) throws ContradictionException;

    public void setObjectiveFunction(ObjectiveFunction var1);

    public ObjectiveFunction getObjectiveFunction();
}

