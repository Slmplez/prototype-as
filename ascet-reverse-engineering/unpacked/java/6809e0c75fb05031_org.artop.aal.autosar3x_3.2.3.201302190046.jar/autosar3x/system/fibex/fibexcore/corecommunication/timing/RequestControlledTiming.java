/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;

public interface RequestControlledTiming
extends ARObject {
    public IPduTiming getIPduTiming();

    public void setIPduTiming(IPduTiming var1);

    public Integer getFinalRepetitions();

    public void setFinalRepetitions(Integer var1);

    public void unsetFinalRepetitions();

    public boolean isSetFinalRepetitions();

    public TimeRangeType getResponseTime();

    public void setResponseTime(TimeRangeType var1);
}

