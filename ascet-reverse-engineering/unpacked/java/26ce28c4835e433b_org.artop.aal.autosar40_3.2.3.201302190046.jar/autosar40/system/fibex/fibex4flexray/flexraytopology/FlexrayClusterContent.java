/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface FlexrayClusterContent
extends CommunicationClusterContent {
    public Integer getActionPointOffset();

    public void setActionPointOffset(Integer var1);

    public void unsetActionPointOffset();

    public boolean isSetActionPointOffset();

    public Double getBit();

    public void setBit(Double var1);

    public void unsetBit();

    public boolean isSetBit();

    public Integer getCasRxLowMax();

    public void setCasRxLowMax(Integer var1);

    public void unsetCasRxLowMax();

    public boolean isSetCasRxLowMax();

    public Integer getColdStartAttempts();

    public void setColdStartAttempts(Integer var1);

    public void unsetColdStartAttempts();

    public boolean isSetColdStartAttempts();

    public Double getCycle();

    public void setCycle(Double var1);

    public void unsetCycle();

    public boolean isSetCycle();

    public Integer getCycleCountMax();

    public void setCycleCountMax(Integer var1);

    public void unsetCycleCountMax();

    public boolean isSetCycleCountMax();

    public Boolean getDetectNitError();

    public void setDetectNitError(Boolean var1);

    public void unsetDetectNitError();

    public boolean isSetDetectNitError();

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

    public Integer getMacroPerCycle();

    public void setMacroPerCycle(Integer var1);

    public void unsetMacroPerCycle();

    public boolean isSetMacroPerCycle();

    public Double getMacrotickDuration();

    public void setMacrotickDuration(Double var1);

    public void unsetMacrotickDuration();

    public boolean isSetMacrotickDuration();

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

    public Integer getSafetyMargin();

    public void setSafetyMargin(Integer var1);

    public void unsetSafetyMargin();

    public boolean isSetSafetyMargin();

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

    public Integer getSyncFrameIdCountMax();

    public void setSyncFrameIdCountMax(Integer var1);

    public void unsetSyncFrameIdCountMax();

    public boolean isSetSyncFrameIdCountMax();

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

    public IntegerDatatype getActionPointOffsetData();

    public void setActionPointOffsetData(IntegerDatatype var1);

    public IntegerDatatype getCasRxLowMaxData();

    public void setCasRxLowMaxData(IntegerDatatype var1);

    public IntegerDatatype getColdStartAttemptsData();

    public void setColdStartAttemptsData(IntegerDatatype var1);

    public IntegerDatatype getCycleCountMaxData();

    public void setCycleCountMaxData(IntegerDatatype var1);

    public IntegerDatatype getDynamicSlotIdlePhaseData();

    public void setDynamicSlotIdlePhaseData(IntegerDatatype var1);

    public IntegerDatatype getIgnoreAfterTxData();

    public void setIgnoreAfterTxData(IntegerDatatype var1);

    public IntegerDatatype getListenNoiseData();

    public void setListenNoiseData(IntegerDatatype var1);

    public IntegerDatatype getMacroPerCycleData();

    public void setMacroPerCycleData(IntegerDatatype var1);

    public IntegerDatatype getMaxWithoutClockCorrectionFatalData();

    public void setMaxWithoutClockCorrectionFatalData(IntegerDatatype var1);

    public IntegerDatatype getMaxWithoutClockCorrectionPassiveData();

    public void setMaxWithoutClockCorrectionPassiveData(IntegerDatatype var1);

    public IntegerDatatype getMinislotActionPointOffsetData();

    public void setMinislotActionPointOffsetData(IntegerDatatype var1);

    public IntegerDatatype getMinislotDurationData();

    public void setMinislotDurationData(IntegerDatatype var1);

    public IntegerDatatype getNetworkIdleTimeData();

    public void setNetworkIdleTimeData(IntegerDatatype var1);

    public IntegerDatatype getNetworkManagementVectorLengthData();

    public void setNetworkManagementVectorLengthData(IntegerDatatype var1);

    public IntegerDatatype getNumberOfMinislotsData();

    public void setNumberOfMinislotsData(IntegerDatatype var1);

    public IntegerDatatype getNumberOfStaticSlotsData();

    public void setNumberOfStaticSlotsData(IntegerDatatype var1);

    public IntegerDatatype getOffsetCorrectionStartData();

    public void setOffsetCorrectionStartData(IntegerDatatype var1);

    public IntegerDatatype getPayloadLengthStaticData();

    public void setPayloadLengthStaticData(IntegerDatatype var1);

    public IntegerDatatype getSafetyMarginData();

    public void setSafetyMarginData(IntegerDatatype var1);

    public IntegerDatatype getStaticSlotDurationData();

    public void setStaticSlotDurationData(IntegerDatatype var1);

    public IntegerDatatype getSymbolWindowData();

    public void setSymbolWindowData(IntegerDatatype var1);

    public IntegerDatatype getSymbolWindowActionPointOffsetData();

    public void setSymbolWindowActionPointOffsetData(IntegerDatatype var1);

    public IntegerDatatype getSyncFrameIdCountMaxData();

    public void setSyncFrameIdCountMaxData(IntegerDatatype var1);

    public IntegerDatatype getTransmissionStartSequenceDurationData();

    public void setTransmissionStartSequenceDurationData(IntegerDatatype var1);

    public IntegerDatatype getWakeupRxIdleData();

    public void setWakeupRxIdleData(IntegerDatatype var1);

    public IntegerDatatype getWakeupRxLowData();

    public void setWakeupRxLowData(IntegerDatatype var1);

    public IntegerDatatype getWakeupRxWindowData();

    public void setWakeupRxWindowData(IntegerDatatype var1);

    public IntegerDatatype getWakeupTxActiveData();

    public void setWakeupTxActiveData(IntegerDatatype var1);

    public IntegerDatatype getWakeupTxIdleData();

    public void setWakeupTxIdleData(IntegerDatatype var1);
}

