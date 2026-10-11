/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.commonstructure.triggerdeclaration.Trigger;

public interface BswExternalTriggerOccurredEvent
extends BswEvent {
    public Trigger getTrigger();

    public void setTrigger(Trigger var1);
}

