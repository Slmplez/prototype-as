/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent;

public interface TimingEvent
extends RTEEvent,
GTimingEvent {
    public Double getPeriod();

    public void setPeriod(Double var1);

    public void unsetPeriod();

    public boolean isSetPeriod();
}

