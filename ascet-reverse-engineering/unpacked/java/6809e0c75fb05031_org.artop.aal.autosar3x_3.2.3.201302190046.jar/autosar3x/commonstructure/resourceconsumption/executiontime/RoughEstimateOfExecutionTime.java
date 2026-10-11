/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;

public interface RoughEstimateOfExecutionTime
extends ExecutionTime {
    public String getDescription();

    public void setDescription(String var1);

    public void unsetDescription();

    public boolean isSetDescription();
}

