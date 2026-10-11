/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.NmCluster;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface UdpNmCluster
extends NmCluster {
    public Integer getNmCbvPosition();

    public void setNmCbvPosition(Integer var1);

    public void unsetNmCbvPosition();

    public boolean isSetNmCbvPosition();

    public Boolean getNmChannelActive();

    public void setNmChannelActive(Boolean var1);

    public void unsetNmChannelActive();

    public boolean isSetNmChannelActive();

    public Double getNmMessageTimeoutTime();

    public void setNmMessageTimeoutTime(Double var1);

    public void unsetNmMessageTimeoutTime();

    public boolean isSetNmMessageTimeoutTime();

    public Double getNmMsgCycleTime();

    public void setNmMsgCycleTime(Double var1);

    public void unsetNmMsgCycleTime();

    public boolean isSetNmMsgCycleTime();

    public Double getNmNetworkTimeout();

    public void setNmNetworkTimeout(Double var1);

    public void unsetNmNetworkTimeout();

    public boolean isSetNmNetworkTimeout();

    public Integer getNmNidPosition();

    public void setNmNidPosition(Integer var1);

    public void unsetNmNidPosition();

    public boolean isSetNmNidPosition();

    public Double getNmRemoteSleepIndicationTime();

    public void setNmRemoteSleepIndicationTime(Double var1);

    public void unsetNmRemoteSleepIndicationTime();

    public boolean isSetNmRemoteSleepIndicationTime();

    public Double getNmRepeatMessageTime();

    public void setNmRepeatMessageTime(Double var1);

    public void unsetNmRepeatMessageTime();

    public boolean isSetNmRepeatMessageTime();

    public Integer getNmUserDataLength();

    public void setNmUserDataLength(Integer var1);

    public void unsetNmUserDataLength();

    public boolean isSetNmUserDataLength();

    public Double getNmWaitBusSleepTime();

    public void setNmWaitBusSleepTime(Double var1);

    public void unsetNmWaitBusSleepTime();

    public boolean isSetNmWaitBusSleepTime();

    public IntegerDatatype getNmCbvPositionData();

    public void setNmCbvPositionData(IntegerDatatype var1);

    public IntegerDatatype getNmNidPositionData();

    public void setNmNidPositionData(IntegerDatatype var1);

    public IntegerDatatype getNmUserDataLengthData();

    public void setNmUserDataLengthData(IntegerDatatype var1);
}

