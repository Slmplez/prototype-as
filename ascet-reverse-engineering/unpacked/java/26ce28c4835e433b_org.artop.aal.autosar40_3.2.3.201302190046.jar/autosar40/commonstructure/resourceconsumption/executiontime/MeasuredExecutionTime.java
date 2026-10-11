/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface MeasuredExecutionTime
extends ExecutionTime {
    public MultidimensionalTime getMaximumExecutionTime();

    public void setMaximumExecutionTime(MultidimensionalTime var1);

    public MultidimensionalTime getMinimumExecutionTime();

    public void setMinimumExecutionTime(MultidimensionalTime var1);

    public MultidimensionalTime getNominalExecutionTime();

    public void setNominalExecutionTime(MultidimensionalTime var1);
}

