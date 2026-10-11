/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;

public interface ExternalTriggerOccurredEvent
extends RTEEvent {
    public RTriggerInAtomicSwcInstanceRef getTrigger();

    public void setTrigger(RTriggerInAtomicSwcInstanceRef var1);
}

