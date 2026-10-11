/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;
import org.sat4j.tools.xplain.DeletionStrategy;
import org.sat4j.tools.xplain.Explainer;
import org.sat4j.tools.xplain.MinimizationStrategy;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HighLevelXplain<T extends ISolver>
extends SolverDecorator<T>
implements Explainer {
    protected Map<Integer, Integer> constrs = new HashMap<Integer, Integer>();
    protected IVecInt assump;
    private int lastCreatedVar;
    private boolean pooledVarId = false;
    private MinimizationStrategy xplainStrategy = new DeletionStrategy();
    private final Map<Integer, Integer> highLevelToVar = new HashMap<Integer, Integer>();
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$xplain$HighLevelXplain;

    public HighLevelXplain(T t) {
        super(t);
    }

    public IConstr addClause(IVecInt iVecInt, int n) throws ContradictionException {
        if (n == 0) {
            return this.addClause(iVecInt);
        }
        Integer n2 = this.highLevelToVar.get(new Integer(n));
        if (n2 == null) {
            n2 = new Integer(this.createNewVar(iVecInt));
            this.highLevelToVar.put(new Integer(n), n2);
            this.constrs.put(n2, new Integer(n));
        }
        iVecInt.push(n2);
        IConstr iConstr = super.addClause(iVecInt);
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
        Collection<Integer> collection = this.explain();
        int[] nArray = new int[collection.size()];
        int n = 0;
        for (int n2 : collection) {
            nArray[n++] = n2;
        }
        Arrays.sort(nArray);
        return nArray;
    }

    public Collection<Integer> explain() throws TimeoutException {
        IVecInt iVecInt = this.explanationKeys();
        HashSet<Integer> hashSet = new HashSet<Integer>(iVecInt.size());
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            hashSet.add(this.constrs.get(new Integer(iteratorInt.next())));
        }
        return hashSet;
    }

    public void cancelExplanation() {
        this.xplainStrategy.cancelExplanationComputation();
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
        System.out.println(new StringBuffer().append(string).append("High Level Explanation (MUS) enabled solver").toString());
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
        $assertionsDisabled = !(class$org$sat4j$tools$xplain$HighLevelXplain == null ? (class$org$sat4j$tools$xplain$HighLevelXplain = HighLevelXplain.class$("org.sat4j.tools.xplain.HighLevelXplain")) : class$org$sat4j$tools$xplain$HighLevelXplain).desiredAssertionStatus();
    }
}

