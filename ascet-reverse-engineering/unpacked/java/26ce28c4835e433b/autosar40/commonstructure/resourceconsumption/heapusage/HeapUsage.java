/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.resourceconsumption.heapusage;

import autosar40.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.SoftwareContext;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface HeapUsage
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public HwElement getHwElement();

    public void setHwElement(HwElement var1);

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

