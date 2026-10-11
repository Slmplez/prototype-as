/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;

public interface AbsoluteTolerance
extends TimeRangeTypeTolerance {
    public Double getAbsolute();

    public void setAbsolute(Double var1);

    public void unsetAbsolute();

    public boolean isSetAbsolute();
}

