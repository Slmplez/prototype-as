/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;

public interface FlexrayCluster
extends CommunicationCluster {
    public Integer getActionPointOffset();

    public void setActionPointOffset(Integer var1);

    public void unsetActionPointOffset();

    public boolean isSetActionPointOffset();

    public Double getBit();

    public void setBit(Double var1);

    public void unsetBit();

    public boolean isSetBit();

    public Integer getBusGuardianEnablePart();

    public void setBusGuardianEnablePart(Integer var1);

    public void unsetBusGuardianEnablePart();

    public boolean isSetBusGuardianEnablePart();

    public Integer getCasRxLowMax();

    public void setCasRxLowMax(Integer var1);

    public void unsetCasRxLowMax();

    public boolean isSetCasRxLowMax();

    public Integer getCasRxLowMin();

    public void setCasRxLowMin(Integer var1);

    public void unsetCasRxLowMin();

    public boolean isSetCasRxLowMin();

    public Integer getColdStartAttempts();

    public void setColdStartAttempts(Integer var1);

    public void unsetColdStartAttempts();

    public boolean isSetColdStartAttempts();

    public Double getCycle();

    public void setCycle(Double var1);

    public void unsetCycle();

    public boolean isSetCycle();

    public String getCycleCountMax();

    public void setCycleCountMax(String var1);

    public void unsetCycleCountMax();

    public boolean isSetCycleCountMax();

    public Integer getDynamicSlotIdlePhase();

    public void setDynamicSlotIdlePhase(Integer var1);

    public void unsetDynamicSlotIdlePhase();

    public boolean isSetDynamicSlotIdlePhase();

    public Integer getIgnoreAfterTx();

    public void setIgnoreAfterTx(Integer var1);

    public void unsetIgnoreAfterTx();

    public boolean isSetIgnoreAfterTx();

    public Integer getListenNoise();

    public void setListenNoise(Integer var1);

    public void unsetListenNoise();

    public boolean isSetListenNoise();

    public Integer getMacroInitialOffset();

    public void setMacroInitialOffset(Integer var1);

    public void unsetMacroInitialOffset();

    public boolean isSetMacroInitialOffset();

    public Integer getMacroPerCycle();

    public void setMacroPerCycle(Integer var1);

    public void unsetMacroPerCycle();

    public boolean isSetMacroPerCycle();

    public Double getMacrotickDuration();

    public void setMacrotickDuration(Double var1);

    public void unsetMacrotickDuration();

    public boolean isSetMacrotickDuration();

    public Double getMaxInitialisationError();

    public void setMaxInitialisationError(Double var1);

    public void unsetMaxInitialisationError();

    public boolean isSetMaxInitialisationError();

    public Double getMaxPropagationDelay();

    public void setMaxPropagationDelay(Double var1);

    public void unsetMaxPropagationDelay();

    public boolean isSetMaxPropagationDelay();

    public Integer getMaxWithoutClockCorrectionFatal();

    public void setMaxWithoutClockCorrectionFatal(Integer var1);

    public void unsetMaxWithoutClockCorrectionFatal();

    public boolean isSetMaxWithoutClockCorrectionFatal();

    public Integer getMaxWithoutClockCorrectionPassive();

    public void setMaxWithoutClockCorrectionPassive(Integer var1);

    public void unsetMaxWithoutClockCorrectionPassive();

    public boolean isSetMaxWithoutClockCorrectionPassive();

    public Double getMinPropagationDelay();

    public void setMinPropagationDelay(Double var1);

    public void unsetMinPropagationDelay();

    public boolean isSetMinPropagationDelay();

    public Integer getMinislotActionPointOffset();

    public void setMinislotActionPointOffset(Integer var1);

    public void unsetMinislotActionPointOffset();

    public boolean isSetMinislotActionPointOffset();

    public Integer getMinislotDuration();

    public void setMinislotDuration(Integer var1);

    public void unsetMinislotDuration();

    public boolean isSetMinislotDuration();

    public Integer getNetworkIdleTime();

    public void setNetworkIdleTime(Integer var1);

    public void unsetNetworkIdleTime();

    public boolean isSetNetworkIdleTime();

    public Integer getNetworkManagementVectorLength();

    public void setNetworkManagementVectorLength(Integer var1);

    public void unsetNetworkManagementVectorLength();

    public boolean isSetNetworkManagementVectorLength();

    public Integer getNmDataCycle();

    public void setNmDataCycle(Integer var1);

    public void unsetNmDataCycle();

    public boolean isSetNmDataCycle();

    public Integer getNmReadySleepCount();

    public void setNmReadySleepCount(Integer var1);

    public void unsetNmReadySleepCount();

    public boolean isSetNmReadySleepCount();

    public Double getNmRemoteSleepIndicationTime();

    public void setNmRemoteSleepIndicationTime(Double var1);

    public void unsetNmRemoteSleepIndicationTime();

    public boolean isSetNmRemoteSleepIndicationTime();

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

    public Integer getNumberOfCycles();

    public void setNumberOfCycles(Integer var1);

    public void unsetNumberOfCycles();

    public boolean isSetNumberOfCycles();

    public Integer getNumberOfMinislots();

    public void setNumberOfMinislots(Integer var1);

    public void unsetNumberOfMinislots();

    public boolean isSetNumberOfMinislots();

    public Integer getNumberOfStaticSlots();

    public void setNumberOfStaticSlots(Integer var1);

    public void unsetNumberOfStaticSlots();

    public boolean isSetNumberOfStaticSlots();

    public Double getOffsetCorrectionMax();

    public void setOffsetCorrectionMax(Double var1);

    public void unsetOffsetCorrectionMax();

    public boolean isSetOffsetCorrectionMax();

    public Integer getOffsetCorrectionStart();

    public void setOffsetCorrectionStart(Integer var1);

    public void unsetOffsetCorrectionStart();

    public boolean isSetOffsetCorrectionStart();

    public Integer getPayloadLengthStatic();

    public void setPayloadLengthStatic(Integer var1);

    public void unsetPayloadLengthStatic();

    public boolean isSetPayloadLengthStatic();

    public Double getSampleClockPeriod();

    public void setSampleClockPeriod(Double var1);

    public void unsetSampleClockPeriod();

    public boolean isSetSampleClockPeriod();

    public Integer getStaticSlotDuration();

    public void setStaticSlotDuration(Integer var1);

    public void unsetStaticSlotDuration();

    public boolean isSetStaticSlotDuration();

    public Integer getSymbolWindow();

    public void setSymbolWindow(Integer var1);

    public void unsetSymbolWindow();

    public boolean isSetSymbolWindow();

    public Integer getSymbolWindowActionPointOffset();

    public void setSymbolWindowActionPointOffset(Integer var1);

    public void unsetSymbolWindowActionPointOffset();

    public boolean isSetSymbolWindowActionPointOffset();

    public Integer getSyncFrameIDCountMax();

    public void setSyncFrameIDCountMax(Integer var1);

    public void unsetSyncFrameIDCountMax();

    public boolean isSetSyncFrameIDCountMax();

    public Integer getTransmissionStartSequenceDuration();

    public void setTransmissionStartSequenceDuration(Integer var1);

    public void unsetTransmissionStartSequenceDuration();

    public boolean isSetTransmissionStartSequenceDuration();

    public Integer getWakeupRxIdle();

    public void setWakeupRxIdle(Integer var1);

    public void unsetWakeupRxIdle();

    public boolean isSetWakeupRxIdle();

    public Integer getWakeupRxLow();

    public void setWakeupRxLow(Integer var1);

    public void unsetWakeupRxLow();

    public boolean isSetWakeupRxLow();

    public Integer getWakeupRxWindow();

    public void setWakeupRxWindow(Integer var1);

    public void unsetWakeupRxWindow();

    public boolean isSetWakeupRxWindow();

    public Integer getWakeupTxActive();

    public void setWakeupTxActive(Integer var1);

    public void unsetWakeupTxActive();

    public boolean isSetWakeupTxActive();

    public Integer getWakeupTxIdle();

    public void setWakeupTxIdle(Integer var1);

    public void unsetWakeupTxIdle();

    public boolean isSetWakeupTxIdle();
}

