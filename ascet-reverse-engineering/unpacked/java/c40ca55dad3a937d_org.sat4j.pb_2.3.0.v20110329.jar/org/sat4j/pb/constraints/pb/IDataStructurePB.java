/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.VarActivityListener
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IDataStructurePB {
    public BigInteger saturation();

    public BigInteger cuttingPlane(PBConstr var1, BigInteger var2, BigInteger[] var3, VarActivityListener var4);

    public BigInteger cuttingPlane(PBConstr var1, BigInteger var2, BigInteger[] var3, BigInteger var4, VarActivityListener var5);

    public BigInteger cuttingPlane(int[] var1, BigInteger[] var2, BigInteger var3);

    public BigInteger cuttingPlane(int[] var1, BigInteger[] var2, BigInteger var3, BigInteger var4);

    public void buildConstraintFromConflict(IVecInt var1, IVec<BigInteger> var2);

    public void buildConstraintFromMapPb(int[] var1, BigInteger[] var2);

    public BigInteger getDegree();

    public int size();

    public boolean isCardinality();

    public int getAssertiveLiteral();

    public boolean isLongSufficient();
}

