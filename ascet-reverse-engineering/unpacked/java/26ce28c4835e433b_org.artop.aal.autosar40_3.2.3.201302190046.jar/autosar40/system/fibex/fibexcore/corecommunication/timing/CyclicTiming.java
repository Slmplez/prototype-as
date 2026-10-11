/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;

public interface CyclicTiming
extends ARObject {
    public TransmissionModeTiming getTransmissionModeTiming();

    public void setTransmissionModeTiming(TransmissionModeTiming var1);

    public TimeRangeType getTimeOffset();

    public void setTimeOffset(TimeRangeType var1);

    public TimeRangeType getTimePeriod();

    public void setTimePeriod(TimeRangeType var1);
}

