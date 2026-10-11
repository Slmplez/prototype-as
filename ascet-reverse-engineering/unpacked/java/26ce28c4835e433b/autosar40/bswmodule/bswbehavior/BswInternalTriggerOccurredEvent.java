/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;

public interface BswInternalTriggerOccurredEvent
extends BswEvent {
    public BswInternalTriggeringPoint getEventSource();

    public void setEventSource(BswInternalTriggeringPoint var1);
}

