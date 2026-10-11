/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayCommunicationControllerContent
extends CommunicationControllerContent {
    public Integer getAcceptedStartupRange();

    public void setAcceptedStartupRange(Integer var1);

    public void unsetAcceptedStartupRange();

    public boolean isSetAcceptedStartupRange();

    public Boolean getAllowHaltDueToClock();

    public void setAllowHaltDueToClock(Boolean var1);

    public void unsetAllowHaltDueToClock();

    public boolean isSetAllowHaltDueToClock();

    public Integer getAllowPassiveToActive();

    public void setAllowPassiveToActive(Integer var1);

    public void unsetAllowPassiveToActive();

    public boolean isSetAllowPassiveToActive();

    public Integer getClusterDriftDamping();

    public void setClusterDriftDamping(Integer var1);

    public void unsetClusterDriftDamping();

    public boolean isSetClusterDriftDamping();

    public Integer getDecodingCorrection();

    public void setDecodingCorrection(Integer var1);

    public void unsetDecodingCorrection();

    public boolean isSetDecodingCorrection();

    public Integer getDelayCompensationA();

    public void setDelayCompensationA(Integer var1);

    public void unsetDelayCompensationA();

    public boolean isSetDelayCompensationA();

    public Integer getDelayCompensationB();

    public void setDelayCompensationB(Integer var1);

    public void unsetDelayCompensationB();

    public boolean isSetDelayCompensationB();

    public Integer getExternOffsetCorrection();

    public void setExternOffsetCorrection(Integer var1);

    public void unsetExternOffsetCorrection();

    public boolean isSetExternOffsetCorrection();

    public Integer getExternRateCorrection();

    public void setExternRateCorrection(Integer var1);

    public void unsetExternRateCorrection();

    public boolean isSetExternRateCorrection();

    public Boolean getExternalSync();

    public void setExternalSync(Boolean var1);

    public void unsetExternalSync();

    public boolean isSetExternalSync();

    public Boolean getFallBackInternal();

    public void setFallBackInternal(Boolean var1);

    public void unsetFallBackInternal();

    public boolean isSetFallBackInternal();

    public EList<FlexrayFifoConfiguration> getFlexrayFifos();

    public Long getKeySlotID();

    public void setKeySlotID(Long var1);

    public void unsetKeySlotID();

    public boolean isSetKeySlotID();

    public Boolean getKeySlotOnlyEnabled();

    public void setKeySlotOnlyEnabled(Boolean var1);

    public void unsetKeySlotOnlyEnabled();

    public boolean isSetKeySlotOnlyEnabled();

    public Boolean getKeySlotUsedForStartUp();

    public void setKeySlotUsedForStartUp(Boolean var1);

    public void unsetKeySlotUsedForStartUp();

    public boolean isSetKeySlotUsedForStartUp();

    public Boolean getKeySlotUsedForSync();

    public void setKeySlotUsedForSync(Boolean var1);

    public void unsetKeySlotUsedForSync();

    public boolean isSetKeySlotUsedForSync();

    public Integer getLatestTX();

    public void setLatestTX(Integer var1);

    public void unsetLatestTX();

    public boolean isSetLatestTX();

    public Integer getListenTimeout();

    public void setListenTimeout(Integer var1);

    public void unsetListenTimeout();

    public boolean isSetListenTimeout();

    public Integer getMacroInitialOffsetA();

    public void setMacroInitialOffsetA(Integer var1);

    public void unsetMacroInitialOffsetA();

    public boolean isSetMacroInitialOffsetA();

    public Integer getMacroInitialOffsetB();

    public void setMacroInitialOffsetB(Integer var1);

    public void unsetMacroInitialOffsetB();

    public boolean isSetMacroInitialOffsetB();

    public Integer getMaximumDynamicPayloadLength();

    public void setMaximumDynamicPayloadLength(Integer var1);

    public void unsetMaximumDynamicPayloadLength();

    public boolean isSetMaximumDynamicPayloadLength();

    public Integer getMicroInitialOffsetA();

    public void setMicroInitialOffsetA(Integer var1);

    public void unsetMicroInitialOffsetA();

    public boolean isSetMicroInitialOffsetA();

    public Integer getMicroInitialOffsetB();

    public void setMicroInitialOffsetB(Integer var1);

    public void unsetMicroInitialOffsetB();

    public boolean isSetMicroInitialOffsetB();

    public Integer getMicroPerCycle();

    public void setMicroPerCycle(Integer var1);

    public void unsetMicroPerCycle();

    public boolean isSetMicroPerCycle();

    public Double getMicrotickDuration();

    public void setMicrotickDuration(Double var1);

    public void unsetMicrotickDuration();

    public boolean isSetMicrotickDuration();

    public Boolean getNmVectorEarlyUpdate();

    public void setNmVectorEarlyUpdate(Boolean var1);

    public void unsetNmVectorEarlyUpdate();

    public boolean isSetNmVectorEarlyUpdate();

    public Integer getOffsetCorrectionOut();

    public void setOffsetCorrectionOut(Integer var1);

    public void unsetOffsetCorrectionOut();

    public boolean isSetOffsetCorrectionOut();

    public Integer getRateCorrectionOut();

    public void setRateCorrectionOut(Integer var1);

    public void unsetRateCorrectionOut();

    public boolean isSetRateCorrectionOut();

    public Integer getSamplesPerMicrotick();

    public void setSamplesPerMicrotick(Integer var1);

    public void unsetSamplesPerMicrotick();

    public boolean isSetSamplesPerMicrotick();

    public Long getSecondKeySlotId();

    public void setSecondKeySlotId(Long var1);

    public void unsetSecondKeySlotId();

    public boolean isSetSecondKeySlotId();

    public Boolean getTwoKeySlotMode();

    public void setTwoKeySlotMode(Boolean var1);

    public void unsetTwoKeySlotMode();

    public boolean isSetTwoKeySlotMode();

    public Integer getWakeUpPattern();

    public void setWakeUpPattern(Integer var1);

    public void unsetWakeUpPattern();

    public boolean isSetWakeUpPattern();

    public IntegerDatatype getAcceptedStartupRangeData();

    public void setAcceptedStartupRangeData(IntegerDatatype var1);

    public IntegerDatatype getAllowPassiveToActiveData();

    public void setAllowPassiveToActiveData(IntegerDatatype var1);

    public IntegerDatatype getClusterDriftDampingData();

    public void setClusterDriftDampingData(IntegerDatatype var1);

    public IntegerDatatype getDecodingCorrectionData();

    public void setDecodingCorrectionData(IntegerDatatype var1);

    public IntegerDatatype getDelayCompensationAData();

    public void setDelayCompensationAData(IntegerDatatype var1);

    public IntegerDatatype getDelayCompensationBData();

    public void setDelayCompensationBData(IntegerDatatype var1);

    public IntegerDatatype getExternOffsetCorrectionData();

    public void setExternOffsetCorrectionData(IntegerDatatype var1);

    public IntegerDatatype getExternRateCorrectionData();

    public void setExternRateCorrectionData(IntegerDatatype var1);

    public PositiveIntegerDatatype getKeySlotIDData();

    public void setKeySlotIDData(PositiveIntegerDatatype var1);

    public IntegerDatatype getLatestTXData();

    public void setLatestTXData(IntegerDatatype var1);

    public IntegerDatatype getListenTimeoutData();

    public void setListenTimeoutData(IntegerDatatype var1);

    public IntegerDatatype getMacroInitialOffsetAData();

    public void setMacroInitialOffsetAData(IntegerDatatype var1);

    public IntegerDatatype getMacroInitialOffsetBData();

    public void setMacroInitialOffsetBData(IntegerDatatype var1);

    public IntegerDatatype getMaximumDynamicPayloadLengthData();

    public void setMaximumDynamicPayloadLengthData(IntegerDatatype var1);

    public IntegerDatatype getMicroInitialOffsetAData();

    public void setMicroInitialOffsetAData(IntegerDatatype var1);

    public IntegerDatatype getMicroInitialOffsetBData();

    public void setMicroInitialOffsetBData(IntegerDatatype var1);

    public IntegerDatatype getMicroPerCycleData();

    public void setMicroPerCycleData(IntegerDatatype var1);

    public IntegerDatatype getOffsetCorrectionOutData();

    public void setOffsetCorrectionOutData(IntegerDatatype var1);

    public IntegerDatatype getRateCorrectionOutData();

    public void setRateCorrectionOutData(IntegerDatatype var1);

    public IntegerDatatype getSamplesPerMicrotickData();

    public void setSamplesPerMicrotickData(IntegerDatatype var1);

    public PositiveIntegerDatatype getSecondKeySlotIdData();

    public void setSecondKeySlotIdData(PositiveIntegerDatatype var1);

    public IntegerDatatype getWakeUpPatternData();

    public void setWakeUpPatternData(IntegerDatatype var1);
}

