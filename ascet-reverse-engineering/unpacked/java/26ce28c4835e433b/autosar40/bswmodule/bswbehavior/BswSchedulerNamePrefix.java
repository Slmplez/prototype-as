/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.implementation.ImplementationProps;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface BswSchedulerNamePrefix
extends ImplementationProps {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

