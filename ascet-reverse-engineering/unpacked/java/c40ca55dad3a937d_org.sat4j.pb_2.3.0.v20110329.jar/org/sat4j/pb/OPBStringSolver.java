/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.specs.IteratorInt
 *  org.sat4j.specs.TimeoutException
 *  org.sat4j.tools.DimacsStringSolver
 */
package org.sat4j.pb;

import java.math.BigInteger;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.DimacsStringSolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OPBStringSolver
extends DimacsStringSolver
implements IPBSolver {
    private static final String FAKE_I_CONSTR_MSG = "Fake IConstr";
    private static final long serialVersionUID = 1L;
    private int indxConstrObj;
    private int nbOfConstraints;
    private ObjectiveFunction obj;
    private boolean inserted = false;
    private static final IConstr FAKE_CONSTR;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$OPBStringSolver;

    public OPBStringSolver() {
    }

    public OPBStringSolver(int n) {
        super(n);
    }

    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        for (int n : iVecInt) {
            if (n > 0) {
                this.getOut().append(new StringBuffer().append("+1 x").append(n).append(" >= 1 ;\n").toString());
            } else {
                this.getOut().append(new StringBuffer().append("-1 x").append(-n).append(" >= 0 ;\n").toString());
            }
            ++this.nbOfConstraints;
        }
        throw new TimeoutException();
    }

    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        return super.isSatisfiable(iVecInt, bl);
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        StringBuffer stringBuffer = this.getOut();
        if (!$assertionsDisabled && iVecInt.size() != iVec.size()) {
            throw new AssertionError();
        }
        ++this.nbOfConstraints;
        if (bl) {
            for (int i = 0; i < iVecInt.size(); ++i) {
                stringBuffer.append(iVec.get(i));
                stringBuffer.append(" x");
                stringBuffer.append(iVecInt.get(i));
                stringBuffer.append(" ");
            }
            stringBuffer.append(">= ");
            stringBuffer.append(bigInteger);
            stringBuffer.append(" ;\n");
        } else {
            for (int i = 0; i < iVecInt.size(); ++i) {
                stringBuffer.append(((BigInteger)iVec.get(i)).negate());
                stringBuffer.append(" x");
                stringBuffer.append(iVecInt.get(i));
                stringBuffer.append(" ");
            }
            stringBuffer.append(">= ");
            stringBuffer.append(bigInteger.negate());
            stringBuffer.append(" ;\n");
        }
        return FAKE_CONSTR;
    }

    @Override
    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        this.obj = objectiveFunction;
    }

    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        StringBuffer stringBuffer = this.getOut();
        ++this.nbOfConstraints;
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            stringBuffer.append(new StringBuffer().append("+1 x").append(iteratorInt.next()).append(" ").toString());
        }
        stringBuffer.append(new StringBuffer().append(">= ").append(n).append(" ;\n").toString());
        return FAKE_CONSTR;
    }

    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        StringBuffer stringBuffer = this.getOut();
        ++this.nbOfConstraints;
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            stringBuffer.append(new StringBuffer().append("-1 x").append(iteratorInt.next()).append(" ").toString());
        }
        stringBuffer.append(new StringBuffer().append(">= ").append(-n).append(" ;\n").toString());
        return FAKE_CONSTR;
    }

    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        StringBuffer stringBuffer = this.getOut();
        ++this.nbOfConstraints;
        for (int n : iVecInt) {
            if (n > 0) {
                stringBuffer.append(new StringBuffer().append("+1 x").append(n).append(" ").toString());
                continue;
            }
            stringBuffer.append(new StringBuffer().append("+1 ~x").append(-n).append(" ").toString());
        }
        stringBuffer.append(">= 1 ;\n");
        return FAKE_CONSTR;
    }

    public String getExplanation() {
        return null;
    }

    public void setListOfVariablesForExplanation(IVecInt iVecInt) {
    }

    public String toString() {
        StringBuffer stringBuffer = this.getOut();
        if (!this.inserted) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("* #variable= ");
            stringBuffer2.append(this.nVars());
            stringBuffer2.append(" #constraint= ");
            stringBuffer2.append(this.nbOfConstraints);
            stringBuffer2.append(" \n");
            if (this.obj != null) {
                stringBuffer2.append("min: ");
                stringBuffer2.append(this.obj);
                stringBuffer2.append(" ;\n");
            }
            stringBuffer.insert(this.indxConstrObj, stringBuffer2.toString());
            this.inserted = true;
        }
        return stringBuffer.toString();
    }

    public String toString(String string) {
        return "OPB output solver";
    }

    public int newVar(int n) {
        StringBuffer stringBuffer = this.getOut();
        this.setNbVars(n);
        this.indxConstrObj = stringBuffer.length();
        stringBuffer.append("\n");
        return n;
    }

    public void setExpectedNumberOfClauses(int n) {
    }

    @Override
    public ObjectiveFunction getObjectiveFunction() {
        return this.obj;
    }

    public int nConstraints() {
        return this.nbOfConstraints;
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
        $assertionsDisabled = !(class$org$sat4j$pb$OPBStringSolver == null ? (class$org$sat4j$pb$OPBStringSolver = OPBStringSolver.class$("org.sat4j.pb.OPBStringSolver")) : class$org$sat4j$pb$OPBStringSolver).desiredAssertionStatus();
        FAKE_CONSTR = new IConstr(){

            public int size() {
                throw new UnsupportedOperationException(OPBStringSolver.FAKE_I_CONSTR_MSG);
            }

            public boolean learnt() {
                throw new UnsupportedOperationException(OPBStringSolver.FAKE_I_CONSTR_MSG);
            }

            public double getActivity() {
                throw new UnsupportedOperationException(OPBStringSolver.FAKE_I_CONSTR_MSG);
            }

            public int get(int n) {
                throw new UnsupportedOperationException(OPBStringSolver.FAKE_I_CONSTR_MSG);
            }
        };
    }
}

