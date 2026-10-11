/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;

public interface RTEEvent
extends Identifiable,
GRTEEvent {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public ModeDisablingDependency getModeDependency();

    public void setModeDependency(ModeDisablingDependency var1);

    public RunnableEntity getStartOnEvent();

    public void setStartOnEvent(RunnableEntity var1);
}

