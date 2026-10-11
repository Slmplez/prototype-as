/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.TriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ExternalTriggerOccurredEvent;

public interface RTriggerInAtomicSwcInstanceRef
extends TriggerInAtomicSwcInstanceRef {
    public ExternalTriggerOccurredEvent getExternalTriggerOccurredEvent();

    public void setExternalTriggerOccurredEvent(ExternalTriggerOccurredEvent var1);

    public RPortPrototype getContextRPort();

    public void setContextRPort(RPortPrototype var1);

    public Trigger getTargetTrigger();

    public void setTargetTrigger(Trigger var1);

    public AtomicSwComponentType getBase();
}

