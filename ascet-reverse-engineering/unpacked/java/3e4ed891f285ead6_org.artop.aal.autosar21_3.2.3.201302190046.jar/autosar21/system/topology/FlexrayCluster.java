/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.system.topology.CommunicationCluster;

public interface FlexrayCluster
extends CommunicationCluster {
    public Integer getActionPointOffset();

    public void setActionPointOffset(Integer var1);

    public void unsetActionPointOffset();

    public boolean isSetActionPointOffset();

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

    public Integer getDynamicSlotIdlePhase();

    public void setDynamicSlotIdlePhase(Integer var1);

    public void unsetDynamicSlotIdlePhase();

    public boolean isSetDynamicSlotIdlePhase();

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

    public Integer getMaxWithoutClockCorrectionFatal();

    public void setMaxWithoutClockCorrectionFatal(Integer var1);

    public void unsetMaxWithoutClockCorrectionFatal();

    public boolean isSetMaxWithoutClockCorrectionFatal();

    public Integer getMaxWithoutClockCorrectionPassive();

    public void setMaxWithoutClockCorrectionPassive(Integer var1);

    public void unsetMaxWithoutClockCorrectionPassive();

    public boolean isSetMaxWithoutClockCorrectionPassive();

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

    public Integer getNumberOfMinislots();

    public void setNumberOfMinislots(Integer var1);

    public void unsetNumberOfMinislots();

    public boolean isSetNumberOfMinislots();

    public Integer getNumberOfStaticSlots();

    public void setNumberOfStaticSlots(Integer var1);

    public void unsetNumberOfStaticSlots();

    public boolean isSetNumberOfStaticSlots();

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

    public Integer getSyncNodeMax();

    public void setSyncNodeMax(Integer var1);

    public void unsetSyncNodeMax();

    public boolean isSetSyncNodeMax();

    public Integer getTransmissionStartSequenceDuration();

    public void setTransmissionStartSequenceDuration(Integer var1);

    public void unsetTransmissionStartSequenceDuration();

    public boolean isSetTransmissionStartSequenceDuration();

    public Integer getWakeUpSymbolRxIdle();

    public void setWakeUpSymbolRxIdle(Integer var1);

    public void unsetWakeUpSymbolRxIdle();

    public boolean isSetWakeUpSymbolRxIdle();

    public Integer getWakeUpSymbolRxLow();

    public void setWakeUpSymbolRxLow(Integer var1);

    public void unsetWakeUpSymbolRxLow();

    public boolean isSetWakeUpSymbolRxLow();

    public Integer getWakeUpSymbolRxWindow();

    public void setWakeUpSymbolRxWindow(Integer var1);

    public void unsetWakeUpSymbolRxWindow();

    public boolean isSetWakeUpSymbolRxWindow();

    public Integer getWakeUpSymbolTxIdle();

    public void setWakeUpSymbolTxIdle(Integer var1);

    public void unsetWakeUpSymbolTxIdle();

    public boolean isSetWakeUpSymbolTxIdle();

    public Integer getWakeUpSymbolTxLow();

    public void setWakeUpSymbolTxLow(Integer var1);

    public void unsetWakeUpSymbolTxLow();

    public boolean isSetWakeUpSymbolTxLow();
}

