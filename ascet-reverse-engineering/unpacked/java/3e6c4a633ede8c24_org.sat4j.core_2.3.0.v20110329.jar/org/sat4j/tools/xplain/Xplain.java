/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;
import org.sat4j.tools.xplain.Explainer;
import org.sat4j.tools.xplain.MinimizationStrategy;
import org.sat4j.tools.xplain.QuickXplainStrategy;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Xplain<T extends ISolver>
extends SolverDecorator<T>
implements Explainer {
    protected Map<Integer, IConstr> constrs = new HashMap<Integer, IConstr>();
    protected IVecInt assump;
    private int lastCreatedVar;
    private boolean pooledVarId = false;
    private final IVecInt lastClause = new VecInt();
    private MinimizationStrategy xplainStrategy = new QuickXplainStrategy();
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$xplain$Xplain;

    public Xplain(T t) {
        super(t);
    }

    @Override
    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        if (iVecInt.equals(this.lastClause)) {
            return null;
        }
        this.lastClause.clear();
        iVecInt.copyTo(this.lastClause);
        int n = this.createNewVar(iVecInt);
        iVecInt.push(n);
        IConstr iConstr = super.addClause(iVecInt);
        if (iConstr == null) {
            this.discardLastestVar();
        } else {
            this.constrs.put(new Integer(n), iConstr);
        }
        return iConstr;
    }

    protected int createNewVar(IVecInt iVecInt) {
        if (this.pooledVarId) {
            this.pooledVarId = false;
            return this.lastCreatedVar;
        }
        this.lastCreatedVar = this.nextFreeVarId(true);
        return this.lastCreatedVar;
    }

    protected void discardLastestVar() {
        this.pooledVarId = true;
    }

    @Override
    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        throw new UnsupportedOperationException();
    }

    @Override
    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        throw new UnsupportedOperationException();
    }

    private IVecInt explanationKeys() throws TimeoutException {
        if (!$assertionsDisabled && this.isSatisfiable(this.assump)) {
            throw new AssertionError();
        }
        Object t = this.decorated();
        if (t instanceof SolverDecorator) {
            t = ((SolverDecorator)t).decorated();
        }
        return this.xplainStrategy.explain((ISolver)t, this.constrs, this.assump);
    }

    @Override
    public int[] minimalExplanation() throws TimeoutException {
        IVecInt iVecInt = this.explanationKeys();
        iVecInt.sort();
        ArrayList<Integer> arrayList = new ArrayList<Integer>(this.constrs.keySet());
        Collections.sort(arrayList);
        int[] nArray = new int[iVecInt.size()];
        int n = 0;
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            nArray[n++] = arrayList.indexOf(new Integer(iteratorInt.next())) + 1;
        }
        return nArray;
    }

    public Collection<IConstr> explain() throws TimeoutException {
        IVecInt iVecInt = this.explanationKeys();
        ArrayList<IConstr> arrayList = new ArrayList<IConstr>(iVecInt.size());
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            arrayList.add(this.constrs.get(new Integer(iteratorInt.next())));
        }
        return arrayList;
    }

    public void cancelExplanation() {
        this.xplainStrategy.cancelExplanationComputation();
    }

    public Collection<IConstr> getConstraints() {
        return this.constrs.values();
    }

    @Override
    public int[] findModel() throws TimeoutException {
        this.assump = VecInt.EMPTY;
        VecInt vecInt = new VecInt();
        for (Integer n : this.constrs.keySet()) {
            vecInt.push(-n.intValue());
        }
        return super.findModel(vecInt);
    }

    @Override
    public int[] findModel(IVecInt iVecInt) throws TimeoutException {
        this.assump = iVecInt;
        VecInt vecInt = new VecInt();
        iVecInt.copyTo(vecInt);
        for (Integer n : this.constrs.keySet()) {
            vecInt.push(-n.intValue());
        }
        return super.findModel(vecInt);
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        this.assump = VecInt.EMPTY;
        VecInt vecInt = new VecInt();
        for (Integer n : this.constrs.keySet()) {
            vecInt.push(-n.intValue());
        }
        return super.isSatisfiable(vecInt);
    }

    @Override
    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        this.assump = VecInt.EMPTY;
        VecInt vecInt = new VecInt();
        for (Integer n : this.constrs.keySet()) {
            vecInt.push(-n.intValue());
        }
        return super.isSatisfiable(vecInt, bl);
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        this.assump = iVecInt;
        VecInt vecInt = new VecInt();
        iVecInt.copyTo(vecInt);
        for (Integer n : this.constrs.keySet()) {
            vecInt.push(-n.intValue());
        }
        return super.isSatisfiable(vecInt);
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        this.assump = iVecInt;
        VecInt vecInt = new VecInt();
        iVecInt.copyTo(vecInt);
        for (Integer n : this.constrs.keySet()) {
            vecInt.push(-n.intValue());
        }
        return super.isSatisfiable(vecInt, bl);
    }

    @Override
    public int[] model() {
        int[] nArray = super.model();
        if (nArray == null) {
            return null;
        }
        int[] nArray2 = new int[nArray.length - this.constrs.size()];
        int n = 0;
        for (int i = 0; i < nArray.length; ++i) {
            if (this.constrs.get(new Integer(Math.abs(nArray[i]))) != null) continue;
            nArray2[n++] = nArray[i];
        }
        return nArray2;
    }

    @Override
    public String toString(String string) {
        System.out.println(new StringBuffer().append(string).append("Explanation (MUS) enabled solver").toString());
        System.out.println(new StringBuffer().append(string).append(this.xplainStrategy).toString());
        return super.toString(string);
    }

    @Override
    public void setMinimizationStrategy(MinimizationStrategy minimizationStrategy) {
        this.xplainStrategy = minimizationStrategy;
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
        $assertionsDisabled = !(class$org$sat4j$tools$xplain$Xplain == null ? (class$org$sat4j$tools$xplain$Xplain = Xplain.class$("org.sat4j.tools.xplain.Xplain")) : class$org$sat4j$tools$xplain$Xplain).desiredAssertionStatus();
    }
}

