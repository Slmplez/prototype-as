/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.swcomponent.resources.executiontime.ExecutionTime;

public interface WorstCaseExecutionTime
extends ExecutionTime {
    public Double getMaximalExecutionTime();

    public void setMaximalExecutionTime(Double var1);

    public void unsetMaximalExecutionTime();

    public boolean isSetMaximalExecutionTime();

    public Double getMinimalExecutionTime();

    public void setMinimalExecutionTime(Double var1);

    public void unsetMinimalExecutionTime();

    public boolean isSetMinimalExecutionTime();
}

