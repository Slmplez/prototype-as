/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RTEEvent
extends AtpStructureElement,
GRTEEvent {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public EList<RModeInAtomicSwcInstanceRef> getDisabledModes();

    public RunnableEntity getStartOnEvent();

    public void setStartOnEvent(RunnableEntity var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

