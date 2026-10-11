/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.ecuresource.ECU;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;

public interface ECUPrototype
extends ARObject {
    public ExecutionTime getExecutionTime();

    public void setExecutionTime(ExecutionTime var1);

    public ECU getECU();

    public void setECU(ECU var1);
}

