/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCom;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPduTypeEnum;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface TDEventIPdu
extends TDEventCom {
    public IPdu getIPdu();

    public void setIPdu(IPdu var1);

    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public TDEventIPduTypeEnum getTdEventType();

    public void setTdEventType(TDEventIPduTypeEnum var1);

    public void unsetTdEventType();

    public boolean isSetTdEventType();
}

