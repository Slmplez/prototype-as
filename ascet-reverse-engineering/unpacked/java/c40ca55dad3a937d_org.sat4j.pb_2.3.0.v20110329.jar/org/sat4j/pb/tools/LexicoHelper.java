/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.IOptimizationProblem
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.tools;

import java.util.Collection;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.OptToPBSATAdapter;
import org.sat4j.pb.PBSolverDecorator;
import org.sat4j.pb.tools.DependencyHelper;
import org.sat4j.pb.tools.LexicoDecoratorPB;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LexicoHelper<T, C>
extends DependencyHelper<T, C> {
    private final LexicoDecoratorPB lexico = (LexicoDecoratorPB)((PBSolverDecorator)this.getSolver()).decorated();

    public LexicoHelper(IPBSolver iPBSolver) {
        super(new OptToPBSATAdapter((IOptimizationProblem)new LexicoDecoratorPB(iPBSolver)));
    }

    public LexicoHelper(IPBSolver iPBSolver, boolean bl, boolean bl2) {
        super(new OptToPBSATAdapter((IOptimizationProblem)new LexicoDecoratorPB(iPBSolver)), bl, bl2);
    }

    public LexicoHelper(IPBSolver iPBSolver, boolean bl) {
        super(new OptToPBSATAdapter((IOptimizationProblem)new LexicoDecoratorPB(iPBSolver)), bl);
    }

    public void addCriterion(Collection<T> collection) {
        VecInt vecInt = new VecInt(collection.size());
        for (T t : collection) {
            vecInt.push(this.getIntValue(t));
        }
        this.lexico.addCriterion((IVecInt)vecInt);
    }

    public boolean isOptimal() {
        return ((OptToPBSATAdapter)this.getSolver()).isOptimal();
    }
}

