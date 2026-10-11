/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface EventControlledTiming
extends ARObject {
    public TransmissionModeTiming getTransmissionModeTiming();

    public void setTransmissionModeTiming(TransmissionModeTiming var1);

    public Integer getNumberOfRepetitions();

    public void setNumberOfRepetitions(Integer var1);

    public void unsetNumberOfRepetitions();

    public boolean isSetNumberOfRepetitions();

    public TimeRangeType getRepetitionPeriod();

    public void setRepetitionPeriod(TimeRangeType var1);

    public IntegerDatatype getNumberOfRepetitionsData();

    public void setNumberOfRepetitionsData(IntegerDatatype var1);
}

