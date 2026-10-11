/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.ReadOnlyVec
 *  org.sat4j.core.ReadOnlyVecInt
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb;

import java.io.Serializable;
import java.math.BigInteger;
import org.sat4j.core.ReadOnlyVec;
import org.sat4j.core.ReadOnlyVecInt;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ObjectiveFunction
implements Serializable {
    private static final long serialVersionUID = 1L;
    private final IVec<BigInteger> coeffs;
    private final IVecInt vars;

    public ObjectiveFunction(IVecInt iVecInt, IVec<BigInteger> iVec) {
        this.vars = new ReadOnlyVecInt(iVecInt);
        this.coeffs = new ReadOnlyVec(iVec);
    }

    public BigInteger calculateDegree(int[] nArray) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.vars.size(); ++i) {
            BigInteger bigInteger2 = (BigInteger)this.coeffs.get(i);
            if (this.varInModel(this.vars.get(i), nArray)) {
                bigInteger = bigInteger.add(bigInteger2);
                continue;
            }
            if (bigInteger2.signum() >= 0 || this.varInModel(-this.vars.get(i), nArray)) continue;
            bigInteger = bigInteger.add(bigInteger2);
        }
        return bigInteger;
    }

    private boolean varInModel(int n, int[] nArray) {
        for (int i = 0; i < nArray.length; ++i) {
            if (n != nArray[i]) continue;
            return true;
        }
        return false;
    }

    public IVec<BigInteger> getCoeffs() {
        return this.coeffs;
    }

    public IVecInt getVars() {
        return this.vars;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        IVecInt iVecInt = this.getVars();
        IVec<BigInteger> iVec = this.getCoeffs();
        for (int i = 0; i < iVecInt.size(); ++i) {
            BigInteger bigInteger = (BigInteger)iVec.get(i);
            int n = iVecInt.get(i);
            if (n < 0) {
                n = -n;
                bigInteger = bigInteger.negate();
            }
            stringBuffer.append(new StringBuffer().append(bigInteger.signum() < 0 ? "" : "+").append(bigInteger).append(" x").append(n).append(" ").toString());
        }
        return stringBuffer.toString();
    }
}

