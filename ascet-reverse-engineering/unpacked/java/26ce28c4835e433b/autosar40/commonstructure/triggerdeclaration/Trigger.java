/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.triggerdeclaration;

import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface Trigger
extends AtpStructureElement {
    public SwImplPolicyEnum getSwImplPolicy();

    public void setSwImplPolicy(SwImplPolicyEnum var1);

    public void unsetSwImplPolicy();

    public boolean isSetSwImplPolicy();

    public MultidimensionalTime getTriggerPeriod();

    public void setTriggerPeriod(MultidimensionalTime var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

