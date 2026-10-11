/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

public interface IOptimizationProblem
extends IProblem {
    public boolean admitABetterSolution() throws TimeoutException;

    public boolean admitABetterSolution(IVecInt var1) throws TimeoutException;

    public boolean hasNoObjectiveFunction();

    public boolean nonOptimalMeansSatisfiable();

    @Deprecated
    public Number calculateObjective();

    public Number getObjectiveValue();

    public void forceObjectiveValueTo(Number var1) throws ContradictionException;

    @Deprecated
    public void discard() throws ContradictionException;

    public void discardCurrentSolution() throws ContradictionException;

    public boolean isOptimal();
}

