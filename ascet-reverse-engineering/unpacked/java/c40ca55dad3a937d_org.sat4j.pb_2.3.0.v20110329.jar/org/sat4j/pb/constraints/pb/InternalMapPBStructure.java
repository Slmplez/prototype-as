/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InternalMapPBStructure {
    IVecInt lits;
    IVec<BigInteger> coefs;
    IVecInt allLits;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$constraints$pb$InternalMapPBStructure;

    InternalMapPBStructure(int n) {
        if (!$assertionsDisabled && n <= 0) {
            throw new AssertionError();
        }
        this.allLits = new VecInt(n, -1);
        this.coefs = new Vec();
        this.lits = new VecInt();
    }

    InternalMapPBStructure(PBConstr pBConstr) {
        this.allLits = new VecInt(pBConstr.getVocabulary().nVars() * 2 + 2, -1);
        this.coefs = new Vec(pBConstr.size());
        this.lits = new VecInt(pBConstr.size());
        for (int i = 0; i < pBConstr.size(); ++i) {
            if (!$assertionsDisabled && pBConstr.get(i) == 0) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && pBConstr.getCoef(i).signum() <= 0) {
                throw new AssertionError();
            }
            int n = pBConstr.get(i);
            this.lits.push(n);
            if (!$assertionsDisabled && i + 1 != this.lits.size()) {
                throw new AssertionError();
            }
            this.allLits.set(n, i);
            this.coefs.push((Object)pBConstr.getCoef(i));
        }
    }

    BigInteger get(int n) {
        if (!$assertionsDisabled && this.allLits.get(n) == -1) {
            throw new AssertionError();
        }
        return (BigInteger)this.coefs.get(this.allLits.get(n));
    }

    int getLit(int n) {
        if (!$assertionsDisabled && n >= this.lits.size()) {
            throw new AssertionError();
        }
        return this.lits.get(n);
    }

    BigInteger getCoef(int n) {
        if (!$assertionsDisabled && n >= this.coefs.size()) {
            throw new AssertionError();
        }
        return (BigInteger)this.coefs.get(n);
    }

    boolean containsKey(int n) {
        return this.allLits.get(n) != -1;
    }

    int size() {
        return this.lits.size();
    }

    void put(int n, BigInteger bigInteger) {
        int n2 = this.allLits.get(n);
        if (n2 != -1) {
            this.coefs.set(n2, (Object)bigInteger);
        } else {
            this.lits.push(n);
            this.coefs.push((Object)bigInteger);
            this.allLits.set(n, this.lits.size() - 1);
        }
    }

    void changeCoef(int n, BigInteger bigInteger) {
        if (!$assertionsDisabled && n > this.coefs.size()) {
            throw new AssertionError();
        }
        this.coefs.set(n, (Object)bigInteger);
    }

    void remove(int n) {
        int n2 = this.allLits.get(n);
        if (n2 != -1) {
            int n3 = this.lits.last();
            this.coefs.delete(n2);
            this.lits.delete(n2);
            this.allLits.set(n3, n2);
            this.allLits.set(n, -1);
        }
    }

    void copyCoefs(IVec<BigInteger> iVec) {
        this.coefs.copyTo(iVec);
    }

    void copyCoefs(BigInteger[] bigIntegerArray) {
        this.coefs.copyTo((Object[])bigIntegerArray);
    }

    void copyLits(IVecInt iVecInt) {
        this.lits.copyTo(iVecInt);
    }

    void copyLits(int[] nArray) {
        this.lits.copyTo(nArray);
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
        $assertionsDisabled = !(class$org$sat4j$pb$constraints$pb$InternalMapPBStructure == null ? (class$org$sat4j$pb$constraints$pb$InternalMapPBStructure = InternalMapPBStructure.class$("org.sat4j.pb.constraints.pb.InternalMapPBStructure")) : class$org$sat4j$pb$constraints$pb$InternalMapPBStructure).desiredAssertionStatus();
    }
}

