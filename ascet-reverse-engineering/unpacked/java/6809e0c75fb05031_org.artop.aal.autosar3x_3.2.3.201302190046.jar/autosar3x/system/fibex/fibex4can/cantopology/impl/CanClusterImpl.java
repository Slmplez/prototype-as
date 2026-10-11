/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4can.cantopology.impl;

import autosar3x.system.fibex.fibex4can.cantopology.CanCluster;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationClusterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanClusterImpl
extends CommunicationClusterImpl
implements CanCluster {
    protected static final Boolean NM_BUS_LOAD_REDUCTION_ACTIVE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmBusLoadReductionActive = NM_BUS_LOAD_REDUCTION_ACTIVE_EDEFAULT;
    protected boolean nmBusLoadReductionActiveESet;
    protected static final Boolean NM_BUS_LOAD_REDUCTION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmBusLoadReductionEnabled = NM_BUS_LOAD_REDUCTION_ENABLED_EDEFAULT;
    protected boolean nmBusLoadReductionEnabledESet;
    protected static final Double NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmImmediateNmCycleTime = NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT;
    protected boolean nmImmediateNmCycleTimeESet;
    protected static final Integer NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT = new Integer(0);
    protected Integer nmImmediateNmTransmissions = NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT;
    protected boolean nmImmediateNmTransmissionsESet;
    protected static final Boolean NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmImmediateRestartEnabled = NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT;
    protected boolean nmImmediateRestartEnabledESet;
    protected static final Integer NM_LOWER_CAN_ID_EDEFAULT = new Integer(0);
    protected Integer nmLowerCanId = NM_LOWER_CAN_ID_EDEFAULT;
    protected boolean nmLowerCanIdESet;
    protected static final Double NM_MSG_CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmMsgCycleTime = NM_MSG_CYCLE_TIME_EDEFAULT;
    protected boolean nmMsgCycleTimeESet;
    protected static final Double NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
    protected boolean nmRemoteSleepIndicationTimeESet;
    protected static final Double NM_REPEAT_MESSAGE_STATE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRepeatMessageStateTime = NM_REPEAT_MESSAGE_STATE_TIME_EDEFAULT;
    protected boolean nmRepeatMessageStateTimeESet;
    protected static final Double NM_TIMEOUT_TIME_EDEFAULT = new Double(0.0);
    protected Double nmTimeoutTime = NM_TIMEOUT_TIME_EDEFAULT;
    protected boolean nmTimeoutTimeESet;
    protected static final Integer NM_UPPER_CAN_ID_EDEFAULT = new Integer(0);
    protected Integer nmUpperCanId = NM_UPPER_CAN_ID_EDEFAULT;
    protected boolean nmUpperCanIdESet;
    protected static final Double NM_WAIT_BUS_SLEEP_TIME_EDEFAULT = new Double(0.0);
    protected Double nmWaitBusSleepTime = NM_WAIT_BUS_SLEEP_TIME_EDEFAULT;
    protected boolean nmWaitBusSleepTimeESet;

    protected CanClusterImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_CLUSTER;
    }

    public Boolean getNmBusLoadReductionActive() {
        return this.nmBusLoadReductionActive;
    }

    public void setNmBusLoadReductionActive(Boolean newNmBusLoadReductionActive) {
        Boolean oldNmBusLoadReductionActive = this.nmBusLoadReductionActive;
        this.nmBusLoadReductionActive = newNmBusLoadReductionActive;
        boolean oldNmBusLoadReductionActiveESet = this.nmBusLoadReductionActiveESet;
        this.nmBusLoadReductionActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldNmBusLoadReductionActive, (Object)this.nmBusLoadReductionActive, !oldNmBusLoadReductionActiveESet));
        }
    }

    public void unsetNmBusLoadReductionActive() {
        Boolean oldNmBusLoadReductionActive = this.nmBusLoadReductionActive;
        boolean oldNmBusLoadReductionActiveESet = this.nmBusLoadReductionActiveESet;
        this.nmBusLoadReductionActive = NM_BUS_LOAD_REDUCTION_ACTIVE_EDEFAULT;
        this.nmBusLoadReductionActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldNmBusLoadReductionActive, (Object)NM_BUS_LOAD_REDUCTION_ACTIVE_EDEFAULT, oldNmBusLoadReductionActiveESet));
        }
    }

    public boolean isSetNmBusLoadReductionActive() {
        return this.nmBusLoadReductionActiveESet;
    }

    public Boolean getNmBusLoadReductionEnabled() {
        return this.nmBusLoadReductionEnabled;
    }

    public void setNmBusLoadReductionEnabled(Boolean newNmBusLoadReductionEnabled) {
        Boolean oldNmBusLoadReductionEnabled = this.nmBusLoadReductionEnabled;
        this.nmBusLoadReductionEnabled = newNmBusLoadReductionEnabled;
        boolean oldNmBusLoadReductionEnabledESet = this.nmBusLoadReductionEnabledESet;
        this.nmBusLoadReductionEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldNmBusLoadReductionEnabled, (Object)this.nmBusLoadReductionEnabled, !oldNmBusLoadReductionEnabledESet));
        }
    }

    public void unsetNmBusLoadReductionEnabled() {
        Boolean oldNmBusLoadReductionEnabled = this.nmBusLoadReductionEnabled;
        boolean oldNmBusLoadReductionEnabledESet = this.nmBusLoadReductionEnabledESet;
        this.nmBusLoadReductionEnabled = NM_BUS_LOAD_REDUCTION_ENABLED_EDEFAULT;
        this.nmBusLoadReductionEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldNmBusLoadReductionEnabled, (Object)NM_BUS_LOAD_REDUCTION_ENABLED_EDEFAULT, oldNmBusLoadReductionEnabledESet));
        }
    }

    public boolean isSetNmBusLoadReductionEnabled() {
        return this.nmBusLoadReductionEnabledESet;
    }

    public Double getNmImmediateNmCycleTime() {
        return this.nmImmediateNmCycleTime;
    }

    public void setNmImmediateNmCycleTime(Double newNmImmediateNmCycleTime) {
        Double oldNmImmediateNmCycleTime = this.nmImmediateNmCycleTime;
        this.nmImmediateNmCycleTime = newNmImmediateNmCycleTime;
        boolean oldNmImmediateNmCycleTimeESet = this.nmImmediateNmCycleTimeESet;
        this.nmImmediateNmCycleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldNmImmediateNmCycleTime, (Object)this.nmImmediateNmCycleTime, !oldNmImmediateNmCycleTimeESet));
        }
    }

    public void unsetNmImmediateNmCycleTime() {
        Double oldNmImmediateNmCycleTime = this.nmImmediateNmCycleTime;
        boolean oldNmImmediateNmCycleTimeESet = this.nmImmediateNmCycleTimeESet;
        this.nmImmediateNmCycleTime = NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT;
        this.nmImmediateNmCycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldNmImmediateNmCycleTime, (Object)NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT, oldNmImmediateNmCycleTimeESet));
        }
    }

    public boolean isSetNmImmediateNmCycleTime() {
        return this.nmImmediateNmCycleTimeESet;
    }

    public Integer getNmImmediateNmTransmissions() {
        return this.nmImmediateNmTransmissions;
    }

    public void setNmImmediateNmTransmissions(Integer newNmImmediateNmTransmissions) {
        Integer oldNmImmediateNmTransmissions = this.nmImmediateNmTransmissions;
        this.nmImmediateNmTransmissions = newNmImmediateNmTransmissions;
        boolean oldNmImmediateNmTransmissionsESet = this.nmImmediateNmTransmissionsESet;
        this.nmImmediateNmTransmissionsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldNmImmediateNmTransmissions, (Object)this.nmImmediateNmTransmissions, !oldNmImmediateNmTransmissionsESet));
        }
    }

    public void unsetNmImmediateNmTransmissions() {
        Integer oldNmImmediateNmTransmissions = this.nmImmediateNmTransmissions;
        boolean oldNmImmediateNmTransmissionsESet = this.nmImmediateNmTransmissionsESet;
        this.nmImmediateNmTransmissions = NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT;
        this.nmImmediateNmTransmissionsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldNmImmediateNmTransmissions, (Object)NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT, oldNmImmediateNmTransmissionsESet));
        }
    }

    public boolean isSetNmImmediateNmTransmissions() {
        return this.nmImmediateNmTransmissionsESet;
    }

    public Boolean getNmImmediateRestartEnabled() {
        return this.nmImmediateRestartEnabled;
    }

    public void setNmImmediateRestartEnabled(Boolean newNmImmediateRestartEnabled) {
        Boolean oldNmImmediateRestartEnabled = this.nmImmediateRestartEnabled;
        this.nmImmediateRestartEnabled = newNmImmediateRestartEnabled;
        boolean oldNmImmediateRestartEnabledESet = this.nmImmediateRestartEnabledESet;
        this.nmImmediateRestartEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldNmImmediateRestartEnabled, (Object)this.nmImmediateRestartEnabled, !oldNmImmediateRestartEnabledESet));
        }
    }

    public void unsetNmImmediateRestartEnabled() {
        Boolean oldNmImmediateRestartEnabled = this.nmImmediateRestartEnabled;
        boolean oldNmImmediateRestartEnabledESet = this.nmImmediateRestartEnabledESet;
        this.nmImmediateRestartEnabled = NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT;
        this.nmImmediateRestartEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldNmImmediateRestartEnabled, (Object)NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT, oldNmImmediateRestartEnabledESet));
        }
    }

    public boolean isSetNmImmediateRestartEnabled() {
        return this.nmImmediateRestartEnabledESet;
    }

    public Integer getNmLowerCanId() {
        return this.nmLowerCanId;
    }

    public void setNmLowerCanId(Integer newNmLowerCanId) {
        Integer oldNmLowerCanId = this.nmLowerCanId;
        this.nmLowerCanId = newNmLowerCanId;
        boolean oldNmLowerCanIdESet = this.nmLowerCanIdESet;
        this.nmLowerCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldNmLowerCanId, (Object)this.nmLowerCanId, !oldNmLowerCanIdESet));
        }
    }

    public void unsetNmLowerCanId() {
        Integer oldNmLowerCanId = this.nmLowerCanId;
        boolean oldNmLowerCanIdESet = this.nmLowerCanIdESet;
        this.nmLowerCanId = NM_LOWER_CAN_ID_EDEFAULT;
        this.nmLowerCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldNmLowerCanId, (Object)NM_LOWER_CAN_ID_EDEFAULT, oldNmLowerCanIdESet));
        }
    }

    public boolean isSetNmLowerCanId() {
        return this.nmLowerCanIdESet;
    }

    public Double getNmMsgCycleTime() {
        return this.nmMsgCycleTime;
    }

    public void setNmMsgCycleTime(Double newNmMsgCycleTime) {
        Double oldNmMsgCycleTime = this.nmMsgCycleTime;
        this.nmMsgCycleTime = newNmMsgCycleTime;
        boolean oldNmMsgCycleTimeESet = this.nmMsgCycleTimeESet;
        this.nmMsgCycleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldNmMsgCycleTime, (Object)this.nmMsgCycleTime, !oldNmMsgCycleTimeESet));
        }
    }

    public void unsetNmMsgCycleTime() {
        Double oldNmMsgCycleTime = this.nmMsgCycleTime;
        boolean oldNmMsgCycleTimeESet = this.nmMsgCycleTimeESet;
        this.nmMsgCycleTime = NM_MSG_CYCLE_TIME_EDEFAULT;
        this.nmMsgCycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldNmMsgCycleTime, (Object)NM_MSG_CYCLE_TIME_EDEFAULT, oldNmMsgCycleTimeESet));
        }
    }

    public boolean isSetNmMsgCycleTime() {
        return this.nmMsgCycleTimeESet;
    }

    public Double getNmRemoteSleepIndicationTime() {
        return this.nmRemoteSleepIndicationTime;
    }

    public void setNmRemoteSleepIndicationTime(Double newNmRemoteSleepIndicationTime) {
        Double oldNmRemoteSleepIndicationTime = this.nmRemoteSleepIndicationTime;
        this.nmRemoteSleepIndicationTime = newNmRemoteSleepIndicationTime;
        boolean oldNmRemoteSleepIndicationTimeESet = this.nmRemoteSleepIndicationTimeESet;
        this.nmRemoteSleepIndicationTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldNmRemoteSleepIndicationTime, (Object)this.nmRemoteSleepIndicationTime, !oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public void unsetNmRemoteSleepIndicationTime() {
        Double oldNmRemoteSleepIndicationTime = this.nmRemoteSleepIndicationTime;
        boolean oldNmRemoteSleepIndicationTimeESet = this.nmRemoteSleepIndicationTimeESet;
        this.nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
        this.nmRemoteSleepIndicationTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldNmRemoteSleepIndicationTime, (Object)NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT, oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public boolean isSetNmRemoteSleepIndicationTime() {
        return this.nmRemoteSleepIndicationTimeESet;
    }

    public Double getNmRepeatMessageStateTime() {
        return this.nmRepeatMessageStateTime;
    }

    public void setNmRepeatMessageStateTime(Double newNmRepeatMessageStateTime) {
        Double oldNmRepeatMessageStateTime = this.nmRepeatMessageStateTime;
        this.nmRepeatMessageStateTime = newNmRepeatMessageStateTime;
        boolean oldNmRepeatMessageStateTimeESet = this.nmRepeatMessageStateTimeESet;
        this.nmRepeatMessageStateTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldNmRepeatMessageStateTime, (Object)this.nmRepeatMessageStateTime, !oldNmRepeatMessageStateTimeESet));
        }
    }

    public void unsetNmRepeatMessageStateTime() {
        Double oldNmRepeatMessageStateTime = this.nmRepeatMessageStateTime;
        boolean oldNmRepeatMessageStateTimeESet = this.nmRepeatMessageStateTimeESet;
        this.nmRepeatMessageStateTime = NM_REPEAT_MESSAGE_STATE_TIME_EDEFAULT;
        this.nmRepeatMessageStateTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldNmRepeatMessageStateTime, (Object)NM_REPEAT_MESSAGE_STATE_TIME_EDEFAULT, oldNmRepeatMessageStateTimeESet));
        }
    }

    public boolean isSetNmRepeatMessageStateTime() {
        return this.nmRepeatMessageStateTimeESet;
    }

    public Double getNmTimeoutTime() {
        return this.nmTimeoutTime;
    }

    public void setNmTimeoutTime(Double newNmTimeoutTime) {
        Double oldNmTimeoutTime = this.nmTimeoutTime;
        this.nmTimeoutTime = newNmTimeoutTime;
        boolean oldNmTimeoutTimeESet = this.nmTimeoutTimeESet;
        this.nmTimeoutTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldNmTimeoutTime, (Object)this.nmTimeoutTime, !oldNmTimeoutTimeESet));
        }
    }

    public void unsetNmTimeoutTime() {
        Double oldNmTimeoutTime = this.nmTimeoutTime;
        boolean oldNmTimeoutTimeESet = this.nmTimeoutTimeESet;
        this.nmTimeoutTime = NM_TIMEOUT_TIME_EDEFAULT;
        this.nmTimeoutTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldNmTimeoutTime, (Object)NM_TIMEOUT_TIME_EDEFAULT, oldNmTimeoutTimeESet));
        }
    }

    public boolean isSetNmTimeoutTime() {
        return this.nmTimeoutTimeESet;
    }

    public Integer getNmUpperCanId() {
        return this.nmUpperCanId;
    }

    public void setNmUpperCanId(Integer newNmUpperCanId) {
        Integer oldNmUpperCanId = this.nmUpperCanId;
        this.nmUpperCanId = newNmUpperCanId;
        boolean oldNmUpperCanIdESet = this.nmUpperCanIdESet;
        this.nmUpperCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldNmUpperCanId, (Object)this.nmUpperCanId, !oldNmUpperCanIdESet));
        }
    }

    public void unsetNmUpperCanId() {
        Integer oldNmUpperCanId = this.nmUpperCanId;
        boolean oldNmUpperCanIdESet = this.nmUpperCanIdESet;
        this.nmUpperCanId = NM_UPPER_CAN_ID_EDEFAULT;
        this.nmUpperCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldNmUpperCanId, (Object)NM_UPPER_CAN_ID_EDEFAULT, oldNmUpperCanIdESet));
        }
    }

    public boolean isSetNmUpperCanId() {
        return this.nmUpperCanIdESet;
    }

    public Double getNmWaitBusSleepTime() {
        return this.nmWaitBusSleepTime;
    }

    public void setNmWaitBusSleepTime(Double newNmWaitBusSleepTime) {
        Double oldNmWaitBusSleepTime = this.nmWaitBusSleepTime;
        this.nmWaitBusSleepTime = newNmWaitBusSleepTime;
        boolean oldNmWaitBusSleepTimeESet = this.nmWaitBusSleepTimeESet;
        this.nmWaitBusSleepTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldNmWaitBusSleepTime, (Object)this.nmWaitBusSleepTime, !oldNmWaitBusSleepTimeESet));
        }
    }

    public void unsetNmWaitBusSleepTime() {
        Double oldNmWaitBusSleepTime = this.nmWaitBusSleepTime;
        boolean oldNmWaitBusSleepTimeESet = this.nmWaitBusSleepTimeESet;
        this.nmWaitBusSleepTime = NM_WAIT_BUS_SLEEP_TIME_EDEFAULT;
        this.nmWaitBusSleepTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldNmWaitBusSleepTime, (Object)NM_WAIT_BUS_SLEEP_TIME_EDEFAULT, oldNmWaitBusSleepTimeESet));
        }
    }

    public boolean isSetNmWaitBusSleepTime() {
        return this.nmWaitBusSleepTimeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getNmBusLoadReductionActive();
            }
            case 28: {
                return this.getNmBusLoadReductionEnabled();
            }
            case 29: {
                return this.getNmImmediateNmCycleTime();
            }
            case 30: {
                return this.getNmImmediateNmTransmissions();
            }
            case 31: {
                return this.getNmImmediateRestartEnabled();
            }
            case 32: {
                return this.getNmLowerCanId();
            }
            case 33: {
                return this.getNmMsgCycleTime();
            }
            case 34: {
                return this.getNmRemoteSleepIndicationTime();
            }
            case 35: {
                return this.getNmRepeatMessageStateTime();
            }
            case 36: {
                return this.getNmTimeoutTime();
            }
            case 37: {
                return this.getNmUpperCanId();
            }
            case 38: {
                return this.getNmWaitBusSleepTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setNmBusLoadReductionActive((Boolean)newValue);
                return;
            }
            case 28: {
                this.setNmBusLoadReductionEnabled((Boolean)newValue);
                return;
            }
            case 29: {
                this.setNmImmediateNmCycleTime((Double)newValue);
                return;
            }
            case 30: {
                this.setNmImmediateNmTransmissions((Integer)newValue);
                return;
            }
            case 31: {
                this.setNmImmediateRestartEnabled((Boolean)newValue);
                return;
            }
            case 32: {
                this.setNmLowerCanId((Integer)newValue);
                return;
            }
            case 33: {
                this.setNmMsgCycleTime((Double)newValue);
                return;
            }
            case 34: {
                this.setNmRemoteSleepIndicationTime((Double)newValue);
                return;
            }
            case 35: {
                this.setNmRepeatMessageStateTime((Double)newValue);
                return;
            }
            case 36: {
                this.setNmTimeoutTime((Double)newValue);
                return;
            }
            case 37: {
                this.setNmUpperCanId((Integer)newValue);
                return;
            }
            case 38: {
                this.setNmWaitBusSleepTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.unsetNmBusLoadReductionActive();
                return;
            }
            case 28: {
                this.unsetNmBusLoadReductionEnabled();
                return;
            }
            case 29: {
                this.unsetNmImmediateNmCycleTime();
                return;
            }
            case 30: {
                this.unsetNmImmediateNmTransmissions();
                return;
            }
            case 31: {
                this.unsetNmImmediateRestartEnabled();
                return;
            }
            case 32: {
                this.unsetNmLowerCanId();
                return;
            }
            case 33: {
                this.unsetNmMsgCycleTime();
                return;
            }
            case 34: {
                this.unsetNmRemoteSleepIndicationTime();
                return;
            }
            case 35: {
                this.unsetNmRepeatMessageStateTime();
                return;
            }
            case 36: {
                this.unsetNmTimeoutTime();
                return;
            }
            case 37: {
                this.unsetNmUpperCanId();
                return;
            }
            case 38: {
                this.unsetNmWaitBusSleepTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.isSetNmBusLoadReductionActive();
            }
            case 28: {
                return this.isSetNmBusLoadReductionEnabled();
            }
            case 29: {
                return this.isSetNmImmediateNmCycleTime();
            }
            case 30: {
                return this.isSetNmImmediateNmTransmissions();
            }
            case 31: {
                return this.isSetNmImmediateRestartEnabled();
            }
            case 32: {
                return this.isSetNmLowerCanId();
            }
            case 33: {
                return this.isSetNmMsgCycleTime();
            }
            case 34: {
                return this.isSetNmRemoteSleepIndicationTime();
            }
            case 35: {
                return this.isSetNmRepeatMessageStateTime();
            }
            case 36: {
                return this.isSetNmTimeoutTime();
            }
            case 37: {
                return this.isSetNmUpperCanId();
            }
            case 38: {
                return this.isSetNmWaitBusSleepTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmBusLoadReductionActive: ");
        if (this.nmBusLoadReductionActiveESet) {
            result.append(this.nmBusLoadReductionActive);
        } else {
            result.append("<unset>");
        }
        result.append(", nmBusLoadReductionEnabled: ");
        if (this.nmBusLoadReductionEnabledESet) {
            result.append(this.nmBusLoadReductionEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmImmediateNmCycleTime: ");
        if (this.nmImmediateNmCycleTimeESet) {
            result.append(this.nmImmediateNmCycleTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmImmediateNmTransmissions: ");
        if (this.nmImmediateNmTransmissionsESet) {
            result.append(this.nmImmediateNmTransmissions);
        } else {
            result.append("<unset>");
        }
        result.append(", nmImmediateRestartEnabled: ");
        if (this.nmImmediateRestartEnabledESet) {
            result.append(this.nmImmediateRestartEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmLowerCanId: ");
        if (this.nmLowerCanIdESet) {
            result.append(this.nmLowerCanId);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMsgCycleTime: ");
        if (this.nmMsgCycleTimeESet) {
            result.append(this.nmMsgCycleTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRemoteSleepIndicationTime: ");
        if (this.nmRemoteSleepIndicationTimeESet) {
            result.append(this.nmRemoteSleepIndicationTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMessageStateTime: ");
        if (this.nmRepeatMessageStateTimeESet) {
            result.append(this.nmRepeatMessageStateTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmTimeoutTime: ");
        if (this.nmTimeoutTimeESet) {
            result.append(this.nmTimeoutTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmUpperCanId: ");
        if (this.nmUpperCanIdESet) {
            result.append(this.nmUpperCanId);
        } else {
            result.append("<unset>");
        }
        result.append(", nmWaitBusSleepTime: ");
        if (this.nmWaitBusSleepTimeESet) {
            result.append(this.nmWaitBusSleepTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

