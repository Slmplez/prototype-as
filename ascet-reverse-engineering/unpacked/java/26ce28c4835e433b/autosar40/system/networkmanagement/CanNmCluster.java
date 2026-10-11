/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.NmCluster;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface CanNmCluster
extends NmCluster {
    public Boolean getNmBusloadReductionActive();

    public void setNmBusloadReductionActive(Boolean var1);

    public void unsetNmBusloadReductionActive();

    public boolean isSetNmBusloadReductionActive();

    public Long getNmCarWakeUpBitPosition();

    public void setNmCarWakeUpBitPosition(Long var1);

    public void unsetNmCarWakeUpBitPosition();

    public boolean isSetNmCarWakeUpBitPosition();

    public Boolean getNmCarWakeUpFilterEnabled();

    public void setNmCarWakeUpFilterEnabled(Boolean var1);

    public void unsetNmCarWakeUpFilterEnabled();

    public boolean isSetNmCarWakeUpFilterEnabled();

    public Long getNmCarWakeUpFilterNodeId();

    public void setNmCarWakeUpFilterNodeId(Long var1);

    public void unsetNmCarWakeUpFilterNodeId();

    public boolean isSetNmCarWakeUpFilterNodeId();

    public Boolean getNmCarWakeUpRxEnabled();

    public void setNmCarWakeUpRxEnabled(Boolean var1);

    public void unsetNmCarWakeUpRxEnabled();

    public boolean isSetNmCarWakeUpRxEnabled();

    public Integer getNmCbvPosition();

    public void setNmCbvPosition(Integer var1);

    public void unsetNmCbvPosition();

    public boolean isSetNmCbvPosition();

    public Boolean getNmChannelActive();

    public void setNmChannelActive(Boolean var1);

    public void unsetNmChannelActive();

    public boolean isSetNmChannelActive();

    public Double getNmImmediateNmCycleTime();

    public void setNmImmediateNmCycleTime(Double var1);

    public void unsetNmImmediateNmCycleTime();

    public boolean isSetNmImmediateNmCycleTime();

    public Long getNmImmediateNmTransmissions();

    public void setNmImmediateNmTransmissions(Long var1);

    public void unsetNmImmediateNmTransmissions();

    public boolean isSetNmImmediateNmTransmissions();

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

    public PositiveIntegerDatatype getNmCarWakeUpBitPositionData();

    public void setNmCarWakeUpBitPositionData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getNmCarWakeUpFilterNodeIdData();

    public void setNmCarWakeUpFilterNodeIdData(PositiveIntegerDatatype var1);

    public IntegerDatatype getNmCbvPositionData();

    public void setNmCbvPositionData(IntegerDatatype var1);

    public PositiveIntegerDatatype getNmImmediateNmTransmissionsData();

    public void setNmImmediateNmTransmissionsData(PositiveIntegerDatatype var1);

    public IntegerDatatype getNmNidPositionData();

    public void setNmNidPositionData(IntegerDatatype var1);

    public IntegerDatatype getNmUserDataLengthData();

    public void setNmUserDataLengthData(IntegerDatatype var1);
}

