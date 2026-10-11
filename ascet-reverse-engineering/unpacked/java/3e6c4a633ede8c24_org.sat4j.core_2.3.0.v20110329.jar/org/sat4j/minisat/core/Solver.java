/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.sat4j.core.LiteralsUtils;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.core.ActivityComparator;
import org.sat4j.minisat.core.ActivityListener;
import org.sat4j.minisat.core.ConflictTimer;
import org.sat4j.minisat.core.ConflictTimerAdapter;
import org.sat4j.minisat.core.ConflictTimerContainer;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.Counter;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.Learner;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.Pair;
import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;
import org.sat4j.minisat.core.SolverStats;
import org.sat4j.minisat.core.Undoable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.minisat.core.VoidTracing;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.specs.Lbool;
import org.sat4j.specs.SearchListener;
import org.sat4j.specs.TimeoutException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Solver<D extends DataStructureFactory>
implements ISolver,
UnitPropagationListener,
ActivityListener,
Learner {
    private static final long serialVersionUID = 1L;
    private static final double CLAUSE_RESCALE_FACTOR = 1.0E-20;
    private static final double CLAUSE_RESCALE_BOUND = 1.0E20;
    private final IVec<Constr> constrs = new Vec<Constr>();
    private final IVec<Constr> learnts = new Vec<Constr>();
    private double claInc = 1.0;
    private double claDecay = 1.0;
    private int qhead = 0;
    protected final IVecInt trail = new VecInt();
    protected final IVecInt trailLim = new VecInt();
    protected int rootLevel;
    private int[] model = null;
    protected ILits voc;
    private IOrder order;
    private final ActivityComparator comparator = new ActivityComparator();
    private SolverStats stats = new SolverStats();
    private LearningStrategy<D> learner;
    protected volatile boolean undertimeout;
    private long timeout = Integer.MAX_VALUE;
    private boolean timeBasedTimeout = true;
    protected D dsfactory;
    private SearchParams params;
    private final IVecInt __dimacs_out = new VecInt();
    private SearchListener slistener = new VoidTracing();
    private RestartStrategy restarter;
    private final Map<String, Counter> constrTypes = new HashMap<String, Counter>();
    private boolean isDBSimplificationAllowed = false;
    private final IVecInt learnedLiterals = new VecInt();
    private boolean verbose = false;
    private String prefix = "c ";
    private boolean[] mseen = new boolean[0];
    private final IVecInt mpreason = new VecInt();
    private final IVecInt moutLearnt = new VecInt();
    public static final ISimplifier NO_SIMPLIFICATION;
    public final ISimplifier SIMPLE_SIMPLIFICATION = new ISimplifier(){
        private static final long serialVersionUID = 1L;

        public void simplify(IVecInt iVecInt) {
            Solver.this.simpleSimplification(iVecInt);
        }

        public String toString() {
            return "Simple reason simplification";
        }
    };
    public final ISimplifier EXPENSIVE_SIMPLIFICATION = new ISimplifier(){
        private static final long serialVersionUID = 1L;

        public void simplify(IVecInt iVecInt) {
            Solver.this.expensiveSimplification(iVecInt);
        }

        public String toString() {
            return "Expensive reason simplification";
        }
    };
    public final ISimplifier EXPENSIVE_SIMPLIFICATION_WLONLY = new ISimplifier(){
        private static final long serialVersionUID = 1L;

        public void simplify(IVecInt iVecInt) {
            Solver.this.expensiveSimplificationWLOnly(iVecInt);
        }

        public String toString() {
            return "Expensive reason simplification specific for WL data structure";
        }
    };
    private ISimplifier simplifier = NO_SIMPLIFICATION;
    private final IVecInt analyzetoclear = new VecInt();
    private final IVecInt analyzestack = new VecInt();
    private final IVec<Propagatable> watched = new Vec<Propagatable>();
    private final Pair analysisResult = new Pair();
    private boolean[] fullmodel;
    private IVecInt unsatExplanationInTermsOfAssumptions;
    private final IVecInt implied = new VecInt();
    private final IVecInt decisions = new VecInt();
    private double timebegin = 0.0;
    private boolean needToReduceDB;
    private ConflictTimer conflictCount;
    private transient Timer timer;
    public final LearnedConstraintsDeletionStrategy memory_based = new LearnedConstraintsDeletionStrategy(){
        private static final long serialVersionUID = 1L;
        final long memorybound = Runtime.getRuntime().freeMemory() / 10L;
        private final ConflictTimer freeMem = new ConflictTimerAdapter(500){
            private static final long serialVersionUID = 1L;

            void run() {
                long l = Runtime.getRuntime().freeMemory();
                if (l < memorybound) {
                    Solver.this.needToReduceDB = true;
                }
            }
        };

        @Override
        public void reduce(IVec<Constr> iVec) {
            int n;
            Solver.this.sortOnActivity();
            int n2 = 0;
            for (n = 0; n < Solver.this.learnts.size() / 2; ++n) {
                Constr constr = (Constr)Solver.this.learnts.get(n);
                if (constr.locked() || constr.size() == 2) {
                    Solver.this.learnts.set(n2++, Solver.this.learnts.get(n));
                    continue;
                }
                constr.remove(Solver.this);
            }
            while (n < Solver.this.learnts.size()) {
                Solver.this.learnts.set(n2++, Solver.this.learnts.get(n));
                ++n;
            }
            if (Solver.this.verbose) {
                System.out.println(new StringBuffer().append(Solver.this.getLogPrefix()).append("cleaning ").append(Solver.this.learnts.size() - n2).append(" clauses out of ").append(Solver.this.learnts.size()).toString());
                System.out.flush();
            }
            Solver.this.learnts.shrinkTo(n2);
        }

        @Override
        public ConflictTimer getTimer() {
            return this.freeMem;
        }

        public String toString() {
            return "Memory based learned constraints deletion strategy";
        }

        @Override
        public void init() {
        }

        @Override
        public void onConflict(Constr constr) {
        }

        @Override
        public void onConflictAnalysis(Constr constr) {
            if (constr.learnt()) {
                Solver.this.claBumpActivity(constr);
            }
        }
    };
    public final LearnedConstraintsDeletionStrategy glucose;
    private LearnedConstraintsDeletionStrategy learnedConstraintsDeletionStrategy = this.glucose = new LearnedConstraintsDeletionStrategy(){
        private static final long serialVersionUID = 1L;
        private int[] flags = new int[0];
        private int flag = 0;
        private int wall = 0;
        private final ConflictTimer clauseManagement = new ConflictTimerAdapter(1000){
            private static final long serialVersionUID = 1L;
            private int nbconflict;
            private static final int MAX_CLAUSE = 5000;
            private static final int INC_CLAUSE = 1000;
            private int nextbound;
            {
                this.nbconflict = 0;
                this.nextbound = 5000;
            }

            void run() {
                this.nbconflict += this.bound();
                if (this.nbconflict >= this.nextbound) {
                    this.nextbound += 1000;
                    if (this.nextbound > wall) {
                        this.nextbound = wall;
                    }
                    this.nbconflict = 0;
                    Solver.this.needToReduceDB = true;
                }
            }

            public void reset() {
                super.reset();
                this.nextbound = 5000;
                if (this.nbconflict >= this.nextbound) {
                    this.nbconflict = 0;
                    Solver.this.needToReduceDB = true;
                }
            }
        };

        @Override
        public void reduce(IVec<Constr> iVec) {
            int n;
            Solver.this.sortOnActivity();
            for (int i = n = iVec.size() / 2; i < iVec.size(); ++i) {
                Constr constr = iVec.get(i);
                if (constr.locked() || constr.getActivity() <= 2.0) {
                    iVec.set(n++, (Constr)Solver.this.learnts.get(i));
                    continue;
                }
                constr.remove(Solver.this);
            }
            if (Solver.this.verbose) {
                System.out.println(new StringBuffer().append(Solver.this.getLogPrefix()).append("cleaning ").append(iVec.size() - n).append(" clauses out of ").append(iVec.size()).append(" with flag ").append(this.flag).append("/").append(((Solver)Solver.this).stats.conflicts).toString());
                System.out.flush();
            }
            Solver.this.learnts.shrinkTo(n);
        }

        @Override
        public ConflictTimer getTimer() {
            return this.clauseManagement;
        }

        public String toString() {
            return "Glucose learned constraints deletion strategy";
        }

        @Override
        public void init() {
            int n = Solver.this.voc.nVars();
            int n2 = this.wall = Solver.this.constrs.size() > 10000 ? Solver.this.constrs.size() : 10000;
            if (this.flags.length <= n) {
                this.flags = new int[n + 1];
            }
            this.flag = 0;
            this.clauseManagement.reset();
        }

        @Override
        public void onConflict(Constr constr) {
            int n = 1;
            ++this.flag;
            for (int i = 1; i < constr.size(); ++i) {
                int n2 = Solver.this.voc.getLevel(constr.get(i));
                if (this.flags[n2] == this.flag) continue;
                this.flags[n2] = this.flag;
                ++n;
            }
            constr.incActivity(n);
        }

        @Override
        public void onConflictAnalysis(Constr constr) {
        }
    };
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$minisat$core$Solver;

    protected IVecInt dimacs2internal(IVecInt iVecInt) {
        this.__dimacs_out.clear();
        this.__dimacs_out.ensure(iVecInt.size());
        for (int i = 0; i < iVecInt.size(); ++i) {
            int n = iVecInt.get(i);
            if (n == 0) {
                throw new IllegalArgumentException("0 is not a valid variable identifier");
            }
            this.__dimacs_out.unsafePush(this.voc.getFromPool(n));
        }
        return this.__dimacs_out;
    }

    public Solver(LearningStrategy<D> learningStrategy, D d, IOrder iOrder, RestartStrategy restartStrategy) {
        this(learningStrategy, d, new SearchParams(), iOrder, restartStrategy);
    }

    public Solver(LearningStrategy<D> learningStrategy, D d, SearchParams searchParams, IOrder iOrder, RestartStrategy restartStrategy) {
        this.learner = learningStrategy;
        this.order = iOrder;
        this.params = searchParams;
        this.setDataStructureFactory(d);
        this.restarter = restartStrategy;
    }

    public final void setDataStructureFactory(D d) {
        this.dsfactory = d;
        this.dsfactory.setUnitPropagationListener(this);
        this.dsfactory.setLearner(this);
        this.voc = d.getVocabulary();
        this.order.setLits(this.voc);
    }

    @Override
    public boolean isVerbose() {
        return this.verbose;
    }

    @Override
    public void setVerbose(boolean bl) {
        this.verbose = bl;
    }

    @Override
    public void setSearchListener(SearchListener searchListener) {
        this.slistener = searchListener;
    }

    @Override
    public SearchListener getSearchListener() {
        return this.slistener;
    }

    public void setLearner(LearningStrategy<D> learningStrategy) {
        this.learner = learningStrategy;
    }

    @Override
    public void setTimeout(int n) {
        this.timeout = (long)n * 1000L;
        this.timeBasedTimeout = true;
    }

    @Override
    public void setTimeoutMs(long l) {
        this.timeout = l;
        this.timeBasedTimeout = true;
    }

    @Override
    public void setTimeoutOnConflicts(int n) {
        this.timeout = n;
        this.timeBasedTimeout = false;
    }

    public void setSearchParams(SearchParams searchParams) {
        this.params = searchParams;
    }

    public void setRestartStrategy(RestartStrategy restartStrategy) {
        this.restarter = restartStrategy;
    }

    @Override
    public void expireTimeout() {
        this.undertimeout = false;
    }

    protected int nAssigns() {
        return this.trail.size();
    }

    @Override
    public int nConstraints() {
        return this.constrs.size() + this.trail.size();
    }

    @Override
    public void learn(Constr constr) {
        this.learnts.push(constr);
        constr.setLearnt();
        constr.register();
        ++this.stats.learnedclauses;
        switch (constr.size()) {
            case 2: {
                ++this.stats.learnedbinaryclauses;
                break;
            }
            case 3: {
                ++this.stats.learnedternaryclauses;
                break;
            }
        }
    }

    public final int decisionLevel() {
        return this.trailLim.size();
    }

    @Override
    @Deprecated
    public int newVar() {
        int n = this.voc.nVars() + 1;
        this.voc.ensurePool(n);
        return n;
    }

    @Override
    public int newVar(int n) {
        this.voc.ensurePool(n);
        return this.voc.nVars();
    }

    @Override
    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        IVecInt iVecInt2 = this.dimacs2internal(iVecInt);
        return this.addConstr(this.dsfactory.createClause(iVecInt2));
    }

    @Override
    public boolean removeConstr(IConstr iConstr) {
        if (iConstr == null) {
            throw new IllegalArgumentException("Reference to the constraint to remove needed!");
        }
        Constr constr = (Constr)iConstr;
        constr.remove(this);
        this.constrs.remove(constr);
        this.clearLearntClauses();
        String string = constr.getClass().getName();
        this.constrTypes.get(string).dec();
        return true;
    }

    @Override
    public boolean removeSubsumedConstr(IConstr iConstr) {
        if (iConstr == null) {
            throw new IllegalArgumentException("Reference to the constraint to remove needed!");
        }
        if (this.constrs.last() != iConstr) {
            throw new IllegalArgumentException("Can only remove latest added constraint!!!");
        }
        Constr constr = (Constr)iConstr;
        constr.remove(this);
        this.constrs.pop();
        String string = constr.getClass().getName();
        this.constrTypes.get(string).dec();
        return true;
    }

    @Override
    public void addAllClauses(IVec<IVecInt> iVec) throws ContradictionException {
        Iterator<IVecInt> iterator = iVec.iterator();
        while (iterator.hasNext()) {
            this.addClause(iterator.next());
        }
    }

    @Override
    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        int n2 = iVecInt.size();
        VecInt vecInt = new VecInt(n2);
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            vecInt.push(-iteratorInt.next());
        }
        return this.addAtLeast(vecInt, n2 - n);
    }

    @Override
    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        IVecInt iVecInt2 = this.dimacs2internal(iVecInt);
        return this.addConstr(this.dsfactory.createCardinalityConstraint(iVecInt2, n));
    }

    public boolean simplifyDB() {
        IVec[] iVecArray = new IVec[]{this.constrs, this.learnts};
        for (int i = 0; i < 2; ++i) {
            int n = 0;
            for (int j = 0; j < iVecArray[i].size(); ++j) {
                if (((Constr)iVecArray[i].get(j)).simplify()) {
                    ((Constr)iVecArray[i].get(j)).remove(this);
                    continue;
                }
                iVecArray[i].moveTo(n++, j);
            }
            iVecArray[i].shrinkTo(n);
        }
        return true;
    }

    @Override
    public int[] model() {
        if (this.model == null) {
            throw new UnsupportedOperationException("Call the solve method first!!!");
        }
        int[] nArray = new int[this.model.length];
        System.arraycopy(this.model, 0, nArray, 0, this.model.length);
        return nArray;
    }

    @Override
    public boolean enqueue(int n) {
        return this.enqueue(n, null);
    }

    @Override
    public boolean enqueue(int n, Constr constr) {
        if (!$assertionsDisabled && n <= 1) {
            throw new AssertionError();
        }
        if (this.voc.isSatisfied(n)) {
            return true;
        }
        if (this.voc.isFalsified(n)) {
            return false;
        }
        this.voc.satisfies(n);
        this.voc.setLevel(n, this.decisionLevel());
        this.voc.setReason(n, constr);
        this.trail.push(n);
        return true;
    }

    public void analyze(Constr constr, Pair pair) throws TimeoutException {
        int n;
        if (!$assertionsDisabled && constr == null) {
            throw new AssertionError();
        }
        boolean[] blArray = this.mseen;
        IVecInt iVecInt = this.moutLearnt;
        IVecInt iVecInt2 = this.mpreason;
        iVecInt.clear();
        if (!$assertionsDisabled && iVecInt.size() != 0) {
            throw new AssertionError();
        }
        for (n = 0; n < blArray.length; ++n) {
            blArray[n] = false;
        }
        n = 0;
        int n2 = -1;
        iVecInt.push(-1);
        int n3 = 0;
        do {
            iVecInt2.clear();
            if (!$assertionsDisabled && constr == null) {
                throw new AssertionError();
            }
            constr.calcReason(n2, iVecInt2);
            this.learnedConstraintsDeletionStrategy.onConflictAnalysis(constr);
            for (int i = 0; i < iVecInt2.size(); ++i) {
                int n4 = iVecInt2.get(i);
                this.order.updateVar(n4);
                if (blArray[n4 >> 1]) continue;
                blArray[n4 >> 1] = true;
                if (this.voc.getLevel(n4) == this.decisionLevel()) {
                    ++n;
                    this.order.updateVarAtDecisionLevel(n4);
                    continue;
                }
                if (this.voc.getLevel(n4) <= 0) continue;
                iVecInt.push(n4 ^ 1);
                n3 = Math.max(n3, this.voc.getLevel(n4));
            }
            do {
                n2 = this.trail.last();
                constr = this.voc.getReason(n2);
                this.undoOne();
            } while (!blArray[n2 >> 1]);
        } while (--n > 0);
        iVecInt.set(0, n2 ^ 1);
        this.simplifier.simplify(iVecInt);
        Constr constr2 = this.dsfactory.createUnregisteredClause(iVecInt);
        this.slistener.learn(constr2);
        this.learnedConstraintsDeletionStrategy.onConflict(constr2);
        pair.reason = constr2;
        if (!$assertionsDisabled && n3 <= -1) {
            throw new AssertionError();
        }
        pair.backtrackLevel = n3;
    }

    public IVecInt analyzeFinalConflictInTermsOfAssumptions(Constr constr, IVecInt iVecInt, int n) {
        int n2;
        if (iVecInt.size() == 0) {
            return null;
        }
        if (this.trailLim.last() == this.trail.size()) {
            this.trailLim.pop();
        }
        boolean[] blArray = this.mseen;
        IVecInt iVecInt2 = this.moutLearnt;
        IVecInt iVecInt3 = this.mpreason;
        iVecInt2.clear();
        if (this.trailLim.size() == 0) {
            return iVecInt2;
        }
        if (!$assertionsDisabled && iVecInt2.size() != 0) {
            throw new AssertionError();
        }
        for (n2 = 0; n2 < blArray.length; ++n2) {
            blArray[n2] = false;
        }
        if (constr == null) {
            blArray[n >> 1] = true;
        }
        n2 = -1;
        while (constr == null && this.trail.size() > 0) {
            n2 = this.trail.last();
            constr = this.voc.getReason(n2);
            this.undoOne();
            if (constr == null && this.trailLim.size() > 0 && n2 == (n ^ 1)) {
                iVecInt2.push(LiteralsUtils.toDimacs(n2));
            }
            if (this.trailLim.size() <= 0 || this.trail.size() > this.trailLim.last()) continue;
            this.trailLim.pop();
        }
        if (constr == null) {
            return iVecInt2;
        }
        do {
            iVecInt3.clear();
            constr.calcReason(n2, iVecInt3);
            for (int i = 0; i < iVecInt3.size(); ++i) {
                int n3 = iVecInt3.get(i);
                if (blArray[n3 >> 1]) continue;
                blArray[n3 >> 1] = true;
                if (this.voc.getReason(n3) != null || this.voc.getLevel(n3) <= 0) continue;
                if (!$assertionsDisabled && !iVecInt.contains(LiteralsUtils.toDimacs(n3))) {
                    throw new AssertionError();
                }
                iVecInt2.push(LiteralsUtils.toDimacs(n3));
            }
            do {
                n2 = this.trail.last();
                constr = this.voc.getReason(n2);
                this.undoOne();
                if (this.decisionLevel() <= 0 || this.trail.size() > this.trailLim.last()) continue;
                this.trailLim.pop();
            } while (this.trail.size() > 0 && this.decisionLevel() > 0 && (!blArray[n2 >> 1] || constr == null));
        } while (this.decisionLevel() > 0);
        return iVecInt2;
    }

    public void setSimplifier(String string) {
        try {
            Field field = (class$org$sat4j$minisat$core$Solver == null ? (class$org$sat4j$minisat$core$Solver = Solver.class$("org.sat4j.minisat.core.Solver")) : class$org$sat4j$minisat$core$Solver).getDeclaredField(string);
            this.simplifier = (ISimplifier)field.get(this);
        }
        catch (Exception exception) {
            exception.printStackTrace();
            this.simplifier = NO_SIMPLIFICATION;
        }
    }

    public void setSimplifier(ISimplifier iSimplifier) {
        this.simplifier = iSimplifier;
    }

    private void simpleSimplification(IVecInt iVecInt) {
        int n;
        boolean[] blArray = this.mseen;
        int n2 = 1;
        block0: for (n = 1; n < iVecInt.size(); ++n) {
            Constr constr = this.voc.getReason(iVecInt.get(n));
            if (constr == null) {
                iVecInt.moveTo(n2++, n);
                continue;
            }
            for (int i = 0; i < constr.size(); ++i) {
                if (!this.voc.isFalsified(constr.get(i)) || blArray[constr.get(i) >> 1] || this.voc.getLevel(constr.get(i)) == 0) continue;
                iVecInt.moveTo(n2++, n);
                continue block0;
            }
        }
        iVecInt.shrink(n - n2);
        this.stats.reducedliterals += (long)(n - n2);
    }

    private void expensiveSimplification(IVecInt iVecInt) {
        int n;
        this.analyzetoclear.clear();
        iVecInt.copyTo(this.analyzetoclear);
        int n2 = 1;
        for (n = 1; n < iVecInt.size(); ++n) {
            if (this.voc.getReason(iVecInt.get(n)) != null && this.analyzeRemovable(iVecInt.get(n))) continue;
            iVecInt.moveTo(n2++, n);
        }
        iVecInt.shrink(n - n2);
        this.stats.reducedliterals += (long)(n - n2);
    }

    private boolean analyzeRemovable(int n) {
        if (!$assertionsDisabled && this.voc.getReason(n) == null) {
            throw new AssertionError();
        }
        ILits iLits = this.voc;
        IVecInt iVecInt = this.analyzestack;
        IVecInt iVecInt2 = this.analyzetoclear;
        iVecInt.clear();
        iVecInt.push(n);
        boolean[] blArray = this.mseen;
        int n2 = iVecInt2.size();
        while (iVecInt.size() > 0) {
            int n3 = iVecInt.last();
            if (!$assertionsDisabled && iLits.getReason(n3) == null) {
                throw new AssertionError();
            }
            Constr constr = iLits.getReason(n3);
            iVecInt.pop();
            for (int i = 0; i < constr.size(); ++i) {
                int n4 = constr.get(i);
                if (!iLits.isFalsified(n4) || blArray[LiteralsUtils.var(n4)] || iLits.getLevel(n4) == 0) continue;
                if (iLits.getReason(n4) == null) {
                    for (int j = n2; j < iVecInt2.size(); ++j) {
                        blArray[iVecInt2.get((int)j) >> 1] = false;
                    }
                    iVecInt2.shrink(iVecInt2.size() - n2);
                    return false;
                }
                blArray[n4 >> 1] = true;
                iVecInt.push(n4);
                iVecInt2.push(n4);
            }
        }
        return true;
    }

    private void expensiveSimplificationWLOnly(IVecInt iVecInt) {
        int n;
        this.analyzetoclear.clear();
        iVecInt.copyTo(this.analyzetoclear);
        int n2 = 1;
        for (n = 1; n < iVecInt.size(); ++n) {
            if (this.voc.getReason(iVecInt.get(n)) != null && this.analyzeRemovableWLOnly(iVecInt.get(n))) continue;
            iVecInt.moveTo(n2++, n);
        }
        iVecInt.shrink(n - n2);
        this.stats.reducedliterals += (long)(n - n2);
    }

    private boolean analyzeRemovableWLOnly(int n) {
        if (!$assertionsDisabled && this.voc.getReason(n) == null) {
            throw new AssertionError();
        }
        this.analyzestack.clear();
        this.analyzestack.push(n);
        boolean[] blArray = this.mseen;
        int n2 = this.analyzetoclear.size();
        while (this.analyzestack.size() > 0) {
            int n3 = this.analyzestack.last();
            if (!$assertionsDisabled && this.voc.getReason(n3) == null) {
                throw new AssertionError();
            }
            Constr constr = this.voc.getReason(n3);
            this.analyzestack.pop();
            for (int i = 1; i < constr.size(); ++i) {
                int n4 = constr.get(i);
                if (blArray[LiteralsUtils.var(n4)] || this.voc.getLevel(n4) == 0) continue;
                if (this.voc.getReason(n4) == null) {
                    for (int j = n2; j < this.analyzetoclear.size(); ++j) {
                        blArray[this.analyzetoclear.get((int)j) >> 1] = false;
                    }
                    this.analyzetoclear.shrink(this.analyzetoclear.size() - n2);
                    return false;
                }
                blArray[n4 >> 1] = true;
                this.analyzestack.push(n4);
                this.analyzetoclear.push(n4);
            }
        }
        return true;
    }

    protected void undoOne() {
        int n = this.trail.last();
        if (!$assertionsDisabled && n <= 1) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.voc.getLevel(n) < 0) {
            throw new AssertionError();
        }
        int n2 = n >> 1;
        this.voc.unassign(n);
        this.voc.setReason(n, null);
        this.voc.setLevel(n, -1);
        this.order.undo(n2);
        this.trail.pop();
        IVec<Undoable> iVec = this.voc.undos(n);
        if (!$assertionsDisabled && iVec == null) {
            throw new AssertionError();
        }
        for (int i = iVec.size(); i > 0; --i) {
            iVec.last().undo(n);
            iVec.pop();
        }
    }

    @Override
    public void claBumpActivity(Constr constr) {
        constr.incActivity(this.claInc);
        if (constr.getActivity() > 1.0E20) {
            this.claRescalActivity();
        }
    }

    @Override
    public void varBumpActivity(int n) {
        this.order.updateVar(n);
    }

    private void claRescalActivity() {
        for (int i = 0; i < this.learnts.size(); ++i) {
            this.learnts.get(i).rescaleBy(1.0E-20);
        }
        this.claInc *= 1.0E-20;
    }

    public Constr propagate() {
        IVec<Propagatable> iVec = this.watched;
        IVecInt iVecInt = this.trail;
        ILits iLits = this.voc;
        SolverStats solverStats = this.stats;
        IOrder iOrder = this.order;
        SearchListener searchListener = this.slistener;
        while (this.qhead < iVecInt.size()) {
            ++solverStats.propagations;
            int n = iVecInt.get(this.qhead++);
            searchListener.propagating(LiteralsUtils.toDimacs(n), null);
            iOrder.assignLiteral(n);
            if (!$assertionsDisabled && n <= 1) {
                throw new AssertionError();
            }
            iVec.clear();
            iLits.watches(n).moveTo(iVec);
            int n2 = iVec.size();
            for (int i = 0; i < n2; ++i) {
                ++solverStats.inspects;
                if (iVec.get(i).propagate(this, n)) continue;
                int n3 = iVec.size();
                for (int j = i + 1; j < n3; ++j) {
                    iLits.watch(n, iVec.get(j));
                }
                this.qhead = iVecInt.size();
                return (Constr)iVec.get(i);
            }
        }
        return null;
    }

    void record(Constr constr) {
        constr.assertConstraint(this);
        this.slistener.adding(LiteralsUtils.toDimacs(constr.get(0)));
        if (constr.size() == 1) {
            ++this.stats.learnedliterals;
        } else {
            this.learner.learns(constr);
        }
    }

    public boolean assume(int n) {
        if (!$assertionsDisabled && this.trail.size() != this.qhead) {
            throw new AssertionError();
        }
        this.trailLim.push(this.trail.size());
        return this.enqueue(n);
    }

    private void cancel() {
        int n = this.trail.unsafeGet(this.trailLim.last());
        this.slistener.backtracking(LiteralsUtils.toDimacs(n));
        for (int i = this.trail.size() - this.trailLim.last(); i > 0; --i) {
            this.undoOne();
        }
        this.trailLim.pop();
    }

    private void cancelLearntLiterals(int n) {
        this.learnedLiterals.clear();
        while (this.trail.size() > n) {
            this.learnedLiterals.push(this.trail.last());
            this.undoOne();
        }
        this.qhead = this.trail.size();
    }

    protected void cancelUntil(int n) {
        while (this.decisionLevel() > n) {
            this.cancel();
        }
        this.qhead = this.trail.size();
    }

    Lbool search(long l, IVecInt iVecInt) {
        if (!$assertionsDisabled && this.rootLevel != this.decisionLevel()) {
            throw new AssertionError();
        }
        ++this.stats.starts;
        int n = 0;
        this.order.setVarDecay(1.0 / this.params.getVarDecay());
        this.claDecay = 1.0 / this.params.getClaDecay();
        do {
            this.slistener.beginLoop();
            Constr constr = this.propagate();
            if (!$assertionsDisabled && this.trail.size() != this.qhead) {
                throw new AssertionError();
            }
            if (constr == null) {
                int n2;
                if (this.decisionLevel() == 0 && this.isDBSimplificationAllowed) {
                    ++this.stats.rootSimplifications;
                    n2 = this.simplifyDB();
                    if (!$assertionsDisabled && n2 == 0) {
                        throw new AssertionError();
                    }
                }
                if (!$assertionsDisabled && this.nAssigns() > this.voc.realnVars()) {
                    throw new AssertionError();
                }
                if (this.nAssigns() == this.voc.realnVars()) {
                    this.slistener.solutionFound();
                    this.modelFound();
                    return Lbool.TRUE;
                }
                if ((long)n >= l) {
                    this.cancelUntil(this.rootLevel);
                    return Lbool.UNDEFINED;
                }
                if (this.needToReduceDB) {
                    this.reduceDB();
                    this.needToReduceDB = false;
                }
                ++this.stats.decisions;
                n2 = this.order.select();
                if (!$assertionsDisabled && n2 <= 1) {
                    throw new AssertionError();
                }
                this.slistener.assuming(LiteralsUtils.toDimacs(n2));
                boolean bl = this.assume(n2);
                if (!$assertionsDisabled && !bl) {
                    throw new AssertionError();
                }
                continue;
            }
            ++this.stats.conflicts;
            ++n;
            this.slistener.conflictFound(constr, this.decisionLevel(), this.trail.size());
            this.conflictCount.newConflict();
            if (this.decisionLevel() == this.rootLevel) {
                this.unsatExplanationInTermsOfAssumptions = this.analyzeFinalConflictInTermsOfAssumptions(constr, iVecInt, -1);
                return Lbool.FALSE;
            }
            try {
                this.analyze(constr, this.analysisResult);
            }
            catch (TimeoutException timeoutException) {
                return Lbool.UNDEFINED;
            }
            if (!$assertionsDisabled && this.analysisResult.backtrackLevel >= this.decisionLevel()) {
                throw new AssertionError();
            }
            int n3 = Math.max(this.analysisResult.backtrackLevel, this.rootLevel);
            this.slistener.backjump(n3);
            this.cancelUntil(n3);
            if (n3 == this.rootLevel) {
                n = 0;
            }
            if (!($assertionsDisabled || this.decisionLevel() >= this.rootLevel && this.decisionLevel() >= this.analysisResult.backtrackLevel)) {
                throw new AssertionError();
            }
            if (this.analysisResult.reason == null) {
                return Lbool.FALSE;
            }
            this.record(this.analysisResult.reason);
            this.analysisResult.reason = null;
            this.decayActivities();
        } while (this.undertimeout);
        return Lbool.UNDEFINED;
    }

    protected void analyzeAtRootLevel(Constr constr) {
    }

    void modelFound() {
        this.model = new int[this.trail.size()];
        this.fullmodel = new boolean[this.nVars()];
        int n = 0;
        for (int i = 1; i <= this.voc.nVars(); ++i) {
            int n2;
            if (!this.voc.belongsToPool(i) || this.voc.isUnassigned(n2 = this.voc.getFromPool(i))) continue;
            this.model[n++] = this.voc.isSatisfied(n2) ? i : -i;
            this.fullmodel[i - 1] = this.voc.isSatisfied(n2);
            if (this.voc.getReason(n2) == null) {
                this.decisions.push(this.model[n - 1]);
                continue;
            }
            this.implied.push(this.model[n - 1]);
        }
        if (!$assertionsDisabled && n != this.model.length) {
            throw new AssertionError();
        }
        this.cancelUntil(this.rootLevel);
    }

    @Override
    public int[] primeImplicant() {
        VecInt vecInt = new VecInt(this.decisions.size());
        this.decisions.copyTo(vecInt);
        VecInt vecInt2 = new VecInt(this.implied.size() + this.decisions.size());
        this.implied.copyTo(vecInt2);
        this.decisions.copyTo(vecInt2);
        VecInt vecInt3 = new VecInt(vecInt2.size());
        this.implied.copyTo(vecInt3);
        for (int i = 0; i < vecInt.size(); ++i) {
            int n = vecInt.get(i);
            vecInt2.remove(n);
            vecInt2.push(-n);
            try {
                if (this.isSatisfiable(vecInt2)) {
                    vecInt2.pop();
                    vecInt2.push(-n);
                    continue;
                }
                vecInt3.push(n);
                vecInt2.pop();
                vecInt2.push(n);
                continue;
            }
            catch (TimeoutException timeoutException) {
                throw new IllegalStateException("Should not timeout here", timeoutException);
            }
        }
        int[] nArray = new int[vecInt3.size()];
        vecInt3.copyTo(nArray);
        return nArray;
    }

    @Override
    public boolean model(int n) {
        if (n <= 0 || n > this.nVars()) {
            throw new IllegalArgumentException("Use a valid Dimacs var id as argument!");
        }
        if (this.fullmodel == null) {
            throw new UnsupportedOperationException("Call the solve method first!!!");
        }
        return this.fullmodel[n - 1];
    }

    @Override
    public void clearLearntClauses() {
        Iterator<Constr> iterator = this.learnts.iterator();
        while (iterator.hasNext()) {
            iterator.next().remove(this);
        }
        this.learnts.clear();
        this.learnedLiterals.clear();
    }

    protected void reduceDB() {
        ++this.stats.reduceddb;
        this.learnedConstraintsDeletionStrategy.reduce(this.learnts);
        System.gc();
    }

    private void sortOnActivity() {
        this.learnts.sort(this.comparator);
    }

    protected void decayActivities() {
        this.order.varDecayActivity();
        this.claDecayActivity();
    }

    private void claDecayActivity() {
        this.claInc *= this.claDecay;
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        return this.isSatisfiable(VecInt.EMPTY);
    }

    @Override
    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        return this.isSatisfiable(VecInt.EMPTY, bl);
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        return this.isSatisfiable(iVecInt, false);
    }

    public final LearnedConstraintsDeletionStrategy fixedSize(final int n) {
        return new LearnedConstraintsDeletionStrategy(){
            private static final long serialVersionUID = 1L;
            private final ConflictTimer aTimer;
            {
                this.aTimer = new ConflictTimerAdapter(n){
                    private static final long serialVersionUID = 1L;

                    void run() {
                        Solver.this.needToReduceDB = true;
                    }
                };
            }

            @Override
            public void reduce(IVec<Constr> iVec) {
                int n4;
                int n2 = 0;
                int n3 = 0;
                for (n4 = 0; n4 < Solver.this.learnts.size() && Solver.this.learnts.size() - n2 > n; ++n4) {
                    Constr constr = (Constr)Solver.this.learnts.get(n4);
                    if (constr.locked() || constr.size() == 2) {
                        Solver.this.learnts.set(n3++, Solver.this.learnts.get(n4));
                        continue;
                    }
                    constr.remove(Solver.this);
                    ++n2;
                }
                while (n4 < Solver.this.learnts.size()) {
                    Solver.this.learnts.set(n3++, Solver.this.learnts.get(n4));
                    ++n4;
                }
                if (Solver.this.verbose) {
                    System.out.println(new StringBuffer().append(Solver.this.getLogPrefix()).append("cleaning ").append(Solver.this.learnts.size() - n3).append(" clauses out of ").append(Solver.this.learnts.size()).toString());
                    System.out.flush();
                }
                Solver.this.learnts.shrinkTo(n3);
            }

            @Override
            public void onConflictAnalysis(Constr constr) {
            }

            @Override
            public void onConflict(Constr constr) {
            }

            public String toString() {
                return new StringBuffer().append("Fixed size (").append(n).append(") learned constraints deletion strategy").toString();
            }

            @Override
            public void init() {
            }

            @Override
            public ConflictTimer getTimer() {
                return this.aTimer;
            }
        };
    }

    public void setLearnedConstraintsDeletionStrategy(LearnedConstraintsDeletionStrategy learnedConstraintsDeletionStrategy) {
        this.learnedConstraintsDeletionStrategy = learnedConstraintsDeletionStrategy;
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        Lbool lbool = Lbool.UNDEFINED;
        int n = this.voc.nVars();
        if (this.mseen.length <= n) {
            this.mseen = new boolean[n + 1];
        }
        this.trail.ensure(n);
        this.trailLim.ensure(n);
        this.learnedLiterals.ensure(n);
        this.decisions.clear();
        this.implied.clear();
        this.timebegin = System.currentTimeMillis();
        this.slistener.start();
        this.model = null;
        this.fullmodel = null;
        this.unsatExplanationInTermsOfAssumptions = null;
        this.order.init();
        this.learnedConstraintsDeletionStrategy.init();
        int n2 = this.trail.size();
        Object object = this.learnedLiterals.iterator();
        while (object.hasNext()) {
            this.enqueue(object.next());
        }
        object = this.propagate();
        if (object != null) {
            this.analyzeAtRootLevel((Constr)object);
            this.slistener.conflictFound((IConstr)object, 0, 0);
            this.slistener.end(Lbool.FALSE);
            this.cancelUntil(0);
            this.cancelLearntLiterals(n2);
            return false;
        }
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            int n3 = iteratorInt.next();
            int n4 = this.voc.getFromPool(n3);
            if (this.assume(n4) && (object = this.propagate()) == null) continue;
            if (object == null) {
                this.slistener.conflictFound(n4);
                this.unsatExplanationInTermsOfAssumptions = this.analyzeFinalConflictInTermsOfAssumptions(null, iVecInt, n4);
                this.unsatExplanationInTermsOfAssumptions.push(n3);
            } else {
                this.slistener.conflictFound((IConstr)object, this.decisionLevel(), this.trail.size());
                this.unsatExplanationInTermsOfAssumptions = this.analyzeFinalConflictInTermsOfAssumptions((Constr)object, iVecInt, -1);
            }
            this.slistener.end(Lbool.FALSE);
            this.cancelUntil(0);
            this.cancelLearntLiterals(n2);
            return false;
        }
        this.rootLevel = this.decisionLevel();
        this.order.init();
        this.learner.init();
        boolean bl2 = false;
        if (this.timeBasedTimeout) {
            if (!bl || this.timer == null) {
                bl2 = true;
                this.undertimeout = true;
                TimerTask timerTask = new TimerTask(){

                    public void run() {
                        Solver.this.undertimeout = false;
                    }
                };
                this.timer = new Timer(true);
                this.timer.schedule(timerTask, this.timeout);
                this.conflictCount = this.learnedConstraintsDeletionStrategy.getTimer();
            }
        } else if (!bl || this.conflictCount == null) {
            bl2 = true;
            this.undertimeout = true;
            ConflictTimerAdapter conflictTimerAdapter = new ConflictTimerAdapter((int)this.timeout){
                private static final long serialVersionUID = 1L;

                public void run() {
                    Solver.this.undertimeout = false;
                }
            };
            this.conflictCount = new ConflictTimerContainer().add(conflictTimerAdapter).add(this.learnedConstraintsDeletionStrategy.getTimer());
        }
        if (!bl || bl2) {
            this.restarter.init(this.params);
        }
        this.needToReduceDB = false;
        while (lbool == Lbool.UNDEFINED && this.undertimeout) {
            lbool = this.search(this.restarter.nextRestartNumberOfConflict(), iVecInt);
            if (lbool != Lbool.UNDEFINED) continue;
            this.restarter.onRestart();
            this.slistener.restarting();
        }
        this.cancelUntil(0);
        this.cancelLearntLiterals(n2);
        if (!bl && this.timeBasedTimeout) {
            this.timer.cancel();
            this.timer = null;
        }
        this.slistener.end(lbool);
        if (!this.undertimeout) {
            String string = new StringBuffer().append(" Timeout (").append(this.timeout).append(this.timeBasedTimeout ? "s" : " conflicts").append(") exceeded").toString();
            throw new TimeoutException(string);
        }
        return lbool == Lbool.TRUE;
    }

    @Override
    public void printInfos(PrintWriter printWriter, String string) {
        printWriter.print(string);
        printWriter.println("constraints type ");
        for (Map.Entry<String, Counter> entry : this.constrTypes.entrySet()) {
            printWriter.println(new StringBuffer().append(string).append(entry.getKey()).append(" => ").append(entry.getValue()).toString());
        }
    }

    public void printLearntClausesInfos(PrintWriter printWriter, String string) {
        HashMap<String, Counter> hashMap = new HashMap<String, Counter>();
        Iterator<Object> iterator = this.learnts.iterator();
        while (iterator.hasNext()) {
            String object = iterator.next().getClass().getName();
            Counter counter = (Counter)hashMap.get(object);
            if (counter == null) {
                hashMap.put(object, new Counter());
                continue;
            }
            counter.inc();
        }
        printWriter.print(string);
        printWriter.println("learnt constraints type ");
        for (Map.Entry entry : hashMap.entrySet()) {
            printWriter.println(new StringBuffer().append(string).append((String)entry.getKey()).append(" => ").append(entry.getValue()).toString());
        }
    }

    public SolverStats getStats() {
        return this.stats;
    }

    protected void initStats(SolverStats solverStats) {
        this.stats = solverStats;
    }

    public IOrder getOrder() {
        return this.order;
    }

    public void setOrder(IOrder iOrder) {
        this.order = iOrder;
        this.order.setLits(this.voc);
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    @Override
    public void reset() {
        this.trail.clear();
        this.trailLim.clear();
        this.qhead = 0;
        Iterator<Constr> iterator = this.constrs.iterator();
        while (iterator.hasNext()) {
            iterator.next().remove(this);
        }
        this.constrs.clear();
        this.clearLearntClauses();
        this.voc.resetPool();
        this.dsfactory.reset();
        this.stats.reset();
        this.constrTypes.clear();
    }

    @Override
    public int nVars() {
        return this.voc.nVars();
    }

    protected IConstr addConstr(Constr constr) {
        if (constr != null) {
            this.constrs.push(constr);
            String string = constr.getClass().getName();
            Counter counter = this.constrTypes.get(string);
            if (counter == null) {
                this.constrTypes.put(string, new Counter());
            } else {
                counter.inc();
            }
        }
        return constr;
    }

    public DataStructureFactory getDSFactory() {
        return this.dsfactory;
    }

    public IVecInt getOutLearnt() {
        return this.moutLearnt;
    }

    public IConstr getIthConstr(int n) {
        return this.constrs.get(n);
    }

    @Override
    public void printStat(PrintStream printStream, String string) {
        this.printStat(new PrintWriter(printStream, true), string);
    }

    @Override
    public void printStat(PrintWriter printWriter, String string) {
        this.stats.printStat(printWriter, string);
        double d = ((double)System.currentTimeMillis() - this.timebegin) / 1000.0;
        printWriter.println(new StringBuffer().append(string).append("speed (assignments/second)\t: ").append((double)this.stats.propagations / d).toString());
        this.order.printStat(printWriter, string);
        this.printLearntClausesInfos(printWriter, string);
    }

    @Override
    public String toString(String string) {
        StringBuffer stringBuffer = new StringBuffer();
        Object[] objectArray = new Object[]{this.dsfactory, this.learner, this.params, this.order, this.simplifier, this.restarter, this.learnedConstraintsDeletionStrategy};
        stringBuffer.append(string);
        stringBuffer.append("--- Begin Solver configuration ---");
        stringBuffer.append("\n");
        for (Object object : objectArray) {
            stringBuffer.append(string);
            stringBuffer.append(object.toString());
            stringBuffer.append("\n");
        }
        stringBuffer.append(string);
        stringBuffer.append("timeout=");
        if (this.timeBasedTimeout) {
            stringBuffer.append(this.timeout / 1000L);
            stringBuffer.append("s\n");
        } else {
            stringBuffer.append(this.timeout);
            stringBuffer.append(" conflicts\n");
        }
        stringBuffer.append(string);
        stringBuffer.append("DB Simplification allowed=");
        stringBuffer.append(this.isDBSimplificationAllowed);
        stringBuffer.append("\n");
        stringBuffer.append(string);
        stringBuffer.append("--- End Solver configuration ---");
        return stringBuffer.toString();
    }

    public String toString() {
        return this.toString("");
    }

    @Override
    public int getTimeout() {
        return (int)(this.timeBasedTimeout ? this.timeout / 1000L : this.timeout);
    }

    @Override
    public long getTimeoutMs() {
        if (!this.timeBasedTimeout) {
            throw new UnsupportedOperationException("The timeout is given in number of conflicts!");
        }
        return this.timeout;
    }

    @Override
    public void setExpectedNumberOfClauses(int n) {
        this.constrs.ensure(n);
    }

    @Override
    public Map<String, Number> getStat() {
        return this.stats.toMap();
    }

    @Override
    public int[] findModel() throws TimeoutException {
        if (this.isSatisfiable()) {
            return this.model();
        }
        return null;
    }

    @Override
    public int[] findModel(IVecInt iVecInt) throws TimeoutException {
        if (this.isSatisfiable(iVecInt)) {
            return this.model();
        }
        return null;
    }

    @Override
    public boolean isDBSimplificationAllowed() {
        return this.isDBSimplificationAllowed;
    }

    @Override
    public void setDBSimplificationAllowed(boolean bl) {
        this.isDBSimplificationAllowed = bl;
    }

    @Override
    public int nextFreeVarId(boolean bl) {
        return this.voc.nextFreeVarId(bl);
    }

    @Override
    public IConstr addBlockingClause(IVecInt iVecInt) throws ContradictionException {
        return this.addClause(iVecInt);
    }

    @Override
    public void unset(int n) {
        if (this.trail.isEmpty()) {
            return;
        }
        int n2 = this.trail.last();
        while (n2 != n) {
            this.undoOne();
            if (this.trail.isEmpty()) {
                return;
            }
            n2 = this.trail.last();
        }
        this.undoOne();
        this.qhead = this.trail.size();
    }

    @Override
    public void setLogPrefix(String string) {
        this.prefix = string;
    }

    @Override
    public String getLogPrefix() {
        return this.prefix;
    }

    @Override
    public IVecInt unsatExplanation() {
        VecInt vecInt = new VecInt(this.unsatExplanationInTermsOfAssumptions.size());
        this.unsatExplanationInTermsOfAssumptions.copyTo(vecInt);
        return vecInt;
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
        $assertionsDisabled = !(class$org$sat4j$minisat$core$Solver == null ? (class$org$sat4j$minisat$core$Solver = Solver.class$("org.sat4j.minisat.core.Solver")) : class$org$sat4j$minisat$core$Solver).desiredAssertionStatus();
        NO_SIMPLIFICATION = new ISimplifier(){
            private static final long serialVersionUID = 1L;

            public void simplify(IVecInt iVecInt) {
            }

            public String toString() {
                return "No reason simplification";
            }
        };
    }

    static interface ISimplifier
    extends Serializable {
        public void simplify(IVecInt var1);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static interface LearnedConstraintsDeletionStrategy
    extends Serializable {
        public void init();

        public ConflictTimer getTimer();

        public void reduce(IVec<Constr> var1);

        public void onConflict(Constr var1);

        public void onConflictAnalysis(Constr var1);
    }
}

