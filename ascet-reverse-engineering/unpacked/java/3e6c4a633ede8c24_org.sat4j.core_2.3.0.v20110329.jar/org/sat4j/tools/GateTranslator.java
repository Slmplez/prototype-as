/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GateTranslator
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$GateTranslator;

    public GateTranslator(ISolver iSolver) {
        super(iSolver);
    }

    public IConstr gateFalse(int n) throws ContradictionException {
        VecInt vecInt = new VecInt(2);
        vecInt.push(-n);
        return this.processClause(vecInt);
    }

    public IConstr gateTrue(int n) throws ContradictionException {
        VecInt vecInt = new VecInt(2);
        vecInt.push(n);
        return this.processClause(vecInt);
    }

    public IConstr[] ite(int n, int n2, int n3, int n4) throws ContradictionException {
        IConstr[] iConstrArray = new IConstr[6];
        VecInt vecInt = new VecInt(5);
        vecInt.push(-n).push(-n2).push(n3);
        iConstrArray[0] = this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n).push(n2).push(n4);
        iConstrArray[1] = this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(-n3).push(n);
        iConstrArray[2] = this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(-n4).push(n);
        iConstrArray[3] = this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n3).push(-n4).push(n);
        iConstrArray[4] = this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n).push(n3).push(n4);
        iConstrArray[5] = this.processClause(vecInt);
        return iConstrArray;
    }

    public IConstr[] and(int n, IVecInt iVecInt) throws ContradictionException {
        int n2;
        IConstr[] iConstrArray = new IConstr[iVecInt.size() + 1];
        VecInt vecInt = new VecInt(iVecInt.size() + 2);
        vecInt.push(n);
        for (n2 = 0; n2 < iVecInt.size(); ++n2) {
            vecInt.push(-iVecInt.get(n2));
        }
        iConstrArray[0] = this.processClause(vecInt);
        vecInt.clear();
        for (n2 = 0; n2 < iVecInt.size(); ++n2) {
            vecInt.clear();
            vecInt.push(-n);
            vecInt.push(iVecInt.get(n2));
            iConstrArray[n2 + 1] = this.processClause(vecInt);
        }
        return iConstrArray;
    }

    public IConstr[] and(int n, int n2, int n3) throws ContradictionException {
        VecInt vecInt = new VecInt(4);
        IConstr[] iConstrArray = new IConstr[3];
        vecInt.push(-n);
        vecInt.push(n2);
        iConstrArray[0] = this.addClause(vecInt);
        vecInt.clear();
        vecInt.push(-n);
        vecInt.push(n3);
        iConstrArray[1] = this.addClause(vecInt);
        vecInt.clear();
        vecInt.push(n);
        vecInt.push(-n2);
        vecInt.push(-n3);
        iConstrArray[2] = this.addClause(vecInt);
        return iConstrArray;
    }

    public IConstr[] or(int n, IVecInt iVecInt) throws ContradictionException {
        IConstr[] iConstrArray = new IConstr[iVecInt.size() + 1];
        VecInt vecInt = new VecInt(iVecInt.size() + 2);
        iVecInt.copyTo(vecInt);
        vecInt.push(-n);
        iConstrArray[0] = this.processClause(vecInt);
        vecInt.clear();
        for (int i = 0; i < iVecInt.size(); ++i) {
            vecInt.clear();
            vecInt.push(n);
            vecInt.push(-iVecInt.get(i));
            iConstrArray[i + 1] = this.processClause(vecInt);
        }
        return iConstrArray;
    }

    public IConstr[] halfOr(int n, IVecInt iVecInt) throws ContradictionException {
        IConstr[] iConstrArray = new IConstr[iVecInt.size()];
        VecInt vecInt = new VecInt(iVecInt.size() + 2);
        for (int i = 0; i < iVecInt.size(); ++i) {
            vecInt.clear();
            vecInt.push(n);
            vecInt.push(-iVecInt.get(i));
            iConstrArray[i] = this.processClause(vecInt);
        }
        return iConstrArray;
    }

    private IConstr processClause(IVecInt iVecInt) throws ContradictionException {
        return this.addClause(iVecInt);
    }

    public IConstr[] not(int n, int n2) throws ContradictionException {
        IConstr[] iConstrArray = new IConstr[2];
        VecInt vecInt = new VecInt(3);
        vecInt.push(-n).push(-n2);
        iConstrArray[0] = this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n).push(n2);
        iConstrArray[1] = this.processClause(vecInt);
        return iConstrArray;
    }

    public IConstr[] xor(int n, IVecInt iVecInt) throws ContradictionException {
        iVecInt.push(-n);
        int[] nArray = new int[iVecInt.size()];
        iVecInt.copyTo(nArray);
        Vec<IConstr> vec = new Vec<IConstr>();
        this.xor2Clause(nArray, 0, false, vec);
        IConstr[] iConstrArray = new IConstr[vec.size()];
        vec.copyTo(iConstrArray);
        return iConstrArray;
    }

    public IConstr[] iff(int n, IVecInt iVecInt) throws ContradictionException {
        iVecInt.push(n);
        int[] nArray = new int[iVecInt.size()];
        iVecInt.copyTo(nArray);
        Vec<IConstr> vec = new Vec<IConstr>();
        this.iff2Clause(nArray, 0, false, vec);
        IConstr[] iConstrArray = new IConstr[vec.size()];
        vec.copyTo(iConstrArray);
        return iConstrArray;
    }

    public void xor(int n, int n2, int n3) throws ContradictionException {
        VecInt vecInt = new VecInt(3);
        vecInt.push(-n2).push(n3).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(-n3).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(-n3).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(n3).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
    }

    private void xor2Clause(int[] nArray, int n, boolean bl, IVec<IConstr> iVec) throws ContradictionException {
        if (n == nArray.length - 1) {
            VecInt vecInt = new VecInt(nArray.length + 1);
            for (int i = 0; i < nArray.length - 1; ++i) {
                vecInt.push(nArray[i]);
            }
            vecInt.push(nArray[nArray.length - 1] * (bl ? -1 : 1));
            iVec.push(this.processClause(vecInt));
            return;
        }
        if (bl) {
            nArray[n] = -nArray[n];
            this.xor2Clause(nArray, n + 1, false, iVec);
            nArray[n] = -nArray[n];
            this.xor2Clause(nArray, n + 1, true, iVec);
        } else {
            this.xor2Clause(nArray, n + 1, false, iVec);
            nArray[n] = -nArray[n];
            this.xor2Clause(nArray, n + 1, true, iVec);
            nArray[n] = -nArray[n];
        }
    }

    private void iff2Clause(int[] nArray, int n, boolean bl, IVec<IConstr> iVec) throws ContradictionException {
        if (n == nArray.length - 1) {
            VecInt vecInt = new VecInt(nArray.length + 1);
            for (int i = 0; i < nArray.length - 1; ++i) {
                vecInt.push(nArray[i]);
            }
            vecInt.push(nArray[nArray.length - 1] * (bl ? -1 : 1));
            this.processClause(vecInt);
            return;
        }
        if (bl) {
            this.iff2Clause(nArray, n + 1, false, iVec);
            nArray[n] = -nArray[n];
            this.iff2Clause(nArray, n + 1, true, iVec);
            nArray[n] = -nArray[n];
        } else {
            nArray[n] = -nArray[n];
            this.iff2Clause(nArray, n + 1, false, iVec);
            nArray[n] = -nArray[n];
            this.iff2Clause(nArray, n + 1, true, iVec);
        }
    }

    public void fullAdderSum(int n, int n2, int n3, int n4) throws ContradictionException {
        VecInt vecInt = new VecInt(4);
        vecInt.push(n2).push(n3).push(n4).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(-n3).push(-n4).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(n3).push(-n4).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(-n3).push(n4).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(-n3).push(-n4).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(n3).push(n4).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(-n3).push(n4).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(n3).push(-n4).push(n);
        this.processClause(vecInt);
        vecInt.clear();
    }

    public void fullAdderCarry(int n, int n2, int n3, int n4) throws ContradictionException {
        VecInt vecInt = new VecInt(3);
        vecInt.push(-n3).push(-n4).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(-n4).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(-n2).push(-n3).push(n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n3).push(n4).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(n4).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
        vecInt.push(n2).push(n3).push(-n);
        this.processClause(vecInt);
        vecInt.clear();
    }

    public void additionalFullAdderConstraints(int n, int n2, int n3, int n4, int n5) throws ContradictionException {
        VecInt vecInt = new VecInt(3);
        vecInt.push(-n).push(-n2).push(n3);
        this.processClause(vecInt);
        vecInt.push(-n).push(-n2).push(n4);
        this.processClause(vecInt);
        vecInt.push(-n).push(-n2).push(n5);
        this.processClause(vecInt);
        vecInt.push(n).push(n2).push(-n3);
        this.processClause(vecInt);
        vecInt.push(n).push(n2).push(-n4);
        this.processClause(vecInt);
        vecInt.push(n).push(n2).push(-n5);
        this.processClause(vecInt);
    }

    public void halfAdderSum(int n, int n2, int n3) throws ContradictionException {
        this.xor(n, n2, n3);
    }

    public void halfAdderCarry(int n, int n2, int n3) throws ContradictionException {
        this.and(n, n2, n3);
    }

    public void optimisationFunction(IVecInt iVecInt, IVec<BigInteger> iVec, IVecInt iVecInt2) throws ContradictionException {
        IVecInt iVecInt3;
        int n;
        int n2;
        int n3;
        Vec<IVecInt> vec = new Vec<IVecInt>();
        for (n3 = 0; n3 < iVecInt.size(); ++n3) {
            n2 = iVecInt.get(n3);
            BigInteger bigInteger = iVec.get(n3);
            for (n = 0; n < bigInteger.bitLength(); ++n) {
                iVecInt3 = this.createIfNull(vec, n);
                if (!bigInteger.testBit(n)) continue;
                iVecInt3.push(n2);
            }
        }
        for (int i = 0; i < vec.size(); ++i) {
            int n4;
            iVecInt3 = (IVecInt)vec.get(i);
            while (iVecInt3.size() >= 3) {
                n3 = iVecInt3.get(0);
                n2 = iVecInt3.get(1);
                int n5 = iVecInt3.get(2);
                iVecInt3.remove(n3);
                iVecInt3.remove(n2);
                iVecInt3.remove(n5);
                n = this.nextFreeVarId(true);
                n4 = this.nextFreeVarId(true);
                this.fullAdderSum(n, n3, n2, n5);
                this.fullAdderCarry(n4, n3, n2, n5);
                this.additionalFullAdderConstraints(n4, n, n3, n2, n5);
                iVecInt3.push(n);
                this.createIfNull(vec, i + 1).push(n4);
            }
            while (iVecInt3.size() == 2) {
                n3 = iVecInt3.get(0);
                n2 = iVecInt3.get(1);
                iVecInt3.remove(n3);
                iVecInt3.remove(n2);
                n = this.nextFreeVarId(true);
                n4 = this.nextFreeVarId(true);
                this.halfAdderSum(n, n3, n2);
                this.halfAdderCarry(n4, n3, n2);
                iVecInt3.push(n);
                this.createIfNull(vec, i + 1).push(n4);
            }
            if (!$assertionsDisabled && iVecInt3.size() != 1) {
                throw new AssertionError();
            }
            iVecInt2.push(iVecInt3.last());
            iVecInt3.pop();
            if (!$assertionsDisabled && !iVecInt3.isEmpty()) {
                throw new AssertionError();
            }
        }
    }

    private IVecInt createIfNull(IVec<IVecInt> iVec, int n) {
        IVecInt iVecInt = iVec.get(n);
        if (iVecInt == null) {
            iVecInt = new VecInt();
            iVec.push(iVecInt);
            if (!$assertionsDisabled && iVec.get(n) != iVecInt) {
                throw new AssertionError();
            }
        }
        return iVecInt;
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
        $assertionsDisabled = !(class$org$sat4j$tools$GateTranslator == null ? (class$org$sat4j$tools$GateTranslator = GateTranslator.class$("org.sat4j.tools.GateTranslator")) : class$org$sat4j$tools$GateTranslator).desiredAssertionStatus();
    }
}

