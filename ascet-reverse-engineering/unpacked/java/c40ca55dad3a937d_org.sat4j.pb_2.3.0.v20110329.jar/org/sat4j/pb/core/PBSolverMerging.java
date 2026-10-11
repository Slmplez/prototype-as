/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.LearningStrategy
 */
package org.sat4j.pb.core;

import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.pb.constraints.pb.ConflictMapMerging;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolverCP;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverMerging
extends PBSolverCP {
    private static final long serialVersionUID = 1L;

    public PBSolverMerging(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder) {
        super(learningStrategy, pBDataStructureFactory, iOrder);
    }

    @Override
    IConflict chooseConflict(PBConstr pBConstr, int n) {
        return ConflictMapMerging.createConflict(pBConstr, n);
    }

    @Override
    public String toString(String string) {
        return new StringBuffer().append(super.toString(string)).append("\n").append(string).append("uses fusion rule for conflict analysis").toString();
    }
}

