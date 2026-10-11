/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface TtcanCommunicationControllerContent
extends AbstractCanCommunicationControllerContent {
    public Integer getApplWatchdogLimit();

    public void setApplWatchdogLimit(Integer var1);

    public void unsetApplWatchdogLimit();

    public boolean isSetApplWatchdogLimit();

    public Integer getExpectedTxTrigger();

    public void setExpectedTxTrigger(Integer var1);

    public void unsetExpectedTxTrigger();

    public boolean isSetExpectedTxTrigger();

    public Boolean getExternalClockSynchronisation();

    public void setExternalClockSynchronisation(Boolean var1);

    public void unsetExternalClockSynchronisation();

    public boolean isSetExternalClockSynchronisation();

    public Integer getInitialRefOffset();

    public void setInitialRefOffset(Integer var1);

    public void unsetInitialRefOffset();

    public boolean isSetInitialRefOffset();

    public Boolean getMaster();

    public void setMaster(Boolean var1);

    public void unsetMaster();

    public boolean isSetMaster();

    public Integer getTimeMasterPriority();

    public void setTimeMasterPriority(Integer var1);

    public void unsetTimeMasterPriority();

    public boolean isSetTimeMasterPriority();

    public Integer getTimeTriggeredCanLevel();

    public void setTimeTriggeredCanLevel(Integer var1);

    public void unsetTimeTriggeredCanLevel();

    public boolean isSetTimeTriggeredCanLevel();

    public Integer getTxEnableWindowLength();

    public void setTxEnableWindowLength(Integer var1);

    public void unsetTxEnableWindowLength();

    public boolean isSetTxEnableWindowLength();

    public IntegerDatatype getApplWatchdogLimitData();

    public void setApplWatchdogLimitData(IntegerDatatype var1);

    public IntegerDatatype getExpectedTxTriggerData();

    public void setExpectedTxTriggerData(IntegerDatatype var1);

    public IntegerDatatype getInitialRefOffsetData();

    public void setInitialRefOffsetData(IntegerDatatype var1);

    public IntegerDatatype getTimeMasterPriorityData();

    public void setTimeMasterPriorityData(IntegerDatatype var1);

    public IntegerDatatype getTimeTriggeredCanLevelData();

    public void setTimeTriggeredCanLevelData(IntegerDatatype var1);

    public IntegerDatatype getTxEnableWindowLengthData();

    public void setTxEnableWindowLengthData(IntegerDatatype var1);
}

