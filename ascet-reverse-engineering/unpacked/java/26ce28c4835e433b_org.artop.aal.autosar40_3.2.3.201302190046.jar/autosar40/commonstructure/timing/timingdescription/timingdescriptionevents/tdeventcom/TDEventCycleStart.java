/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCom;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface TDEventCycleStart
extends TDEventCom {
    public Integer getCycleRepetition();

    public void setCycleRepetition(Integer var1);

    public void unsetCycleRepetition();

    public boolean isSetCycleRepetition();

    public IntegerDatatype getCycleRepetitionData();

    public void setCycleRepetitionData(IntegerDatatype var1);
}

