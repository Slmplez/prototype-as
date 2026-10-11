/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationControllerImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexrayCommunicationControllerImpl
extends CommunicationControllerImpl
implements FlexrayCommunicationController {
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
    protected static final Integer DECODING_CORRECTION_EDEFAULT = new Integer(0);
    protected Integer decodingCorrection = DECODING_CORRECTION_EDEFAULT;
    protected boolean decodingCorrectionESet;
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
    protected static final Boolean EXTERNAL_SYNC_EDEFAULT = Boolean.FALSE;
    protected Boolean externalSync = EXTERNAL_SYNC_EDEFAULT;
    protected boolean externalSyncESet;
    protected static final Boolean FALL_BACK_INTERNAL_EDEFAULT = Boolean.FALSE;
    protected Boolean fallBackInternal = FALL_BACK_INTERNAL_EDEFAULT;
    protected boolean fallBackInternalESet;
    protected EList<FlexrayFifoConfiguration> flexrayFifos;
    protected static final Integer KEY_SLOT_ID_EDEFAULT = new Integer(0);
    protected Integer keySlotID = KEY_SLOT_ID_EDEFAULT;
    protected boolean keySlotIDESet;
    protected static final Boolean KEY_SLOT_ONLY_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean keySlotOnlyEnabled = KEY_SLOT_ONLY_ENABLED_EDEFAULT;
    protected boolean keySlotOnlyEnabledESet;
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
    protected static final Integer MACRO_INITIAL_OFFSET_A_EDEFAULT = new Integer(0);
    protected Integer macroInitialOffsetA = MACRO_INITIAL_OFFSET_A_EDEFAULT;
    protected boolean macroInitialOffsetAESet;
    protected static final Integer MACRO_INITIAL_OFFSET_B_EDEFAULT = new Integer(0);
    protected Integer macroInitialOffsetB = MACRO_INITIAL_OFFSET_B_EDEFAULT;
    protected boolean macroInitialOffsetBESet;
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
    protected static final Boolean NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmControlBitVectorEnabled = NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT;
    protected boolean nmControlBitVectorEnabledESet;
    protected static final Boolean NM_NODE_DETECTION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmNodeDetectionEnabled = NM_NODE_DETECTION_ENABLED_EDEFAULT;
    protected boolean nmNodeDetectionEnabledESet;
    protected static final Boolean NM_SOURCE_NODE_IDENTIFIER_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmSourceNodeIdentifierEnabled = NM_SOURCE_NODE_IDENTIFIER_ENABLED_EDEFAULT;
    protected boolean nmSourceNodeIdentifierEnabledESet;
    protected static final Boolean NM_USER_DATA_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmUserDataEnabled = NM_USER_DATA_ENABLED_EDEFAULT;
    protected boolean nmUserDataEnabledESet;
    protected static final Boolean NM_VECTOR_EARLY_UPDATE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmVectorEarlyUpdate = NM_VECTOR_EARLY_UPDATE_EDEFAULT;
    protected boolean nmVectorEarlyUpdateESet;
    protected static final Integer OFFSET_CORRECTION_OUT_EDEFAULT = new Integer(0);
    protected Integer offsetCorrectionOut = OFFSET_CORRECTION_OUT_EDEFAULT;
    protected boolean offsetCorrectionOutESet;
    protected static final Integer RATE_CORRECTION_OUT_EDEFAULT = new Integer(0);
    protected Integer rateCorrectionOut = RATE_CORRECTION_OUT_EDEFAULT;
    protected boolean rateCorrectionOutESet;
    protected static final Integer SAMPLES_PER_MICROTICK_EDEFAULT = new Integer(0);
    protected Integer samplesPerMicrotick = SAMPLES_PER_MICROTICK_EDEFAULT;
    protected boolean samplesPerMicrotickESet;
    protected static final Integer SECOND_KEY_SLOT_ID_EDEFAULT = new Integer(0);
    protected Integer secondKeySlotId = SECOND_KEY_SLOT_ID_EDEFAULT;
    protected boolean secondKeySlotIdESet;
    protected static final Boolean START_UP_NODE_EDEFAULT = Boolean.FALSE;
    protected Boolean startUpNode = START_UP_NODE_EDEFAULT;
    protected boolean startUpNodeESet;
    protected static final Integer SYNC_SLOT_EDEFAULT = new Integer(0);
    protected Integer syncSlot = SYNC_SLOT_EDEFAULT;
    protected boolean syncSlotESet;
    protected static final Integer TWO_KEY_SLOT_MODE_EDEFAULT = new Integer(0);
    protected Integer twoKeySlotMode = TWO_KEY_SLOT_MODE_EDEFAULT;
    protected boolean twoKeySlotModeESet;
    protected static final Integer WAKE_UP_PATTERN_EDEFAULT = new Integer(0);
    protected Integer wakeUpPattern = WAKE_UP_PATTERN_EDEFAULT;
    protected boolean wakeUpPatternESet;

    protected FlexrayCommunicationControllerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_COMMUNICATION_CONTROLLER;
    }

    @Override
    public Integer getAcceptedStartupRange() {
        return this.acceptedStartupRange;
    }

    @Override
    public void setAcceptedStartupRange(Integer newAcceptedStartupRange) {
        Integer oldAcceptedStartupRange = this.acceptedStartupRange;
        this.acceptedStartupRange = newAcceptedStartupRange;
        boolean oldAcceptedStartupRangeESet = this.acceptedStartupRangeESet;
        this.acceptedStartupRangeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldAcceptedStartupRange, (Object)this.acceptedStartupRange, !oldAcceptedStartupRangeESet));
        }
    }

    @Override
    public void unsetAcceptedStartupRange() {
        Integer oldAcceptedStartupRange = this.acceptedStartupRange;
        boolean oldAcceptedStartupRangeESet = this.acceptedStartupRangeESet;
        this.acceptedStartupRange = ACCEPTED_STARTUP_RANGE_EDEFAULT;
        this.acceptedStartupRangeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldAcceptedStartupRange, (Object)ACCEPTED_STARTUP_RANGE_EDEFAULT, oldAcceptedStartupRangeESet));
        }
    }

    @Override
    public boolean isSetAcceptedStartupRange() {
        return this.acceptedStartupRangeESet;
    }

    @Override
    public Boolean getAllowHaltDueToClock() {
        return this.allowHaltDueToClock;
    }

    @Override
    public void setAllowHaltDueToClock(Boolean newAllowHaltDueToClock) {
        Boolean oldAllowHaltDueToClock = this.allowHaltDueToClock;
        this.allowHaltDueToClock = newAllowHaltDueToClock;
        boolean oldAllowHaltDueToClockESet = this.allowHaltDueToClockESet;
        this.allowHaltDueToClockESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldAllowHaltDueToClock, (Object)this.allowHaltDueToClock, !oldAllowHaltDueToClockESet));
        }
    }

    @Override
    public void unsetAllowHaltDueToClock() {
        Boolean oldAllowHaltDueToClock = this.allowHaltDueToClock;
        boolean oldAllowHaltDueToClockESet = this.allowHaltDueToClockESet;
        this.allowHaltDueToClock = ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT;
        this.allowHaltDueToClockESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldAllowHaltDueToClock, (Object)ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT, oldAllowHaltDueToClockESet));
        }
    }

    @Override
    public boolean isSetAllowHaltDueToClock() {
        return this.allowHaltDueToClockESet;
    }

    @Override
    public Integer getAllowPassiveToActive() {
        return this.allowPassiveToActive;
    }

    @Override
    public void setAllowPassiveToActive(Integer newAllowPassiveToActive) {
        Integer oldAllowPassiveToActive = this.allowPassiveToActive;
        this.allowPassiveToActive = newAllowPassiveToActive;
        boolean oldAllowPassiveToActiveESet = this.allowPassiveToActiveESet;
        this.allowPassiveToActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldAllowPassiveToActive, (Object)this.allowPassiveToActive, !oldAllowPassiveToActiveESet));
        }
    }

    @Override
    public void unsetAllowPassiveToActive() {
        Integer oldAllowPassiveToActive = this.allowPassiveToActive;
        boolean oldAllowPassiveToActiveESet = this.allowPassiveToActiveESet;
        this.allowPassiveToActive = ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT;
        this.allowPassiveToActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldAllowPassiveToActive, (Object)ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT, oldAllowPassiveToActiveESet));
        }
    }

    @Override
    public boolean isSetAllowPassiveToActive() {
        return this.allowPassiveToActiveESet;
    }

    @Override
    public Integer getClusterDriftDamping() {
        return this.clusterDriftDamping;
    }

    @Override
    public void setClusterDriftDamping(Integer newClusterDriftDamping) {
        Integer oldClusterDriftDamping = this.clusterDriftDamping;
        this.clusterDriftDamping = newClusterDriftDamping;
        boolean oldClusterDriftDampingESet = this.clusterDriftDampingESet;
        this.clusterDriftDampingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldClusterDriftDamping, (Object)this.clusterDriftDamping, !oldClusterDriftDampingESet));
        }
    }

    @Override
    public void unsetClusterDriftDamping() {
        Integer oldClusterDriftDamping = this.clusterDriftDamping;
        boolean oldClusterDriftDampingESet = this.clusterDriftDampingESet;
        this.clusterDriftDamping = CLUSTER_DRIFT_DAMPING_EDEFAULT;
        this.clusterDriftDampingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldClusterDriftDamping, (Object)CLUSTER_DRIFT_DAMPING_EDEFAULT, oldClusterDriftDampingESet));
        }
    }

    @Override
    public boolean isSetClusterDriftDamping() {
        return this.clusterDriftDampingESet;
    }

    @Override
    public Integer getDecodingCorrection() {
        return this.decodingCorrection;
    }

    @Override
    public void setDecodingCorrection(Integer newDecodingCorrection) {
        Integer oldDecodingCorrection = this.decodingCorrection;
        this.decodingCorrection = newDecodingCorrection;
        boolean oldDecodingCorrectionESet = this.decodingCorrectionESet;
        this.decodingCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldDecodingCorrection, (Object)this.decodingCorrection, !oldDecodingCorrectionESet));
        }
    }

    @Override
    public void unsetDecodingCorrection() {
        Integer oldDecodingCorrection = this.decodingCorrection;
        boolean oldDecodingCorrectionESet = this.decodingCorrectionESet;
        this.decodingCorrection = DECODING_CORRECTION_EDEFAULT;
        this.decodingCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldDecodingCorrection, (Object)DECODING_CORRECTION_EDEFAULT, oldDecodingCorrectionESet));
        }
    }

    @Override
    public boolean isSetDecodingCorrection() {
        return this.decodingCorrectionESet;
    }

    @Override
    public Integer getDelayCompensationA() {
        return this.delayCompensationA;
    }

    @Override
    public void setDelayCompensationA(Integer newDelayCompensationA) {
        Integer oldDelayCompensationA = this.delayCompensationA;
        this.delayCompensationA = newDelayCompensationA;
        boolean oldDelayCompensationAESet = this.delayCompensationAESet;
        this.delayCompensationAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDelayCompensationA, (Object)this.delayCompensationA, !oldDelayCompensationAESet));
        }
    }

    @Override
    public void unsetDelayCompensationA() {
        Integer oldDelayCompensationA = this.delayCompensationA;
        boolean oldDelayCompensationAESet = this.delayCompensationAESet;
        this.delayCompensationA = DELAY_COMPENSATION_A_EDEFAULT;
        this.delayCompensationAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldDelayCompensationA, (Object)DELAY_COMPENSATION_A_EDEFAULT, oldDelayCompensationAESet));
        }
    }

    @Override
    public boolean isSetDelayCompensationA() {
        return this.delayCompensationAESet;
    }

    @Override
    public Integer getDelayCompensationB() {
        return this.delayCompensationB;
    }

    @Override
    public void setDelayCompensationB(Integer newDelayCompensationB) {
        Integer oldDelayCompensationB = this.delayCompensationB;
        this.delayCompensationB = newDelayCompensationB;
        boolean oldDelayCompensationBESet = this.delayCompensationBESet;
        this.delayCompensationBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldDelayCompensationB, (Object)this.delayCompensationB, !oldDelayCompensationBESet));
        }
    }

    @Override
    public void unsetDelayCompensationB() {
        Integer oldDelayCompensationB = this.delayCompensationB;
        boolean oldDelayCompensationBESet = this.delayCompensationBESet;
        this.delayCompensationB = DELAY_COMPENSATION_B_EDEFAULT;
        this.delayCompensationBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldDelayCompensationB, (Object)DELAY_COMPENSATION_B_EDEFAULT, oldDelayCompensationBESet));
        }
    }

    @Override
    public boolean isSetDelayCompensationB() {
        return this.delayCompensationBESet;
    }

    @Override
    public Boolean getDynamicSegmentEnable() {
        return this.dynamicSegmentEnable;
    }

    @Override
    public void setDynamicSegmentEnable(Boolean newDynamicSegmentEnable) {
        Boolean oldDynamicSegmentEnable = this.dynamicSegmentEnable;
        this.dynamicSegmentEnable = newDynamicSegmentEnable;
        boolean oldDynamicSegmentEnableESet = this.dynamicSegmentEnableESet;
        this.dynamicSegmentEnableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldDynamicSegmentEnable, (Object)this.dynamicSegmentEnable, !oldDynamicSegmentEnableESet));
        }
    }

    @Override
    public void unsetDynamicSegmentEnable() {
        Boolean oldDynamicSegmentEnable = this.dynamicSegmentEnable;
        boolean oldDynamicSegmentEnableESet = this.dynamicSegmentEnableESet;
        this.dynamicSegmentEnable = DYNAMIC_SEGMENT_ENABLE_EDEFAULT;
        this.dynamicSegmentEnableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldDynamicSegmentEnable, (Object)DYNAMIC_SEGMENT_ENABLE_EDEFAULT, oldDynamicSegmentEnableESet));
        }
    }

    @Override
    public boolean isSetDynamicSegmentEnable() {
        return this.dynamicSegmentEnableESet;
    }

    @Override
    public Integer getExternOffsetCorrection() {
        return this.externOffsetCorrection;
    }

    @Override
    public void setExternOffsetCorrection(Integer newExternOffsetCorrection) {
        Integer oldExternOffsetCorrection = this.externOffsetCorrection;
        this.externOffsetCorrection = newExternOffsetCorrection;
        boolean oldExternOffsetCorrectionESet = this.externOffsetCorrectionESet;
        this.externOffsetCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldExternOffsetCorrection, (Object)this.externOffsetCorrection, !oldExternOffsetCorrectionESet));
        }
    }

    @Override
    public void unsetExternOffsetCorrection() {
        Integer oldExternOffsetCorrection = this.externOffsetCorrection;
        boolean oldExternOffsetCorrectionESet = this.externOffsetCorrectionESet;
        this.externOffsetCorrection = EXTERN_OFFSET_CORRECTION_EDEFAULT;
        this.externOffsetCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldExternOffsetCorrection, (Object)EXTERN_OFFSET_CORRECTION_EDEFAULT, oldExternOffsetCorrectionESet));
        }
    }

    @Override
    public boolean isSetExternOffsetCorrection() {
        return this.externOffsetCorrectionESet;
    }

    @Override
    public Integer getExternRateCorrection() {
        return this.externRateCorrection;
    }

    @Override
    public void setExternRateCorrection(Integer newExternRateCorrection) {
        Integer oldExternRateCorrection = this.externRateCorrection;
        this.externRateCorrection = newExternRateCorrection;
        boolean oldExternRateCorrectionESet = this.externRateCorrectionESet;
        this.externRateCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldExternRateCorrection, (Object)this.externRateCorrection, !oldExternRateCorrectionESet));
        }
    }

    @Override
    public void unsetExternRateCorrection() {
        Integer oldExternRateCorrection = this.externRateCorrection;
        boolean oldExternRateCorrectionESet = this.externRateCorrectionESet;
        this.externRateCorrection = EXTERN_RATE_CORRECTION_EDEFAULT;
        this.externRateCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldExternRateCorrection, (Object)EXTERN_RATE_CORRECTION_EDEFAULT, oldExternRateCorrectionESet));
        }
    }

    @Override
    public boolean isSetExternRateCorrection() {
        return this.externRateCorrectionESet;
    }

    @Override
    public Boolean getExternalSync() {
        return this.externalSync;
    }

    @Override
    public void setExternalSync(Boolean newExternalSync) {
        Boolean oldExternalSync = this.externalSync;
        this.externalSync = newExternalSync;
        boolean oldExternalSyncESet = this.externalSyncESet;
        this.externalSyncESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldExternalSync, (Object)this.externalSync, !oldExternalSyncESet));
        }
    }

    @Override
    public void unsetExternalSync() {
        Boolean oldExternalSync = this.externalSync;
        boolean oldExternalSyncESet = this.externalSyncESet;
        this.externalSync = EXTERNAL_SYNC_EDEFAULT;
        this.externalSyncESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldExternalSync, (Object)EXTERNAL_SYNC_EDEFAULT, oldExternalSyncESet));
        }
    }

    @Override
    public boolean isSetExternalSync() {
        return this.externalSyncESet;
    }

    @Override
    public Boolean getFallBackInternal() {
        return this.fallBackInternal;
    }

    @Override
    public void setFallBackInternal(Boolean newFallBackInternal) {
        Boolean oldFallBackInternal = this.fallBackInternal;
        this.fallBackInternal = newFallBackInternal;
        boolean oldFallBackInternalESet = this.fallBackInternalESet;
        this.fallBackInternalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldFallBackInternal, (Object)this.fallBackInternal, !oldFallBackInternalESet));
        }
    }

    @Override
    public void unsetFallBackInternal() {
        Boolean oldFallBackInternal = this.fallBackInternal;
        boolean oldFallBackInternalESet = this.fallBackInternalESet;
        this.fallBackInternal = FALL_BACK_INTERNAL_EDEFAULT;
        this.fallBackInternalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldFallBackInternal, (Object)FALL_BACK_INTERNAL_EDEFAULT, oldFallBackInternalESet));
        }
    }

    @Override
    public boolean isSetFallBackInternal() {
        return this.fallBackInternalESet;
    }

    @Override
    public EList<FlexrayFifoConfiguration> getFlexrayFifos() {
        if (this.flexrayFifos == null) {
            this.flexrayFifos = new EObjectContainmentWithInverseEList(FlexrayFifoConfiguration.class, (InternalEObject)this, 31, 4);
        }
        return this.flexrayFifos;
    }

    @Override
    public Integer getKeySlotID() {
        return this.keySlotID;
    }

    @Override
    public void setKeySlotID(Integer newKeySlotID) {
        Integer oldKeySlotID = this.keySlotID;
        this.keySlotID = newKeySlotID;
        boolean oldKeySlotIDESet = this.keySlotIDESet;
        this.keySlotIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldKeySlotID, (Object)this.keySlotID, !oldKeySlotIDESet));
        }
    }

    @Override
    public void unsetKeySlotID() {
        Integer oldKeySlotID = this.keySlotID;
        boolean oldKeySlotIDESet = this.keySlotIDESet;
        this.keySlotID = KEY_SLOT_ID_EDEFAULT;
        this.keySlotIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldKeySlotID, (Object)KEY_SLOT_ID_EDEFAULT, oldKeySlotIDESet));
        }
    }

    @Override
    public boolean isSetKeySlotID() {
        return this.keySlotIDESet;
    }

    @Override
    public Boolean getKeySlotOnlyEnabled() {
        return this.keySlotOnlyEnabled;
    }

    @Override
    public void setKeySlotOnlyEnabled(Boolean newKeySlotOnlyEnabled) {
        Boolean oldKeySlotOnlyEnabled = this.keySlotOnlyEnabled;
        this.keySlotOnlyEnabled = newKeySlotOnlyEnabled;
        boolean oldKeySlotOnlyEnabledESet = this.keySlotOnlyEnabledESet;
        this.keySlotOnlyEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldKeySlotOnlyEnabled, (Object)this.keySlotOnlyEnabled, !oldKeySlotOnlyEnabledESet));
        }
    }

    @Override
    public void unsetKeySlotOnlyEnabled() {
        Boolean oldKeySlotOnlyEnabled = this.keySlotOnlyEnabled;
        boolean oldKeySlotOnlyEnabledESet = this.keySlotOnlyEnabledESet;
        this.keySlotOnlyEnabled = KEY_SLOT_ONLY_ENABLED_EDEFAULT;
        this.keySlotOnlyEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldKeySlotOnlyEnabled, (Object)KEY_SLOT_ONLY_ENABLED_EDEFAULT, oldKeySlotOnlyEnabledESet));
        }
    }

    @Override
    public boolean isSetKeySlotOnlyEnabled() {
        return this.keySlotOnlyEnabledESet;
    }

    @Override
    public Boolean getKeySlotUsedForStartUp() {
        return this.keySlotUsedForStartUp;
    }

    @Override
    public void setKeySlotUsedForStartUp(Boolean newKeySlotUsedForStartUp) {
        Boolean oldKeySlotUsedForStartUp = this.keySlotUsedForStartUp;
        this.keySlotUsedForStartUp = newKeySlotUsedForStartUp;
        boolean oldKeySlotUsedForStartUpESet = this.keySlotUsedForStartUpESet;
        this.keySlotUsedForStartUpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldKeySlotUsedForStartUp, (Object)this.keySlotUsedForStartUp, !oldKeySlotUsedForStartUpESet));
        }
    }

    @Override
    public void unsetKeySlotUsedForStartUp() {
        Boolean oldKeySlotUsedForStartUp = this.keySlotUsedForStartUp;
        boolean oldKeySlotUsedForStartUpESet = this.keySlotUsedForStartUpESet;
        this.keySlotUsedForStartUp = KEY_SLOT_USED_FOR_START_UP_EDEFAULT;
        this.keySlotUsedForStartUpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldKeySlotUsedForStartUp, (Object)KEY_SLOT_USED_FOR_START_UP_EDEFAULT, oldKeySlotUsedForStartUpESet));
        }
    }

    @Override
    public boolean isSetKeySlotUsedForStartUp() {
        return this.keySlotUsedForStartUpESet;
    }

    @Override
    public Boolean getKeySlotUsedForSync() {
        return this.keySlotUsedForSync;
    }

    @Override
    public void setKeySlotUsedForSync(Boolean newKeySlotUsedForSync) {
        Boolean oldKeySlotUsedForSync = this.keySlotUsedForSync;
        this.keySlotUsedForSync = newKeySlotUsedForSync;
        boolean oldKeySlotUsedForSyncESet = this.keySlotUsedForSyncESet;
        this.keySlotUsedForSyncESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldKeySlotUsedForSync, (Object)this.keySlotUsedForSync, !oldKeySlotUsedForSyncESet));
        }
    }

    @Override
    public void unsetKeySlotUsedForSync() {
        Boolean oldKeySlotUsedForSync = this.keySlotUsedForSync;
        boolean oldKeySlotUsedForSyncESet = this.keySlotUsedForSyncESet;
        this.keySlotUsedForSync = KEY_SLOT_USED_FOR_SYNC_EDEFAULT;
        this.keySlotUsedForSyncESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldKeySlotUsedForSync, (Object)KEY_SLOT_USED_FOR_SYNC_EDEFAULT, oldKeySlotUsedForSyncESet));
        }
    }

    @Override
    public boolean isSetKeySlotUsedForSync() {
        return this.keySlotUsedForSyncESet;
    }

    @Override
    public Integer getLatestTX() {
        return this.latestTX;
    }

    @Override
    public void setLatestTX(Integer newLatestTX) {
        Integer oldLatestTX = this.latestTX;
        this.latestTX = newLatestTX;
        boolean oldLatestTXESet = this.latestTXESet;
        this.latestTXESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldLatestTX, (Object)this.latestTX, !oldLatestTXESet));
        }
    }

    @Override
    public void unsetLatestTX() {
        Integer oldLatestTX = this.latestTX;
        boolean oldLatestTXESet = this.latestTXESet;
        this.latestTX = LATEST_TX_EDEFAULT;
        this.latestTXESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldLatestTX, (Object)LATEST_TX_EDEFAULT, oldLatestTXESet));
        }
    }

    @Override
    public boolean isSetLatestTX() {
        return this.latestTXESet;
    }

    @Override
    public Integer getListenTimeout() {
        return this.listenTimeout;
    }

    @Override
    public void setListenTimeout(Integer newListenTimeout) {
        Integer oldListenTimeout = this.listenTimeout;
        this.listenTimeout = newListenTimeout;
        boolean oldListenTimeoutESet = this.listenTimeoutESet;
        this.listenTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldListenTimeout, (Object)this.listenTimeout, !oldListenTimeoutESet));
        }
    }

    @Override
    public void unsetListenTimeout() {
        Integer oldListenTimeout = this.listenTimeout;
        boolean oldListenTimeoutESet = this.listenTimeoutESet;
        this.listenTimeout = LISTEN_TIMEOUT_EDEFAULT;
        this.listenTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldListenTimeout, (Object)LISTEN_TIMEOUT_EDEFAULT, oldListenTimeoutESet));
        }
    }

    @Override
    public boolean isSetListenTimeout() {
        return this.listenTimeoutESet;
    }

    @Override
    public Integer getMacroInitialOffsetA() {
        return this.macroInitialOffsetA;
    }

    @Override
    public void setMacroInitialOffsetA(Integer newMacroInitialOffsetA) {
        Integer oldMacroInitialOffsetA = this.macroInitialOffsetA;
        this.macroInitialOffsetA = newMacroInitialOffsetA;
        boolean oldMacroInitialOffsetAESet = this.macroInitialOffsetAESet;
        this.macroInitialOffsetAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldMacroInitialOffsetA, (Object)this.macroInitialOffsetA, !oldMacroInitialOffsetAESet));
        }
    }

    @Override
    public void unsetMacroInitialOffsetA() {
        Integer oldMacroInitialOffsetA = this.macroInitialOffsetA;
        boolean oldMacroInitialOffsetAESet = this.macroInitialOffsetAESet;
        this.macroInitialOffsetA = MACRO_INITIAL_OFFSET_A_EDEFAULT;
        this.macroInitialOffsetAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldMacroInitialOffsetA, (Object)MACRO_INITIAL_OFFSET_A_EDEFAULT, oldMacroInitialOffsetAESet));
        }
    }

    @Override
    public boolean isSetMacroInitialOffsetA() {
        return this.macroInitialOffsetAESet;
    }

    @Override
    public Integer getMacroInitialOffsetB() {
        return this.macroInitialOffsetB;
    }

    @Override
    public void setMacroInitialOffsetB(Integer newMacroInitialOffsetB) {
        Integer oldMacroInitialOffsetB = this.macroInitialOffsetB;
        this.macroInitialOffsetB = newMacroInitialOffsetB;
        boolean oldMacroInitialOffsetBESet = this.macroInitialOffsetBESet;
        this.macroInitialOffsetBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldMacroInitialOffsetB, (Object)this.macroInitialOffsetB, !oldMacroInitialOffsetBESet));
        }
    }

    @Override
    public void unsetMacroInitialOffsetB() {
        Integer oldMacroInitialOffsetB = this.macroInitialOffsetB;
        boolean oldMacroInitialOffsetBESet = this.macroInitialOffsetBESet;
        this.macroInitialOffsetB = MACRO_INITIAL_OFFSET_B_EDEFAULT;
        this.macroInitialOffsetBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldMacroInitialOffsetB, (Object)MACRO_INITIAL_OFFSET_B_EDEFAULT, oldMacroInitialOffsetBESet));
        }
    }

    @Override
    public boolean isSetMacroInitialOffsetB() {
        return this.macroInitialOffsetBESet;
    }

    @Override
    public Integer getMaximumDynamicPayloadLength() {
        return this.maximumDynamicPayloadLength;
    }

    @Override
    public void setMaximumDynamicPayloadLength(Integer newMaximumDynamicPayloadLength) {
        Integer oldMaximumDynamicPayloadLength = this.maximumDynamicPayloadLength;
        this.maximumDynamicPayloadLength = newMaximumDynamicPayloadLength;
        boolean oldMaximumDynamicPayloadLengthESet = this.maximumDynamicPayloadLengthESet;
        this.maximumDynamicPayloadLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldMaximumDynamicPayloadLength, (Object)this.maximumDynamicPayloadLength, !oldMaximumDynamicPayloadLengthESet));
        }
    }

    @Override
    public void unsetMaximumDynamicPayloadLength() {
        Integer oldMaximumDynamicPayloadLength = this.maximumDynamicPayloadLength;
        boolean oldMaximumDynamicPayloadLengthESet = this.maximumDynamicPayloadLengthESet;
        this.maximumDynamicPayloadLength = MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT;
        this.maximumDynamicPayloadLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldMaximumDynamicPayloadLength, (Object)MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT, oldMaximumDynamicPayloadLengthESet));
        }
    }

    @Override
    public boolean isSetMaximumDynamicPayloadLength() {
        return this.maximumDynamicPayloadLengthESet;
    }

    @Override
    public Integer getMicroInitialOffsetA() {
        return this.microInitialOffsetA;
    }

    @Override
    public void setMicroInitialOffsetA(Integer newMicroInitialOffsetA) {
        Integer oldMicroInitialOffsetA = this.microInitialOffsetA;
        this.microInitialOffsetA = newMicroInitialOffsetA;
        boolean oldMicroInitialOffsetAESet = this.microInitialOffsetAESet;
        this.microInitialOffsetAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldMicroInitialOffsetA, (Object)this.microInitialOffsetA, !oldMicroInitialOffsetAESet));
        }
    }

    @Override
    public void unsetMicroInitialOffsetA() {
        Integer oldMicroInitialOffsetA = this.microInitialOffsetA;
        boolean oldMicroInitialOffsetAESet = this.microInitialOffsetAESet;
        this.microInitialOffsetA = MICRO_INITIAL_OFFSET_A_EDEFAULT;
        this.microInitialOffsetAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldMicroInitialOffsetA, (Object)MICRO_INITIAL_OFFSET_A_EDEFAULT, oldMicroInitialOffsetAESet));
        }
    }

    @Override
    public boolean isSetMicroInitialOffsetA() {
        return this.microInitialOffsetAESet;
    }

    @Override
    public Integer getMicroInitialOffsetB() {
        return this.microInitialOffsetB;
    }

    @Override
    public void setMicroInitialOffsetB(Integer newMicroInitialOffsetB) {
        Integer oldMicroInitialOffsetB = this.microInitialOffsetB;
        this.microInitialOffsetB = newMicroInitialOffsetB;
        boolean oldMicroInitialOffsetBESet = this.microInitialOffsetBESet;
        this.microInitialOffsetBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 42, (Object)oldMicroInitialOffsetB, (Object)this.microInitialOffsetB, !oldMicroInitialOffsetBESet));
        }
    }

    @Override
    public void unsetMicroInitialOffsetB() {
        Integer oldMicroInitialOffsetB = this.microInitialOffsetB;
        boolean oldMicroInitialOffsetBESet = this.microInitialOffsetBESet;
        this.microInitialOffsetB = MICRO_INITIAL_OFFSET_B_EDEFAULT;
        this.microInitialOffsetBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 42, (Object)oldMicroInitialOffsetB, (Object)MICRO_INITIAL_OFFSET_B_EDEFAULT, oldMicroInitialOffsetBESet));
        }
    }

    @Override
    public boolean isSetMicroInitialOffsetB() {
        return this.microInitialOffsetBESet;
    }

    @Override
    public Integer getMicroPerCycle() {
        return this.microPerCycle;
    }

    @Override
    public void setMicroPerCycle(Integer newMicroPerCycle) {
        Integer oldMicroPerCycle = this.microPerCycle;
        this.microPerCycle = newMicroPerCycle;
        boolean oldMicroPerCycleESet = this.microPerCycleESet;
        this.microPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 43, (Object)oldMicroPerCycle, (Object)this.microPerCycle, !oldMicroPerCycleESet));
        }
    }

    @Override
    public void unsetMicroPerCycle() {
        Integer oldMicroPerCycle = this.microPerCycle;
        boolean oldMicroPerCycleESet = this.microPerCycleESet;
        this.microPerCycle = MICRO_PER_CYCLE_EDEFAULT;
        this.microPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 43, (Object)oldMicroPerCycle, (Object)MICRO_PER_CYCLE_EDEFAULT, oldMicroPerCycleESet));
        }
    }

    @Override
    public boolean isSetMicroPerCycle() {
        return this.microPerCycleESet;
    }

    @Override
    public Double getMicroPerMacroNom() {
        return this.microPerMacroNom;
    }

    @Override
    public void setMicroPerMacroNom(Double newMicroPerMacroNom) {
        Double oldMicroPerMacroNom = this.microPerMacroNom;
        this.microPerMacroNom = newMicroPerMacroNom;
        boolean oldMicroPerMacroNomESet = this.microPerMacroNomESet;
        this.microPerMacroNomESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 44, (Object)oldMicroPerMacroNom, (Object)this.microPerMacroNom, !oldMicroPerMacroNomESet));
        }
    }

    @Override
    public void unsetMicroPerMacroNom() {
        Double oldMicroPerMacroNom = this.microPerMacroNom;
        boolean oldMicroPerMacroNomESet = this.microPerMacroNomESet;
        this.microPerMacroNom = MICRO_PER_MACRO_NOM_EDEFAULT;
        this.microPerMacroNomESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 44, (Object)oldMicroPerMacroNom, (Object)MICRO_PER_MACRO_NOM_EDEFAULT, oldMicroPerMacroNomESet));
        }
    }

    @Override
    public boolean isSetMicroPerMacroNom() {
        return this.microPerMacroNomESet;
    }

    @Override
    public Double getMicrotickDuration() {
        return this.microtickDuration;
    }

    @Override
    public void setMicrotickDuration(Double newMicrotickDuration) {
        Double oldMicrotickDuration = this.microtickDuration;
        this.microtickDuration = newMicrotickDuration;
        boolean oldMicrotickDurationESet = this.microtickDurationESet;
        this.microtickDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 45, (Object)oldMicrotickDuration, (Object)this.microtickDuration, !oldMicrotickDurationESet));
        }
    }

    @Override
    public void unsetMicrotickDuration() {
        Double oldMicrotickDuration = this.microtickDuration;
        boolean oldMicrotickDurationESet = this.microtickDurationESet;
        this.microtickDuration = MICROTICK_DURATION_EDEFAULT;
        this.microtickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 45, (Object)oldMicrotickDuration, (Object)MICROTICK_DURATION_EDEFAULT, oldMicrotickDurationESet));
        }
    }

    @Override
    public boolean isSetMicrotickDuration() {
        return this.microtickDurationESet;
    }

    @Override
    public Boolean getNmControlBitVectorEnabled() {
        return this.nmControlBitVectorEnabled;
    }

    @Override
    public void setNmControlBitVectorEnabled(Boolean newNmControlBitVectorEnabled) {
        Boolean oldNmControlBitVectorEnabled = this.nmControlBitVectorEnabled;
        this.nmControlBitVectorEnabled = newNmControlBitVectorEnabled;
        boolean oldNmControlBitVectorEnabledESet = this.nmControlBitVectorEnabledESet;
        this.nmControlBitVectorEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 46, (Object)oldNmControlBitVectorEnabled, (Object)this.nmControlBitVectorEnabled, !oldNmControlBitVectorEnabledESet));
        }
    }

    @Override
    public void unsetNmControlBitVectorEnabled() {
        Boolean oldNmControlBitVectorEnabled = this.nmControlBitVectorEnabled;
        boolean oldNmControlBitVectorEnabledESet = this.nmControlBitVectorEnabledESet;
        this.nmControlBitVectorEnabled = NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT;
        this.nmControlBitVectorEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 46, (Object)oldNmControlBitVectorEnabled, (Object)NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT, oldNmControlBitVectorEnabledESet));
        }
    }

    @Override
    public boolean isSetNmControlBitVectorEnabled() {
        return this.nmControlBitVectorEnabledESet;
    }

    @Override
    public Boolean getNmNodeDetectionEnabled() {
        return this.nmNodeDetectionEnabled;
    }

    @Override
    public void setNmNodeDetectionEnabled(Boolean newNmNodeDetectionEnabled) {
        Boolean oldNmNodeDetectionEnabled = this.nmNodeDetectionEnabled;
        this.nmNodeDetectionEnabled = newNmNodeDetectionEnabled;
        boolean oldNmNodeDetectionEnabledESet = this.nmNodeDetectionEnabledESet;
        this.nmNodeDetectionEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 47, (Object)oldNmNodeDetectionEnabled, (Object)this.nmNodeDetectionEnabled, !oldNmNodeDetectionEnabledESet));
        }
    }

    @Override
    public void unsetNmNodeDetectionEnabled() {
        Boolean oldNmNodeDetectionEnabled = this.nmNodeDetectionEnabled;
        boolean oldNmNodeDetectionEnabledESet = this.nmNodeDetectionEnabledESet;
        this.nmNodeDetectionEnabled = NM_NODE_DETECTION_ENABLED_EDEFAULT;
        this.nmNodeDetectionEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 47, (Object)oldNmNodeDetectionEnabled, (Object)NM_NODE_DETECTION_ENABLED_EDEFAULT, oldNmNodeDetectionEnabledESet));
        }
    }

    @Override
    public boolean isSetNmNodeDetectionEnabled() {
        return this.nmNodeDetectionEnabledESet;
    }

    @Override
    public Boolean getNmSourceNodeIdentifierEnabled() {
        return this.nmSourceNodeIdentifierEnabled;
    }

    @Override
    public void setNmSourceNodeIdentifierEnabled(Boolean newNmSourceNodeIdentifierEnabled) {
        Boolean oldNmSourceNodeIdentifierEnabled = this.nmSourceNodeIdentifierEnabled;
        this.nmSourceNodeIdentifierEnabled = newNmSourceNodeIdentifierEnabled;
        boolean oldNmSourceNodeIdentifierEnabledESet = this.nmSourceNodeIdentifierEnabledESet;
        this.nmSourceNodeIdentifierEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 48, (Object)oldNmSourceNodeIdentifierEnabled, (Object)this.nmSourceNodeIdentifierEnabled, !oldNmSourceNodeIdentifierEnabledESet));
        }
    }

    @Override
    public void unsetNmSourceNodeIdentifierEnabled() {
        Boolean oldNmSourceNodeIdentifierEnabled = this.nmSourceNodeIdentifierEnabled;
        boolean oldNmSourceNodeIdentifierEnabledESet = this.nmSourceNodeIdentifierEnabledESet;
        this.nmSourceNodeIdentifierEnabled = NM_SOURCE_NODE_IDENTIFIER_ENABLED_EDEFAULT;
        this.nmSourceNodeIdentifierEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 48, (Object)oldNmSourceNodeIdentifierEnabled, (Object)NM_SOURCE_NODE_IDENTIFIER_ENABLED_EDEFAULT, oldNmSourceNodeIdentifierEnabledESet));
        }
    }

    @Override
    public boolean isSetNmSourceNodeIdentifierEnabled() {
        return this.nmSourceNodeIdentifierEnabledESet;
    }

    @Override
    public Boolean getNmUserDataEnabled() {
        return this.nmUserDataEnabled;
    }

    @Override
    public void setNmUserDataEnabled(Boolean newNmUserDataEnabled) {
        Boolean oldNmUserDataEnabled = this.nmUserDataEnabled;
        this.nmUserDataEnabled = newNmUserDataEnabled;
        boolean oldNmUserDataEnabledESet = this.nmUserDataEnabledESet;
        this.nmUserDataEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 49, (Object)oldNmUserDataEnabled, (Object)this.nmUserDataEnabled, !oldNmUserDataEnabledESet));
        }
    }

    @Override
    public void unsetNmUserDataEnabled() {
        Boolean oldNmUserDataEnabled = this.nmUserDataEnabled;
        boolean oldNmUserDataEnabledESet = this.nmUserDataEnabledESet;
        this.nmUserDataEnabled = NM_USER_DATA_ENABLED_EDEFAULT;
        this.nmUserDataEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 49, (Object)oldNmUserDataEnabled, (Object)NM_USER_DATA_ENABLED_EDEFAULT, oldNmUserDataEnabledESet));
        }
    }

    @Override
    public boolean isSetNmUserDataEnabled() {
        return this.nmUserDataEnabledESet;
    }

    @Override
    public Boolean getNmVectorEarlyUpdate() {
        return this.nmVectorEarlyUpdate;
    }

    @Override
    public void setNmVectorEarlyUpdate(Boolean newNmVectorEarlyUpdate) {
        Boolean oldNmVectorEarlyUpdate = this.nmVectorEarlyUpdate;
        this.nmVectorEarlyUpdate = newNmVectorEarlyUpdate;
        boolean oldNmVectorEarlyUpdateESet = this.nmVectorEarlyUpdateESet;
        this.nmVectorEarlyUpdateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 50, (Object)oldNmVectorEarlyUpdate, (Object)this.nmVectorEarlyUpdate, !oldNmVectorEarlyUpdateESet));
        }
    }

    @Override
    public void unsetNmVectorEarlyUpdate() {
        Boolean oldNmVectorEarlyUpdate = this.nmVectorEarlyUpdate;
        boolean oldNmVectorEarlyUpdateESet = this.nmVectorEarlyUpdateESet;
        this.nmVectorEarlyUpdate = NM_VECTOR_EARLY_UPDATE_EDEFAULT;
        this.nmVectorEarlyUpdateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 50, (Object)oldNmVectorEarlyUpdate, (Object)NM_VECTOR_EARLY_UPDATE_EDEFAULT, oldNmVectorEarlyUpdateESet));
        }
    }

    @Override
    public boolean isSetNmVectorEarlyUpdate() {
        return this.nmVectorEarlyUpdateESet;
    }

    @Override
    public Integer getOffsetCorrectionOut() {
        return this.offsetCorrectionOut;
    }

    @Override
    public void setOffsetCorrectionOut(Integer newOffsetCorrectionOut) {
        Integer oldOffsetCorrectionOut = this.offsetCorrectionOut;
        this.offsetCorrectionOut = newOffsetCorrectionOut;
        boolean oldOffsetCorrectionOutESet = this.offsetCorrectionOutESet;
        this.offsetCorrectionOutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 51, (Object)oldOffsetCorrectionOut, (Object)this.offsetCorrectionOut, !oldOffsetCorrectionOutESet));
        }
    }

    @Override
    public void unsetOffsetCorrectionOut() {
        Integer oldOffsetCorrectionOut = this.offsetCorrectionOut;
        boolean oldOffsetCorrectionOutESet = this.offsetCorrectionOutESet;
        this.offsetCorrectionOut = OFFSET_CORRECTION_OUT_EDEFAULT;
        this.offsetCorrectionOutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 51, (Object)oldOffsetCorrectionOut, (Object)OFFSET_CORRECTION_OUT_EDEFAULT, oldOffsetCorrectionOutESet));
        }
    }

    @Override
    public boolean isSetOffsetCorrectionOut() {
        return this.offsetCorrectionOutESet;
    }

    @Override
    public Integer getRateCorrectionOut() {
        return this.rateCorrectionOut;
    }

    @Override
    public void setRateCorrectionOut(Integer newRateCorrectionOut) {
        Integer oldRateCorrectionOut = this.rateCorrectionOut;
        this.rateCorrectionOut = newRateCorrectionOut;
        boolean oldRateCorrectionOutESet = this.rateCorrectionOutESet;
        this.rateCorrectionOutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 52, (Object)oldRateCorrectionOut, (Object)this.rateCorrectionOut, !oldRateCorrectionOutESet));
        }
    }

    @Override
    public void unsetRateCorrectionOut() {
        Integer oldRateCorrectionOut = this.rateCorrectionOut;
        boolean oldRateCorrectionOutESet = this.rateCorrectionOutESet;
        this.rateCorrectionOut = RATE_CORRECTION_OUT_EDEFAULT;
        this.rateCorrectionOutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 52, (Object)oldRateCorrectionOut, (Object)RATE_CORRECTION_OUT_EDEFAULT, oldRateCorrectionOutESet));
        }
    }

    @Override
    public boolean isSetRateCorrectionOut() {
        return this.rateCorrectionOutESet;
    }

    @Override
    public Integer getSamplesPerMicrotick() {
        return this.samplesPerMicrotick;
    }

    @Override
    public void setSamplesPerMicrotick(Integer newSamplesPerMicrotick) {
        Integer oldSamplesPerMicrotick = this.samplesPerMicrotick;
        this.samplesPerMicrotick = newSamplesPerMicrotick;
        boolean oldSamplesPerMicrotickESet = this.samplesPerMicrotickESet;
        this.samplesPerMicrotickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 53, (Object)oldSamplesPerMicrotick, (Object)this.samplesPerMicrotick, !oldSamplesPerMicrotickESet));
        }
    }

    @Override
    public void unsetSamplesPerMicrotick() {
        Integer oldSamplesPerMicrotick = this.samplesPerMicrotick;
        boolean oldSamplesPerMicrotickESet = this.samplesPerMicrotickESet;
        this.samplesPerMicrotick = SAMPLES_PER_MICROTICK_EDEFAULT;
        this.samplesPerMicrotickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 53, (Object)oldSamplesPerMicrotick, (Object)SAMPLES_PER_MICROTICK_EDEFAULT, oldSamplesPerMicrotickESet));
        }
    }

    @Override
    public boolean isSetSamplesPerMicrotick() {
        return this.samplesPerMicrotickESet;
    }

    @Override
    public Integer getSecondKeySlotId() {
        return this.secondKeySlotId;
    }

    @Override
    public void setSecondKeySlotId(Integer newSecondKeySlotId) {
        Integer oldSecondKeySlotId = this.secondKeySlotId;
        this.secondKeySlotId = newSecondKeySlotId;
        boolean oldSecondKeySlotIdESet = this.secondKeySlotIdESet;
        this.secondKeySlotIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 54, (Object)oldSecondKeySlotId, (Object)this.secondKeySlotId, !oldSecondKeySlotIdESet));
        }
    }

    @Override
    public void unsetSecondKeySlotId() {
        Integer oldSecondKeySlotId = this.secondKeySlotId;
        boolean oldSecondKeySlotIdESet = this.secondKeySlotIdESet;
        this.secondKeySlotId = SECOND_KEY_SLOT_ID_EDEFAULT;
        this.secondKeySlotIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 54, (Object)oldSecondKeySlotId, (Object)SECOND_KEY_SLOT_ID_EDEFAULT, oldSecondKeySlotIdESet));
        }
    }

    @Override
    public boolean isSetSecondKeySlotId() {
        return this.secondKeySlotIdESet;
    }

    @Override
    public Boolean getStartUpNode() {
        return this.startUpNode;
    }

    @Override
    public void setStartUpNode(Boolean newStartUpNode) {
        Boolean oldStartUpNode = this.startUpNode;
        this.startUpNode = newStartUpNode;
        boolean oldStartUpNodeESet = this.startUpNodeESet;
        this.startUpNodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 55, (Object)oldStartUpNode, (Object)this.startUpNode, !oldStartUpNodeESet));
        }
    }

    @Override
    public void unsetStartUpNode() {
        Boolean oldStartUpNode = this.startUpNode;
        boolean oldStartUpNodeESet = this.startUpNodeESet;
        this.startUpNode = START_UP_NODE_EDEFAULT;
        this.startUpNodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 55, (Object)oldStartUpNode, (Object)START_UP_NODE_EDEFAULT, oldStartUpNodeESet));
        }
    }

    @Override
    public boolean isSetStartUpNode() {
        return this.startUpNodeESet;
    }

    @Override
    public Integer getSyncSlot() {
        return this.syncSlot;
    }

    @Override
    public void setSyncSlot(Integer newSyncSlot) {
        Integer oldSyncSlot = this.syncSlot;
        this.syncSlot = newSyncSlot;
        boolean oldSyncSlotESet = this.syncSlotESet;
        this.syncSlotESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 56, (Object)oldSyncSlot, (Object)this.syncSlot, !oldSyncSlotESet));
        }
    }

    @Override
    public void unsetSyncSlot() {
        Integer oldSyncSlot = this.syncSlot;
        boolean oldSyncSlotESet = this.syncSlotESet;
        this.syncSlot = SYNC_SLOT_EDEFAULT;
        this.syncSlotESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 56, (Object)oldSyncSlot, (Object)SYNC_SLOT_EDEFAULT, oldSyncSlotESet));
        }
    }

    @Override
    public boolean isSetSyncSlot() {
        return this.syncSlotESet;
    }

    @Override
    public Integer getTwoKeySlotMode() {
        return this.twoKeySlotMode;
    }

    @Override
    public void setTwoKeySlotMode(Integer newTwoKeySlotMode) {
        Integer oldTwoKeySlotMode = this.twoKeySlotMode;
        this.twoKeySlotMode = newTwoKeySlotMode;
        boolean oldTwoKeySlotModeESet = this.twoKeySlotModeESet;
        this.twoKeySlotModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 57, (Object)oldTwoKeySlotMode, (Object)this.twoKeySlotMode, !oldTwoKeySlotModeESet));
        }
    }

    @Override
    public void unsetTwoKeySlotMode() {
        Integer oldTwoKeySlotMode = this.twoKeySlotMode;
        boolean oldTwoKeySlotModeESet = this.twoKeySlotModeESet;
        this.twoKeySlotMode = TWO_KEY_SLOT_MODE_EDEFAULT;
        this.twoKeySlotModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 57, (Object)oldTwoKeySlotMode, (Object)TWO_KEY_SLOT_MODE_EDEFAULT, oldTwoKeySlotModeESet));
        }
    }

    @Override
    public boolean isSetTwoKeySlotMode() {
        return this.twoKeySlotModeESet;
    }

    @Override
    public Integer getWakeUpPattern() {
        return this.wakeUpPattern;
    }

    @Override
    public void setWakeUpPattern(Integer newWakeUpPattern) {
        Integer oldWakeUpPattern = this.wakeUpPattern;
        this.wakeUpPattern = newWakeUpPattern;
        boolean oldWakeUpPatternESet = this.wakeUpPatternESet;
        this.wakeUpPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 58, (Object)oldWakeUpPattern, (Object)this.wakeUpPattern, !oldWakeUpPatternESet));
        }
    }

    @Override
    public void unsetWakeUpPattern() {
        Integer oldWakeUpPattern = this.wakeUpPattern;
        boolean oldWakeUpPatternESet = this.wakeUpPatternESet;
        this.wakeUpPattern = WAKE_UP_PATTERN_EDEFAULT;
        this.wakeUpPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 58, (Object)oldWakeUpPattern, (Object)WAKE_UP_PATTERN_EDEFAULT, oldWakeUpPatternESet));
        }
    }

    @Override
    public boolean isSetWakeUpPattern() {
        return this.wakeUpPatternESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 31: {
                return ((InternalEList)this.getFlexrayFifos()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 31: {
                return ((InternalEList)this.getFlexrayFifos()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getAcceptedStartupRange();
            }
            case 20: {
                return this.getAllowHaltDueToClock();
            }
            case 21: {
                return this.getAllowPassiveToActive();
            }
            case 22: {
                return this.getClusterDriftDamping();
            }
            case 23: {
                return this.getDecodingCorrection();
            }
            case 24: {
                return this.getDelayCompensationA();
            }
            case 25: {
                return this.getDelayCompensationB();
            }
            case 26: {
                return this.getDynamicSegmentEnable();
            }
            case 27: {
                return this.getExternOffsetCorrection();
            }
            case 28: {
                return this.getExternRateCorrection();
            }
            case 29: {
                return this.getExternalSync();
            }
            case 30: {
                return this.getFallBackInternal();
            }
            case 31: {
                return this.getFlexrayFifos();
            }
            case 32: {
                return this.getKeySlotID();
            }
            case 33: {
                return this.getKeySlotOnlyEnabled();
            }
            case 34: {
                return this.getKeySlotUsedForStartUp();
            }
            case 35: {
                return this.getKeySlotUsedForSync();
            }
            case 36: {
                return this.getLatestTX();
            }
            case 37: {
                return this.getListenTimeout();
            }
            case 38: {
                return this.getMacroInitialOffsetA();
            }
            case 39: {
                return this.getMacroInitialOffsetB();
            }
            case 40: {
                return this.getMaximumDynamicPayloadLength();
            }
            case 41: {
                return this.getMicroInitialOffsetA();
            }
            case 42: {
                return this.getMicroInitialOffsetB();
            }
            case 43: {
                return this.getMicroPerCycle();
            }
            case 44: {
                return this.getMicroPerMacroNom();
            }
            case 45: {
                return this.getMicrotickDuration();
            }
            case 46: {
                return this.getNmControlBitVectorEnabled();
            }
            case 47: {
                return this.getNmNodeDetectionEnabled();
            }
            case 48: {
                return this.getNmSourceNodeIdentifierEnabled();
            }
            case 49: {
                return this.getNmUserDataEnabled();
            }
            case 50: {
                return this.getNmVectorEarlyUpdate();
            }
            case 51: {
                return this.getOffsetCorrectionOut();
            }
            case 52: {
                return this.getRateCorrectionOut();
            }
            case 53: {
                return this.getSamplesPerMicrotick();
            }
            case 54: {
                return this.getSecondKeySlotId();
            }
            case 55: {
                return this.getStartUpNode();
            }
            case 56: {
                return this.getSyncSlot();
            }
            case 57: {
                return this.getTwoKeySlotMode();
            }
            case 58: {
                return this.getWakeUpPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setAcceptedStartupRange((Integer)newValue);
                return;
            }
            case 20: {
                this.setAllowHaltDueToClock((Boolean)newValue);
                return;
            }
            case 21: {
                this.setAllowPassiveToActive((Integer)newValue);
                return;
            }
            case 22: {
                this.setClusterDriftDamping((Integer)newValue);
                return;
            }
            case 23: {
                this.setDecodingCorrection((Integer)newValue);
                return;
            }
            case 24: {
                this.setDelayCompensationA((Integer)newValue);
                return;
            }
            case 25: {
                this.setDelayCompensationB((Integer)newValue);
                return;
            }
            case 26: {
                this.setDynamicSegmentEnable((Boolean)newValue);
                return;
            }
            case 27: {
                this.setExternOffsetCorrection((Integer)newValue);
                return;
            }
            case 28: {
                this.setExternRateCorrection((Integer)newValue);
                return;
            }
            case 29: {
                this.setExternalSync((Boolean)newValue);
                return;
            }
            case 30: {
                this.setFallBackInternal((Boolean)newValue);
                return;
            }
            case 31: {
                this.getFlexrayFifos().clear();
                this.getFlexrayFifos().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.setKeySlotID((Integer)newValue);
                return;
            }
            case 33: {
                this.setKeySlotOnlyEnabled((Boolean)newValue);
                return;
            }
            case 34: {
                this.setKeySlotUsedForStartUp((Boolean)newValue);
                return;
            }
            case 35: {
                this.setKeySlotUsedForSync((Boolean)newValue);
                return;
            }
            case 36: {
                this.setLatestTX((Integer)newValue);
                return;
            }
            case 37: {
                this.setListenTimeout((Integer)newValue);
                return;
            }
            case 38: {
                this.setMacroInitialOffsetA((Integer)newValue);
                return;
            }
            case 39: {
                this.setMacroInitialOffsetB((Integer)newValue);
                return;
            }
            case 40: {
                this.setMaximumDynamicPayloadLength((Integer)newValue);
                return;
            }
            case 41: {
                this.setMicroInitialOffsetA((Integer)newValue);
                return;
            }
            case 42: {
                this.setMicroInitialOffsetB((Integer)newValue);
                return;
            }
            case 43: {
                this.setMicroPerCycle((Integer)newValue);
                return;
            }
            case 44: {
                this.setMicroPerMacroNom((Double)newValue);
                return;
            }
            case 45: {
                this.setMicrotickDuration((Double)newValue);
                return;
            }
            case 46: {
                this.setNmControlBitVectorEnabled((Boolean)newValue);
                return;
            }
            case 47: {
                this.setNmNodeDetectionEnabled((Boolean)newValue);
                return;
            }
            case 48: {
                this.setNmSourceNodeIdentifierEnabled((Boolean)newValue);
                return;
            }
            case 49: {
                this.setNmUserDataEnabled((Boolean)newValue);
                return;
            }
            case 50: {
                this.setNmVectorEarlyUpdate((Boolean)newValue);
                return;
            }
            case 51: {
                this.setOffsetCorrectionOut((Integer)newValue);
                return;
            }
            case 52: {
                this.setRateCorrectionOut((Integer)newValue);
                return;
            }
            case 53: {
                this.setSamplesPerMicrotick((Integer)newValue);
                return;
            }
            case 54: {
                this.setSecondKeySlotId((Integer)newValue);
                return;
            }
            case 55: {
                this.setStartUpNode((Boolean)newValue);
                return;
            }
            case 56: {
                this.setSyncSlot((Integer)newValue);
                return;
            }
            case 57: {
                this.setTwoKeySlotMode((Integer)newValue);
                return;
            }
            case 58: {
                this.setWakeUpPattern((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetAcceptedStartupRange();
                return;
            }
            case 20: {
                this.unsetAllowHaltDueToClock();
                return;
            }
            case 21: {
                this.unsetAllowPassiveToActive();
                return;
            }
            case 22: {
                this.unsetClusterDriftDamping();
                return;
            }
            case 23: {
                this.unsetDecodingCorrection();
                return;
            }
            case 24: {
                this.unsetDelayCompensationA();
                return;
            }
            case 25: {
                this.unsetDelayCompensationB();
                return;
            }
            case 26: {
                this.unsetDynamicSegmentEnable();
                return;
            }
            case 27: {
                this.unsetExternOffsetCorrection();
                return;
            }
            case 28: {
                this.unsetExternRateCorrection();
                return;
            }
            case 29: {
                this.unsetExternalSync();
                return;
            }
            case 30: {
                this.unsetFallBackInternal();
                return;
            }
            case 31: {
                this.getFlexrayFifos().clear();
                return;
            }
            case 32: {
                this.unsetKeySlotID();
                return;
            }
            case 33: {
                this.unsetKeySlotOnlyEnabled();
                return;
            }
            case 34: {
                this.unsetKeySlotUsedForStartUp();
                return;
            }
            case 35: {
                this.unsetKeySlotUsedForSync();
                return;
            }
            case 36: {
                this.unsetLatestTX();
                return;
            }
            case 37: {
                this.unsetListenTimeout();
                return;
            }
            case 38: {
                this.unsetMacroInitialOffsetA();
                return;
            }
            case 39: {
                this.unsetMacroInitialOffsetB();
                return;
            }
            case 40: {
                this.unsetMaximumDynamicPayloadLength();
                return;
            }
            case 41: {
                this.unsetMicroInitialOffsetA();
                return;
            }
            case 42: {
                this.unsetMicroInitialOffsetB();
                return;
            }
            case 43: {
                this.unsetMicroPerCycle();
                return;
            }
            case 44: {
                this.unsetMicroPerMacroNom();
                return;
            }
            case 45: {
                this.unsetMicrotickDuration();
                return;
            }
            case 46: {
                this.unsetNmControlBitVectorEnabled();
                return;
            }
            case 47: {
                this.unsetNmNodeDetectionEnabled();
                return;
            }
            case 48: {
                this.unsetNmSourceNodeIdentifierEnabled();
                return;
            }
            case 49: {
                this.unsetNmUserDataEnabled();
                return;
            }
            case 50: {
                this.unsetNmVectorEarlyUpdate();
                return;
            }
            case 51: {
                this.unsetOffsetCorrectionOut();
                return;
            }
            case 52: {
                this.unsetRateCorrectionOut();
                return;
            }
            case 53: {
                this.unsetSamplesPerMicrotick();
                return;
            }
            case 54: {
                this.unsetSecondKeySlotId();
                return;
            }
            case 55: {
                this.unsetStartUpNode();
                return;
            }
            case 56: {
                this.unsetSyncSlot();
                return;
            }
            case 57: {
                this.unsetTwoKeySlotMode();
                return;
            }
            case 58: {
                this.unsetWakeUpPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetAcceptedStartupRange();
            }
            case 20: {
                return this.isSetAllowHaltDueToClock();
            }
            case 21: {
                return this.isSetAllowPassiveToActive();
            }
            case 22: {
                return this.isSetClusterDriftDamping();
            }
            case 23: {
                return this.isSetDecodingCorrection();
            }
            case 24: {
                return this.isSetDelayCompensationA();
            }
            case 25: {
                return this.isSetDelayCompensationB();
            }
            case 26: {
                return this.isSetDynamicSegmentEnable();
            }
            case 27: {
                return this.isSetExternOffsetCorrection();
            }
            case 28: {
                return this.isSetExternRateCorrection();
            }
            case 29: {
                return this.isSetExternalSync();
            }
            case 30: {
                return this.isSetFallBackInternal();
            }
            case 31: {
                return this.flexrayFifos != null && !this.flexrayFifos.isEmpty();
            }
            case 32: {
                return this.isSetKeySlotID();
            }
            case 33: {
                return this.isSetKeySlotOnlyEnabled();
            }
            case 34: {
                return this.isSetKeySlotUsedForStartUp();
            }
            case 35: {
                return this.isSetKeySlotUsedForSync();
            }
            case 36: {
                return this.isSetLatestTX();
            }
            case 37: {
                return this.isSetListenTimeout();
            }
            case 38: {
                return this.isSetMacroInitialOffsetA();
            }
            case 39: {
                return this.isSetMacroInitialOffsetB();
            }
            case 40: {
                return this.isSetMaximumDynamicPayloadLength();
            }
            case 41: {
                return this.isSetMicroInitialOffsetA();
            }
            case 42: {
                return this.isSetMicroInitialOffsetB();
            }
            case 43: {
                return this.isSetMicroPerCycle();
            }
            case 44: {
                return this.isSetMicroPerMacroNom();
            }
            case 45: {
                return this.isSetMicrotickDuration();
            }
            case 46: {
                return this.isSetNmControlBitVectorEnabled();
            }
            case 47: {
                return this.isSetNmNodeDetectionEnabled();
            }
            case 48: {
                return this.isSetNmSourceNodeIdentifierEnabled();
            }
            case 49: {
                return this.isSetNmUserDataEnabled();
            }
            case 50: {
                return this.isSetNmVectorEarlyUpdate();
            }
            case 51: {
                return this.isSetOffsetCorrectionOut();
            }
            case 52: {
                return this.isSetRateCorrectionOut();
            }
            case 53: {
                return this.isSetSamplesPerMicrotick();
            }
            case 54: {
                return this.isSetSecondKeySlotId();
            }
            case 55: {
                return this.isSetStartUpNode();
            }
            case 56: {
                return this.isSetSyncSlot();
            }
            case 57: {
                return this.isSetTwoKeySlotMode();
            }
            case 58: {
                return this.isSetWakeUpPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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
        result.append(", decodingCorrection: ");
        if (this.decodingCorrectionESet) {
            result.append(this.decodingCorrection);
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
        result.append(", externalSync: ");
        if (this.externalSyncESet) {
            result.append(this.externalSync);
        } else {
            result.append("<unset>");
        }
        result.append(", fallBackInternal: ");
        if (this.fallBackInternalESet) {
            result.append(this.fallBackInternal);
        } else {
            result.append("<unset>");
        }
        result.append(", keySlotID: ");
        if (this.keySlotIDESet) {
            result.append(this.keySlotID);
        } else {
            result.append("<unset>");
        }
        result.append(", keySlotOnlyEnabled: ");
        if (this.keySlotOnlyEnabledESet) {
            result.append(this.keySlotOnlyEnabled);
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
        result.append(", macroInitialOffsetA: ");
        if (this.macroInitialOffsetAESet) {
            result.append(this.macroInitialOffsetA);
        } else {
            result.append("<unset>");
        }
        result.append(", macroInitialOffsetB: ");
        if (this.macroInitialOffsetBESet) {
            result.append(this.macroInitialOffsetB);
        } else {
            result.append("<unset>");
        }
        result.append(", maximumDynamicPayloadLength: ");
        if (this.maximumDynamicPayloadLengthESet) {
            result.append(this.maximumDynamicPayloadLength);
        } else {
            result.append("<unset>");
        }
        result.append(", microInitialOffsetA: ");
        if (this.microInitialOffsetAESet) {
            result.append(this.microInitialOffsetA);
        } else {
            result.append("<unset>");
        }
        result.append(", microInitialOffsetB: ");
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
        result.append(", microPerMacroNom: ");
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
        result.append(", nmControlBitVectorEnabled: ");
        if (this.nmControlBitVectorEnabledESet) {
            result.append(this.nmControlBitVectorEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNodeDetectionEnabled: ");
        if (this.nmNodeDetectionEnabledESet) {
            result.append(this.nmNodeDetectionEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmSourceNodeIdentifierEnabled: ");
        if (this.nmSourceNodeIdentifierEnabledESet) {
            result.append(this.nmSourceNodeIdentifierEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmUserDataEnabled: ");
        if (this.nmUserDataEnabledESet) {
            result.append(this.nmUserDataEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmVectorEarlyUpdate: ");
        if (this.nmVectorEarlyUpdateESet) {
            result.append(this.nmVectorEarlyUpdate);
        } else {
            result.append("<unset>");
        }
        result.append(", offsetCorrectionOut: ");
        if (this.offsetCorrectionOutESet) {
            result.append(this.offsetCorrectionOut);
        } else {
            result.append("<unset>");
        }
        result.append(", rateCorrectionOut: ");
        if (this.rateCorrectionOutESet) {
            result.append(this.rateCorrectionOut);
        } else {
            result.append("<unset>");
        }
        result.append(", samplesPerMicrotick: ");
        if (this.samplesPerMicrotickESet) {
            result.append(this.samplesPerMicrotick);
        } else {
            result.append("<unset>");
        }
        result.append(", secondKeySlotId: ");
        if (this.secondKeySlotIdESet) {
            result.append(this.secondKeySlotId);
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
        result.append(", twoKeySlotMode: ");
        if (this.twoKeySlotModeESet) {
            result.append(this.twoKeySlotMode);
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

