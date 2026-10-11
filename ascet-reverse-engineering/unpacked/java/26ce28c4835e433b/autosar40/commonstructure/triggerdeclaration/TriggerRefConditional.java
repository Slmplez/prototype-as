/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.triggerdeclaration;

import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface TriggerRefConditional
extends ARObject {
    public BswModuleEntity getBswModuleEntity();

    public void setBswModuleEntity(BswModuleEntity var1);

    public Trigger getTrigger();

    public void setTrigger(Trigger var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

