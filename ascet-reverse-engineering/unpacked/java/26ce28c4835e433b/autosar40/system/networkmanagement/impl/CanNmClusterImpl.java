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

import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NmClusterImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanNmClusterImpl
extends NmClusterImpl
implements CanNmCluster {
    protected static final Boolean NM_BUSLOAD_REDUCTION_ACTIVE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmBusloadReductionActive = NM_BUSLOAD_REDUCTION_ACTIVE_EDEFAULT;
    protected boolean nmBusloadReductionActiveESet;
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
    protected static final IntegerDatatype NM_CBV_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmCbvPosition = NM_CBV_POSITION_EDEFAULT.clone();
    protected boolean nmCbvPositionESet;
    protected static final Boolean NM_CHANNEL_ACTIVE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmChannelActive = NM_CHANNEL_ACTIVE_EDEFAULT;
    protected boolean nmChannelActiveESet;
    protected static final Double NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmImmediateNmCycleTime = NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT;
    protected boolean nmImmediateNmCycleTimeESet;
    protected static final PositiveIntegerDatatype NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nmImmediateNmTransmissions = NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT.clone();
    protected boolean nmImmediateNmTransmissionsESet;
    protected static final Double NM_MESSAGE_TIMEOUT_TIME_EDEFAULT = new Double(0.0);
    protected Double nmMessageTimeoutTime = NM_MESSAGE_TIMEOUT_TIME_EDEFAULT;
    protected boolean nmMessageTimeoutTimeESet;
    protected static final Double NM_MSG_CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmMsgCycleTime = NM_MSG_CYCLE_TIME_EDEFAULT;
    protected boolean nmMsgCycleTimeESet;
    protected static final Double NM_NETWORK_TIMEOUT_EDEFAULT = new Double(0.0);
    protected Double nmNetworkTimeout = NM_NETWORK_TIMEOUT_EDEFAULT;
    protected boolean nmNetworkTimeoutESet;
    protected static final IntegerDatatype NM_NID_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmNidPosition = NM_NID_POSITION_EDEFAULT.clone();
    protected boolean nmNidPositionESet;
    protected static final Double NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
    protected boolean nmRemoteSleepIndicationTimeESet;
    protected static final Double NM_REPEAT_MESSAGE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRepeatMessageTime = NM_REPEAT_MESSAGE_TIME_EDEFAULT;
    protected boolean nmRepeatMessageTimeESet;
    protected static final IntegerDatatype NM_USER_DATA_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmUserDataLength = NM_USER_DATA_LENGTH_EDEFAULT.clone();
    protected boolean nmUserDataLengthESet;
    protected static final Double NM_WAIT_BUS_SLEEP_TIME_EDEFAULT = new Double(0.0);
    protected Double nmWaitBusSleepTime = NM_WAIT_BUS_SLEEP_TIME_EDEFAULT;
    protected boolean nmWaitBusSleepTimeESet;

    protected CanNmClusterImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.CAN_NM_CLUSTER;
    }

    public Boolean getNmBusloadReductionActive() {
        return this.nmBusloadReductionActive;
    }

    public void setNmBusloadReductionActive(Boolean newNmBusloadReductionActive) {
        Boolean oldNmBusloadReductionActive = this.nmBusloadReductionActive;
        this.nmBusloadReductionActive = newNmBusloadReductionActive;
        boolean oldNmBusloadReductionActiveESet = this.nmBusloadReductionActiveESet;
        this.nmBusloadReductionActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldNmBusloadReductionActive, (Object)this.nmBusloadReductionActive, !oldNmBusloadReductionActiveESet));
        }
    }

    public void unsetNmBusloadReductionActive() {
        Boolean oldNmBusloadReductionActive = this.nmBusloadReductionActive;
        boolean oldNmBusloadReductionActiveESet = this.nmBusloadReductionActiveESet;
        this.nmBusloadReductionActive = NM_BUSLOAD_REDUCTION_ACTIVE_EDEFAULT;
        this.nmBusloadReductionActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldNmBusloadReductionActive, (Object)NM_BUSLOAD_REDUCTION_ACTIVE_EDEFAULT, oldNmBusloadReductionActiveESet));
        }
    }

    public boolean isSetNmBusloadReductionActive() {
        return this.nmBusloadReductionActiveESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNmCarWakeUpBitPosition, (Object)newNmCarWakeUpBitPosition, !oldNmCarWakeUpBitPositionESet));
        }
    }

    public void unsetNmCarWakeUpBitPosition() {
        Long oldNmCarWakeUpBitPosition = (Long)this.nmCarWakeUpBitPosition.basicGetValue();
        boolean oldNmCarWakeUpBitPositionESet = this.nmCarWakeUpBitPositionESet;
        this.nmCarWakeUpBitPosition = NM_CAR_WAKE_UP_BIT_POSITION_EDEFAULT.clone();
        this.nmCarWakeUpBitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNmCarWakeUpBitPosition, (Object)NM_CAR_WAKE_UP_BIT_POSITION_EDEFAULT, oldNmCarWakeUpBitPositionESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldNmCarWakeUpFilterEnabled, (Object)this.nmCarWakeUpFilterEnabled, !oldNmCarWakeUpFilterEnabledESet));
        }
    }

    public void unsetNmCarWakeUpFilterEnabled() {
        Boolean oldNmCarWakeUpFilterEnabled = this.nmCarWakeUpFilterEnabled;
        boolean oldNmCarWakeUpFilterEnabledESet = this.nmCarWakeUpFilterEnabledESet;
        this.nmCarWakeUpFilterEnabled = NM_CAR_WAKE_UP_FILTER_ENABLED_EDEFAULT;
        this.nmCarWakeUpFilterEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldNmCarWakeUpFilterEnabled, (Object)NM_CAR_WAKE_UP_FILTER_ENABLED_EDEFAULT, oldNmCarWakeUpFilterEnabledESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldNmCarWakeUpFilterNodeId, (Object)newNmCarWakeUpFilterNodeId, !oldNmCarWakeUpFilterNodeIdESet));
        }
    }

    public void unsetNmCarWakeUpFilterNodeId() {
        Long oldNmCarWakeUpFilterNodeId = (Long)this.nmCarWakeUpFilterNodeId.basicGetValue();
        boolean oldNmCarWakeUpFilterNodeIdESet = this.nmCarWakeUpFilterNodeIdESet;
        this.nmCarWakeUpFilterNodeId = NM_CAR_WAKE_UP_FILTER_NODE_ID_EDEFAULT.clone();
        this.nmCarWakeUpFilterNodeIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldNmCarWakeUpFilterNodeId, (Object)NM_CAR_WAKE_UP_FILTER_NODE_ID_EDEFAULT, oldNmCarWakeUpFilterNodeIdESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldNmCarWakeUpRxEnabled, (Object)this.nmCarWakeUpRxEnabled, !oldNmCarWakeUpRxEnabledESet));
        }
    }

    public void unsetNmCarWakeUpRxEnabled() {
        Boolean oldNmCarWakeUpRxEnabled = this.nmCarWakeUpRxEnabled;
        boolean oldNmCarWakeUpRxEnabledESet = this.nmCarWakeUpRxEnabledESet;
        this.nmCarWakeUpRxEnabled = NM_CAR_WAKE_UP_RX_ENABLED_EDEFAULT;
        this.nmCarWakeUpRxEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldNmCarWakeUpRxEnabled, (Object)NM_CAR_WAKE_UP_RX_ENABLED_EDEFAULT, oldNmCarWakeUpRxEnabledESet));
        }
    }

    public boolean isSetNmCarWakeUpRxEnabled() {
        return this.nmCarWakeUpRxEnabledESet;
    }

    public Integer getNmCbvPosition() {
        return (Integer)this.nmCbvPosition.basicGetValue();
    }

    public void setNmCbvPosition(Integer newNmCbvPosition) {
        Integer oldNmCbvPosition = (Integer)this.nmCbvPosition.basicGetValue();
        this.nmCbvPosition.basicSetValue((Object)newNmCbvPosition);
        boolean oldNmCbvPositionESet = this.nmCbvPositionESet;
        this.nmCbvPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldNmCbvPosition, (Object)newNmCbvPosition, !oldNmCbvPositionESet));
        }
    }

    public void unsetNmCbvPosition() {
        Integer oldNmCbvPosition = (Integer)this.nmCbvPosition.basicGetValue();
        boolean oldNmCbvPositionESet = this.nmCbvPositionESet;
        this.nmCbvPosition = NM_CBV_POSITION_EDEFAULT.clone();
        this.nmCbvPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldNmCbvPosition, (Object)NM_CBV_POSITION_EDEFAULT, oldNmCbvPositionESet));
        }
    }

    public boolean isSetNmCbvPosition() {
        return this.nmCbvPositionESet;
    }

    public Boolean getNmChannelActive() {
        return this.nmChannelActive;
    }

    public void setNmChannelActive(Boolean newNmChannelActive) {
        Boolean oldNmChannelActive = this.nmChannelActive;
        this.nmChannelActive = newNmChannelActive;
        boolean oldNmChannelActiveESet = this.nmChannelActiveESet;
        this.nmChannelActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldNmChannelActive, (Object)this.nmChannelActive, !oldNmChannelActiveESet));
        }
    }

    public void unsetNmChannelActive() {
        Boolean oldNmChannelActive = this.nmChannelActive;
        boolean oldNmChannelActiveESet = this.nmChannelActiveESet;
        this.nmChannelActive = NM_CHANNEL_ACTIVE_EDEFAULT;
        this.nmChannelActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldNmChannelActive, (Object)NM_CHANNEL_ACTIVE_EDEFAULT, oldNmChannelActiveESet));
        }
    }

    public boolean isSetNmChannelActive() {
        return this.nmChannelActiveESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldNmImmediateNmCycleTime, (Object)this.nmImmediateNmCycleTime, !oldNmImmediateNmCycleTimeESet));
        }
    }

    public void unsetNmImmediateNmCycleTime() {
        Double oldNmImmediateNmCycleTime = this.nmImmediateNmCycleTime;
        boolean oldNmImmediateNmCycleTimeESet = this.nmImmediateNmCycleTimeESet;
        this.nmImmediateNmCycleTime = NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT;
        this.nmImmediateNmCycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldNmImmediateNmCycleTime, (Object)NM_IMMEDIATE_NM_CYCLE_TIME_EDEFAULT, oldNmImmediateNmCycleTimeESet));
        }
    }

    public boolean isSetNmImmediateNmCycleTime() {
        return this.nmImmediateNmCycleTimeESet;
    }

    public Long getNmImmediateNmTransmissions() {
        return (Long)this.nmImmediateNmTransmissions.basicGetValue();
    }

    public void setNmImmediateNmTransmissions(Long newNmImmediateNmTransmissions) {
        Long oldNmImmediateNmTransmissions = (Long)this.nmImmediateNmTransmissions.basicGetValue();
        this.nmImmediateNmTransmissions.basicSetValue((Object)newNmImmediateNmTransmissions);
        boolean oldNmImmediateNmTransmissionsESet = this.nmImmediateNmTransmissionsESet;
        this.nmImmediateNmTransmissionsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldNmImmediateNmTransmissions, (Object)newNmImmediateNmTransmissions, !oldNmImmediateNmTransmissionsESet));
        }
    }

    public void unsetNmImmediateNmTransmissions() {
        Long oldNmImmediateNmTransmissions = (Long)this.nmImmediateNmTransmissions.basicGetValue();
        boolean oldNmImmediateNmTransmissionsESet = this.nmImmediateNmTransmissionsESet;
        this.nmImmediateNmTransmissions = NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT.clone();
        this.nmImmediateNmTransmissionsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldNmImmediateNmTransmissions, (Object)NM_IMMEDIATE_NM_TRANSMISSIONS_EDEFAULT, oldNmImmediateNmTransmissionsESet));
        }
    }

    public boolean isSetNmImmediateNmTransmissions() {
        return this.nmImmediateNmTransmissionsESet;
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

    public Double getNmMsgCycleTime() {
        return this.nmMsgCycleTime;
    }

    public void setNmMsgCycleTime(Double newNmMsgCycleTime) {
        Double oldNmMsgCycleTime = this.nmMsgCycleTime;
        this.nmMsgCycleTime = newNmMsgCycleTime;
        boolean oldNmMsgCycleTimeESet = this.nmMsgCycleTimeESet;
        this.nmMsgCycleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldNmMsgCycleTime, (Object)this.nmMsgCycleTime, !oldNmMsgCycleTimeESet));
        }
    }

    public void unsetNmMsgCycleTime() {
        Double oldNmMsgCycleTime = this.nmMsgCycleTime;
        boolean oldNmMsgCycleTimeESet = this.nmMsgCycleTimeESet;
        this.nmMsgCycleTime = NM_MSG_CYCLE_TIME_EDEFAULT;
        this.nmMsgCycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldNmMsgCycleTime, (Object)NM_MSG_CYCLE_TIME_EDEFAULT, oldNmMsgCycleTimeESet));
        }
    }

    public boolean isSetNmMsgCycleTime() {
        return this.nmMsgCycleTimeESet;
    }

    public Double getNmNetworkTimeout() {
        return this.nmNetworkTimeout;
    }

    public void setNmNetworkTimeout(Double newNmNetworkTimeout) {
        Double oldNmNetworkTimeout = this.nmNetworkTimeout;
        this.nmNetworkTimeout = newNmNetworkTimeout;
        boolean oldNmNetworkTimeoutESet = this.nmNetworkTimeoutESet;
        this.nmNetworkTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldNmNetworkTimeout, (Object)this.nmNetworkTimeout, !oldNmNetworkTimeoutESet));
        }
    }

    public void unsetNmNetworkTimeout() {
        Double oldNmNetworkTimeout = this.nmNetworkTimeout;
        boolean oldNmNetworkTimeoutESet = this.nmNetworkTimeoutESet;
        this.nmNetworkTimeout = NM_NETWORK_TIMEOUT_EDEFAULT;
        this.nmNetworkTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldNmNetworkTimeout, (Object)NM_NETWORK_TIMEOUT_EDEFAULT, oldNmNetworkTimeoutESet));
        }
    }

    public boolean isSetNmNetworkTimeout() {
        return this.nmNetworkTimeoutESet;
    }

    public Integer getNmNidPosition() {
        return (Integer)this.nmNidPosition.basicGetValue();
    }

    public void setNmNidPosition(Integer newNmNidPosition) {
        Integer oldNmNidPosition = (Integer)this.nmNidPosition.basicGetValue();
        this.nmNidPosition.basicSetValue((Object)newNmNidPosition);
        boolean oldNmNidPositionESet = this.nmNidPositionESet;
        this.nmNidPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldNmNidPosition, (Object)newNmNidPosition, !oldNmNidPositionESet));
        }
    }

    public void unsetNmNidPosition() {
        Integer oldNmNidPosition = (Integer)this.nmNidPosition.basicGetValue();
        boolean oldNmNidPositionESet = this.nmNidPositionESet;
        this.nmNidPosition = NM_NID_POSITION_EDEFAULT.clone();
        this.nmNidPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldNmNidPosition, (Object)NM_NID_POSITION_EDEFAULT, oldNmNidPositionESet));
        }
    }

    public boolean isSetNmNidPosition() {
        return this.nmNidPositionESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldNmRemoteSleepIndicationTime, (Object)this.nmRemoteSleepIndicationTime, !oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public void unsetNmRemoteSleepIndicationTime() {
        Double oldNmRemoteSleepIndicationTime = this.nmRemoteSleepIndicationTime;
        boolean oldNmRemoteSleepIndicationTimeESet = this.nmRemoteSleepIndicationTimeESet;
        this.nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
        this.nmRemoteSleepIndicationTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldNmRemoteSleepIndicationTime, (Object)NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT, oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public boolean isSetNmRemoteSleepIndicationTime() {
        return this.nmRemoteSleepIndicationTimeESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldNmRepeatMessageTime, (Object)this.nmRepeatMessageTime, !oldNmRepeatMessageTimeESet));
        }
    }

    public void unsetNmRepeatMessageTime() {
        Double oldNmRepeatMessageTime = this.nmRepeatMessageTime;
        boolean oldNmRepeatMessageTimeESet = this.nmRepeatMessageTimeESet;
        this.nmRepeatMessageTime = NM_REPEAT_MESSAGE_TIME_EDEFAULT;
        this.nmRepeatMessageTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldNmRepeatMessageTime, (Object)NM_REPEAT_MESSAGE_TIME_EDEFAULT, oldNmRepeatMessageTimeESet));
        }
    }

    public boolean isSetNmRepeatMessageTime() {
        return this.nmRepeatMessageTimeESet;
    }

    public Integer getNmUserDataLength() {
        return (Integer)this.nmUserDataLength.basicGetValue();
    }

    public void setNmUserDataLength(Integer newNmUserDataLength) {
        Integer oldNmUserDataLength = (Integer)this.nmUserDataLength.basicGetValue();
        this.nmUserDataLength.basicSetValue((Object)newNmUserDataLength);
        boolean oldNmUserDataLengthESet = this.nmUserDataLengthESet;
        this.nmUserDataLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldNmUserDataLength, (Object)newNmUserDataLength, !oldNmUserDataLengthESet));
        }
    }

    public void unsetNmUserDataLength() {
        Integer oldNmUserDataLength = (Integer)this.nmUserDataLength.basicGetValue();
        boolean oldNmUserDataLengthESet = this.nmUserDataLengthESet;
        this.nmUserDataLength = NM_USER_DATA_LENGTH_EDEFAULT.clone();
        this.nmUserDataLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldNmUserDataLength, (Object)NM_USER_DATA_LENGTH_EDEFAULT, oldNmUserDataLengthESet));
        }
    }

    public boolean isSetNmUserDataLength() {
        return this.nmUserDataLengthESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldNmWaitBusSleepTime, (Object)this.nmWaitBusSleepTime, !oldNmWaitBusSleepTimeESet));
        }
    }

    public void unsetNmWaitBusSleepTime() {
        Double oldNmWaitBusSleepTime = this.nmWaitBusSleepTime;
        boolean oldNmWaitBusSleepTimeESet = this.nmWaitBusSleepTimeESet;
        this.nmWaitBusSleepTime = NM_WAIT_BUS_SLEEP_TIME_EDEFAULT;
        this.nmWaitBusSleepTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldNmWaitBusSleepTime, (Object)NM_WAIT_BUS_SLEEP_TIME_EDEFAULT, oldNmWaitBusSleepTimeESet));
        }
    }

    public boolean isSetNmWaitBusSleepTime() {
        return this.nmWaitBusSleepTimeESet;
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

    public IntegerDatatype getNmCbvPositionData() {
        return this.nmCbvPosition.clone();
    }

    public void setNmCbvPositionData(IntegerDatatype newNmCbvPosition) {
        this.nmCbvPosition.setRadix((int)newNmCbvPosition.getRadix());
        this.nmCbvPosition.setNoOfDigits((int)newNmCbvPosition.getNoOfDigits());
        this.setNmCbvPosition(newNmCbvPosition.getValue());
    }

    public PositiveIntegerDatatype getNmImmediateNmTransmissionsData() {
        return this.nmImmediateNmTransmissions.clone();
    }

    public void setNmImmediateNmTransmissionsData(PositiveIntegerDatatype newNmImmediateNmTransmissions) {
        this.nmImmediateNmTransmissions.setRadix((int)newNmImmediateNmTransmissions.getRadix());
        this.nmImmediateNmTransmissions.setNoOfDigits((int)newNmImmediateNmTransmissions.getNoOfDigits());
        this.setNmImmediateNmTransmissions(newNmImmediateNmTransmissions.getValue());
    }

    public IntegerDatatype getNmNidPositionData() {
        return this.nmNidPosition.clone();
    }

    public void setNmNidPositionData(IntegerDatatype newNmNidPosition) {
        this.nmNidPosition.setRadix((int)newNmNidPosition.getRadix());
        this.nmNidPosition.setNoOfDigits((int)newNmNidPosition.getNoOfDigits());
        this.setNmNidPosition(newNmNidPosition.getValue());
    }

    public IntegerDatatype getNmUserDataLengthData() {
        return this.nmUserDataLength.clone();
    }

    public void setNmUserDataLengthData(IntegerDatatype newNmUserDataLength) {
        this.nmUserDataLength.setRadix((int)newNmUserDataLength.getRadix());
        this.nmUserDataLength.setNoOfDigits((int)newNmUserDataLength.getNoOfDigits());
        this.setNmUserDataLength(newNmUserDataLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getNmBusloadReductionActive();
            }
            case 26: {
                return this.getNmCarWakeUpBitPosition();
            }
            case 27: {
                return this.getNmCarWakeUpFilterEnabled();
            }
            case 28: {
                return this.getNmCarWakeUpFilterNodeId();
            }
            case 29: {
                return this.getNmCarWakeUpRxEnabled();
            }
            case 30: {
                return this.getNmCbvPosition();
            }
            case 31: {
                return this.getNmChannelActive();
            }
            case 32: {
                return this.getNmImmediateNmCycleTime();
            }
            case 33: {
                return this.getNmImmediateNmTransmissions();
            }
            case 34: {
                return this.getNmMessageTimeoutTime();
            }
            case 35: {
                return this.getNmMsgCycleTime();
            }
            case 36: {
                return this.getNmNetworkTimeout();
            }
            case 37: {
                return this.getNmNidPosition();
            }
            case 38: {
                return this.getNmRemoteSleepIndicationTime();
            }
            case 39: {
                return this.getNmRepeatMessageTime();
            }
            case 40: {
                return this.getNmUserDataLength();
            }
            case 41: {
                return this.getNmWaitBusSleepTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.setNmBusloadReductionActive((Boolean)newValue);
                return;
            }
            case 26: {
                this.setNmCarWakeUpBitPosition((Long)newValue);
                return;
            }
            case 27: {
                this.setNmCarWakeUpFilterEnabled((Boolean)newValue);
                return;
            }
            case 28: {
                this.setNmCarWakeUpFilterNodeId((Long)newValue);
                return;
            }
            case 29: {
                this.setNmCarWakeUpRxEnabled((Boolean)newValue);
                return;
            }
            case 30: {
                this.setNmCbvPosition((Integer)newValue);
                return;
            }
            case 31: {
                this.setNmChannelActive((Boolean)newValue);
                return;
            }
            case 32: {
                this.setNmImmediateNmCycleTime((Double)newValue);
                return;
            }
            case 33: {
                this.setNmImmediateNmTransmissions((Long)newValue);
                return;
            }
            case 34: {
                this.setNmMessageTimeoutTime((Double)newValue);
                return;
            }
            case 35: {
                this.setNmMsgCycleTime((Double)newValue);
                return;
            }
            case 36: {
                this.setNmNetworkTimeout((Double)newValue);
                return;
            }
            case 37: {
                this.setNmNidPosition((Integer)newValue);
                return;
            }
            case 38: {
                this.setNmRemoteSleepIndicationTime((Double)newValue);
                return;
            }
            case 39: {
                this.setNmRepeatMessageTime((Double)newValue);
                return;
            }
            case 40: {
                this.setNmUserDataLength((Integer)newValue);
                return;
            }
            case 41: {
                this.setNmWaitBusSleepTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.unsetNmBusloadReductionActive();
                return;
            }
            case 26: {
                this.unsetNmCarWakeUpBitPosition();
                return;
            }
            case 27: {
                this.unsetNmCarWakeUpFilterEnabled();
                return;
            }
            case 28: {
                this.unsetNmCarWakeUpFilterNodeId();
                return;
            }
            case 29: {
                this.unsetNmCarWakeUpRxEnabled();
                return;
            }
            case 30: {
                this.unsetNmCbvPosition();
                return;
            }
            case 31: {
                this.unsetNmChannelActive();
                return;
            }
            case 32: {
                this.unsetNmImmediateNmCycleTime();
                return;
            }
            case 33: {
                this.unsetNmImmediateNmTransmissions();
                return;
            }
            case 34: {
                this.unsetNmMessageTimeoutTime();
                return;
            }
            case 35: {
                this.unsetNmMsgCycleTime();
                return;
            }
            case 36: {
                this.unsetNmNetworkTimeout();
                return;
            }
            case 37: {
                this.unsetNmNidPosition();
                return;
            }
            case 38: {
                this.unsetNmRemoteSleepIndicationTime();
                return;
            }
            case 39: {
                this.unsetNmRepeatMessageTime();
                return;
            }
            case 40: {
                this.unsetNmUserDataLength();
                return;
            }
            case 41: {
                this.unsetNmWaitBusSleepTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.isSetNmBusloadReductionActive();
            }
            case 26: {
                return this.isSetNmCarWakeUpBitPosition();
            }
            case 27: {
                return this.isSetNmCarWakeUpFilterEnabled();
            }
            case 28: {
                return this.isSetNmCarWakeUpFilterNodeId();
            }
            case 29: {
                return this.isSetNmCarWakeUpRxEnabled();
            }
            case 30: {
                return this.isSetNmCbvPosition();
            }
            case 31: {
                return this.isSetNmChannelActive();
            }
            case 32: {
                return this.isSetNmImmediateNmCycleTime();
            }
            case 33: {
                return this.isSetNmImmediateNmTransmissions();
            }
            case 34: {
                return this.isSetNmMessageTimeoutTime();
            }
            case 35: {
                return this.isSetNmMsgCycleTime();
            }
            case 36: {
                return this.isSetNmNetworkTimeout();
            }
            case 37: {
                return this.isSetNmNidPosition();
            }
            case 38: {
                return this.isSetNmRemoteSleepIndicationTime();
            }
            case 39: {
                return this.isSetNmRepeatMessageTime();
            }
            case 40: {
                return this.isSetNmUserDataLength();
            }
            case 41: {
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
        result.append(" (nmBusloadReductionActive: ");
        if (this.nmBusloadReductionActiveESet) {
            result.append(this.nmBusloadReductionActive);
        } else {
            result.append("<unset>");
        }
        result.append(", nmCarWakeUpBitPosition: ");
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
        result.append(", nmCbvPosition: ");
        if (this.nmCbvPositionESet) {
            result.append(this.nmCbvPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", nmChannelActive: ");
        if (this.nmChannelActiveESet) {
            result.append(this.nmChannelActive);
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
        result.append(", nmMessageTimeoutTime: ");
        if (this.nmMessageTimeoutTimeESet) {
            result.append(this.nmMessageTimeoutTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMsgCycleTime: ");
        if (this.nmMsgCycleTimeESet) {
            result.append(this.nmMsgCycleTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNetworkTimeout: ");
        if (this.nmNetworkTimeoutESet) {
            result.append(this.nmNetworkTimeout);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNidPosition: ");
        if (this.nmNidPositionESet) {
            result.append(this.nmNidPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRemoteSleepIndicationTime: ");
        if (this.nmRemoteSleepIndicationTimeESet) {
            result.append(this.nmRemoteSleepIndicationTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMessageTime: ");
        if (this.nmRepeatMessageTimeESet) {
            result.append(this.nmRepeatMessageTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmUserDataLength: ");
        if (this.nmUserDataLengthESet) {
            result.append(this.nmUserDataLength);
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

