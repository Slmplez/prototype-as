/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;

public interface TimeRangeType
extends ARObject {
    public TimeRangeTypeTolerance getTolerance();

    public void setTolerance(TimeRangeTypeTolerance var1);

    public Double getValue();

    public void setValue(Double var1);

    public void unsetValue();

    public boolean isSetValue();
}

