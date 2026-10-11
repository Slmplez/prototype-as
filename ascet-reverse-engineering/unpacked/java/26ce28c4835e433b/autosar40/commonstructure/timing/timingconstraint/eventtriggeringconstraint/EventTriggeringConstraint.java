/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;

public interface EventTriggeringConstraint
extends TimingConstraint {
    public TimingDescriptionEvent getEvent();

    public void setEvent(TimingDescriptionEvent var1);
}

