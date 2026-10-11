/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface AnalyzedExecutionTime
extends ExecutionTime {
    public MultidimensionalTime getBestCaseExecutionTime();

    public void setBestCaseExecutionTime(MultidimensionalTime var1);

    public MultidimensionalTime getWorstCaseExecutionTime();

    public void setWorstCaseExecutionTime(MultidimensionalTime var1);
}

