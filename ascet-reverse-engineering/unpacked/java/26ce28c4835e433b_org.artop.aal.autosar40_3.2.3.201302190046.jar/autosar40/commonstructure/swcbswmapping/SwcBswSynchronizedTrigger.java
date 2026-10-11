/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.swcbswmapping;

import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;

public interface SwcBswSynchronizedTrigger
extends ARObject {
    public SwcBswMapping getSwcBswMapping();

    public void setSwcBswMapping(SwcBswMapping var1);

    public Trigger getBswTrigger();

    public void setBswTrigger(Trigger var1);

    public PTriggerInAtomicSwcTypeInstanceRef getSwcTrigger();

    public void setSwcTrigger(PTriggerInAtomicSwcTypeInstanceRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

