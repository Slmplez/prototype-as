/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationControllerContentImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerContent;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TtcanCommunicationControllerContentImpl
extends AbstractCanCommunicationControllerContentImpl
implements TtcanCommunicationControllerContent {
    protected static final IntegerDatatype APPL_WATCHDOG_LIMIT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype applWatchdogLimit = APPL_WATCHDOG_LIMIT_EDEFAULT.clone();
    protected boolean applWatchdogLimitESet;
    protected static final IntegerDatatype EXPECTED_TX_TRIGGER_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype expectedTxTrigger = EXPECTED_TX_TRIGGER_EDEFAULT.clone();
    protected boolean expectedTxTriggerESet;
    protected static final Boolean EXTERNAL_CLOCK_SYNCHRONISATION_EDEFAULT = Boolean.FALSE;
    protected Boolean externalClockSynchronisation = EXTERNAL_CLOCK_SYNCHRONISATION_EDEFAULT;
    protected boolean externalClockSynchronisationESet;
    protected static final IntegerDatatype INITIAL_REF_OFFSET_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype initialRefOffset = INITIAL_REF_OFFSET_EDEFAULT.clone();
    protected boolean initialRefOffsetESet;
    protected static final Boolean MASTER_EDEFAULT = Boolean.FALSE;
    protected Boolean master = MASTER_EDEFAULT;
    protected boolean masterESet;
    protected static final IntegerDatatype TIME_MASTER_PRIORITY_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype timeMasterPriority = TIME_MASTER_PRIORITY_EDEFAULT.clone();
    protected boolean timeMasterPriorityESet;
    protected static final IntegerDatatype TIME_TRIGGERED_CAN_LEVEL_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype timeTriggeredCanLevel = TIME_TRIGGERED_CAN_LEVEL_EDEFAULT.clone();
    protected boolean timeTriggeredCanLevelESet;
    protected static final IntegerDatatype TX_ENABLE_WINDOW_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype txEnableWindowLength = TX_ENABLE_WINDOW_LENGTH_EDEFAULT.clone();
    protected boolean txEnableWindowLengthESet;

    protected TtcanCommunicationControllerContentImpl() {
    }

    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_COMMUNICATION_CONTROLLER_CONTENT;
    }

    public Integer getApplWatchdogLimit() {
        return (Integer)this.applWatchdogLimit.basicGetValue();
    }

    public void setApplWatchdogLimit(Integer newApplWatchdogLimit) {
        Integer oldApplWatchdogLimit = (Integer)this.applWatchdogLimit.basicGetValue();
        this.applWatchdogLimit.basicSetValue((Object)newApplWatchdogLimit);
        boolean oldApplWatchdogLimitESet = this.applWatchdogLimitESet;
        this.applWatchdogLimitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldApplWatchdogLimit, (Object)newApplWatchdogLimit, !oldApplWatchdogLimitESet));
        }
    }

    public void unsetApplWatchdogLimit() {
        Integer oldApplWatchdogLimit = (Integer)this.applWatchdogLimit.basicGetValue();
        boolean oldApplWatchdogLimitESet = this.applWatchdogLimitESet;
        this.applWatchdogLimit = APPL_WATCHDOG_LIMIT_EDEFAULT.clone();
        this.applWatchdogLimitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldApplWatchdogLimit, (Object)APPL_WATCHDOG_LIMIT_EDEFAULT, oldApplWatchdogLimitESet));
        }
    }

    public boolean isSetApplWatchdogLimit() {
        return this.applWatchdogLimitESet;
    }

    public Integer getExpectedTxTrigger() {
        return (Integer)this.expectedTxTrigger.basicGetValue();
    }

    public void setExpectedTxTrigger(Integer newExpectedTxTrigger) {
        Integer oldExpectedTxTrigger = (Integer)this.expectedTxTrigger.basicGetValue();
        this.expectedTxTrigger.basicSetValue((Object)newExpectedTxTrigger);
        boolean oldExpectedTxTriggerESet = this.expectedTxTriggerESet;
        this.expectedTxTriggerESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldExpectedTxTrigger, (Object)newExpectedTxTrigger, !oldExpectedTxTriggerESet));
        }
    }

    public void unsetExpectedTxTrigger() {
        Integer oldExpectedTxTrigger = (Integer)this.expectedTxTrigger.basicGetValue();
        boolean oldExpectedTxTriggerESet = this.expectedTxTriggerESet;
        this.expectedTxTrigger = EXPECTED_TX_TRIGGER_EDEFAULT.clone();
        this.expectedTxTriggerESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldExpectedTxTrigger, (Object)EXPECTED_TX_TRIGGER_EDEFAULT, oldExpectedTxTriggerESet));
        }
    }

    public boolean isSetExpectedTxTrigger() {
        return this.expectedTxTriggerESet;
    }

    public Boolean getExternalClockSynchronisation() {
        return this.externalClockSynchronisation;
    }

    public void setExternalClockSynchronisation(Boolean newExternalClockSynchronisation) {
        Boolean oldExternalClockSynchronisation = this.externalClockSynchronisation;
        this.externalClockSynchronisation = newExternalClockSynchronisation;
        boolean oldExternalClockSynchronisationESet = this.externalClockSynchronisationESet;
        this.externalClockSynchronisationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldExternalClockSynchronisation, (Object)this.externalClockSynchronisation, !oldExternalClockSynchronisationESet));
        }
    }

    public void unsetExternalClockSynchronisation() {
        Boolean oldExternalClockSynchronisation = this.externalClockSynchronisation;
        boolean oldExternalClockSynchronisationESet = this.externalClockSynchronisationESet;
        this.externalClockSynchronisation = EXTERNAL_CLOCK_SYNCHRONISATION_EDEFAULT;
        this.externalClockSynchronisationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldExternalClockSynchronisation, (Object)EXTERNAL_CLOCK_SYNCHRONISATION_EDEFAULT, oldExternalClockSynchronisationESet));
        }
    }

    public boolean isSetExternalClockSynchronisation() {
        return this.externalClockSynchronisationESet;
    }

    public Integer getInitialRefOffset() {
        return (Integer)this.initialRefOffset.basicGetValue();
    }

    public void setInitialRefOffset(Integer newInitialRefOffset) {
        Integer oldInitialRefOffset = (Integer)this.initialRefOffset.basicGetValue();
        this.initialRefOffset.basicSetValue((Object)newInitialRefOffset);
        boolean oldInitialRefOffsetESet = this.initialRefOffsetESet;
        this.initialRefOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldInitialRefOffset, (Object)newInitialRefOffset, !oldInitialRefOffsetESet));
        }
    }

    public void unsetInitialRefOffset() {
        Integer oldInitialRefOffset = (Integer)this.initialRefOffset.basicGetValue();
        boolean oldInitialRefOffsetESet = this.initialRefOffsetESet;
        this.initialRefOffset = INITIAL_REF_OFFSET_EDEFAULT.clone();
        this.initialRefOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldInitialRefOffset, (Object)INITIAL_REF_OFFSET_EDEFAULT, oldInitialRefOffsetESet));
        }
    }

    public boolean isSetInitialRefOffset() {
        return this.initialRefOffsetESet;
    }

    public Boolean getMaster() {
        return this.master;
    }

    public void setMaster(Boolean newMaster) {
        Boolean oldMaster = this.master;
        this.master = newMaster;
        boolean oldMasterESet = this.masterESet;
        this.masterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMaster, (Object)this.master, !oldMasterESet));
        }
    }

    public void unsetMaster() {
        Boolean oldMaster = this.master;
        boolean oldMasterESet = this.masterESet;
        this.master = MASTER_EDEFAULT;
        this.masterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMaster, (Object)MASTER_EDEFAULT, oldMasterESet));
        }
    }

    public boolean isSetMaster() {
        return this.masterESet;
    }

    public Integer getTimeMasterPriority() {
        return (Integer)this.timeMasterPriority.basicGetValue();
    }

    public void setTimeMasterPriority(Integer newTimeMasterPriority) {
        Integer oldTimeMasterPriority = (Integer)this.timeMasterPriority.basicGetValue();
        this.timeMasterPriority.basicSetValue((Object)newTimeMasterPriority);
        boolean oldTimeMasterPriorityESet = this.timeMasterPriorityESet;
        this.timeMasterPriorityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldTimeMasterPriority, (Object)newTimeMasterPriority, !oldTimeMasterPriorityESet));
        }
    }

    public void unsetTimeMasterPriority() {
        Integer oldTimeMasterPriority = (Integer)this.timeMasterPriority.basicGetValue();
        boolean oldTimeMasterPriorityESet = this.timeMasterPriorityESet;
        this.timeMasterPriority = TIME_MASTER_PRIORITY_EDEFAULT.clone();
        this.timeMasterPriorityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldTimeMasterPriority, (Object)TIME_MASTER_PRIORITY_EDEFAULT, oldTimeMasterPriorityESet));
        }
    }

    public boolean isSetTimeMasterPriority() {
        return this.timeMasterPriorityESet;
    }

    public Integer getTimeTriggeredCanLevel() {
        return (Integer)this.timeTriggeredCanLevel.basicGetValue();
    }

    public void setTimeTriggeredCanLevel(Integer newTimeTriggeredCanLevel) {
        Integer oldTimeTriggeredCanLevel = (Integer)this.timeTriggeredCanLevel.basicGetValue();
        this.timeTriggeredCanLevel.basicSetValue((Object)newTimeTriggeredCanLevel);
        boolean oldTimeTriggeredCanLevelESet = this.timeTriggeredCanLevelESet;
        this.timeTriggeredCanLevelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTimeTriggeredCanLevel, (Object)newTimeTriggeredCanLevel, !oldTimeTriggeredCanLevelESet));
        }
    }

    public void unsetTimeTriggeredCanLevel() {
        Integer oldTimeTriggeredCanLevel = (Integer)this.timeTriggeredCanLevel.basicGetValue();
        boolean oldTimeTriggeredCanLevelESet = this.timeTriggeredCanLevelESet;
        this.timeTriggeredCanLevel = TIME_TRIGGERED_CAN_LEVEL_EDEFAULT.clone();
        this.timeTriggeredCanLevelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldTimeTriggeredCanLevel, (Object)TIME_TRIGGERED_CAN_LEVEL_EDEFAULT, oldTimeTriggeredCanLevelESet));
        }
    }

    public boolean isSetTimeTriggeredCanLevel() {
        return this.timeTriggeredCanLevelESet;
    }

    public Integer getTxEnableWindowLength() {
        return (Integer)this.txEnableWindowLength.basicGetValue();
    }

    public void setTxEnableWindowLength(Integer newTxEnableWindowLength) {
        Integer oldTxEnableWindowLength = (Integer)this.txEnableWindowLength.basicGetValue();
        this.txEnableWindowLength.basicSetValue((Object)newTxEnableWindowLength);
        boolean oldTxEnableWindowLengthESet = this.txEnableWindowLengthESet;
        this.txEnableWindowLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldTxEnableWindowLength, (Object)newTxEnableWindowLength, !oldTxEnableWindowLengthESet));
        }
    }

    public void unsetTxEnableWindowLength() {
        Integer oldTxEnableWindowLength = (Integer)this.txEnableWindowLength.basicGetValue();
        boolean oldTxEnableWindowLengthESet = this.txEnableWindowLengthESet;
        this.txEnableWindowLength = TX_ENABLE_WINDOW_LENGTH_EDEFAULT.clone();
        this.txEnableWindowLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldTxEnableWindowLength, (Object)TX_ENABLE_WINDOW_LENGTH_EDEFAULT, oldTxEnableWindowLengthESet));
        }
    }

    public boolean isSetTxEnableWindowLength() {
        return this.txEnableWindowLengthESet;
    }

    public IntegerDatatype getApplWatchdogLimitData() {
        return this.applWatchdogLimit.clone();
    }

    public void setApplWatchdogLimitData(IntegerDatatype newApplWatchdogLimit) {
        this.applWatchdogLimit.setRadix((int)newApplWatchdogLimit.getRadix());
        this.applWatchdogLimit.setNoOfDigits((int)newApplWatchdogLimit.getNoOfDigits());
        this.setApplWatchdogLimit(newApplWatchdogLimit.getValue());
    }

    public IntegerDatatype getExpectedTxTriggerData() {
        return this.expectedTxTrigger.clone();
    }

    public void setExpectedTxTriggerData(IntegerDatatype newExpectedTxTrigger) {
        this.expectedTxTrigger.setRadix((int)newExpectedTxTrigger.getRadix());
        this.expectedTxTrigger.setNoOfDigits((int)newExpectedTxTrigger.getNoOfDigits());
        this.setExpectedTxTrigger(newExpectedTxTrigger.getValue());
    }

    public IntegerDatatype getInitialRefOffsetData() {
        return this.initialRefOffset.clone();
    }

    public void setInitialRefOffsetData(IntegerDatatype newInitialRefOffset) {
        this.initialRefOffset.setRadix((int)newInitialRefOffset.getRadix());
        this.initialRefOffset.setNoOfDigits((int)newInitialRefOffset.getNoOfDigits());
        this.setInitialRefOffset(newInitialRefOffset.getValue());
    }

    public IntegerDatatype getTimeMasterPriorityData() {
        return this.timeMasterPriority.clone();
    }

    public void setTimeMasterPriorityData(IntegerDatatype newTimeMasterPriority) {
        this.timeMasterPriority.setRadix((int)newTimeMasterPriority.getRadix());
        this.timeMasterPriority.setNoOfDigits((int)newTimeMasterPriority.getNoOfDigits());
        this.setTimeMasterPriority(newTimeMasterPriority.getValue());
    }

    public IntegerDatatype getTimeTriggeredCanLevelData() {
        return this.timeTriggeredCanLevel.clone();
    }

    public void setTimeTriggeredCanLevelData(IntegerDatatype newTimeTriggeredCanLevel) {
        this.timeTriggeredCanLevel.setRadix((int)newTimeTriggeredCanLevel.getRadix());
        this.timeTriggeredCanLevel.setNoOfDigits((int)newTimeTriggeredCanLevel.getNoOfDigits());
        this.setTimeTriggeredCanLevel(newTimeTriggeredCanLevel.getValue());
    }

    public IntegerDatatype getTxEnableWindowLengthData() {
        return this.txEnableWindowLength.clone();
    }

    public void setTxEnableWindowLengthData(IntegerDatatype newTxEnableWindowLength) {
        this.txEnableWindowLength.setRadix((int)newTxEnableWindowLength.getRadix());
        this.txEnableWindowLength.setNoOfDigits((int)newTxEnableWindowLength.getNoOfDigits());
        this.setTxEnableWindowLength(newTxEnableWindowLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getApplWatchdogLimit();
            }
            case 6: {
                return this.getExpectedTxTrigger();
            }
            case 7: {
                return this.getExternalClockSynchronisation();
            }
            case 8: {
                return this.getInitialRefOffset();
            }
            case 9: {
                return this.getMaster();
            }
            case 10: {
                return this.getTimeMasterPriority();
            }
            case 11: {
                return this.getTimeTriggeredCanLevel();
            }
            case 12: {
                return this.getTxEnableWindowLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setApplWatchdogLimit((Integer)newValue);
                return;
            }
            case 6: {
                this.setExpectedTxTrigger((Integer)newValue);
                return;
            }
            case 7: {
                this.setExternalClockSynchronisation((Boolean)newValue);
                return;
            }
            case 8: {
                this.setInitialRefOffset((Integer)newValue);
                return;
            }
            case 9: {
                this.setMaster((Boolean)newValue);
                return;
            }
            case 10: {
                this.setTimeMasterPriority((Integer)newValue);
                return;
            }
            case 11: {
                this.setTimeTriggeredCanLevel((Integer)newValue);
                return;
            }
            case 12: {
                this.setTxEnableWindowLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetApplWatchdogLimit();
                return;
            }
            case 6: {
                this.unsetExpectedTxTrigger();
                return;
            }
            case 7: {
                this.unsetExternalClockSynchronisation();
                return;
            }
            case 8: {
                this.unsetInitialRefOffset();
                return;
            }
            case 9: {
                this.unsetMaster();
                return;
            }
            case 10: {
                this.unsetTimeMasterPriority();
                return;
            }
            case 11: {
                this.unsetTimeTriggeredCanLevel();
                return;
            }
            case 12: {
                this.unsetTxEnableWindowLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetApplWatchdogLimit();
            }
            case 6: {
                return this.isSetExpectedTxTrigger();
            }
            case 7: {
                return this.isSetExternalClockSynchronisation();
            }
            case 8: {
                return this.isSetInitialRefOffset();
            }
            case 9: {
                return this.isSetMaster();
            }
            case 10: {
                return this.isSetTimeMasterPriority();
            }
            case 11: {
                return this.isSetTimeTriggeredCanLevel();
            }
            case 12: {
                return this.isSetTxEnableWindowLength();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (applWatchdogLimit: ");
        if (this.applWatchdogLimitESet) {
            result.append(this.applWatchdogLimit);
        } else {
            result.append("<unset>");
        }
        result.append(", expectedTxTrigger: ");
        if (this.expectedTxTriggerESet) {
            result.append(this.expectedTxTrigger);
        } else {
            result.append("<unset>");
        }
        result.append(", externalClockSynchronisation: ");
        if (this.externalClockSynchronisationESet) {
            result.append(this.externalClockSynchronisation);
        } else {
            result.append("<unset>");
        }
        result.append(", initialRefOffset: ");
        if (this.initialRefOffsetESet) {
            result.append(this.initialRefOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", master: ");
        if (this.masterESet) {
            result.append(this.master);
        } else {
            result.append("<unset>");
        }
        result.append(", timeMasterPriority: ");
        if (this.timeMasterPriorityESet) {
            result.append(this.timeMasterPriority);
        } else {
            result.append("<unset>");
        }
        result.append(", timeTriggeredCanLevel: ");
        if (this.timeTriggeredCanLevelESet) {
            result.append(this.timeTriggeredCanLevel);
        } else {
            result.append("<unset>");
        }
        result.append(", txEnableWindowLength: ");
        if (this.txEnableWindowLengthESet) {
            result.append(this.txEnableWindowLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

