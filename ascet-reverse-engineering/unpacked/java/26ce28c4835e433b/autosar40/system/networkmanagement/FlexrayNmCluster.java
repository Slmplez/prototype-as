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

public interface FlexrayNmCluster
extends NmCluster {
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

    public Boolean getNmControlBitVectorActive();

    public void setNmControlBitVectorActive(Boolean var1);

    public void unsetNmControlBitVectorActive();

    public boolean isSetNmControlBitVectorActive();

    public Integer getNmDataCycle();

    public void setNmDataCycle(Integer var1);

    public void unsetNmDataCycle();

    public boolean isSetNmDataCycle();

    public Boolean getNmDataEnabled();

    public void setNmDataEnabled(Boolean var1);

    public void unsetNmDataEnabled();

    public boolean isSetNmDataEnabled();

    public Double getNmDetectionLock();

    public void setNmDetectionLock(Double var1);

    public void unsetNmDetectionLock();

    public boolean isSetNmDetectionLock();

    public Double getNmMainFunctionPeriod();

    public void setNmMainFunctionPeriod(Double var1);

    public void unsetNmMainFunctionPeriod();

    public boolean isSetNmMainFunctionPeriod();

    public Double getNmMessageTimeoutTime();

    public void setNmMessageTimeoutTime(Double var1);

    public void unsetNmMessageTimeoutTime();

    public boolean isSetNmMessageTimeoutTime();

    public Integer getNmReadySleepCount();

    public void setNmReadySleepCount(Integer var1);

    public void unsetNmReadySleepCount();

    public boolean isSetNmReadySleepCount();

    public Double getNmRemoteSleepIndicationTime();

    public void setNmRemoteSleepIndicationTime(Double var1);

    public void unsetNmRemoteSleepIndicationTime();

    public boolean isSetNmRemoteSleepIndicationTime();

    public Boolean getNmRepeatMessageBitActive();

    public void setNmRepeatMessageBitActive(Boolean var1);

    public void unsetNmRepeatMessageBitActive();

    public boolean isSetNmRepeatMessageBitActive();

    public Double getNmRepeatMessageTime();

    public void setNmRepeatMessageTime(Double var1);

    public void unsetNmRepeatMessageTime();

    public boolean isSetNmRepeatMessageTime();

    public Integer getNmRepetitionCycle();

    public void setNmRepetitionCycle(Integer var1);

    public void unsetNmRepetitionCycle();

    public boolean isSetNmRepetitionCycle();

    public Integer getNmVotingCycle();

    public void setNmVotingCycle(Integer var1);

    public void unsetNmVotingCycle();

    public boolean isSetNmVotingCycle();

    public PositiveIntegerDatatype getNmCarWakeUpBitPositionData();

    public void setNmCarWakeUpBitPositionData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getNmCarWakeUpFilterNodeIdData();

    public void setNmCarWakeUpFilterNodeIdData(PositiveIntegerDatatype var1);

    public IntegerDatatype getNmDataCycleData();

    public void setNmDataCycleData(IntegerDatatype var1);

    public IntegerDatatype getNmReadySleepCountData();

    public void setNmReadySleepCountData(IntegerDatatype var1);

    public IntegerDatatype getNmRepetitionCycleData();

    public void setNmRepetitionCycleData(IntegerDatatype var1);

    public IntegerDatatype getNmVotingCycleData();

    public void setNmVotingCycleData(IntegerDatatype var1);
}

