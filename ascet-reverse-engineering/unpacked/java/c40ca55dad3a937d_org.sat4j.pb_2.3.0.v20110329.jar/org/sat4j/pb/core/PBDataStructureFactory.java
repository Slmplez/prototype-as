/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.DataStructureFactory
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.core;

import java.math.BigInteger;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PBDataStructureFactory
extends DataStructureFactory {
    public Constr createPseudoBooleanConstraint(IVecInt var1, IVec<BigInteger> var2, boolean var3, BigInteger var4) throws ContradictionException;

    public Constr createUnregisteredPseudoBooleanConstraint(IDataStructurePB var1);
}

