/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.ISolver
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.specs.TimeoutException
 *  org.sat4j.tools.GateTranslator
 */
package org.sat4j.pb.tools;

import java.math.BigInteger;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.pb.tools.DisjunctionRHS;
import org.sat4j.pb.tools.INegator;
import org.sat4j.pb.tools.ImplicationNamer;
import org.sat4j.pb.tools.ImplicationRHS;
import org.sat4j.pb.tools.WeightedObject;
import org.sat4j.pb.tools.XplainPB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.GateTranslator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DependencyHelper<T, C> {
    public final INegator NO_NEGATION = new INegator(){

        public boolean isNegated(Object object) {
            return false;
        }

        public Object unNegate(Object object) {
            return object;
        }
    };
    public static final INegator BASIC_NEGATION = new INegator(){

        public boolean isNegated(Object object) {
            return object instanceof Negation;
        }

        public Object unNegate(Object object) {
            return ((Negation)object).getThing();
        }
    };
    private static final long serialVersionUID = 1L;
    private final Map<T, Integer> mapToDimacs = new HashMap<T, Integer>();
    private final Map<Integer, T> mapToDomain = new HashMap<Integer, T>();
    final Map<IConstr, C> descs = new HashMap<IConstr, C>();
    private final XplainPB xplain;
    private final GateTranslator gator;
    final IPBSolver solver;
    private INegator negator = BASIC_NEGATION;
    private ObjectiveFunction objFunction;
    private IVecInt objLiterals;
    private IVec<BigInteger> objCoefs;
    public boolean explanationEnabled = true;
    public boolean canonicalOptFunction = true;

    public DependencyHelper(IPBSolver iPBSolver) {
        this(iPBSolver, true);
    }

    public DependencyHelper(IPBSolver iPBSolver, boolean bl) {
        this(iPBSolver, bl, true);
    }

    public DependencyHelper(IPBSolver iPBSolver, boolean bl, boolean bl2) {
        if (bl) {
            this.xplain = new XplainPB(iPBSolver);
            this.solver = this.xplain;
        } else {
            this.xplain = null;
            this.solver = iPBSolver;
        }
        this.gator = new GateTranslator((ISolver)this.solver);
        this.canonicalOptFunction = bl2;
    }

    public void setNegator(INegator iNegator) {
        this.negator = iNegator;
    }

    int getIntValue(T t) {
        return this.getIntValue(t, true);
    }

    int getIntValue(T t, boolean bl) {
        boolean bl2 = this.negator.isNegated(t);
        Object object = bl2 ? this.negator.unNegate(t) : t;
        Integer n = this.mapToDimacs.get(object);
        if (n == null) {
            if (bl) {
                n = new Integer(this.solver.nextFreeVarId(true));
                this.mapToDomain.put(n, object);
                this.mapToDimacs.put(object, n);
            } else {
                throw new IllegalArgumentException(new StringBuffer().append("").append(object).append(" is unknown in the solver!").toString());
            }
        }
        if (bl2) {
            return -n.intValue();
        }
        return n;
    }

    public IVec<T> getSolution() {
        int[] nArray = this.solver.model();
        Vec vec = new Vec();
        if (nArray != null) {
            for (int n : nArray) {
                if (n <= 0) continue;
                vec.push(this.mapToDomain.get(new Integer(n)));
            }
        }
        return vec;
    }

    public BigInteger getSolutionCost() {
        return this.objFunction.calculateDegree(this.solver.model());
    }

    public boolean getBooleanValueFor(T t) {
        return this.solver.model(this.getIntValue(t, false));
    }

    public boolean hasASolution() throws TimeoutException {
        return this.solver.isSatisfiable();
    }

    public boolean hasASolution(IVec<T> iVec) throws TimeoutException {
        VecInt vecInt = new VecInt();
        Iterator iterator = iVec.iterator();
        while (iterator.hasNext()) {
            vecInt.push(this.getIntValue(iterator.next()));
        }
        return this.solver.isSatisfiable((IVecInt)vecInt);
    }

    public boolean hasASolution(Collection<T> collection) throws TimeoutException {
        VecInt vecInt = new VecInt();
        for (T t : collection) {
            vecInt.push(this.getIntValue(t));
        }
        return this.solver.isSatisfiable((IVecInt)vecInt);
    }

    public Set<C> why() throws TimeoutException {
        if (!this.explanationEnabled) {
            throw new UnsupportedOperationException("Explanation not enabled!");
        }
        Collection collection = this.xplain.explain();
        TreeSet<C> treeSet = new TreeSet<C>();
        for (IConstr iConstr : collection) {
            C c = this.descs.get(iConstr);
            if (c == null) continue;
            treeSet.add(c);
        }
        return treeSet;
    }

    public Set<C> why(T t) throws TimeoutException {
        VecInt vecInt = new VecInt();
        vecInt.push(-this.getIntValue(t));
        return this.why((IVecInt)vecInt);
    }

    public Set<C> whyNot(T t) throws TimeoutException {
        VecInt vecInt = new VecInt();
        vecInt.push(this.getIntValue(t));
        return this.why((IVecInt)vecInt);
    }

    private Set<C> why(IVecInt iVecInt) throws TimeoutException {
        if (this.xplain.isSatisfiable(iVecInt)) {
            return new TreeSet();
        }
        return this.why();
    }

    public void setTrue(T t, C c) throws ContradictionException {
        IConstr iConstr = this.gator.gateTrue(this.getIntValue(t));
        if (iConstr != null) {
            this.descs.put(iConstr, c);
        }
    }

    public void setFalse(T t, C c) throws ContradictionException {
        IConstr iConstr = this.gator.gateFalse(this.getIntValue(t));
        if (iConstr != null) {
            this.descs.put(iConstr, c);
        }
    }

    public ImplicationRHS<T, C> implication(T[] TArray) {
        VecInt vecInt = new VecInt();
        for (T t : TArray) {
            vecInt.push(-this.getIntValue(t));
        }
        return new ImplicationRHS(this, (IVecInt)vecInt);
    }

    public DisjunctionRHS<T, C> disjunction(T[] TArray) {
        VecInt vecInt = new VecInt();
        for (T t : TArray) {
            vecInt.push(-this.getIntValue(t));
        }
        return new DisjunctionRHS(this, (IVecInt)vecInt);
    }

    public void atLeast(C c, int n, T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt();
        for (T t : TArray) {
            vecInt.push(this.getIntValue(t));
        }
        this.descs.put(this.solver.addAtLeast((IVecInt)vecInt, n), c);
    }

    public ImplicationNamer<T, C> atMost(int n, T[] TArray) throws ContradictionException {
        Vec vec = new Vec();
        VecInt vecInt = new VecInt();
        for (T t : TArray) {
            vecInt.push(this.getIntValue(t));
        }
        vec.push((Object)this.solver.addAtMost((IVecInt)vecInt, n));
        return new ImplicationNamer(this, (IVec<IConstr>)vec);
    }

    public void atMost(C c, int n, T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt();
        for (T t : TArray) {
            vecInt.push(this.getIntValue(t));
        }
        this.descs.put(this.solver.addAtMost((IVecInt)vecInt, n), c);
    }

    public void clause(C c, T[] iConstr) throws ContradictionException {
        VecInt vecInt = new VecInt(((T[])iConstr).length);
        for (T t : iConstr) {
            vecInt.push(this.getIntValue(t));
        }
        IConstr iConstr2 = this.gator.addClause((IVecInt)vecInt);
        if (iConstr2 != null) {
            this.descs.put(iConstr2, c);
        }
    }

    public void iff(C c, T t, T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt(TArray.length);
        Object[] objectArray = TArray;
        int n = objectArray.length;
        for (int i = 0; i < n; ++i) {
            T t2 = objectArray[i];
            vecInt.push(this.getIntValue(t2));
        }
        for (T t3 : objectArray = this.gator.iff(this.getIntValue(t), (IVecInt)vecInt)) {
            if (t3 == null) {
                throw new IllegalStateException("Constraints are not supposed to be null when using the helper");
            }
            this.descs.put((IConstr)t3, c);
        }
    }

    public void and(C c, T t, T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt(TArray.length);
        Object[] objectArray = TArray;
        int n = objectArray.length;
        for (int i = 0; i < n; ++i) {
            T t2 = objectArray[i];
            vecInt.push(this.getIntValue(t2));
        }
        for (T t3 : objectArray = this.gator.and(this.getIntValue(t), (IVecInt)vecInt)) {
            if (t3 == null) {
                throw new IllegalStateException("Constraints are not supposed to be null when using the helper");
            }
            this.descs.put((IConstr)t3, c);
        }
    }

    public void or(C c, T t, T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt(TArray.length);
        Object[] objectArray = TArray;
        int n = objectArray.length;
        for (int i = 0; i < n; ++i) {
            T t2 = objectArray[i];
            vecInt.push(this.getIntValue(t2));
        }
        for (T t3 : objectArray = this.gator.or(this.getIntValue(t), (IVecInt)vecInt)) {
            if (t3 == null) {
                throw new IllegalStateException("Constraints are not supposed to be null when using the helper");
            }
            this.descs.put((IConstr)t3, c);
        }
    }

    public void halfOr(C c, T t, T[] TArray) throws ContradictionException {
        VecInt vecInt = new VecInt(TArray.length);
        Object[] objectArray = TArray;
        int n = objectArray.length;
        for (int i = 0; i < n; ++i) {
            T t2 = objectArray[i];
            vecInt.push(this.getIntValue(t2));
        }
        for (T t3 : objectArray = this.gator.halfOr(this.getIntValue(t), (IVecInt)vecInt)) {
            if (t3 == null) {
                throw new IllegalStateException("Constraints are not supposed to be null when using the helper");
            }
            this.descs.put((IConstr)t3, c);
        }
    }

    public void ifThenElse(C c, T t, T t2, T t3, T t4) throws ContradictionException {
        IConstr[] iConstrArray;
        for (IConstr iConstr : iConstrArray = this.gator.ite(this.getIntValue(t), this.getIntValue(t2), this.getIntValue(t3), this.getIntValue(t4))) {
            if (iConstr == null) {
                throw new IllegalStateException("Constraints are not supposed to be null when using the helper");
            }
            this.descs.put(iConstr, c);
        }
    }

    public void setObjectiveFunction(WeightedObject<T>[] weightedObjectArray) {
        this.createObjectivetiveFunctionIfNeeded(weightedObjectArray.length);
        for (WeightedObject<T> weightedObject : weightedObjectArray) {
            this.addProperly(weightedObject.thing, weightedObject.getWeight());
        }
    }

    private void addProperly(T t, BigInteger bigInteger) {
        int n;
        int n2 = this.getIntValue(t);
        if (this.canonicalOptFunction && (n = this.objLiterals.indexOf(n2)) != -1) {
            this.objCoefs.set(n, (Object)((BigInteger)this.objCoefs.get(n)).add(bigInteger));
        } else {
            this.objLiterals.push(n2);
            this.objCoefs.push((Object)bigInteger);
        }
    }

    private void createObjectivetiveFunctionIfNeeded(int n) {
        if (this.objFunction == null) {
            this.objLiterals = new VecInt(n);
            this.objCoefs = new Vec(n);
            this.objFunction = new ObjectiveFunction(this.objLiterals, this.objCoefs);
            this.solver.setObjectiveFunction(this.objFunction);
        }
    }

    public void addToObjectiveFunction(T t, int n) {
        this.addToObjectiveFunction(t, BigInteger.valueOf(n));
    }

    public void addToObjectiveFunction(T t, BigInteger bigInteger) {
        this.createObjectivetiveFunctionIfNeeded(20);
        this.addProperly(t, bigInteger);
    }

    public void atLeast(C c, BigInteger bigInteger, WeightedObject<T>[] weightedObjectArray) throws ContradictionException {
        VecInt vecInt = new VecInt(weightedObjectArray.length);
        Vec vec = new Vec(weightedObjectArray.length);
        for (WeightedObject<T> weightedObject : weightedObjectArray) {
            vecInt.push(this.getIntValue(weightedObject.thing));
            vec.push((Object)weightedObject.getWeight());
        }
        this.descs.put(this.solver.addPseudoBoolean((IVecInt)vecInt, (IVec<BigInteger>)vec, true, bigInteger), c);
    }

    public void atMost(C c, BigInteger bigInteger, WeightedObject<T>[] weightedObjectArray) throws ContradictionException {
        VecInt vecInt = new VecInt(weightedObjectArray.length);
        Vec vec = new Vec(weightedObjectArray.length);
        for (WeightedObject<T> weightedObject : weightedObjectArray) {
            vecInt.push(this.getIntValue(weightedObject.thing));
            vec.push((Object)weightedObject.getWeight());
        }
        this.descs.put(this.solver.addPseudoBoolean((IVecInt)vecInt, (IVec<BigInteger>)vec, false, bigInteger), c);
    }

    public void atMost(C c, int n, WeightedObject<T>[] weightedObjectArray) throws ContradictionException {
        this.atMost(c, BigInteger.valueOf(n), weightedObjectArray);
    }

    public void stopSolver() {
        this.solver.expireTimeout();
    }

    public void stopExplanation() {
        if (!this.explanationEnabled) {
            throw new UnsupportedOperationException("Explanation not enabled!");
        }
        this.xplain.cancelExplanation();
    }

    public void discard(IVec<T> iVec) throws ContradictionException {
        VecInt vecInt = new VecInt(iVec.size());
        Iterator iterator = iVec.iterator();
        while (iterator.hasNext()) {
            vecInt.push(-this.getIntValue(iterator.next()));
        }
        this.solver.addBlockingClause((IVecInt)vecInt);
    }

    public void discardSolutionsWithObjectiveValueGreaterThan(long l) throws ContradictionException {
        ObjectiveFunction objectiveFunction = this.solver.getObjectiveFunction();
        VecInt vecInt = new VecInt(objectiveFunction.getVars().size());
        objectiveFunction.getVars().copyTo((IVecInt)vecInt);
        Vec vec = new Vec(objectiveFunction.getCoeffs().size());
        objectiveFunction.getCoeffs().copyTo((IVec)vec);
        this.solver.addPseudoBoolean((IVecInt)vecInt, (IVec<BigInteger>)vec, false, BigInteger.valueOf(l));
    }

    public String getObjectiveFunction() {
        ObjectiveFunction objectiveFunction = this.solver.getObjectiveFunction();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < objectiveFunction.getVars().size(); ++i) {
            stringBuffer.append(new StringBuffer().append(objectiveFunction.getCoeffs().get(i)).append(objectiveFunction.getVars().get(i) > 0 ? " " : "~").append(this.mapToDomain.get(new Integer(Math.abs(objectiveFunction.getVars().get(i))))).append(" ").toString());
        }
        return stringBuffer.toString();
    }

    public int getNumberOfVariables() {
        return this.mapToDimacs.size();
    }

    public int getNumberOfConstraints() {
        return this.descs.size();
    }

    public Map<Integer, T> getMappingToDomain() {
        return this.mapToDomain;
    }

    public Object not(T t) {
        return new Negation(t);
    }

    public IPBSolver getSolver() {
        return this.solver;
    }

    private static final class Negation {
        private final Object thing;

        Negation(Object object) {
            this.thing = object;
        }

        Object getThing() {
            return this.thing;
        }
    }
}

