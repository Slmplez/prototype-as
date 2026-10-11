/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;

public interface EventControlledTiming
extends ARObject {
    public Integer getNumberOfRepeats();

    public void setNumberOfRepeats(Integer var1);

    public void unsetNumberOfRepeats();

    public boolean isSetNumberOfRepeats();

    public TimeRangeType getRepetitionPeriod();

    public void setRepetitionPeriod(TimeRangeType var1);
}

