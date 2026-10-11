/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface BswInternalTriggeringPoint
extends Identifiable {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public SwImplPolicyEnum getSwImplPolicy();

    public void setSwImplPolicy(SwImplPolicyEnum var1);

    public void unsetSwImplPolicy();

    public boolean isSetSwImplPolicy();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

