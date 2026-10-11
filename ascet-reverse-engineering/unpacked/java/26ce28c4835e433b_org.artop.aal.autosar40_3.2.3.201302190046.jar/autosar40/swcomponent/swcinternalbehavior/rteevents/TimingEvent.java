/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent;

public interface TimingEvent
extends RTEEvent,
GTimingEvent {
    public Double getPeriod();

    public void setPeriod(Double var1);

    public void unsetPeriod();

    public boolean isSetPeriod();
}

