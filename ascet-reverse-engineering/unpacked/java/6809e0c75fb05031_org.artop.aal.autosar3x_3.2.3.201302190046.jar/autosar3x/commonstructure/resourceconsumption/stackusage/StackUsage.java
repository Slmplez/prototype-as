/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.stackusage;

import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.SoftwareContext;
import autosar3x.ecuresource.ECU;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface StackUsage
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public ECU getEcu();

    public void setEcu(ECU var1);

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public ExecutableEntity getRunnable();

    public void setRunnable(ExecutableEntity var1);

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);
}

