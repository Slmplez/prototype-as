/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;

public interface TimeRangeTypeTolerance
extends ARObject {
    public TimeRangeType getTimeRangeType();

    public void setTimeRangeType(TimeRangeType var1);
}

