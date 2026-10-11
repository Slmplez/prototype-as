/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface BswInternalTriggeringPointRefConditional
extends ARObject {
    public BswModuleEntity getBswModuleEntity();

    public void setBswModuleEntity(BswModuleEntity var1);

    public BswInternalTriggeringPoint getBswInternalTriggeringPoint();

    public void setBswInternalTriggeringPoint(BswInternalTriggeringPoint var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

