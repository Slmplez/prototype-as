/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.FlexrayCommunicationPortInstance;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.ECUCommunicationPortInstanceImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexrayCommunicationPortInstanceImpl
extends ECUCommunicationPortInstanceImpl
implements FlexrayCommunicationPortInstance {
    protected static final Integer ACCEPTED_STARTUP_RANGE_EDEFAULT = new Integer(0);
    protected Integer acceptedStartupRange = ACCEPTED_STARTUP_RANGE_EDEFAULT;
    protected boolean acceptedStartupRangeESet;
    protected static final Boolean ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT = Boolean.FALSE;
    protected Boolean allowHaltDueToClock = ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT;
    protected boolean allowHaltDueToClockESet;
    protected static final Integer ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT = new Integer(0);
    protected Integer allowPassiveToActive = ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT;
    protected boolean allowPassiveToActiveESet;
    protected static final Integer CLUSTER_DRIFT_DAMPING_EDEFAULT = new Integer(0);
    protected Integer clusterDriftDamping = CLUSTER_DRIFT_DAMPING_EDEFAULT;
    protected boolean clusterDriftDampingESet;
    protected static final Integer DELAY_COMPENSATION_A_EDEFAULT = new Integer(0);
    protected Integer delayCompensationA = DELAY_COMPENSATION_A_EDEFAULT;
    protected boolean delayCompensationAESet;
    protected static final Integer DELAY_COMPENSATION_B_EDEFAULT = new Integer(0);
    protected Integer delayCompensationB = DELAY_COMPENSATION_B_EDEFAULT;
    protected boolean delayCompensationBESet;
    protected static final Boolean DYNAMIC_SEGMENT_ENABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean dynamicSegmentEnable = DYNAMIC_SEGMENT_ENABLE_EDEFAULT;
    protected boolean dynamicSegmentEnableESet;
    protected static final Integer EXTERN_OFFSET_CORRECTION_EDEFAULT = new Integer(0);
    protected Integer externOffsetCorrection = EXTERN_OFFSET_CORRECTION_EDEFAULT;
    protected boolean externOffsetCorrectionESet;
    protected static final Integer EXTERN_RATE_CORRECTION_EDEFAULT = new Integer(0);
    protected Integer externRateCorrection = EXTERN_RATE_CORRECTION_EDEFAULT;
    protected boolean externRateCorrectionESet;
    protected static final Integer KEY_SLOT_ID_EDEFAULT = new Integer(0);
    protected Integer keySlotID = KEY_SLOT_ID_EDEFAULT;
    protected boolean keySlotIDESet;
    protected static final Boolean KEY_SLOT_USED_FOR_START_UP_EDEFAULT = Boolean.FALSE;
    protected Boolean keySlotUsedForStartUp = KEY_SLOT_USED_FOR_START_UP_EDEFAULT;
    protected boolean keySlotUsedForStartUpESet;
    protected static final Boolean KEY_SLOT_USED_FOR_SYNC_EDEFAULT = Boolean.FALSE;
    protected Boolean keySlotUsedForSync = KEY_SLOT_USED_FOR_SYNC_EDEFAULT;
    protected boolean keySlotUsedForSyncESet;
    protected static final Integer LATEST_TX_EDEFAULT = new Integer(0);
    protected Integer latestTX = LATEST_TX_EDEFAULT;
    protected boolean latestTXESet;
    protected static final Integer LISTEN_TIMEOUT_EDEFAULT = new Integer(0);
    protected Integer listenTimeout = LISTEN_TIMEOUT_EDEFAULT;
    protected boolean listenTimeoutESet;
    protected static final Integer MAX_DRIFT_EDEFAULT = new Integer(0);
    protected Integer maxDrift = MAX_DRIFT_EDEFAULT;
    protected boolean maxDriftESet;
    protected static final Integer MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT = new Integer(0);
    protected Integer maximumDynamicPayloadLength = MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT;
    protected boolean maximumDynamicPayloadLengthESet;
    protected static final Integer MICRO_INITIAL_OFFSET_A_EDEFAULT = new Integer(0);
    protected Integer microInitialOffsetA = MICRO_INITIAL_OFFSET_A_EDEFAULT;
    protected boolean microInitialOffsetAESet;
    protected static final Integer MICRO_INITIAL_OFFSET_B_EDEFAULT = new Integer(0);
    protected Integer microInitialOffsetB = MICRO_INITIAL_OFFSET_B_EDEFAULT;
    protected boolean microInitialOffsetBESet;
    protected static final Integer MICRO_PER_CYCLE_EDEFAULT = new Integer(0);
    protected Integer microPerCycle = MICRO_PER_CYCLE_EDEFAULT;
    protected boolean microPerCycleESet;
    protected static final Double MICRO_PER_MACRO_NOM_EDEFAULT = new Double(0.0);
    protected Double microPerMacroNom = MICRO_PER_MACRO_NOM_EDEFAULT;
    protected boolean microPerMacroNomESet;
    protected static final Double MICROTICK_DURATION_EDEFAULT = new Double(0.0);
    protected Double microtickDuration = MICROTICK_DURATION_EDEFAULT;
    protected boolean microtickDurationESet;
    protected static final Integer SAMPLES_PER_MICROTICK_EDEFAULT = new Integer(0);
    protected Integer samplesPerMicrotick = SAMPLES_PER_MICROTICK_EDEFAULT;
    protected boolean samplesPerMicrotickESet;
    protected static final Boolean SINGLE_SLOT_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean singleSlotEnabled = SINGLE_SLOT_ENABLED_EDEFAULT;
    protected boolean singleSlotEnabledESet;
    protected static final Boolean START_UP_NODE_EDEFAULT = Boolean.FALSE;
    protected Boolean startUpNode = START_UP_NODE_EDEFAULT;
    protected boolean startUpNodeESet;
    protected static final Integer SYNC_SLOT_EDEFAULT = new Integer(0);
    protected Integer syncSlot = SYNC_SLOT_EDEFAULT;
    protected boolean syncSlotESet;
    protected static final Integer WAKE_UP_PATTERN_EDEFAULT = new Integer(0);
    protected Integer wakeUpPattern = WAKE_UP_PATTERN_EDEFAULT;
    protected boolean wakeUpPatternESet;

    protected FlexrayCommunicationPortInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.FLEXRAY_COMMUNICATION_PORT_INSTANCE;
    }

    public Integer getAcceptedStartupRange() {
        return this.acceptedStartupRange;
    }

    public void setAcceptedStartupRange(Integer newAcceptedStartupRange) {
        Integer oldAcceptedStartupRange = this.acceptedStartupRange;
        this.acceptedStartupRange = newAcceptedStartupRange;
        boolean oldAcceptedStartupRangeESet = this.acceptedStartupRangeESet;
        this.acceptedStartupRangeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldAcceptedStartupRange, (Object)this.acceptedStartupRange, !oldAcceptedStartupRangeESet));
        }
    }

    public void unsetAcceptedStartupRange() {
        Integer oldAcceptedStartupRange = this.acceptedStartupRange;
        boolean oldAcceptedStartupRangeESet = this.acceptedStartupRangeESet;
        this.acceptedStartupRange = ACCEPTED_STARTUP_RANGE_EDEFAULT;
        this.acceptedStartupRangeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldAcceptedStartupRange, (Object)ACCEPTED_STARTUP_RANGE_EDEFAULT, oldAcceptedStartupRangeESet));
        }
    }

    public boolean isSetAcceptedStartupRange() {
        return this.acceptedStartupRangeESet;
    }

    public Boolean getAllowHaltDueToClock() {
        return this.allowHaltDueToClock;
    }

    public void setAllowHaltDueToClock(Boolean newAllowHaltDueToClock) {
        Boolean oldAllowHaltDueToClock = this.allowHaltDueToClock;
        this.allowHaltDueToClock = newAllowHaltDueToClock;
        boolean oldAllowHaltDueToClockESet = this.allowHaltDueToClockESet;
        this.allowHaltDueToClockESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldAllowHaltDueToClock, (Object)this.allowHaltDueToClock, !oldAllowHaltDueToClockESet));
        }
    }

    public void unsetAllowHaltDueToClock() {
        Boolean oldAllowHaltDueToClock = this.allowHaltDueToClock;
        boolean oldAllowHaltDueToClockESet = this.allowHaltDueToClockESet;
        this.allowHaltDueToClock = ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT;
        this.allowHaltDueToClockESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldAllowHaltDueToClock, (Object)ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT, oldAllowHaltDueToClockESet));
        }
    }

    public boolean isSetAllowHaltDueToClock() {
        return this.allowHaltDueToClockESet;
    }

    public Integer getAllowPassiveToActive() {
        return this.allowPassiveToActive;
    }

    public void setAllowPassiveToActive(Integer newAllowPassiveToActive) {
        Integer oldAllowPassiveToActive = this.allowPassiveToActive;
        this.allowPassiveToActive = newAllowPassiveToActive;
        boolean oldAllowPassiveToActiveESet = this.allowPassiveToActiveESet;
        this.allowPassiveToActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldAllowPassiveToActive, (Object)this.allowPassiveToActive, !oldAllowPassiveToActiveESet));
        }
    }

    public void unsetAllowPassiveToActive() {
        Integer oldAllowPassiveToActive = this.allowPassiveToActive;
        boolean oldAllowPassiveToActiveESet = this.allowPassiveToActiveESet;
        this.allowPassiveToActive = ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT;
        this.allowPassiveToActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldAllowPassiveToActive, (Object)ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT, oldAllowPassiveToActiveESet));
        }
    }

    public boolean isSetAllowPassiveToActive() {
        return this.allowPassiveToActiveESet;
    }

    public Integer getClusterDriftDamping() {
        return this.clusterDriftDamping;
    }

    public void setClusterDriftDamping(Integer newClusterDriftDamping) {
        Integer oldClusterDriftDamping = this.clusterDriftDamping;
        this.clusterDriftDamping = newClusterDriftDamping;
        boolean oldClusterDriftDampingESet = this.clusterDriftDampingESet;
        this.clusterDriftDampingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldClusterDriftDamping, (Object)this.clusterDriftDamping, !oldClusterDriftDampingESet));
        }
    }

    public void unsetClusterDriftDamping() {
        Integer oldClusterDriftDamping = this.clusterDriftDamping;
        boolean oldClusterDriftDampingESet = this.clusterDriftDampingESet;
        this.clusterDriftDamping = CLUSTER_DRIFT_DAMPING_EDEFAULT;
        this.clusterDriftDampingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldClusterDriftDamping, (Object)CLUSTER_DRIFT_DAMPING_EDEFAULT, oldClusterDriftDampingESet));
        }
    }

    public boolean isSetClusterDriftDamping() {
        return this.clusterDriftDampingESet;
    }

    public Integer getDelayCompensationA() {
        return this.delayCompensationA;
    }

    public void setDelayCompensationA(Integer newDelayCompensationA) {
        Integer oldDelayCompensationA = this.delayCompensationA;
        this.delayCompensationA = newDelayCompensationA;
        boolean oldDelayCompensationAESet = this.delayCompensationAESet;
        this.delayCompensationAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldDelayCompensationA, (Object)this.delayCompensationA, !oldDelayCompensationAESet));
        }
    }

    public void unsetDelayCompensationA() {
        Integer oldDelayCompensationA = this.delayCompensationA;
        boolean oldDelayCompensationAESet = this.delayCompensationAESet;
        this.delayCompensationA = DELAY_COMPENSATION_A_EDEFAULT;
        this.delayCompensationAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldDelayCompensationA, (Object)DELAY_COMPENSATION_A_EDEFAULT, oldDelayCompensationAESet));
        }
    }

    public boolean isSetDelayCompensationA() {
        return this.delayCompensationAESet;
    }

    public Integer getDelayCompensationB() {
        return this.delayCompensationB;
    }

    public void setDelayCompensationB(Integer newDelayCompensationB) {
        Integer oldDelayCompensationB = this.delayCompensationB;
        this.delayCompensationB = newDelayCompensationB;
        boolean oldDelayCompensationBESet = this.delayCompensationBESet;
        this.delayCompensationBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldDelayCompensationB, (Object)this.delayCompensationB, !oldDelayCompensationBESet));
        }
    }

    public void unsetDelayCompensationB() {
        Integer oldDelayCompensationB = this.delayCompensationB;
        boolean oldDelayCompensationBESet = this.delayCompensationBESet;
        this.delayCompensationB = DELAY_COMPENSATION_B_EDEFAULT;
        this.delayCompensationBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldDelayCompensationB, (Object)DELAY_COMPENSATION_B_EDEFAULT, oldDelayCompensationBESet));
        }
    }

    public boolean isSetDelayCompensationB() {
        return this.delayCompensationBESet;
    }

    public Boolean getDynamicSegmentEnable() {
        return this.dynamicSegmentEnable;
    }

    public void setDynamicSegmentEnable(Boolean newDynamicSegmentEnable) {
        Boolean oldDynamicSegmentEnable = this.dynamicSegmentEnable;
        this.dynamicSegmentEnable = newDynamicSegmentEnable;
        boolean oldDynamicSegmentEnableESet = this.dynamicSegmentEnableESet;
        this.dynamicSegmentEnableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDynamicSegmentEnable, (Object)this.dynamicSegmentEnable, !oldDynamicSegmentEnableESet));
        }
    }

    public void unsetDynamicSegmentEnable() {
        Boolean oldDynamicSegmentEnable = this.dynamicSegmentEnable;
        boolean oldDynamicSegmentEnableESet = this.dynamicSegmentEnableESet;
        this.dynamicSegmentEnable = DYNAMIC_SEGMENT_ENABLE_EDEFAULT;
        this.dynamicSegmentEnableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldDynamicSegmentEnable, (Object)DYNAMIC_SEGMENT_ENABLE_EDEFAULT, oldDynamicSegmentEnableESet));
        }
    }

    public boolean isSetDynamicSegmentEnable() {
        return this.dynamicSegmentEnableESet;
    }

    public Integer getExternOffsetCorrection() {
        return this.externOffsetCorrection;
    }

    public void setExternOffsetCorrection(Integer newExternOffsetCorrection) {
        Integer oldExternOffsetCorrection = this.externOffsetCorrection;
        this.externOffsetCorrection = newExternOffsetCorrection;
        boolean oldExternOffsetCorrectionESet = this.externOffsetCorrectionESet;
        this.externOffsetCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldExternOffsetCorrection, (Object)this.externOffsetCorrection, !oldExternOffsetCorrectionESet));
        }
    }

    public void unsetExternOffsetCorrection() {
        Integer oldExternOffsetCorrection = this.externOffsetCorrection;
        boolean oldExternOffsetCorrectionESet = this.externOffsetCorrectionESet;
        this.externOffsetCorrection = EXTERN_OFFSET_CORRECTION_EDEFAULT;
        this.externOffsetCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldExternOffsetCorrection, (Object)EXTERN_OFFSET_CORRECTION_EDEFAULT, oldExternOffsetCorrectionESet));
        }
    }

    public boolean isSetExternOffsetCorrection() {
        return this.externOffsetCorrectionESet;
    }

    public Integer getExternRateCorrection() {
        return this.externRateCorrection;
    }

    public void setExternRateCorrection(Integer newExternRateCorrection) {
        Integer oldExternRateCorrection = this.externRateCorrection;
        this.externRateCorrection = newExternRateCorrection;
        boolean oldExternRateCorrectionESet = this.externRateCorrectionESet;
        this.externRateCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldExternRateCorrection, (Object)this.externRateCorrection, !oldExternRateCorrectionESet));
        }
    }

    public void unsetExternRateCorrection() {
        Integer oldExternRateCorrection = this.externRateCorrection;
        boolean oldExternRateCorrectionESet = this.externRateCorrectionESet;
        this.externRateCorrection = EXTERN_RATE_CORRECTION_EDEFAULT;
        this.externRateCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldExternRateCorrection, (Object)EXTERN_RATE_CORRECTION_EDEFAULT, oldExternRateCorrectionESet));
        }
    }

    public boolean isSetExternRateCorrection() {
        return this.externRateCorrectionESet;
    }

    public Integer getKeySlotID() {
        return this.keySlotID;
    }

    public void setKeySlotID(Integer newKeySlotID) {
        Integer oldKeySlotID = this.keySlotID;
        this.keySlotID = newKeySlotID;
        boolean oldKeySlotIDESet = this.keySlotIDESet;
        this.keySlotIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldKeySlotID, (Object)this.keySlotID, !oldKeySlotIDESet));
        }
    }

    public void unsetKeySlotID() {
        Integer oldKeySlotID = this.keySlotID;
        boolean oldKeySlotIDESet = this.keySlotIDESet;
        this.keySlotID = KEY_SLOT_ID_EDEFAULT;
        this.keySlotIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldKeySlotID, (Object)KEY_SLOT_ID_EDEFAULT, oldKeySlotIDESet));
        }
    }

    public boolean isSetKeySlotID() {
        return this.keySlotIDESet;
    }

    public Boolean getKeySlotUsedForStartUp() {
        return this.keySlotUsedForStartUp;
    }

    public void setKeySlotUsedForStartUp(Boolean newKeySlotUsedForStartUp) {
        Boolean oldKeySlotUsedForStartUp = this.keySlotUsedForStartUp;
        this.keySlotUsedForStartUp = newKeySlotUsedForStartUp;
        boolean oldKeySlotUsedForStartUpESet = this.keySlotUsedForStartUpESet;
        this.keySlotUsedForStartUpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldKeySlotUsedForStartUp, (Object)this.keySlotUsedForStartUp, !oldKeySlotUsedForStartUpESet));
        }
    }

    public void unsetKeySlotUsedForStartUp() {
        Boolean oldKeySlotUsedForStartUp = this.keySlotUsedForStartUp;
        boolean oldKeySlotUsedForStartUpESet = this.keySlotUsedForStartUpESet;
        this.keySlotUsedForStartUp = KEY_SLOT_USED_FOR_START_UP_EDEFAULT;
        this.keySlotUsedForStartUpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldKeySlotUsedForStartUp, (Object)KEY_SLOT_USED_FOR_START_UP_EDEFAULT, oldKeySlotUsedForStartUpESet));
        }
    }

    public boolean isSetKeySlotUsedForStartUp() {
        return this.keySlotUsedForStartUpESet;
    }

    public Boolean getKeySlotUsedForSync() {
        return this.keySlotUsedForSync;
    }

    public void setKeySlotUsedForSync(Boolean newKeySlotUsedForSync) {
        Boolean oldKeySlotUsedForSync = this.keySlotUsedForSync;
        this.keySlotUsedForSync = newKeySlotUsedForSync;
        boolean oldKeySlotUsedForSyncESet = this.keySlotUsedForSyncESet;
        this.keySlotUsedForSyncESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldKeySlotUsedForSync, (Object)this.keySlotUsedForSync, !oldKeySlotUsedForSyncESet));
        }
    }

    public void unsetKeySlotUsedForSync() {
        Boolean oldKeySlotUsedForSync = this.keySlotUsedForSync;
        boolean oldKeySlotUsedForSyncESet = this.keySlotUsedForSyncESet;
        this.keySlotUsedForSync = KEY_SLOT_USED_FOR_SYNC_EDEFAULT;
        this.keySlotUsedForSyncESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldKeySlotUsedForSync, (Object)KEY_SLOT_USED_FOR_SYNC_EDEFAULT, oldKeySlotUsedForSyncESet));
        }
    }

    public boolean isSetKeySlotUsedForSync() {
        return this.keySlotUsedForSyncESet;
    }

    public Integer getLatestTX() {
        return this.latestTX;
    }

    public void setLatestTX(Integer newLatestTX) {
        Integer oldLatestTX = this.latestTX;
        this.latestTX = newLatestTX;
        boolean oldLatestTXESet = this.latestTXESet;
        this.latestTXESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldLatestTX, (Object)this.latestTX, !oldLatestTXESet));
        }
    }

    public void unsetLatestTX() {
        Integer oldLatestTX = this.latestTX;
        boolean oldLatestTXESet = this.latestTXESet;
        this.latestTX = LATEST_TX_EDEFAULT;
        this.latestTXESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldLatestTX, (Object)LATEST_TX_EDEFAULT, oldLatestTXESet));
        }
    }

    public boolean isSetLatestTX() {
        return this.latestTXESet;
    }

    public Integer getListenTimeout() {
        return this.listenTimeout;
    }

    public void setListenTimeout(Integer newListenTimeout) {
        Integer oldListenTimeout = this.listenTimeout;
        this.listenTimeout = newListenTimeout;
        boolean oldListenTimeoutESet = this.listenTimeoutESet;
        this.listenTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldListenTimeout, (Object)this.listenTimeout, !oldListenTimeoutESet));
        }
    }

    public void unsetListenTimeout() {
        Integer oldListenTimeout = this.listenTimeout;
        boolean oldListenTimeoutESet = this.listenTimeoutESet;
        this.listenTimeout = LISTEN_TIMEOUT_EDEFAULT;
        this.listenTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldListenTimeout, (Object)LISTEN_TIMEOUT_EDEFAULT, oldListenTimeoutESet));
        }
    }

    public boolean isSetListenTimeout() {
        return this.listenTimeoutESet;
    }

    public Integer getMaxDrift() {
        return this.maxDrift;
    }

    public void setMaxDrift(Integer newMaxDrift) {
        Integer oldMaxDrift = this.maxDrift;
        this.maxDrift = newMaxDrift;
        boolean oldMaxDriftESet = this.maxDriftESet;
        this.maxDriftESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldMaxDrift, (Object)this.maxDrift, !oldMaxDriftESet));
        }
    }

    public void unsetMaxDrift() {
        Integer oldMaxDrift = this.maxDrift;
        boolean oldMaxDriftESet = this.maxDriftESet;
        this.maxDrift = MAX_DRIFT_EDEFAULT;
        this.maxDriftESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldMaxDrift, (Object)MAX_DRIFT_EDEFAULT, oldMaxDriftESet));
        }
    }

    public boolean isSetMaxDrift() {
        return this.maxDriftESet;
    }

    public Integer getMaximumDynamicPayloadLength() {
        return this.maximumDynamicPayloadLength;
    }

    public void setMaximumDynamicPayloadLength(Integer newMaximumDynamicPayloadLength) {
        Integer oldMaximumDynamicPayloadLength = this.maximumDynamicPayloadLength;
        this.maximumDynamicPayloadLength = newMaximumDynamicPayloadLength;
        boolean oldMaximumDynamicPayloadLengthESet = this.maximumDynamicPayloadLengthESet;
        this.maximumDynamicPayloadLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldMaximumDynamicPayloadLength, (Object)this.maximumDynamicPayloadLength, !oldMaximumDynamicPayloadLengthESet));
        }
    }

    public void unsetMaximumDynamicPayloadLength() {
        Integer oldMaximumDynamicPayloadLength = this.maximumDynamicPayloadLength;
        boolean oldMaximumDynamicPayloadLengthESet = this.maximumDynamicPayloadLengthESet;
        this.maximumDynamicPayloadLength = MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT;
        this.maximumDynamicPayloadLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldMaximumDynamicPayloadLength, (Object)MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT, oldMaximumDynamicPayloadLengthESet));
        }
    }

    public boolean isSetMaximumDynamicPayloadLength() {
        return this.maximumDynamicPayloadLengthESet;
    }

    public Integer getMicroInitialOffsetA() {
        return this.microInitialOffsetA;
    }

    public void setMicroInitialOffsetA(Integer newMicroInitialOffsetA) {
        Integer oldMicroInitialOffsetA = this.microInitialOffsetA;
        this.microInitialOffsetA = newMicroInitialOffsetA;
        boolean oldMicroInitialOffsetAESet = this.microInitialOffsetAESet;
        this.microInitialOffsetAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldMicroInitialOffsetA, (Object)this.microInitialOffsetA, !oldMicroInitialOffsetAESet));
        }
    }

    public void unsetMicroInitialOffsetA() {
        Integer oldMicroInitialOffsetA = this.microInitialOffsetA;
        boolean oldMicroInitialOffsetAESet = this.microInitialOffsetAESet;
        this.microInitialOffsetA = MICRO_INITIAL_OFFSET_A_EDEFAULT;
        this.microInitialOffsetAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldMicroInitialOffsetA, (Object)MICRO_INITIAL_OFFSET_A_EDEFAULT, oldMicroInitialOffsetAESet));
        }
    }

    public boolean isSetMicroInitialOffsetA() {
        return this.microInitialOffsetAESet;
    }

    public Integer getMicroInitialOffsetB() {
        return this.microInitialOffsetB;
    }

    public void setMicroInitialOffsetB(Integer newMicroInitialOffsetB) {
        Integer oldMicroInitialOffsetB = this.microInitialOffsetB;
        this.microInitialOffsetB = newMicroInitialOffsetB;
        boolean oldMicroInitialOffsetBESet = this.microInitialOffsetBESet;
        this.microInitialOffsetBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldMicroInitialOffsetB, (Object)this.microInitialOffsetB, !oldMicroInitialOffsetBESet));
        }
    }

    public void unsetMicroInitialOffsetB() {
        Integer oldMicroInitialOffsetB = this.microInitialOffsetB;
        boolean oldMicroInitialOffsetBESet = this.microInitialOffsetBESet;
        this.microInitialOffsetB = MICRO_INITIAL_OFFSET_B_EDEFAULT;
        this.microInitialOffsetBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldMicroInitialOffsetB, (Object)MICRO_INITIAL_OFFSET_B_EDEFAULT, oldMicroInitialOffsetBESet));
        }
    }

    public boolean isSetMicroInitialOffsetB() {
        return this.microInitialOffsetBESet;
    }

    public Integer getMicroPerCycle() {
        return this.microPerCycle;
    }

    public void setMicroPerCycle(Integer newMicroPerCycle) {
        Integer oldMicroPerCycle = this.microPerCycle;
        this.microPerCycle = newMicroPerCycle;
        boolean oldMicroPerCycleESet = this.microPerCycleESet;
        this.microPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldMicroPerCycle, (Object)this.microPerCycle, !oldMicroPerCycleESet));
        }
    }

    public void unsetMicroPerCycle() {
        Integer oldMicroPerCycle = this.microPerCycle;
        boolean oldMicroPerCycleESet = this.microPerCycleESet;
        this.microPerCycle = MICRO_PER_CYCLE_EDEFAULT;
        this.microPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldMicroPerCycle, (Object)MICRO_PER_CYCLE_EDEFAULT, oldMicroPerCycleESet));
        }
    }

    public boolean isSetMicroPerCycle() {
        return this.microPerCycleESet;
    }

    public Double getMicroPerMacroNom() {
        return this.microPerMacroNom;
    }

    public void setMicroPerMacroNom(Double newMicroPerMacroNom) {
        Double oldMicroPerMacroNom = this.microPerMacroNom;
        this.microPerMacroNom = newMicroPerMacroNom;
        boolean oldMicroPerMacroNomESet = this.microPerMacroNomESet;
        this.microPerMacroNomESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldMicroPerMacroNom, (Object)this.microPerMacroNom, !oldMicroPerMacroNomESet));
        }
    }

    public void unsetMicroPerMacroNom() {
        Double oldMicroPerMacroNom = this.microPerMacroNom;
        boolean oldMicroPerMacroNomESet = this.microPerMacroNomESet;
        this.microPerMacroNom = MICRO_PER_MACRO_NOM_EDEFAULT;
        this.microPerMacroNomESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldMicroPerMacroNom, (Object)MICRO_PER_MACRO_NOM_EDEFAULT, oldMicroPerMacroNomESet));
        }
    }

    public boolean isSetMicroPerMacroNom() {
        return this.microPerMacroNomESet;
    }

    public Double getMicrotickDuration() {
        return this.microtickDuration;
    }

    public void setMicrotickDuration(Double newMicrotickDuration) {
        Double oldMicrotickDuration = this.microtickDuration;
        this.microtickDuration = newMicrotickDuration;
        boolean oldMicrotickDurationESet = this.microtickDurationESet;
        this.microtickDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldMicrotickDuration, (Object)this.microtickDuration, !oldMicrotickDurationESet));
        }
    }

    public void unsetMicrotickDuration() {
        Double oldMicrotickDuration = this.microtickDuration;
        boolean oldMicrotickDurationESet = this.microtickDurationESet;
        this.microtickDuration = MICROTICK_DURATION_EDEFAULT;
        this.microtickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldMicrotickDuration, (Object)MICROTICK_DURATION_EDEFAULT, oldMicrotickDurationESet));
        }
    }

    public boolean isSetMicrotickDuration() {
        return this.microtickDurationESet;
    }

    public Integer getSamplesPerMicrotick() {
        return this.samplesPerMicrotick;
    }

    public void setSamplesPerMicrotick(Integer newSamplesPerMicrotick) {
        Integer oldSamplesPerMicrotick = this.samplesPerMicrotick;
        this.samplesPerMicrotick = newSamplesPerMicrotick;
        boolean oldSamplesPerMicrotickESet = this.samplesPerMicrotickESet;
        this.samplesPerMicrotickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 42, (Object)oldSamplesPerMicrotick, (Object)this.samplesPerMicrotick, !oldSamplesPerMicrotickESet));
        }
    }

    public void unsetSamplesPerMicrotick() {
        Integer oldSamplesPerMicrotick = this.samplesPerMicrotick;
        boolean oldSamplesPerMicrotickESet = this.samplesPerMicrotickESet;
        this.samplesPerMicrotick = SAMPLES_PER_MICROTICK_EDEFAULT;
        this.samplesPerMicrotickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 42, (Object)oldSamplesPerMicrotick, (Object)SAMPLES_PER_MICROTICK_EDEFAULT, oldSamplesPerMicrotickESet));
        }
    }

    public boolean isSetSamplesPerMicrotick() {
        return this.samplesPerMicrotickESet;
    }

    public Boolean getSingleSlotEnabled() {
        return this.singleSlotEnabled;
    }

    public void setSingleSlotEnabled(Boolean newSingleSlotEnabled) {
        Boolean oldSingleSlotEnabled = this.singleSlotEnabled;
        this.singleSlotEnabled = newSingleSlotEnabled;
        boolean oldSingleSlotEnabledESet = this.singleSlotEnabledESet;
        this.singleSlotEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 43, (Object)oldSingleSlotEnabled, (Object)this.singleSlotEnabled, !oldSingleSlotEnabledESet));
        }
    }

    public void unsetSingleSlotEnabled() {
        Boolean oldSingleSlotEnabled = this.singleSlotEnabled;
        boolean oldSingleSlotEnabledESet = this.singleSlotEnabledESet;
        this.singleSlotEnabled = SINGLE_SLOT_ENABLED_EDEFAULT;
        this.singleSlotEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 43, (Object)oldSingleSlotEnabled, (Object)SINGLE_SLOT_ENABLED_EDEFAULT, oldSingleSlotEnabledESet));
        }
    }

    public boolean isSetSingleSlotEnabled() {
        return this.singleSlotEnabledESet;
    }

    public Boolean getStartUpNode() {
        return this.startUpNode;
    }

    public void setStartUpNode(Boolean newStartUpNode) {
        Boolean oldStartUpNode = this.startUpNode;
        this.startUpNode = newStartUpNode;
        boolean oldStartUpNodeESet = this.startUpNodeESet;
        this.startUpNodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 44, (Object)oldStartUpNode, (Object)this.startUpNode, !oldStartUpNodeESet));
        }
    }

    public void unsetStartUpNode() {
        Boolean oldStartUpNode = this.startUpNode;
        boolean oldStartUpNodeESet = this.startUpNodeESet;
        this.startUpNode = START_UP_NODE_EDEFAULT;
        this.startUpNodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 44, (Object)oldStartUpNode, (Object)START_UP_NODE_EDEFAULT, oldStartUpNodeESet));
        }
    }

    public boolean isSetStartUpNode() {
        return this.startUpNodeESet;
    }

    public Integer getSyncSlot() {
        return this.syncSlot;
    }

    public void setSyncSlot(Integer newSyncSlot) {
        Integer oldSyncSlot = this.syncSlot;
        this.syncSlot = newSyncSlot;
        boolean oldSyncSlotESet = this.syncSlotESet;
        this.syncSlotESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 45, (Object)oldSyncSlot, (Object)this.syncSlot, !oldSyncSlotESet));
        }
    }

    public void unsetSyncSlot() {
        Integer oldSyncSlot = this.syncSlot;
        boolean oldSyncSlotESet = this.syncSlotESet;
        this.syncSlot = SYNC_SLOT_EDEFAULT;
        this.syncSlotESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 45, (Object)oldSyncSlot, (Object)SYNC_SLOT_EDEFAULT, oldSyncSlotESet));
        }
    }

    public boolean isSetSyncSlot() {
        return this.syncSlotESet;
    }

    public Integer getWakeUpPattern() {
        return this.wakeUpPattern;
    }

    public void setWakeUpPattern(Integer newWakeUpPattern) {
        Integer oldWakeUpPattern = this.wakeUpPattern;
        this.wakeUpPattern = newWakeUpPattern;
        boolean oldWakeUpPatternESet = this.wakeUpPatternESet;
        this.wakeUpPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 46, (Object)oldWakeUpPattern, (Object)this.wakeUpPattern, !oldWakeUpPatternESet));
        }
    }

    public void unsetWakeUpPattern() {
        Integer oldWakeUpPattern = this.wakeUpPattern;
        boolean oldWakeUpPatternESet = this.wakeUpPatternESet;
        this.wakeUpPattern = WAKE_UP_PATTERN_EDEFAULT;
        this.wakeUpPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 46, (Object)oldWakeUpPattern, (Object)WAKE_UP_PATTERN_EDEFAULT, oldWakeUpPatternESet));
        }
    }

    public boolean isSetWakeUpPattern() {
        return this.wakeUpPatternESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getAcceptedStartupRange();
            }
            case 22: {
                return this.getAllowHaltDueToClock();
            }
            case 23: {
                return this.getAllowPassiveToActive();
            }
            case 24: {
                return this.getClusterDriftDamping();
            }
            case 25: {
                return this.getDelayCompensationA();
            }
            case 26: {
                return this.getDelayCompensationB();
            }
            case 27: {
                return this.getDynamicSegmentEnable();
            }
            case 28: {
                return this.getExternOffsetCorrection();
            }
            case 29: {
                return this.getExternRateCorrection();
            }
            case 30: {
                return this.getKeySlotID();
            }
            case 31: {
                return this.getKeySlotUsedForStartUp();
            }
            case 32: {
                return this.getKeySlotUsedForSync();
            }
            case 33: {
                return this.getLatestTX();
            }
            case 34: {
                return this.getListenTimeout();
            }
            case 35: {
                return this.getMaxDrift();
            }
            case 36: {
                return this.getMaximumDynamicPayloadLength();
            }
            case 37: {
                return this.getMicroInitialOffsetA();
            }
            case 38: {
                return this.getMicroInitialOffsetB();
            }
            case 39: {
                return this.getMicroPerCycle();
            }
            case 40: {
                return this.getMicroPerMacroNom();
            }
            case 41: {
                return this.getMicrotickDuration();
            }
            case 42: {
                return this.getSamplesPerMicrotick();
            }
            case 43: {
                return this.getSingleSlotEnabled();
            }
            case 44: {
                return this.getStartUpNode();
            }
            case 45: {
                return this.getSyncSlot();
            }
            case 46: {
                return this.getWakeUpPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setAcceptedStartupRange((Integer)newValue);
                return;
            }
            case 22: {
                this.setAllowHaltDueToClock((Boolean)newValue);
                return;
            }
            case 23: {
                this.setAllowPassiveToActive((Integer)newValue);
                return;
            }
            case 24: {
                this.setClusterDriftDamping((Integer)newValue);
                return;
            }
            case 25: {
                this.setDelayCompensationA((Integer)newValue);
                return;
            }
            case 26: {
                this.setDelayCompensationB((Integer)newValue);
                return;
            }
            case 27: {
                this.setDynamicSegmentEnable((Boolean)newValue);
                return;
            }
            case 28: {
                this.setExternOffsetCorrection((Integer)newValue);
                return;
            }
            case 29: {
                this.setExternRateCorrection((Integer)newValue);
                return;
            }
            case 30: {
                this.setKeySlotID((Integer)newValue);
                return;
            }
            case 31: {
                this.setKeySlotUsedForStartUp((Boolean)newValue);
                return;
            }
            case 32: {
                this.setKeySlotUsedForSync((Boolean)newValue);
                return;
            }
            case 33: {
                this.setLatestTX((Integer)newValue);
                return;
            }
            case 34: {
                this.setListenTimeout((Integer)newValue);
                return;
            }
            case 35: {
                this.setMaxDrift((Integer)newValue);
                return;
            }
            case 36: {
                this.setMaximumDynamicPayloadLength((Integer)newValue);
                return;
            }
            case 37: {
                this.setMicroInitialOffsetA((Integer)newValue);
                return;
            }
            case 38: {
                this.setMicroInitialOffsetB((Integer)newValue);
                return;
            }
            case 39: {
                this.setMicroPerCycle((Integer)newValue);
                return;
            }
            case 40: {
                this.setMicroPerMacroNom((Double)newValue);
                return;
            }
            case 41: {
                this.setMicrotickDuration((Double)newValue);
                return;
            }
            case 42: {
                this.setSamplesPerMicrotick((Integer)newValue);
                return;
            }
            case 43: {
                this.setSingleSlotEnabled((Boolean)newValue);
                return;
            }
            case 44: {
                this.setStartUpNode((Boolean)newValue);
                return;
            }
            case 45: {
                this.setSyncSlot((Integer)newValue);
                return;
            }
            case 46: {
                this.setWakeUpPattern((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetAcceptedStartupRange();
                return;
            }
            case 22: {
                this.unsetAllowHaltDueToClock();
                return;
            }
            case 23: {
                this.unsetAllowPassiveToActive();
                return;
            }
            case 24: {
                this.unsetClusterDriftDamping();
                return;
            }
            case 25: {
                this.unsetDelayCompensationA();
                return;
            }
            case 26: {
                this.unsetDelayCompensationB();
                return;
            }
            case 27: {
                this.unsetDynamicSegmentEnable();
                return;
            }
            case 28: {
                this.unsetExternOffsetCorrection();
                return;
            }
            case 29: {
                this.unsetExternRateCorrection();
                return;
            }
            case 30: {
                this.unsetKeySlotID();
                return;
            }
            case 31: {
                this.unsetKeySlotUsedForStartUp();
                return;
            }
            case 32: {
                this.unsetKeySlotUsedForSync();
                return;
            }
            case 33: {
                this.unsetLatestTX();
                return;
            }
            case 34: {
                this.unsetListenTimeout();
                return;
            }
            case 35: {
                this.unsetMaxDrift();
                return;
            }
            case 36: {
                this.unsetMaximumDynamicPayloadLength();
                return;
            }
            case 37: {
                this.unsetMicroInitialOffsetA();
                return;
            }
            case 38: {
                this.unsetMicroInitialOffsetB();
                return;
            }
            case 39: {
                this.unsetMicroPerCycle();
                return;
            }
            case 40: {
                this.unsetMicroPerMacroNom();
                return;
            }
            case 41: {
                this.unsetMicrotickDuration();
                return;
            }
            case 42: {
                this.unsetSamplesPerMicrotick();
                return;
            }
            case 43: {
                this.unsetSingleSlotEnabled();
                return;
            }
            case 44: {
                this.unsetStartUpNode();
                return;
            }
            case 45: {
                this.unsetSyncSlot();
                return;
            }
            case 46: {
                this.unsetWakeUpPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetAcceptedStartupRange();
            }
            case 22: {
                return this.isSetAllowHaltDueToClock();
            }
            case 23: {
                return this.isSetAllowPassiveToActive();
            }
            case 24: {
                return this.isSetClusterDriftDamping();
            }
            case 25: {
                return this.isSetDelayCompensationA();
            }
            case 26: {
                return this.isSetDelayCompensationB();
            }
            case 27: {
                return this.isSetDynamicSegmentEnable();
            }
            case 28: {
                return this.isSetExternOffsetCorrection();
            }
            case 29: {
                return this.isSetExternRateCorrection();
            }
            case 30: {
                return this.isSetKeySlotID();
            }
            case 31: {
                return this.isSetKeySlotUsedForStartUp();
            }
            case 32: {
                return this.isSetKeySlotUsedForSync();
            }
            case 33: {
                return this.isSetLatestTX();
            }
            case 34: {
                return this.isSetListenTimeout();
            }
            case 35: {
                return this.isSetMaxDrift();
            }
            case 36: {
                return this.isSetMaximumDynamicPayloadLength();
            }
            case 37: {
                return this.isSetMicroInitialOffsetA();
            }
            case 38: {
                return this.isSetMicroInitialOffsetB();
            }
            case 39: {
                return this.isSetMicroPerCycle();
            }
            case 40: {
                return this.isSetMicroPerMacroNom();
            }
            case 41: {
                return this.isSetMicrotickDuration();
            }
            case 42: {
                return this.isSetSamplesPerMicrotick();
            }
            case 43: {
                return this.isSetSingleSlotEnabled();
            }
            case 44: {
                return this.isSetStartUpNode();
            }
            case 45: {
                return this.isSetSyncSlot();
            }
            case 46: {
                return this.isSetWakeUpPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (acceptedStartupRange: ");
        if (this.acceptedStartupRangeESet) {
            result.append(this.acceptedStartupRange);
        } else {
            result.append("<unset>");
        }
        result.append(", allowHaltDueToClock: ");
        if (this.allowHaltDueToClockESet) {
            result.append(this.allowHaltDueToClock);
        } else {
            result.append("<unset>");
        }
        result.append(", allowPassiveToActive: ");
        if (this.allowPassiveToActiveESet) {
            result.append(this.allowPassiveToActive);
        } else {
            result.append("<unset>");
        }
        result.append(", clusterDriftDamping: ");
        if (this.clusterDriftDampingESet) {
            result.append(this.clusterDriftDamping);
        } else {
            result.append("<unset>");
        }
        result.append(", delayCompensationA: ");
        if (this.delayCompensationAESet) {
            result.append(this.delayCompensationA);
        } else {
            result.append("<unset>");
        }
        result.append(", delayCompensationB: ");
        if (this.delayCompensationBESet) {
            result.append(this.delayCompensationB);
        } else {
            result.append("<unset>");
        }
        result.append(", dynamicSegmentEnable: ");
        if (this.dynamicSegmentEnableESet) {
            result.append(this.dynamicSegmentEnable);
        } else {
            result.append("<unset>");
        }
        result.append(", externOffsetCorrection: ");
        if (this.externOffsetCorrectionESet) {
            result.append(this.externOffsetCorrection);
        } else {
            result.append("<unset>");
        }
        result.append(", externRateCorrection: ");
        if (this.externRateCorrectionESet) {
            result.append(this.externRateCorrection);
        } else {
            result.append("<unset>");
        }
        result.append(", keySlotID: ");
        if (this.keySlotIDESet) {
            result.append(this.keySlotID);
        } else {
            result.append("<unset>");
        }
        result.append(", keySlotUsedForStartUp: ");
        if (this.keySlotUsedForStartUpESet) {
            result.append(this.keySlotUsedForStartUp);
        } else {
            result.append("<unset>");
        }
        result.append(", keySlotUsedForSync: ");
        if (this.keySlotUsedForSyncESet) {
            result.append(this.keySlotUsedForSync);
        } else {
            result.append("<unset>");
        }
        result.append(", latestTX: ");
        if (this.latestTXESet) {
            result.append(this.latestTX);
        } else {
            result.append("<unset>");
        }
        result.append(", listenTimeout: ");
        if (this.listenTimeoutESet) {
            result.append(this.listenTimeout);
        } else {
            result.append("<unset>");
        }
        result.append(", maxDrift: ");
        if (this.maxDriftESet) {
            result.append(this.maxDrift);
        } else {
            result.append("<unset>");
        }
        result.append(", maximumDynamicPayloadLength: ");
        if (this.maximumDynamicPayloadLengthESet) {
            result.append(this.maximumDynamicPayloadLength);
        } else {
            result.append("<unset>");
        }
        result.append(", MicroInitialOffsetA: ");
        if (this.microInitialOffsetAESet) {
            result.append(this.microInitialOffsetA);
        } else {
            result.append("<unset>");
        }
        result.append(", MicroInitialOffsetB: ");
        if (this.microInitialOffsetBESet) {
            result.append(this.microInitialOffsetB);
        } else {
            result.append("<unset>");
        }
        result.append(", microPerCycle: ");
        if (this.microPerCycleESet) {
            result.append(this.microPerCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", MicroPerMacroNom: ");
        if (this.microPerMacroNomESet) {
            result.append(this.microPerMacroNom);
        } else {
            result.append("<unset>");
        }
        result.append(", microtickDuration: ");
        if (this.microtickDurationESet) {
            result.append(this.microtickDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", samplesPerMicrotick: ");
        if (this.samplesPerMicrotickESet) {
            result.append(this.samplesPerMicrotick);
        } else {
            result.append("<unset>");
        }
        result.append(", SingleSlotEnabled: ");
        if (this.singleSlotEnabledESet) {
            result.append(this.singleSlotEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", startUpNode: ");
        if (this.startUpNodeESet) {
            result.append(this.startUpNode);
        } else {
            result.append("<unset>");
        }
        result.append(", syncSlot: ");
        if (this.syncSlotESet) {
            result.append(this.syncSlot);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpPattern: ");
        if (this.wakeUpPatternESet) {
            result.append(this.wakeUpPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

