/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface RelativeTolerance
extends TimeRangeTypeTolerance {
    public Integer getRelative();

    public void setRelative(Integer var1);

    public void unsetRelative();

    public boolean isSetRelative();

    public IntegerDatatype getRelativeData();

    public void setRelativeData(IntegerDatatype var1);
}

