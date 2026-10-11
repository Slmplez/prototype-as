/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.reader.ParseFormatException
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IProblem
 *  org.sat4j.specs.ISolver
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.specs.TimeoutException
 *  org.sat4j.tools.GateTranslator
 *  org.sat4j.tools.SolverDecorator
 */
package org.sat4j.pb;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.pb.SolverFactory;
import org.sat4j.pb.reader.OPBReader2007;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.GateTranslator;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PseudoBitsAdderDecorator
extends SolverDecorator<IPBSolver>
implements IPBSolver {
    private static final long serialVersionUID = 1L;
    private ObjectiveFunction objfct;
    private final GateTranslator gator;
    private final IPBSolver solver;
    private IVecInt bitsLiterals;
    private IVecInt fixedLiterals;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$PseudoBitsAdderDecorator;

    public PseudoBitsAdderDecorator(IPBSolver iPBSolver) {
        super((ISolver)iPBSolver);
        this.gator = new GateTranslator((ISolver)iPBSolver);
        this.solver = iPBSolver;
    }

    @Override
    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        this.objfct = objectiveFunction;
    }

    public boolean isSatisfiable() throws TimeoutException {
        return this.isSatisfiable(VecInt.EMPTY);
    }

    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        if (this.objfct == null) {
            return this.gator.isSatisfiable(iVecInt);
        }
        System.out.println("c Original number of variables and constraints");
        System.out.println(new StringBuffer().append("c #vars: ").append(this.gator.nVars()).append(" #constraints: ").append(this.gator.nConstraints()).toString());
        this.bitsLiterals = new VecInt();
        System.out.println("c Creating optimization constraints ....");
        try {
            this.gator.optimisationFunction(this.objfct.getVars(), this.objfct.getCoeffs(), this.bitsLiterals);
        }
        catch (ContradictionException contradictionException) {
            return false;
        }
        System.out.println(new StringBuffer().append("c ... done. ").append(this.bitsLiterals).toString());
        System.out.println("c New number of variables and constraints");
        System.out.println(new StringBuffer().append("c #vars: ").append(this.gator.nVars()).append(" #constraints: ").append(this.gator.nConstraints()).toString());
        this.fixedLiterals = new VecInt(this.bitsLiterals.size());
        VecInt vecInt = new VecInt(iVecInt.size() + this.bitsLiterals.size());
        int n = this.bitsLiterals.size() - 1;
        while (n >= 0) {
            iVecInt.copyTo((IVecInt)vecInt);
            this.fixedLiterals.copyTo((IVecInt)vecInt);
            vecInt.push(-this.bitsLiterals.get(n));
            for (int i = n - 1; i >= 0; --i) {
                vecInt.push(this.bitsLiterals.get(i));
            }
            System.out.println(new StringBuffer().append("c assumptions ").append(vecInt).toString());
            boolean bl = this.gator.isSatisfiable((IVecInt)vecInt, true);
            if (bl) {
                this.fixedLiterals.push(-this.bitsLiterals.get(n--));
                BigInteger bigInteger = this.objfct.calculateDegree(this.gator.model());
                System.out.println(new StringBuffer().append("o ").append(bigInteger).toString());
                System.out.println(new StringBuffer().append("c current objective value with fixed lits ").append(this.fixedLiterals).toString());
            } else {
                this.fixedLiterals.push(this.bitsLiterals.get(n--));
                System.out.println(new StringBuffer().append("c unsat. fixed lits ").append(this.fixedLiterals).toString());
            }
            vecInt.clear();
        }
        if (!$assertionsDisabled && this.fixedLiterals.size() != this.bitsLiterals.size()) {
            throw new AssertionError();
        }
        iVecInt.copyTo((IVecInt)vecInt);
        this.fixedLiterals.copyTo((IVecInt)vecInt);
        return this.gator.isSatisfiable((IVecInt)vecInt);
    }

    public static void main(String[] stringArray) {
        PseudoBitsAdderDecorator pseudoBitsAdderDecorator = new PseudoBitsAdderDecorator(SolverFactory.newDefault());
        pseudoBitsAdderDecorator.setVerbose(false);
        OPBReader2007 oPBReader2007 = new OPBReader2007(pseudoBitsAdderDecorator);
        long l = System.currentTimeMillis();
        try {
            IProblem iProblem = oPBReader2007.parseInstance(stringArray[0]);
            if (iProblem.isSatisfiable()) {
                System.out.println("s OPTIMUM FOUND");
                System.out.println(new StringBuffer().append("v ").append(oPBReader2007.decode(iProblem.model())).toString());
                if (pseudoBitsAdderDecorator.objfct != null) {
                    System.out.println(new StringBuffer().append("c objective function=").append(pseudoBitsAdderDecorator.objfct.calculateDegree(pseudoBitsAdderDecorator.gator.model())).toString());
                }
            } else {
                System.out.println("s UNSAT");
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            fileNotFoundException.printStackTrace();
        }
        catch (ParseFormatException parseFormatException) {
            parseFormatException.printStackTrace();
        }
        catch (IOException iOException) {
            iOException.printStackTrace();
        }
        catch (ContradictionException contradictionException) {
            System.out.println("s UNSAT");
            System.out.println("c trivial inconsistency");
        }
        catch (TimeoutException timeoutException) {
            System.out.println("s UNKNOWN");
        }
        long l2 = System.currentTimeMillis();
        System.out.println(new StringBuffer().append("c Total wall clock time: ").append((double)(l2 - l) / 1000.0).append(" seconds").toString());
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        return this.solver.addPseudoBoolean(iVecInt, iVec, bl, bigInteger);
    }

    @Override
    public ObjectiveFunction getObjectiveFunction() {
        return this.objfct;
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
        $assertionsDisabled = !(class$org$sat4j$pb$PseudoBitsAdderDecorator == null ? (class$org$sat4j$pb$PseudoBitsAdderDecorator = PseudoBitsAdderDecorator.class$("org.sat4j.pb.PseudoBitsAdderDecorator")) : class$org$sat4j$pb$PseudoBitsAdderDecorator).desiredAssertionStatus();
    }
}

