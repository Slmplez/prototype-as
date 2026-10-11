/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface BswTriggerDirectImplementation
extends ARObject {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public Trigger getMasteredTrigger();

    public void setMasteredTrigger(Trigger var1);

    public String getTask();

    public void setTask(String var1);

    public void unsetTask();

    public boolean isSetTask();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

