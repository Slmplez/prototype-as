/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.ecuresource.ECU;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface ECUPrototype
extends ARObject {
    public ExecutionTime getExecutionTime();

    public void setExecutionTime(ExecutionTime var1);

    public ECU getECU();

    public void setECU(ECU var1);
}

