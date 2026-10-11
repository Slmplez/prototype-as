/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCom;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrameTypeEnum;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface TDEventFrame
extends TDEventCom {
    public Frame getFrame();

    public void setFrame(Frame var1);

    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public TDEventFrameTypeEnum getTdEventType();

    public void setTdEventType(TDEventFrameTypeEnum var1);

    public void unsetTdEventType();

    public boolean isSetTdEventType();
}

