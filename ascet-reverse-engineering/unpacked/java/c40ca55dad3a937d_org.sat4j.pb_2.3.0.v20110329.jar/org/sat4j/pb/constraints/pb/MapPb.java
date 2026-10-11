/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.Lits
 *  org.sat4j.minisat.core.VarActivityListener
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.InternalMapPBStructure;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MapPb
implements IDataStructurePB {
    protected InternalMapPBStructure weightedLits;
    protected BigInteger degree;
    protected int assertiveLiteral = -1;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$constraints$pb$MapPb;

    MapPb(PBConstr pBConstr) {
        this.weightedLits = new InternalMapPBStructure(pBConstr);
        this.degree = pBConstr.getDegree();
    }

    MapPb(int n) {
        this.weightedLits = new InternalMapPBStructure(n);
        this.degree = BigInteger.ZERO;
    }

    @Override
    public boolean isCardinality() {
        for (int i = 0; i < this.size(); ++i) {
            if (this.weightedLits.getCoef(i).equals(BigInteger.ONE)) continue;
            return false;
        }
        return true;
    }

    @Override
    public boolean isLongSufficient() {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.size() && bigInteger.bitLength() < 64; ++i) {
            if (!$assertionsDisabled && this.weightedLits.getCoef(i).compareTo(BigInteger.ZERO) < 0) {
                throw new AssertionError();
            }
            bigInteger = bigInteger.add(this.weightedLits.getCoef(i));
        }
        return bigInteger.bitLength() < 64;
    }

    @Override
    public int getAssertiveLiteral() {
        return this.assertiveLiteral;
    }

    @Override
    public BigInteger saturation() {
        int n;
        if (!$assertionsDisabled && this.degree.signum() <= 0) {
            throw new AssertionError();
        }
        BigInteger bigInteger = this.degree;
        for (n = 0; n < this.size(); ++n) {
            if (!$assertionsDisabled && this.weightedLits.getCoef(n).signum() <= 0) {
                throw new AssertionError();
            }
            if (this.degree.compareTo(this.weightedLits.getCoef(n)) < 0) {
                this.changeCoef(n, this.degree);
            }
            if (!$assertionsDisabled && this.weightedLits.getCoef(n).signum() <= 0) {
                throw new AssertionError();
            }
            bigInteger = bigInteger.min(this.weightedLits.getCoef(n));
        }
        if (bigInteger.equals(this.degree) && bigInteger.compareTo(BigInteger.ONE) > 0) {
            this.degree = BigInteger.ONE;
            for (n = 0; n < this.size(); ++n) {
                this.changeCoef(n, BigInteger.ONE);
            }
        }
        return this.degree;
    }

    @Override
    public BigInteger cuttingPlane(PBConstr pBConstr, BigInteger bigInteger, BigInteger[] bigIntegerArray, VarActivityListener varActivityListener) {
        return this.cuttingPlane(pBConstr, bigInteger, bigIntegerArray, BigInteger.ONE, varActivityListener);
    }

    @Override
    public BigInteger cuttingPlane(PBConstr pBConstr, BigInteger bigInteger, BigInteger[] bigIntegerArray, BigInteger bigInteger2, VarActivityListener varActivityListener) {
        this.degree = this.degree.add(bigInteger);
        if (!$assertionsDisabled && this.degree.signum() <= 0) {
            throw new AssertionError();
        }
        if (bigIntegerArray == null) {
            for (int i = 0; i < pBConstr.size(); ++i) {
                varActivityListener.varBumpActivity(pBConstr.get(i));
                this.cuttingPlaneStep(pBConstr.get(i), this.multiplyCoefficient(pBConstr.getCoef(i), bigInteger2));
            }
        } else {
            for (int i = 0; i < pBConstr.size(); ++i) {
                varActivityListener.varBumpActivity(pBConstr.get(i));
                this.cuttingPlaneStep(pBConstr.get(i), this.multiplyCoefficient(bigIntegerArray[i], bigInteger2));
            }
        }
        return this.degree;
    }

    @Override
    public BigInteger cuttingPlane(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        return this.cuttingPlane(nArray, bigIntegerArray, bigInteger, BigInteger.ONE);
    }

    @Override
    public BigInteger cuttingPlane(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger, BigInteger bigInteger2) {
        this.degree = this.degree.add(bigInteger);
        if (!$assertionsDisabled && this.degree.signum() <= 0) {
            throw new AssertionError();
        }
        for (int i = 0; i < nArray.length; ++i) {
            this.cuttingPlaneStep(nArray[i], bigIntegerArray[i].multiply(bigInteger2));
        }
        return this.degree;
    }

    private void cuttingPlaneStep(int n, BigInteger bigInteger) {
        if (!$assertionsDisabled && bigInteger.signum() < 0) {
            throw new AssertionError();
        }
        int n2 = n ^ 1;
        if (bigInteger.signum() > 0) {
            if (this.weightedLits.containsKey(n2)) {
                if (!$assertionsDisabled && this.weightedLits.containsKey(n)) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && this.weightedLits.get(n2) == null) {
                    throw new AssertionError();
                }
                if (this.weightedLits.get(n2).compareTo(bigInteger) < 0) {
                    BigInteger bigInteger2 = this.weightedLits.get(n2);
                    this.setCoef(n, bigInteger.subtract(bigInteger2));
                    if (!$assertionsDisabled && this.weightedLits.get(n).signum() <= 0) {
                        throw new AssertionError();
                    }
                    this.degree = this.degree.subtract(bigInteger2);
                    this.removeCoef(n2);
                } else if (this.weightedLits.get(n2).equals(bigInteger)) {
                    this.degree = this.degree.subtract(bigInteger);
                    this.removeCoef(n2);
                } else {
                    this.decreaseCoef(n2, bigInteger);
                    if (!$assertionsDisabled && this.weightedLits.get(n2).signum() <= 0) {
                        throw new AssertionError();
                    }
                    this.degree = this.degree.subtract(bigInteger);
                }
            } else {
                if (!$assertionsDisabled && this.weightedLits.containsKey(n) && this.weightedLits.get(n).signum() <= 0) {
                    throw new AssertionError();
                }
                if (this.weightedLits.containsKey(n)) {
                    this.increaseCoef(n, bigInteger);
                } else {
                    this.setCoef(n, bigInteger);
                }
                if (!$assertionsDisabled && this.weightedLits.get(n).signum() <= 0) {
                    throw new AssertionError();
                }
            }
        }
        if (!$assertionsDisabled && this.weightedLits.containsKey(n2) && this.weightedLits.containsKey(n)) {
            throw new AssertionError();
        }
    }

    @Override
    public void buildConstraintFromConflict(IVecInt iVecInt, IVec<BigInteger> iVec) {
        iVecInt.clear();
        iVec.clear();
        this.weightedLits.copyCoefs(iVec);
        this.weightedLits.copyLits(iVecInt);
    }

    @Override
    public void buildConstraintFromMapPb(int[] nArray, BigInteger[] bigIntegerArray) {
        if (!$assertionsDisabled && nArray.length != bigIntegerArray.length) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && nArray.length != this.size()) {
            throw new AssertionError();
        }
        this.weightedLits.copyCoefs(bigIntegerArray);
        this.weightedLits.copyLits(nArray);
    }

    @Override
    public BigInteger getDegree() {
        return this.degree;
    }

    @Override
    public int size() {
        return this.weightedLits.size();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.size(); ++i) {
            stringBuffer.append(this.weightedLits.getCoef(i));
            stringBuffer.append(".");
            stringBuffer.append(Lits.toString((int)this.weightedLits.getLit(i)));
            stringBuffer.append(" ");
        }
        return new StringBuffer().append(stringBuffer.toString()).append(" >= ").append(this.degree).toString();
    }

    private BigInteger multiplyCoefficient(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.equals(BigInteger.ONE)) {
            return bigInteger2;
        }
        return bigInteger.multiply(bigInteger2);
    }

    void increaseCoef(int n, BigInteger bigInteger) {
        this.weightedLits.put(n, this.weightedLits.get(n).add(bigInteger));
    }

    void decreaseCoef(int n, BigInteger bigInteger) {
        this.weightedLits.put(n, this.weightedLits.get(n).subtract(bigInteger));
    }

    void setCoef(int n, BigInteger bigInteger) {
        this.weightedLits.put(n, bigInteger);
    }

    void changeCoef(int n, BigInteger bigInteger) {
        this.weightedLits.changeCoef(n, bigInteger);
    }

    void removeCoef(int n) {
        this.weightedLits.remove(n);
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
        $assertionsDisabled = !(class$org$sat4j$pb$constraints$pb$MapPb == null ? (class$org$sat4j$pb$constraints$pb$MapPb = MapPb.class$("org.sat4j.pb.constraints.pb.MapPb")) : class$org$sat4j$pb$constraints$pb$MapPb).desiredAssertionStatus();
    }
}

