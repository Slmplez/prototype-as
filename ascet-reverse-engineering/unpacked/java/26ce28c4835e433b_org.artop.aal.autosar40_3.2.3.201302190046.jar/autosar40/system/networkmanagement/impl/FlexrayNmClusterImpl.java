/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NmClusterImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexrayNmClusterImpl
extends NmClusterImpl
implements FlexrayNmCluster {
    protected static final PositiveIntegerDatatype NM_CAR_WAKE_UP_BIT_POSITION_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nmCarWakeUpBitPosition = NM_CAR_WAKE_UP_BIT_POSITION_EDEFAULT.clone();
    protected boolean nmCarWakeUpBitPositionESet;
    protected static final Boolean NM_CAR_WAKE_UP_FILTER_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmCarWakeUpFilterEnabled = NM_CAR_WAKE_UP_FILTER_ENABLED_EDEFAULT;
    protected boolean nmCarWakeUpFilterEnabledESet;
    protected static final PositiveIntegerDatatype NM_CAR_WAKE_UP_FILTER_NODE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nmCarWakeUpFilterNodeId = NM_CAR_WAKE_UP_FILTER_NODE_ID_EDEFAULT.clone();
    protected boolean nmCarWakeUpFilterNodeIdESet;
    protected static final Boolean NM_CAR_WAKE_UP_RX_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmCarWakeUpRxEnabled = NM_CAR_WAKE_UP_RX_ENABLED_EDEFAULT;
    protected boolean nmCarWakeUpRxEnabledESet;
    protected static final Boolean NM_CONTROL_BIT_VECTOR_ACTIVE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmControlBitVectorActive = NM_CONTROL_BIT_VECTOR_ACTIVE_EDEFAULT;
    protected boolean nmControlBitVectorActiveESet;
    protected static final IntegerDatatype NM_DATA_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmDataCycle = NM_DATA_CYCLE_EDEFAULT.clone();
    protected boolean nmDataCycleESet;
    protected static final Boolean NM_DATA_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmDataEnabled = NM_DATA_ENABLED_EDEFAULT;
    protected boolean nmDataEnabledESet;
    protected static final Double NM_DETECTION_LOCK_EDEFAULT = new Double(0.0);
    protected Double nmDetectionLock = NM_DETECTION_LOCK_EDEFAULT;
    protected boolean nmDetectionLockESet;
    protected static final Double NM_MAIN_FUNCTION_PERIOD_EDEFAULT = new Double(0.0);
    protected Double nmMainFunctionPeriod = NM_MAIN_FUNCTION_PERIOD_EDEFAULT;
    protected boolean nmMainFunctionPeriodESet;
    protected static final Double NM_MESSAGE_TIMEOUT_TIME_EDEFAULT = new Double(0.0);
    protected Double nmMessageTimeoutTime = NM_MESSAGE_TIMEOUT_TIME_EDEFAULT;
    protected boolean nmMessageTimeoutTimeESet;
    protected static final IntegerDatatype NM_READY_SLEEP_COUNT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmReadySleepCount = NM_READY_SLEEP_COUNT_EDEFAULT.clone();
    protected boolean nmReadySleepCountESet;
    protected static final Double NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
    protected boolean nmRemoteSleepIndicationTimeESet;
    protected static final Boolean NM_REPEAT_MESSAGE_BIT_ACTIVE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmRepeatMessageBitActive = NM_REPEAT_MESSAGE_BIT_ACTIVE_EDEFAULT;
    protected boolean nmRepeatMessageBitActiveESet;
    protected static final Double NM_REPEAT_MESSAGE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRepeatMessageTime = NM_REPEAT_MESSAGE_TIME_EDEFAULT;
    protected boolean nmRepeatMessageTimeESet;
    protected static final IntegerDatatype NM_REPETITION_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmRepetitionCycle = NM_REPETITION_CYCLE_EDEFAULT.clone();
    protected boolean nmRepetitionCycleESet;
    protected static final IntegerDatatype NM_VOTING_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmVotingCycle = NM_VOTING_CYCLE_EDEFAULT.clone();
    protected boolean nmVotingCycleESet;

    protected FlexrayNmClusterImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.FLEXRAY_NM_CLUSTER;
    }

    public Long getNmCarWakeUpBitPosition() {
        return (Long)this.nmCarWakeUpBitPosition.basicGetValue();
    }

    public void setNmCarWakeUpBitPosition(Long newNmCarWakeUpBitPosition) {
        Long oldNmCarWakeUpBitPosition = (Long)this.nmCarWakeUpBitPosition.basicGetValue();
        this.nmCarWakeUpBitPosition.basicSetValue((Object)newNmCarWakeUpBitPosition);
        boolean oldNmCarWakeUpBitPositionESet = this.nmCarWakeUpBitPositionESet;
        this.nmCarWakeUpBitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldNmCarWakeUpBitPosition, (Object)newNmCarWakeUpBitPosition, !oldNmCarWakeUpBitPositionESet));
        }
    }

    public void unsetNmCarWakeUpBitPosition() {
        Long oldNmCarWakeUpBitPosition = (Long)this.nmCarWakeUpBitPosition.basicGetValue();
        boolean oldNmCarWakeUpBitPositionESet = this.nmCarWakeUpBitPositionESet;
        this.nmCarWakeUpBitPosition = NM_CAR_WAKE_UP_BIT_POSITION_EDEFAULT.clone();
        this.nmCarWakeUpBitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldNmCarWakeUpBitPosition, (Object)NM_CAR_WAKE_UP_BIT_POSITION_EDEFAULT, oldNmCarWakeUpBitPositionESet));
        }
    }

    public boolean isSetNmCarWakeUpBitPosition() {
        return this.nmCarWakeUpBitPositionESet;
    }

    public Boolean getNmCarWakeUpFilterEnabled() {
        return this.nmCarWakeUpFilterEnabled;
    }

    public void setNmCarWakeUpFilterEnabled(Boolean newNmCarWakeUpFilterEnabled) {
        Boolean oldNmCarWakeUpFilterEnabled = this.nmCarWakeUpFilterEnabled;
        this.nmCarWakeUpFilterEnabled = newNmCarWakeUpFilterEnabled;
        boolean oldNmCarWakeUpFilterEnabledESet = this.nmCarWakeUpFilterEnabledESet;
        this.nmCarWakeUpFilterEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNmCarWakeUpFilterEnabled, (Object)this.nmCarWakeUpFilterEnabled, !oldNmCarWakeUpFilterEnabledESet));
        }
    }

    public void unsetNmCarWakeUpFilterEnabled() {
        Boolean oldNmCarWakeUpFilterEnabled = this.nmCarWakeUpFilterEnabled;
        boolean oldNmCarWakeUpFilterEnabledESet = this.nmCarWakeUpFilterEnabledESet;
        this.nmCarWakeUpFilterEnabled = NM_CAR_WAKE_UP_FILTER_ENABLED_EDEFAULT;
        this.nmCarWakeUpFilterEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNmCarWakeUpFilterEnabled, (Object)NM_CAR_WAKE_UP_FILTER_ENABLED_EDEFAULT, oldNmCarWakeUpFilterEnabledESet));
        }
    }

    public boolean isSetNmCarWakeUpFilterEnabled() {
        return this.nmCarWakeUpFilterEnabledESet;
    }

    public Long getNmCarWakeUpFilterNodeId() {
        return (Long)this.nmCarWakeUpFilterNodeId.basicGetValue();
    }

    public void setNmCarWakeUpFilterNodeId(Long newNmCarWakeUpFilterNodeId) {
        Long oldNmCarWakeUpFilterNodeId = (Long)this.nmCarWakeUpFilterNodeId.basicGetValue();
        this.nmCarWakeUpFilterNodeId.basicSetValue((Object)newNmCarWakeUpFilterNodeId);
        boolean oldNmCarWakeUpFilterNodeIdESet = this.nmCarWakeUpFilterNodeIdESet;
        this.nmCarWakeUpFilterNodeIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldNmCarWakeUpFilterNodeId, (Object)newNmCarWakeUpFilterNodeId, !oldNmCarWakeUpFilterNodeIdESet));
        }
    }

    public void unsetNmCarWakeUpFilterNodeId() {
        Long oldNmCarWakeUpFilterNodeId = (Long)this.nmCarWakeUpFilterNodeId.basicGetValue();
        boolean oldNmCarWakeUpFilterNodeIdESet = this.nmCarWakeUpFilterNodeIdESet;
        this.nmCarWakeUpFilterNodeId = NM_CAR_WAKE_UP_FILTER_NODE_ID_EDEFAULT.clone();
        this.nmCarWakeUpFilterNodeIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldNmCarWakeUpFilterNodeId, (Object)NM_CAR_WAKE_UP_FILTER_NODE_ID_EDEFAULT, oldNmCarWakeUpFilterNodeIdESet));
        }
    }

    public boolean isSetNmCarWakeUpFilterNodeId() {
        return this.nmCarWakeUpFilterNodeIdESet;
    }

    public Boolean getNmCarWakeUpRxEnabled() {
        return this.nmCarWakeUpRxEnabled;
    }

    public void setNmCarWakeUpRxEnabled(Boolean newNmCarWakeUpRxEnabled) {
        Boolean oldNmCarWakeUpRxEnabled = this.nmCarWakeUpRxEnabled;
        this.nmCarWakeUpRxEnabled = newNmCarWakeUpRxEnabled;
        boolean oldNmCarWakeUpRxEnabledESet = this.nmCarWakeUpRxEnabledESet;
        this.nmCarWakeUpRxEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldNmCarWakeUpRxEnabled, (Object)this.nmCarWakeUpRxEnabled, !oldNmCarWakeUpRxEnabledESet));
        }
    }

    public void unsetNmCarWakeUpRxEnabled() {
        Boolean oldNmCarWakeUpRxEnabled = this.nmCarWakeUpRxEnabled;
        boolean oldNmCarWakeUpRxEnabledESet = this.nmCarWakeUpRxEnabledESet;
        this.nmCarWakeUpRxEnabled = NM_CAR_WAKE_UP_RX_ENABLED_EDEFAULT;
        this.nmCarWakeUpRxEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldNmCarWakeUpRxEnabled, (Object)NM_CAR_WAKE_UP_RX_ENABLED_EDEFAULT, oldNmCarWakeUpRxEnabledESet));
        }
    }

    public boolean isSetNmCarWakeUpRxEnabled() {
        return this.nmCarWakeUpRxEnabledESet;
    }

    public Boolean getNmControlBitVectorActive() {
        return this.nmControlBitVectorActive;
    }

    public void setNmControlBitVectorActive(Boolean newNmControlBitVectorActive) {
        Boolean oldNmControlBitVectorActive = this.nmControlBitVectorActive;
        this.nmControlBitVectorActive = newNmControlBitVectorActive;
        boolean oldNmControlBitVectorActiveESet = this.nmControlBitVectorActiveESet;
        this.nmControlBitVectorActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldNmControlBitVectorActive, (Object)this.nmControlBitVectorActive, !oldNmControlBitVectorActiveESet));
        }
    }

    public void unsetNmControlBitVectorActive() {
        Boolean oldNmControlBitVectorActive = this.nmControlBitVectorActive;
        boolean oldNmControlBitVectorActiveESet = this.nmControlBitVectorActiveESet;
        this.nmControlBitVectorActive = NM_CONTROL_BIT_VECTOR_ACTIVE_EDEFAULT;
        this.nmControlBitVectorActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldNmControlBitVectorActive, (Object)NM_CONTROL_BIT_VECTOR_ACTIVE_EDEFAULT, oldNmControlBitVectorActiveESet));
        }
    }

    public boolean isSetNmControlBitVectorActive() {
        return this.nmControlBitVectorActiveESet;
    }

    public Integer getNmDataCycle() {
        return (Integer)this.nmDataCycle.basicGetValue();
    }

    public void setNmDataCycle(Integer newNmDataCycle) {
        Integer oldNmDataCycle = (Integer)this.nmDataCycle.basicGetValue();
        this.nmDataCycle.basicSetValue((Object)newNmDataCycle);
        boolean oldNmDataCycleESet = this.nmDataCycleESet;
        this.nmDataCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldNmDataCycle, (Object)newNmDataCycle, !oldNmDataCycleESet));
        }
    }

    public void unsetNmDataCycle() {
        Integer oldNmDataCycle = (Integer)this.nmDataCycle.basicGetValue();
        boolean oldNmDataCycleESet = this.nmDataCycleESet;
        this.nmDataCycle = NM_DATA_CYCLE_EDEFAULT.clone();
        this.nmDataCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldNmDataCycle, (Object)NM_DATA_CYCLE_EDEFAULT, oldNmDataCycleESet));
        }
    }

    public boolean isSetNmDataCycle() {
        return this.nmDataCycleESet;
    }

    public Boolean getNmDataEnabled() {
        return this.nmDataEnabled;
    }

    public void setNmDataEnabled(Boolean newNmDataEnabled) {
        Boolean oldNmDataEnabled = this.nmDataEnabled;
        this.nmDataEnabled = newNmDataEnabled;
        boolean oldNmDataEnabledESet = this.nmDataEnabledESet;
        this.nmDataEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldNmDataEnabled, (Object)this.nmDataEnabled, !oldNmDataEnabledESet));
        }
    }

    public void unsetNmDataEnabled() {
        Boolean oldNmDataEnabled = this.nmDataEnabled;
        boolean oldNmDataEnabledESet = this.nmDataEnabledESet;
        this.nmDataEnabled = NM_DATA_ENABLED_EDEFAULT;
        this.nmDataEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldNmDataEnabled, (Object)NM_DATA_ENABLED_EDEFAULT, oldNmDataEnabledESet));
        }
    }

    public boolean isSetNmDataEnabled() {
        return this.nmDataEnabledESet;
    }

    public Double getNmDetectionLock() {
        return this.nmDetectionLock;
    }

    public void setNmDetectionLock(Double newNmDetectionLock) {
        Double oldNmDetectionLock = this.nmDetectionLock;
        this.nmDetectionLock = newNmDetectionLock;
        boolean oldNmDetectionLockESet = this.nmDetectionLockESet;
        this.nmDetectionLockESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldNmDetectionLock, (Object)this.nmDetectionLock, !oldNmDetectionLockESet));
        }
    }

    public void unsetNmDetectionLock() {
        Double oldNmDetectionLock = this.nmDetectionLock;
        boolean oldNmDetectionLockESet = this.nmDetectionLockESet;
        this.nmDetectionLock = NM_DETECTION_LOCK_EDEFAULT;
        this.nmDetectionLockESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldNmDetectionLock, (Object)NM_DETECTION_LOCK_EDEFAULT, oldNmDetectionLockESet));
        }
    }

    public boolean isSetNmDetectionLock() {
        return this.nmDetectionLockESet;
    }

    public Double getNmMainFunctionPeriod() {
        return this.nmMainFunctionPeriod;
    }

    public void setNmMainFunctionPeriod(Double newNmMainFunctionPeriod) {
        Double oldNmMainFunctionPeriod = this.nmMainFunctionPeriod;
        this.nmMainFunctionPeriod = newNmMainFunctionPeriod;
        boolean oldNmMainFunctionPeriodESet = this.nmMainFunctionPeriodESet;
        this.nmMainFunctionPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldNmMainFunctionPeriod, (Object)this.nmMainFunctionPeriod, !oldNmMainFunctionPeriodESet));
        }
    }

    public void unsetNmMainFunctionPeriod() {
        Double oldNmMainFunctionPeriod = this.nmMainFunctionPeriod;
        boolean oldNmMainFunctionPeriodESet = this.nmMainFunctionPeriodESet;
        this.nmMainFunctionPeriod = NM_MAIN_FUNCTION_PERIOD_EDEFAULT;
        this.nmMainFunctionPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldNmMainFunctionPeriod, (Object)NM_MAIN_FUNCTION_PERIOD_EDEFAULT, oldNmMainFunctionPeriodESet));
        }
    }

    public boolean isSetNmMainFunctionPeriod() {
        return this.nmMainFunctionPeriodESet;
    }

    public Double getNmMessageTimeoutTime() {
        return this.nmMessageTimeoutTime;
    }

    public void setNmMessageTimeoutTime(Double newNmMessageTimeoutTime) {
        Double oldNmMessageTimeoutTime = this.nmMessageTimeoutTime;
        this.nmMessageTimeoutTime = newNmMessageTimeoutTime;
        boolean oldNmMessageTimeoutTimeESet = this.nmMessageTimeoutTimeESet;
        this.nmMessageTimeoutTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldNmMessageTimeoutTime, (Object)this.nmMessageTimeoutTime, !oldNmMessageTimeoutTimeESet));
        }
    }

    public void unsetNmMessageTimeoutTime() {
        Double oldNmMessageTimeoutTime = this.nmMessageTimeoutTime;
        boolean oldNmMessageTimeoutTimeESet = this.nmMessageTimeoutTimeESet;
        this.nmMessageTimeoutTime = NM_MESSAGE_TIMEOUT_TIME_EDEFAULT;
        this.nmMessageTimeoutTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldNmMessageTimeoutTime, (Object)NM_MESSAGE_TIMEOUT_TIME_EDEFAULT, oldNmMessageTimeoutTimeESet));
        }
    }

    public boolean isSetNmMessageTimeoutTime() {
        return this.nmMessageTimeoutTimeESet;
    }

    public Integer getNmReadySleepCount() {
        return (Integer)this.nmReadySleepCount.basicGetValue();
    }

    public void setNmReadySleepCount(Integer newNmReadySleepCount) {
        Integer oldNmReadySleepCount = (Integer)this.nmReadySleepCount.basicGetValue();
        this.nmReadySleepCount.basicSetValue((Object)newNmReadySleepCount);
        boolean oldNmReadySleepCountESet = this.nmReadySleepCountESet;
        this.nmReadySleepCountESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldNmReadySleepCount, (Object)newNmReadySleepCount, !oldNmReadySleepCountESet));
        }
    }

    public void unsetNmReadySleepCount() {
        Integer oldNmReadySleepCount = (Integer)this.nmReadySleepCount.basicGetValue();
        boolean oldNmReadySleepCountESet = this.nmReadySleepCountESet;
        this.nmReadySleepCount = NM_READY_SLEEP_COUNT_EDEFAULT.clone();
        this.nmReadySleepCountESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldNmReadySleepCount, (Object)NM_READY_SLEEP_COUNT_EDEFAULT, oldNmReadySleepCountESet));
        }
    }

    public boolean isSetNmReadySleepCount() {
        return this.nmReadySleepCountESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldNmRemoteSleepIndicationTime, (Object)this.nmRemoteSleepIndicationTime, !oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public void unsetNmRemoteSleepIndicationTime() {
        Double oldNmRemoteSleepIndicationTime = this.nmRemoteSleepIndicationTime;
        boolean oldNmRemoteSleepIndicationTimeESet = this.nmRemoteSleepIndicationTimeESet;
        this.nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
        this.nmRemoteSleepIndicationTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldNmRemoteSleepIndicationTime, (Object)NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT, oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public boolean isSetNmRemoteSleepIndicationTime() {
        return this.nmRemoteSleepIndicationTimeESet;
    }

    public Boolean getNmRepeatMessageBitActive() {
        return this.nmRepeatMessageBitActive;
    }

    public void setNmRepeatMessageBitActive(Boolean newNmRepeatMessageBitActive) {
        Boolean oldNmRepeatMessageBitActive = this.nmRepeatMessageBitActive;
        this.nmRepeatMessageBitActive = newNmRepeatMessageBitActive;
        boolean oldNmRepeatMessageBitActiveESet = this.nmRepeatMessageBitActiveESet;
        this.nmRepeatMessageBitActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldNmRepeatMessageBitActive, (Object)this.nmRepeatMessageBitActive, !oldNmRepeatMessageBitActiveESet));
        }
    }

    public void unsetNmRepeatMessageBitActive() {
        Boolean oldNmRepeatMessageBitActive = this.nmRepeatMessageBitActive;
        boolean oldNmRepeatMessageBitActiveESet = this.nmRepeatMessageBitActiveESet;
        this.nmRepeatMessageBitActive = NM_REPEAT_MESSAGE_BIT_ACTIVE_EDEFAULT;
        this.nmRepeatMessageBitActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldNmRepeatMessageBitActive, (Object)NM_REPEAT_MESSAGE_BIT_ACTIVE_EDEFAULT, oldNmRepeatMessageBitActiveESet));
        }
    }

    public boolean isSetNmRepeatMessageBitActive() {
        return this.nmRepeatMessageBitActiveESet;
    }

    public Double getNmRepeatMessageTime() {
        return this.nmRepeatMessageTime;
    }

    public void setNmRepeatMessageTime(Double newNmRepeatMessageTime) {
        Double oldNmRepeatMessageTime = this.nmRepeatMessageTime;
        this.nmRepeatMessageTime = newNmRepeatMessageTime;
        boolean oldNmRepeatMessageTimeESet = this.nmRepeatMessageTimeESet;
        this.nmRepeatMessageTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldNmRepeatMessageTime, (Object)this.nmRepeatMessageTime, !oldNmRepeatMessageTimeESet));
        }
    }

    public void unsetNmRepeatMessageTime() {
        Double oldNmRepeatMessageTime = this.nmRepeatMessageTime;
        boolean oldNmRepeatMessageTimeESet = this.nmRepeatMessageTimeESet;
        this.nmRepeatMessageTime = NM_REPEAT_MESSAGE_TIME_EDEFAULT;
        this.nmRepeatMessageTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldNmRepeatMessageTime, (Object)NM_REPEAT_MESSAGE_TIME_EDEFAULT, oldNmRepeatMessageTimeESet));
        }
    }

    public boolean isSetNmRepeatMessageTime() {
        return this.nmRepeatMessageTimeESet;
    }

    public Integer getNmRepetitionCycle() {
        return (Integer)this.nmRepetitionCycle.basicGetValue();
    }

    public void setNmRepetitionCycle(Integer newNmRepetitionCycle) {
        Integer oldNmRepetitionCycle = (Integer)this.nmRepetitionCycle.basicGetValue();
        this.nmRepetitionCycle.basicSetValue((Object)newNmRepetitionCycle);
        boolean oldNmRepetitionCycleESet = this.nmRepetitionCycleESet;
        this.nmRepetitionCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldNmRepetitionCycle, (Object)newNmRepetitionCycle, !oldNmRepetitionCycleESet));
        }
    }

    public void unsetNmRepetitionCycle() {
        Integer oldNmRepetitionCycle = (Integer)this.nmRepetitionCycle.basicGetValue();
        boolean oldNmRepetitionCycleESet = this.nmRepetitionCycleESet;
        this.nmRepetitionCycle = NM_REPETITION_CYCLE_EDEFAULT.clone();
        this.nmRepetitionCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldNmRepetitionCycle, (Object)NM_REPETITION_CYCLE_EDEFAULT, oldNmRepetitionCycleESet));
        }
    }

    public boolean isSetNmRepetitionCycle() {
        return this.nmRepetitionCycleESet;
    }

    public Integer getNmVotingCycle() {
        return (Integer)this.nmVotingCycle.basicGetValue();
    }

    public void setNmVotingCycle(Integer newNmVotingCycle) {
        Integer oldNmVotingCycle = (Integer)this.nmVotingCycle.basicGetValue();
        this.nmVotingCycle.basicSetValue((Object)newNmVotingCycle);
        boolean oldNmVotingCycleESet = this.nmVotingCycleESet;
        this.nmVotingCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldNmVotingCycle, (Object)newNmVotingCycle, !oldNmVotingCycleESet));
        }
    }

    public void unsetNmVotingCycle() {
        Integer oldNmVotingCycle = (Integer)this.nmVotingCycle.basicGetValue();
        boolean oldNmVotingCycleESet = this.nmVotingCycleESet;
        this.nmVotingCycle = NM_VOTING_CYCLE_EDEFAULT.clone();
        this.nmVotingCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldNmVotingCycle, (Object)NM_VOTING_CYCLE_EDEFAULT, oldNmVotingCycleESet));
        }
    }

    public boolean isSetNmVotingCycle() {
        return this.nmVotingCycleESet;
    }

    public PositiveIntegerDatatype getNmCarWakeUpBitPositionData() {
        return this.nmCarWakeUpBitPosition.clone();
    }

    public void setNmCarWakeUpBitPositionData(PositiveIntegerDatatype newNmCarWakeUpBitPosition) {
        this.nmCarWakeUpBitPosition.setRadix((int)newNmCarWakeUpBitPosition.getRadix());
        this.nmCarWakeUpBitPosition.setNoOfDigits((int)newNmCarWakeUpBitPosition.getNoOfDigits());
        this.setNmCarWakeUpBitPosition(newNmCarWakeUpBitPosition.getValue());
    }

    public PositiveIntegerDatatype getNmCarWakeUpFilterNodeIdData() {
        return this.nmCarWakeUpFilterNodeId.clone();
    }

    public void setNmCarWakeUpFilterNodeIdData(PositiveIntegerDatatype newNmCarWakeUpFilterNodeId) {
        this.nmCarWakeUpFilterNodeId.setRadix((int)newNmCarWakeUpFilterNodeId.getRadix());
        this.nmCarWakeUpFilterNodeId.setNoOfDigits((int)newNmCarWakeUpFilterNodeId.getNoOfDigits());
        this.setNmCarWakeUpFilterNodeId(newNmCarWakeUpFilterNodeId.getValue());
    }

    public IntegerDatatype getNmDataCycleData() {
        return this.nmDataCycle.clone();
    }

    public void setNmDataCycleData(IntegerDatatype newNmDataCycle) {
        this.nmDataCycle.setRadix((int)newNmDataCycle.getRadix());
        this.nmDataCycle.setNoOfDigits((int)newNmDataCycle.getNoOfDigits());
        this.setNmDataCycle(newNmDataCycle.getValue());
    }

    public IntegerDatatype getNmReadySleepCountData() {
        return this.nmReadySleepCount.clone();
    }

    public void setNmReadySleepCountData(IntegerDatatype newNmReadySleepCount) {
        this.nmReadySleepCount.setRadix((int)newNmReadySleepCount.getRadix());
        this.nmReadySleepCount.setNoOfDigits((int)newNmReadySleepCount.getNoOfDigits());
        this.setNmReadySleepCount(newNmReadySleepCount.getValue());
    }

    public IntegerDatatype getNmRepetitionCycleData() {
        return this.nmRepetitionCycle.clone();
    }

    public void setNmRepetitionCycleData(IntegerDatatype newNmRepetitionCycle) {
        this.nmRepetitionCycle.setRadix((int)newNmRepetitionCycle.getRadix());
        this.nmRepetitionCycle.setNoOfDigits((int)newNmRepetitionCycle.getNoOfDigits());
        this.setNmRepetitionCycle(newNmRepetitionCycle.getValue());
    }

    public IntegerDatatype getNmVotingCycleData() {
        return this.nmVotingCycle.clone();
    }

    public void setNmVotingCycleData(IntegerDatatype newNmVotingCycle) {
        this.nmVotingCycle.setRadix((int)newNmVotingCycle.getRadix());
        this.nmVotingCycle.setNoOfDigits((int)newNmVotingCycle.getNoOfDigits());
        this.setNmVotingCycle(newNmVotingCycle.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getNmCarWakeUpBitPosition();
            }
            case 26: {
                return this.getNmCarWakeUpFilterEnabled();
            }
            case 27: {
                return this.getNmCarWakeUpFilterNodeId();
            }
            case 28: {
                return this.getNmCarWakeUpRxEnabled();
            }
            case 29: {
                return this.getNmControlBitVectorActive();
            }
            case 30: {
                return this.getNmDataCycle();
            }
            case 31: {
                return this.getNmDataEnabled();
            }
            case 32: {
                return this.getNmDetectionLock();
            }
            case 33: {
                return this.getNmMainFunctionPeriod();
            }
            case 34: {
                return this.getNmMessageTimeoutTime();
            }
            case 35: {
                return this.getNmReadySleepCount();
            }
            case 36: {
                return this.getNmRemoteSleepIndicationTime();
            }
            case 37: {
                return this.getNmRepeatMessageBitActive();
            }
            case 38: {
                return this.getNmRepeatMessageTime();
            }
            case 39: {
                return this.getNmRepetitionCycle();
            }
            case 40: {
                return this.getNmVotingCycle();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.setNmCarWakeUpBitPosition((Long)newValue);
                return;
            }
            case 26: {
                this.setNmCarWakeUpFilterEnabled((Boolean)newValue);
                return;
            }
            case 27: {
                this.setNmCarWakeUpFilterNodeId((Long)newValue);
                return;
            }
            case 28: {
                this.setNmCarWakeUpRxEnabled((Boolean)newValue);
                return;
            }
            case 29: {
                this.setNmControlBitVectorActive((Boolean)newValue);
                return;
            }
            case 30: {
                this.setNmDataCycle((Integer)newValue);
                return;
            }
            case 31: {
                this.setNmDataEnabled((Boolean)newValue);
                return;
            }
            case 32: {
                this.setNmDetectionLock((Double)newValue);
                return;
            }
            case 33: {
                this.setNmMainFunctionPeriod((Double)newValue);
                return;
            }
            case 34: {
                this.setNmMessageTimeoutTime((Double)newValue);
                return;
            }
            case 35: {
                this.setNmReadySleepCount((Integer)newValue);
                return;
            }
            case 36: {
                this.setNmRemoteSleepIndicationTime((Double)newValue);
                return;
            }
            case 37: {
                this.setNmRepeatMessageBitActive((Boolean)newValue);
                return;
            }
            case 38: {
                this.setNmRepeatMessageTime((Double)newValue);
                return;
            }
            case 39: {
                this.setNmRepetitionCycle((Integer)newValue);
                return;
            }
            case 40: {
                this.setNmVotingCycle((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.unsetNmCarWakeUpBitPosition();
                return;
            }
            case 26: {
                this.unsetNmCarWakeUpFilterEnabled();
                return;
            }
            case 27: {
                this.unsetNmCarWakeUpFilterNodeId();
                return;
            }
            case 28: {
                this.unsetNmCarWakeUpRxEnabled();
                return;
            }
            case 29: {
                this.unsetNmControlBitVectorActive();
                return;
            }
            case 30: {
                this.unsetNmDataCycle();
                return;
            }
            case 31: {
                this.unsetNmDataEnabled();
                return;
            }
            case 32: {
                this.unsetNmDetectionLock();
                return;
            }
            case 33: {
                this.unsetNmMainFunctionPeriod();
                return;
            }
            case 34: {
                this.unsetNmMessageTimeoutTime();
                return;
            }
            case 35: {
                this.unsetNmReadySleepCount();
                return;
            }
            case 36: {
                this.unsetNmRemoteSleepIndicationTime();
                return;
            }
            case 37: {
                this.unsetNmRepeatMessageBitActive();
                return;
            }
            case 38: {
                this.unsetNmRepeatMessageTime();
                return;
            }
            case 39: {
                this.unsetNmRepetitionCycle();
                return;
            }
            case 40: {
                this.unsetNmVotingCycle();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.isSetNmCarWakeUpBitPosition();
            }
            case 26: {
                return this.isSetNmCarWakeUpFilterEnabled();
            }
            case 27: {
                return this.isSetNmCarWakeUpFilterNodeId();
            }
            case 28: {
                return this.isSetNmCarWakeUpRxEnabled();
            }
            case 29: {
                return this.isSetNmControlBitVectorActive();
            }
            case 30: {
                return this.isSetNmDataCycle();
            }
            case 31: {
                return this.isSetNmDataEnabled();
            }
            case 32: {
                return this.isSetNmDetectionLock();
            }
            case 33: {
                return this.isSetNmMainFunctionPeriod();
            }
            case 34: {
                return this.isSetNmMessageTimeoutTime();
            }
            case 35: {
                return this.isSetNmReadySleepCount();
            }
            case 36: {
                return this.isSetNmRemoteSleepIndicationTime();
            }
            case 37: {
                return this.isSetNmRepeatMessageBitActive();
            }
            case 38: {
                return this.isSetNmRepeatMessageTime();
            }
            case 39: {
                return this.isSetNmRepetitionCycle();
            }
            case 40: {
                return this.isSetNmVotingCycle();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmCarWakeUpBitPosition: ");
        if (this.nmCarWakeUpBitPositionESet) {
            result.append(this.nmCarWakeUpBitPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", nmCarWakeUpFilterEnabled: ");
        if (this.nmCarWakeUpFilterEnabledESet) {
            result.append(this.nmCarWakeUpFilterEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmCarWakeUpFilterNodeId: ");
        if (this.nmCarWakeUpFilterNodeIdESet) {
            result.append(this.nmCarWakeUpFilterNodeId);
        } else {
            result.append("<unset>");
        }
        result.append(", nmCarWakeUpRxEnabled: ");
        if (this.nmCarWakeUpRxEnabledESet) {
            result.append(this.nmCarWakeUpRxEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmControlBitVectorActive: ");
        if (this.nmControlBitVectorActiveESet) {
            result.append(this.nmControlBitVectorActive);
        } else {
            result.append("<unset>");
        }
        result.append(", nmDataCycle: ");
        if (this.nmDataCycleESet) {
            result.append(this.nmDataCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", nmDataEnabled: ");
        if (this.nmDataEnabledESet) {
            result.append(this.nmDataEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmDetectionLock: ");
        if (this.nmDetectionLockESet) {
            result.append(this.nmDetectionLock);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMainFunctionPeriod: ");
        if (this.nmMainFunctionPeriodESet) {
            result.append(this.nmMainFunctionPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMessageTimeoutTime: ");
        if (this.nmMessageTimeoutTimeESet) {
            result.append(this.nmMessageTimeoutTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmReadySleepCount: ");
        if (this.nmReadySleepCountESet) {
            result.append(this.nmReadySleepCount);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRemoteSleepIndicationTime: ");
        if (this.nmRemoteSleepIndicationTimeESet) {
            result.append(this.nmRemoteSleepIndicationTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMessageBitActive: ");
        if (this.nmRepeatMessageBitActiveESet) {
            result.append(this.nmRepeatMessageBitActive);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMessageTime: ");
        if (this.nmRepeatMessageTimeESet) {
            result.append(this.nmRepeatMessageTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepetitionCycle: ");
        if (this.nmRepetitionCycleESet) {
            result.append(this.nmRepetitionCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", nmVotingCycle: ");
        if (this.nmVotingCycleESet) {
            result.append(this.nmVotingCycle);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

