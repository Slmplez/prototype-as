/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.system.topology.ECUCommunicationPortInstance;

public interface FlexrayCommunicationPortInstance
extends ECUCommunicationPortInstance {
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

    public Integer getDelayCompensationA();

    public void setDelayCompensationA(Integer var1);

    public void unsetDelayCompensationA();

    public boolean isSetDelayCompensationA();

    public Integer getDelayCompensationB();

    public void setDelayCompensationB(Integer var1);

    public void unsetDelayCompensationB();

    public boolean isSetDelayCompensationB();

    public Boolean getDynamicSegmentEnable();

    public void setDynamicSegmentEnable(Boolean var1);

    public void unsetDynamicSegmentEnable();

    public boolean isSetDynamicSegmentEnable();

    public Integer getExternOffsetCorrection();

    public void setExternOffsetCorrection(Integer var1);

    public void unsetExternOffsetCorrection();

    public boolean isSetExternOffsetCorrection();

    public Integer getExternRateCorrection();

    public void setExternRateCorrection(Integer var1);

    public void unsetExternRateCorrection();

    public boolean isSetExternRateCorrection();

    public Integer getKeySlotID();

    public void setKeySlotID(Integer var1);

    public void unsetKeySlotID();

    public boolean isSetKeySlotID();

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

    public Integer getMaxDrift();

    public void setMaxDrift(Integer var1);

    public void unsetMaxDrift();

    public boolean isSetMaxDrift();

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

    public Double getMicroPerMacroNom();

    public void setMicroPerMacroNom(Double var1);

    public void unsetMicroPerMacroNom();

    public boolean isSetMicroPerMacroNom();

    public Double getMicrotickDuration();

    public void setMicrotickDuration(Double var1);

    public void unsetMicrotickDuration();

    public boolean isSetMicrotickDuration();

    public Integer getSamplesPerMicrotick();

    public void setSamplesPerMicrotick(Integer var1);

    public void unsetSamplesPerMicrotick();

    public boolean isSetSamplesPerMicrotick();

    public Boolean getSingleSlotEnabled();

    public void setSingleSlotEnabled(Boolean var1);

    public void unsetSingleSlotEnabled();

    public boolean isSetSingleSlotEnabled();

    public Boolean getStartUpNode();

    public void setStartUpNode(Boolean var1);

    public void unsetStartUpNode();

    public boolean isSetStartUpNode();

    public Integer getSyncSlot();

    public void setSyncSlot(Integer var1);

    public void unsetSyncSlot();

    public boolean isSetSyncSlot();

    public Integer getWakeUpPattern();

    public void setWakeUpPattern(Integer var1);

    public void unsetWakeUpPattern();

    public boolean isSetWakeUpPattern();
}

