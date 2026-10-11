/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.specs.IVecInt;

public interface PBConstr
extends Constr {
    public BigInteger getCoef(int var1);

    public BigInteger getDegree();

    public ILits getVocabulary();

    public int[] getLits();

    public BigInteger[] getCoefs();

    public IVecInt computeAnImpliedClause();
}

