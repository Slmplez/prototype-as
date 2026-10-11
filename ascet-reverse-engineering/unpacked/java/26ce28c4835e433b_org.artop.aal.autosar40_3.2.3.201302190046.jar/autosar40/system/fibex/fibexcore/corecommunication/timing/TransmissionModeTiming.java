/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;

public interface TransmissionModeTiming
extends ARObject {
    public CyclicTiming getCyclicTiming();

    public void setCyclicTiming(CyclicTiming var1);

    public EventControlledTiming getEventControlledTiming();

    public void setEventControlledTiming(EventControlledTiming var1);
}

