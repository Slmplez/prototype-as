/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.LearningStrategy
 *  org.sat4j.minisat.core.RestartStrategy
 *  org.sat4j.minisat.core.SearchParams
 */
package org.sat4j.pb.core;

import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolverCP;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverResCP
extends PBSolverCP {
    private static final long serialVersionUID = 1L;
    public static final long MAXCONFLICTS = 100000L;
    private long bound;

    public PBSolverResCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder) {
        this(learningStrategy, pBDataStructureFactory, iOrder, 100000L);
    }

    public PBSolverResCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder, long l) {
        super(learningStrategy, pBDataStructureFactory, iOrder);
        this.bound = l;
    }

    public PBSolverResCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, SearchParams searchParams, IOrder iOrder, RestartStrategy restartStrategy) {
        super(learningStrategy, pBDataStructureFactory, searchParams, iOrder, restartStrategy);
    }

    public PBSolverResCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, SearchParams searchParams, IOrder iOrder) {
        super(learningStrategy, pBDataStructureFactory, searchParams, iOrder);
    }

    @Override
    boolean someCriteria() {
        if (this.stats.conflicts == this.bound) {
            this.setSimplifier(NO_SIMPLIFICATION);
            this.reduceDB();
            ++this.stats.numberOfCP;
            return true;
        }
        if (this.stats.conflicts > this.bound) {
            ++this.stats.numberOfCP;
            return true;
        }
        ++this.stats.numberOfResolution;
        return false;
    }
}

