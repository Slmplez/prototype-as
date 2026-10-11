/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.basicelements;

import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface BootTime
extends ARObject {
    public ProcessingUnit getProcessingUnit();

    public void setProcessingUnit(ProcessingUnit var1);

    public Double getColdStartTime();

    public void setColdStartTime(Double var1);

    public void unsetColdStartTime();

    public boolean isSetColdStartTime();

    public Double getResetTime();

    public void setResetTime(Double var1);

    public void unsetResetTime();

    public boolean isSetResetTime();
}

