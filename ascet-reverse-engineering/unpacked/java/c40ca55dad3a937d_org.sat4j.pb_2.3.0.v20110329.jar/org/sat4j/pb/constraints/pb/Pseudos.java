/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.core.ILits;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MapPb;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Pseudos {
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$constraints$pb$Pseudos;

    public static IDataStructurePB niceCheckedParameters(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger, ILits iLits) {
        if (!($assertionsDisabled || iVecInt.size() != 0 && iVecInt.size() == iVec.size())) {
            throw new AssertionError();
        }
        int[] nArray = new int[iVecInt.size()];
        iVecInt.copyTo(nArray);
        Object[] objectArray = new BigInteger[iVec.size()];
        iVec.copyTo(objectArray);
        BigInteger bigInteger2 = Pseudos.niceCheckedParametersForCompetition(nArray, (BigInteger[])objectArray, bl, bigInteger);
        MapPb mapPb = new MapPb(iLits.nVars() * 2 + 2);
        if (bigInteger2.signum() > 0) {
            bigInteger2 = mapPb.cuttingPlane(nArray, (BigInteger[])objectArray, bigInteger2);
        }
        if (bigInteger2.signum() > 0) {
            bigInteger2 = mapPb.saturation();
        }
        if (bigInteger2.signum() <= 0) {
            return null;
        }
        return mapPb;
    }

    public static BigInteger niceCheckedParametersForCompetition(int[] nArray, BigInteger[] bigIntegerArray, boolean bl, BigInteger bigInteger) {
        int n;
        BigInteger bigInteger2 = bigInteger;
        if (!bl) {
            for (n = 0; n < nArray.length; ++n) {
                bigIntegerArray[n] = bigIntegerArray[n].negate();
            }
            bigInteger2 = bigInteger2.negate();
        }
        for (n = 0; n < bigIntegerArray.length; ++n) {
            if (bigIntegerArray[n].signum() >= 0) continue;
            nArray[n] = nArray[n] ^ 1;
            bigIntegerArray[n] = bigIntegerArray[n].negate();
            bigInteger2 = bigInteger2.add(bigIntegerArray[n]);
        }
        for (n = 0; n < bigIntegerArray.length; ++n) {
            if (bigIntegerArray[n].compareTo(bigInteger2) <= 0) continue;
            bigIntegerArray[n] = bigInteger2;
        }
        return bigInteger2;
    }

    public static IDataStructurePB niceParameters(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger, ILits iLits) throws ContradictionException {
        if (iVecInt.size() == 0) {
            throw new ContradictionException("Creating Empty clause ?");
        }
        if (iVecInt.size() != iVec.size()) {
            throw new IllegalArgumentException(new StringBuffer().append("Contradiction dans la taille des tableaux ps=").append(iVecInt.size()).append(" coefs=").append(iVec.size()).append(".").toString());
        }
        return Pseudos.niceCheckedParameters(iVecInt, iVec, bl, bigInteger, iLits);
    }

    public static BigInteger niceParametersForCompetition(int[] nArray, BigInteger[] bigIntegerArray, boolean bl, BigInteger bigInteger) throws ContradictionException {
        if (nArray.length == 0) {
            throw new ContradictionException("Creating Empty clause ?");
        }
        if (nArray.length != bigIntegerArray.length) {
            throw new IllegalArgumentException(new StringBuffer().append("Contradiction dans la taille des tableaux ps=").append(nArray.length).append(" coefs=").append(bigIntegerArray.length).append(".").toString());
        }
        return Pseudos.niceCheckedParametersForCompetition(nArray, bigIntegerArray, bl, bigInteger);
    }

    public static IVec<BigInteger> toVecBigInt(IVecInt iVecInt) {
        Vec vec = new Vec(iVecInt.size());
        for (int i = 0; i < iVecInt.size(); ++i) {
            vec.push((Object)BigInteger.valueOf(iVecInt.get(i)));
        }
        return vec;
    }

    public static BigInteger toBigInt(int n) {
        return BigInteger.valueOf(n);
    }

    public static ObjectiveFunction normalizeObjective(ObjectiveFunction objectiveFunction) {
        BigInteger bigInteger;
        IVec<BigInteger> iVec = objectiveFunction.getCoeffs();
        IVecInt iVecInt = objectiveFunction.getVars();
        if (!$assertionsDisabled && iVec.size() != iVecInt.size()) {
            throw new AssertionError();
        }
        HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
        for (int i = 0; i < iVecInt.size(); ++i) {
            int n = iVecInt.get(i);
            bigInteger = (BigInteger)hashMap.get(new Integer(n));
            if (bigInteger != null) {
                hashMap.put(new Integer(n), bigInteger.add((BigInteger)iVec.get(i)));
                continue;
            }
            hashMap.put(new Integer(n), iVec.get(i));
        }
        if (!$assertionsDisabled && hashMap.size() > iVecInt.size()) {
            throw new AssertionError();
        }
        if (hashMap.size() < iVecInt.size()) {
            VecInt vecInt = new VecInt(hashMap.size());
            bigInteger = new Vec(hashMap.size());
            for (Map.Entry entry : hashMap.entrySet()) {
                vecInt.push(((Integer)entry.getKey()).intValue());
                bigInteger.push(entry.getValue());
            }
            return new ObjectiveFunction((IVecInt)vecInt, (IVec<BigInteger>)bigInteger);
        }
        return objectiveFunction;
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    static {
        $assertionsDisabled = !(class$org$sat4j$pb$constraints$pb$Pseudos == null ? (class$org$sat4j$pb$constraints$pb$Pseudos = Pseudos.class$("org.sat4j.pb.constraints.pb.Pseudos")) : class$org$sat4j$pb$constraints$pb$Pseudos).desiredAssertionStatus();
    }
}

