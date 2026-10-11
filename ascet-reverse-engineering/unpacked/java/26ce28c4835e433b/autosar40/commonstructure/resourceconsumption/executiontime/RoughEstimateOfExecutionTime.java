/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface RoughEstimateOfExecutionTime
extends ExecutionTime {
    public String getAdditionalInformation();

    public void setAdditionalInformation(String var1);

    public void unsetAdditionalInformation();

    public boolean isSetAdditionalInformation();

    public MultidimensionalTime getEstimatedExecutionTime();

    public void setEstimatedExecutionTime(MultidimensionalTime var1);
}

