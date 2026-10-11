/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCom;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventISignalTypeEnum;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface TDEventISignal
extends TDEventCom {
    public ISignal getISignal();

    public void setISignal(ISignal var1);

    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public TDEventISignalTypeEnum getTdEventType();

    public void setTdEventType(TDEventISignalTypeEnum var1);

    public void unsetTdEventType();

    public boolean isSetTdEventType();
}

