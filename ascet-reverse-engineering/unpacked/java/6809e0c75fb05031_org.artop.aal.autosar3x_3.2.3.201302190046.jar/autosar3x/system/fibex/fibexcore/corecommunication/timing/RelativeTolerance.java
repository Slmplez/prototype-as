/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;

public interface RelativeTolerance
extends TimeRangeTypeTolerance {
    public Integer getRelative();

    public void setRelative(Integer var1);

    public void unsetRelative();

    public boolean isSetRelative();
}

