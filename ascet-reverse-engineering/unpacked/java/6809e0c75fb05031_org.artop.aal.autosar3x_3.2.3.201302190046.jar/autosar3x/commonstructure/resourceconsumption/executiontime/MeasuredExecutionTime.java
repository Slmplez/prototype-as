/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;

public interface MeasuredExecutionTime
extends ExecutionTime {
    public Double getAverageExecutionTime();

    public void setAverageExecutionTime(Double var1);

    public void unsetAverageExecutionTime();

    public boolean isSetAverageExecutionTime();

    public Double getMaximalExecutionTime();

    public void setMaximalExecutionTime(Double var1);

    public void unsetMaximalExecutionTime();

    public boolean isSetMaximalExecutionTime();

    public Double getMinimalExecutionTime();

    public void setMinimalExecutionTime(Double var1);

    public void unsetMinimalExecutionTime();

    public boolean isSetMinimalExecutionTime();
}

