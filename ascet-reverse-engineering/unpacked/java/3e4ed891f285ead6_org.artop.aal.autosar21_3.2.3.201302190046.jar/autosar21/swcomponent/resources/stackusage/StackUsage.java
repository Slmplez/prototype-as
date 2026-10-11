/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.stackusage;

import autosar21.ecuresource.ECU;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;

public interface StackUsage
extends ARObject {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public ECU getEcu();

    public void setEcu(ECU var1);

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public RunnableEntity getRunnable();

    public void setRunnable(RunnableEntity var1);

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);
}

