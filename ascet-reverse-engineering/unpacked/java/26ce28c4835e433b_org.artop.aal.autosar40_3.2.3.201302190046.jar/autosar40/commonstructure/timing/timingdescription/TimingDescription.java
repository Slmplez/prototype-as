/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription;

import autosar40.commonstructure.timing.TimingExtension;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface TimingDescription
extends Identifiable {
    public TimingExtension getTimingExtension();

    public void setTimingExtension(TimingExtension var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

