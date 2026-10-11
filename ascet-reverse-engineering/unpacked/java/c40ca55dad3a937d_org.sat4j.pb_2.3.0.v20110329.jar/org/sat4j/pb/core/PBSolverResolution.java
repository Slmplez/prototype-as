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
import org.sat4j.pb.core.PBSolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverResolution
extends PBSolver {
    private static final long serialVersionUID = 1L;

    public PBSolverResolution(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, SearchParams searchParams, IOrder iOrder, RestartStrategy restartStrategy) {
        super(learningStrategy, pBDataStructureFactory, searchParams, iOrder, restartStrategy);
    }

    public PBSolverResolution(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder, RestartStrategy restartStrategy) {
        super(learningStrategy, pBDataStructureFactory, iOrder, restartStrategy);
    }
}

