/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;

public interface TimeRangeType
extends ARObject {
    public TimeRangeTypeTolerance getTolerance();

    public void setTolerance(TimeRangeTypeTolerance var1);

    public Double getValue();

    public void setValue(Double var1);

    public void unsetValue();

    public boolean isSetValue();
}

