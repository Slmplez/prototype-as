/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;

public interface CyclicTiming
extends ARObject {
    public Integer getFinalRepetitions();

    public void setFinalRepetitions(Integer var1);

    public void unsetFinalRepetitions();

    public boolean isSetFinalRepetitions();

    public TimeRangeType getRepeatingTime();

    public void setRepeatingTime(TimeRangeType var1);

    public TimeRangeType getStartingTime();

    public void setStartingTime(TimeRangeType var1);
}

