/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.resourceconsumption.memorysectionusage;

import autosar40.commonstructure.implementation.ImplementationProps;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface SectionNamePrefix
extends ImplementationProps {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

