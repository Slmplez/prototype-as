/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationControllerContentImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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
public abstract class FlexrayCommunicationControllerContentImpl
extends CommunicationControllerContentImpl
implements FlexrayCommunicationControllerContent {
    protected static final IntegerDatatype ACCEPTED_STARTUP_RANGE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype acceptedStartupRange = ACCEPTED_STARTUP_RANGE_EDEFAULT.clone();
    protected boolean acceptedStartupRangeESet;
    protected static final Boolean ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT = Boolean.FALSE;
    protected Boolean allowHaltDueToClock = ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT;
    protected boolean allowHaltDueToClockESet;
    protected static final IntegerDatatype ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype allowPassiveToActive = ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT.clone();
    protected boolean allowPassiveToActiveESet;
    protected static final IntegerDatatype CLUSTER_DRIFT_DAMPING_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype clusterDriftDamping = CLUSTER_DRIFT_DAMPING_EDEFAULT.clone();
    protected boolean clusterDriftDampingESet;
    protected static final IntegerDatatype DECODING_CORRECTION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype decodingCorrection = DECODING_CORRECTION_EDEFAULT.clone();
    protected boolean decodingCorrectionESet;
    protected static final IntegerDatatype DELAY_COMPENSATION_A_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype delayCompensationA = DELAY_COMPENSATION_A_EDEFAULT.clone();
    protected boolean delayCompensationAESet;
    protected static final IntegerDatatype DELAY_COMPENSATION_B_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype delayCompensationB = DELAY_COMPENSATION_B_EDEFAULT.clone();
    protected boolean delayCompensationBESet;
    protected static final IntegerDatatype EXTERN_OFFSET_CORRECTION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype externOffsetCorrection = EXTERN_OFFSET_CORRECTION_EDEFAULT.clone();
    protected boolean externOffsetCorrectionESet;
    protected static final IntegerDatatype EXTERN_RATE_CORRECTION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype externRateCorrection = EXTERN_RATE_CORRECTION_EDEFAULT.clone();
    protected boolean externRateCorrectionESet;
    protected static final Boolean EXTERNAL_SYNC_EDEFAULT = Boolean.FALSE;
    protected Boolean externalSync = EXTERNAL_SYNC_EDEFAULT;
    protected boolean externalSyncESet;
    protected static final Boolean FALL_BACK_INTERNAL_EDEFAULT = Boolean.FALSE;
    protected Boolean fallBackInternal = FALL_BACK_INTERNAL_EDEFAULT;
    protected boolean fallBackInternalESet;
    protected EList<FlexrayFifoConfiguration> flexrayFifos;
    protected static final PositiveIntegerDatatype KEY_SLOT_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype keySlotID = KEY_SLOT_ID_EDEFAULT.clone();
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
    protected static final IntegerDatatype LATEST_TX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype latestTX = LATEST_TX_EDEFAULT.clone();
    protected boolean latestTXESet;
    protected static final IntegerDatatype LISTEN_TIMEOUT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype listenTimeout = LISTEN_TIMEOUT_EDEFAULT.clone();
    protected boolean listenTimeoutESet;
    protected static final IntegerDatatype MACRO_INITIAL_OFFSET_A_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype macroInitialOffsetA = MACRO_INITIAL_OFFSET_A_EDEFAULT.clone();
    protected boolean macroInitialOffsetAESet;
    protected static final IntegerDatatype MACRO_INITIAL_OFFSET_B_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype macroInitialOffsetB = MACRO_INITIAL_OFFSET_B_EDEFAULT.clone();
    protected boolean macroInitialOffsetBESet;
    protected static final IntegerDatatype MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maximumDynamicPayloadLength = MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT.clone();
    protected boolean maximumDynamicPayloadLengthESet;
    protected static final IntegerDatatype MICRO_INITIAL_OFFSET_A_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype microInitialOffsetA = MICRO_INITIAL_OFFSET_A_EDEFAULT.clone();
    protected boolean microInitialOffsetAESet;
    protected static final IntegerDatatype MICRO_INITIAL_OFFSET_B_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype microInitialOffsetB = MICRO_INITIAL_OFFSET_B_EDEFAULT.clone();
    protected boolean microInitialOffsetBESet;
    protected static final IntegerDatatype MICRO_PER_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype microPerCycle = MICRO_PER_CYCLE_EDEFAULT.clone();
    protected boolean microPerCycleESet;
    protected static final Double MICROTICK_DURATION_EDEFAULT = new Double(0.0);
    protected Double microtickDuration = MICROTICK_DURATION_EDEFAULT;
    protected boolean microtickDurationESet;
    protected static final Boolean NM_VECTOR_EARLY_UPDATE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmVectorEarlyUpdate = NM_VECTOR_EARLY_UPDATE_EDEFAULT;
    protected boolean nmVectorEarlyUpdateESet;
    protected static final IntegerDatatype OFFSET_CORRECTION_OUT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype offsetCorrectionOut = OFFSET_CORRECTION_OUT_EDEFAULT.clone();
    protected boolean offsetCorrectionOutESet;
    protected static final IntegerDatatype RATE_CORRECTION_OUT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype rateCorrectionOut = RATE_CORRECTION_OUT_EDEFAULT.clone();
    protected boolean rateCorrectionOutESet;
    protected static final IntegerDatatype SAMPLES_PER_MICROTICK_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype samplesPerMicrotick = SAMPLES_PER_MICROTICK_EDEFAULT.clone();
    protected boolean samplesPerMicrotickESet;
    protected static final PositiveIntegerDatatype SECOND_KEY_SLOT_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype secondKeySlotId = SECOND_KEY_SLOT_ID_EDEFAULT.clone();
    protected boolean secondKeySlotIdESet;
    protected static final Boolean TWO_KEY_SLOT_MODE_EDEFAULT = Boolean.FALSE;
    protected Boolean twoKeySlotMode = TWO_KEY_SLOT_MODE_EDEFAULT;
    protected boolean twoKeySlotModeESet;
    protected static final IntegerDatatype WAKE_UP_PATTERN_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype wakeUpPattern = WAKE_UP_PATTERN_EDEFAULT.clone();
    protected boolean wakeUpPatternESet;

    protected FlexrayCommunicationControllerContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT;
    }

    @Override
    public Integer getAcceptedStartupRange() {
        return (Integer)this.acceptedStartupRange.basicGetValue();
    }

    @Override
    public void setAcceptedStartupRange(Integer newAcceptedStartupRange) {
        Integer oldAcceptedStartupRange = (Integer)this.acceptedStartupRange.basicGetValue();
        this.acceptedStartupRange.basicSetValue((Object)newAcceptedStartupRange);
        boolean oldAcceptedStartupRangeESet = this.acceptedStartupRangeESet;
        this.acceptedStartupRangeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldAcceptedStartupRange, (Object)newAcceptedStartupRange, !oldAcceptedStartupRangeESet));
        }
    }

    @Override
    public void unsetAcceptedStartupRange() {
        Integer oldAcceptedStartupRange = (Integer)this.acceptedStartupRange.basicGetValue();
        boolean oldAcceptedStartupRangeESet = this.acceptedStartupRangeESet;
        this.acceptedStartupRange = ACCEPTED_STARTUP_RANGE_EDEFAULT.clone();
        this.acceptedStartupRangeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldAcceptedStartupRange, (Object)ACCEPTED_STARTUP_RANGE_EDEFAULT, oldAcceptedStartupRangeESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAllowHaltDueToClock, (Object)this.allowHaltDueToClock, !oldAllowHaltDueToClockESet));
        }
    }

    @Override
    public void unsetAllowHaltDueToClock() {
        Boolean oldAllowHaltDueToClock = this.allowHaltDueToClock;
        boolean oldAllowHaltDueToClockESet = this.allowHaltDueToClockESet;
        this.allowHaltDueToClock = ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT;
        this.allowHaltDueToClockESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAllowHaltDueToClock, (Object)ALLOW_HALT_DUE_TO_CLOCK_EDEFAULT, oldAllowHaltDueToClockESet));
        }
    }

    @Override
    public boolean isSetAllowHaltDueToClock() {
        return this.allowHaltDueToClockESet;
    }

    @Override
    public Integer getAllowPassiveToActive() {
        return (Integer)this.allowPassiveToActive.basicGetValue();
    }

    @Override
    public void setAllowPassiveToActive(Integer newAllowPassiveToActive) {
        Integer oldAllowPassiveToActive = (Integer)this.allowPassiveToActive.basicGetValue();
        this.allowPassiveToActive.basicSetValue((Object)newAllowPassiveToActive);
        boolean oldAllowPassiveToActiveESet = this.allowPassiveToActiveESet;
        this.allowPassiveToActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldAllowPassiveToActive, (Object)newAllowPassiveToActive, !oldAllowPassiveToActiveESet));
        }
    }

    @Override
    public void unsetAllowPassiveToActive() {
        Integer oldAllowPassiveToActive = (Integer)this.allowPassiveToActive.basicGetValue();
        boolean oldAllowPassiveToActiveESet = this.allowPassiveToActiveESet;
        this.allowPassiveToActive = ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT.clone();
        this.allowPassiveToActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldAllowPassiveToActive, (Object)ALLOW_PASSIVE_TO_ACTIVE_EDEFAULT, oldAllowPassiveToActiveESet));
        }
    }

    @Override
    public boolean isSetAllowPassiveToActive() {
        return this.allowPassiveToActiveESet;
    }

    @Override
    public Integer getClusterDriftDamping() {
        return (Integer)this.clusterDriftDamping.basicGetValue();
    }

    @Override
    public void setClusterDriftDamping(Integer newClusterDriftDamping) {
        Integer oldClusterDriftDamping = (Integer)this.clusterDriftDamping.basicGetValue();
        this.clusterDriftDamping.basicSetValue((Object)newClusterDriftDamping);
        boolean oldClusterDriftDampingESet = this.clusterDriftDampingESet;
        this.clusterDriftDampingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldClusterDriftDamping, (Object)newClusterDriftDamping, !oldClusterDriftDampingESet));
        }
    }

    @Override
    public void unsetClusterDriftDamping() {
        Integer oldClusterDriftDamping = (Integer)this.clusterDriftDamping.basicGetValue();
        boolean oldClusterDriftDampingESet = this.clusterDriftDampingESet;
        this.clusterDriftDamping = CLUSTER_DRIFT_DAMPING_EDEFAULT.clone();
        this.clusterDriftDampingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldClusterDriftDamping, (Object)CLUSTER_DRIFT_DAMPING_EDEFAULT, oldClusterDriftDampingESet));
        }
    }

    @Override
    public boolean isSetClusterDriftDamping() {
        return this.clusterDriftDampingESet;
    }

    @Override
    public Integer getDecodingCorrection() {
        return (Integer)this.decodingCorrection.basicGetValue();
    }

    @Override
    public void setDecodingCorrection(Integer newDecodingCorrection) {
        Integer oldDecodingCorrection = (Integer)this.decodingCorrection.basicGetValue();
        this.decodingCorrection.basicSetValue((Object)newDecodingCorrection);
        boolean oldDecodingCorrectionESet = this.decodingCorrectionESet;
        this.decodingCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldDecodingCorrection, (Object)newDecodingCorrection, !oldDecodingCorrectionESet));
        }
    }

    @Override
    public void unsetDecodingCorrection() {
        Integer oldDecodingCorrection = (Integer)this.decodingCorrection.basicGetValue();
        boolean oldDecodingCorrectionESet = this.decodingCorrectionESet;
        this.decodingCorrection = DECODING_CORRECTION_EDEFAULT.clone();
        this.decodingCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldDecodingCorrection, (Object)DECODING_CORRECTION_EDEFAULT, oldDecodingCorrectionESet));
        }
    }

    @Override
    public boolean isSetDecodingCorrection() {
        return this.decodingCorrectionESet;
    }

    @Override
    public Integer getDelayCompensationA() {
        return (Integer)this.delayCompensationA.basicGetValue();
    }

    @Override
    public void setDelayCompensationA(Integer newDelayCompensationA) {
        Integer oldDelayCompensationA = (Integer)this.delayCompensationA.basicGetValue();
        this.delayCompensationA.basicSetValue((Object)newDelayCompensationA);
        boolean oldDelayCompensationAESet = this.delayCompensationAESet;
        this.delayCompensationAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldDelayCompensationA, (Object)newDelayCompensationA, !oldDelayCompensationAESet));
        }
    }

    @Override
    public void unsetDelayCompensationA() {
        Integer oldDelayCompensationA = (Integer)this.delayCompensationA.basicGetValue();
        boolean oldDelayCompensationAESet = this.delayCompensationAESet;
        this.delayCompensationA = DELAY_COMPENSATION_A_EDEFAULT.clone();
        this.delayCompensationAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldDelayCompensationA, (Object)DELAY_COMPENSATION_A_EDEFAULT, oldDelayCompensationAESet));
        }
    }

    @Override
    public boolean isSetDelayCompensationA() {
        return this.delayCompensationAESet;
    }

    @Override
    public Integer getDelayCompensationB() {
        return (Integer)this.delayCompensationB.basicGetValue();
    }

    @Override
    public void setDelayCompensationB(Integer newDelayCompensationB) {
        Integer oldDelayCompensationB = (Integer)this.delayCompensationB.basicGetValue();
        this.delayCompensationB.basicSetValue((Object)newDelayCompensationB);
        boolean oldDelayCompensationBESet = this.delayCompensationBESet;
        this.delayCompensationBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDelayCompensationB, (Object)newDelayCompensationB, !oldDelayCompensationBESet));
        }
    }

    @Override
    public void unsetDelayCompensationB() {
        Integer oldDelayCompensationB = (Integer)this.delayCompensationB.basicGetValue();
        boolean oldDelayCompensationBESet = this.delayCompensationBESet;
        this.delayCompensationB = DELAY_COMPENSATION_B_EDEFAULT.clone();
        this.delayCompensationBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldDelayCompensationB, (Object)DELAY_COMPENSATION_B_EDEFAULT, oldDelayCompensationBESet));
        }
    }

    @Override
    public boolean isSetDelayCompensationB() {
        return this.delayCompensationBESet;
    }

    @Override
    public Integer getExternOffsetCorrection() {
        return (Integer)this.externOffsetCorrection.basicGetValue();
    }

    @Override
    public void setExternOffsetCorrection(Integer newExternOffsetCorrection) {
        Integer oldExternOffsetCorrection = (Integer)this.externOffsetCorrection.basicGetValue();
        this.externOffsetCorrection.basicSetValue((Object)newExternOffsetCorrection);
        boolean oldExternOffsetCorrectionESet = this.externOffsetCorrectionESet;
        this.externOffsetCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldExternOffsetCorrection, (Object)newExternOffsetCorrection, !oldExternOffsetCorrectionESet));
        }
    }

    @Override
    public void unsetExternOffsetCorrection() {
        Integer oldExternOffsetCorrection = (Integer)this.externOffsetCorrection.basicGetValue();
        boolean oldExternOffsetCorrectionESet = this.externOffsetCorrectionESet;
        this.externOffsetCorrection = EXTERN_OFFSET_CORRECTION_EDEFAULT.clone();
        this.externOffsetCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldExternOffsetCorrection, (Object)EXTERN_OFFSET_CORRECTION_EDEFAULT, oldExternOffsetCorrectionESet));
        }
    }

    @Override
    public boolean isSetExternOffsetCorrection() {
        return this.externOffsetCorrectionESet;
    }

    @Override
    public Integer getExternRateCorrection() {
        return (Integer)this.externRateCorrection.basicGetValue();
    }

    @Override
    public void setExternRateCorrection(Integer newExternRateCorrection) {
        Integer oldExternRateCorrection = (Integer)this.externRateCorrection.basicGetValue();
        this.externRateCorrection.basicSetValue((Object)newExternRateCorrection);
        boolean oldExternRateCorrectionESet = this.externRateCorrectionESet;
        this.externRateCorrectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldExternRateCorrection, (Object)newExternRateCorrection, !oldExternRateCorrectionESet));
        }
    }

    @Override
    public void unsetExternRateCorrection() {
        Integer oldExternRateCorrection = (Integer)this.externRateCorrection.basicGetValue();
        boolean oldExternRateCorrectionESet = this.externRateCorrectionESet;
        this.externRateCorrection = EXTERN_RATE_CORRECTION_EDEFAULT.clone();
        this.externRateCorrectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldExternRateCorrection, (Object)EXTERN_RATE_CORRECTION_EDEFAULT, oldExternRateCorrectionESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldExternalSync, (Object)this.externalSync, !oldExternalSyncESet));
        }
    }

    @Override
    public void unsetExternalSync() {
        Boolean oldExternalSync = this.externalSync;
        boolean oldExternalSyncESet = this.externalSyncESet;
        this.externalSync = EXTERNAL_SYNC_EDEFAULT;
        this.externalSyncESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldExternalSync, (Object)EXTERNAL_SYNC_EDEFAULT, oldExternalSyncESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldFallBackInternal, (Object)this.fallBackInternal, !oldFallBackInternalESet));
        }
    }

    @Override
    public void unsetFallBackInternal() {
        Boolean oldFallBackInternal = this.fallBackInternal;
        boolean oldFallBackInternalESet = this.fallBackInternalESet;
        this.fallBackInternal = FALL_BACK_INTERNAL_EDEFAULT;
        this.fallBackInternalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldFallBackInternal, (Object)FALL_BACK_INTERNAL_EDEFAULT, oldFallBackInternalESet));
        }
    }

    @Override
    public boolean isSetFallBackInternal() {
        return this.fallBackInternalESet;
    }

    @Override
    public EList<FlexrayFifoConfiguration> getFlexrayFifos() {
        if (this.flexrayFifos == null) {
            this.flexrayFifos = new EObjectContainmentWithInverseEList(FlexrayFifoConfiguration.class, (InternalEObject)this, 15, 4);
        }
        return this.flexrayFifos;
    }

    @Override
    public Long getKeySlotID() {
        return (Long)this.keySlotID.basicGetValue();
    }

    @Override
    public void setKeySlotID(Long newKeySlotID) {
        Long oldKeySlotID = (Long)this.keySlotID.basicGetValue();
        this.keySlotID.basicSetValue((Object)newKeySlotID);
        boolean oldKeySlotIDESet = this.keySlotIDESet;
        this.keySlotIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldKeySlotID, (Object)newKeySlotID, !oldKeySlotIDESet));
        }
    }

    @Override
    public void unsetKeySlotID() {
        Long oldKeySlotID = (Long)this.keySlotID.basicGetValue();
        boolean oldKeySlotIDESet = this.keySlotIDESet;
        this.keySlotID = KEY_SLOT_ID_EDEFAULT.clone();
        this.keySlotIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldKeySlotID, (Object)KEY_SLOT_ID_EDEFAULT, oldKeySlotIDESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldKeySlotOnlyEnabled, (Object)this.keySlotOnlyEnabled, !oldKeySlotOnlyEnabledESet));
        }
    }

    @Override
    public void unsetKeySlotOnlyEnabled() {
        Boolean oldKeySlotOnlyEnabled = this.keySlotOnlyEnabled;
        boolean oldKeySlotOnlyEnabledESet = this.keySlotOnlyEnabledESet;
        this.keySlotOnlyEnabled = KEY_SLOT_ONLY_ENABLED_EDEFAULT;
        this.keySlotOnlyEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldKeySlotOnlyEnabled, (Object)KEY_SLOT_ONLY_ENABLED_EDEFAULT, oldKeySlotOnlyEnabledESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldKeySlotUsedForStartUp, (Object)this.keySlotUsedForStartUp, !oldKeySlotUsedForStartUpESet));
        }
    }

    @Override
    public void unsetKeySlotUsedForStartUp() {
        Boolean oldKeySlotUsedForStartUp = this.keySlotUsedForStartUp;
        boolean oldKeySlotUsedForStartUpESet = this.keySlotUsedForStartUpESet;
        this.keySlotUsedForStartUp = KEY_SLOT_USED_FOR_START_UP_EDEFAULT;
        this.keySlotUsedForStartUpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldKeySlotUsedForStartUp, (Object)KEY_SLOT_USED_FOR_START_UP_EDEFAULT, oldKeySlotUsedForStartUpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldKeySlotUsedForSync, (Object)this.keySlotUsedForSync, !oldKeySlotUsedForSyncESet));
        }
    }

    @Override
    public void unsetKeySlotUsedForSync() {
        Boolean oldKeySlotUsedForSync = this.keySlotUsedForSync;
        boolean oldKeySlotUsedForSyncESet = this.keySlotUsedForSyncESet;
        this.keySlotUsedForSync = KEY_SLOT_USED_FOR_SYNC_EDEFAULT;
        this.keySlotUsedForSyncESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldKeySlotUsedForSync, (Object)KEY_SLOT_USED_FOR_SYNC_EDEFAULT, oldKeySlotUsedForSyncESet));
        }
    }

    @Override
    public boolean isSetKeySlotUsedForSync() {
        return this.keySlotUsedForSyncESet;
    }

    @Override
    public Integer getLatestTX() {
        return (Integer)this.latestTX.basicGetValue();
    }

    @Override
    public void setLatestTX(Integer newLatestTX) {
        Integer oldLatestTX = (Integer)this.latestTX.basicGetValue();
        this.latestTX.basicSetValue((Object)newLatestTX);
        boolean oldLatestTXESet = this.latestTXESet;
        this.latestTXESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldLatestTX, (Object)newLatestTX, !oldLatestTXESet));
        }
    }

    @Override
    public void unsetLatestTX() {
        Integer oldLatestTX = (Integer)this.latestTX.basicGetValue();
        boolean oldLatestTXESet = this.latestTXESet;
        this.latestTX = LATEST_TX_EDEFAULT.clone();
        this.latestTXESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldLatestTX, (Object)LATEST_TX_EDEFAULT, oldLatestTXESet));
        }
    }

    @Override
    public boolean isSetLatestTX() {
        return this.latestTXESet;
    }

    @Override
    public Integer getListenTimeout() {
        return (Integer)this.listenTimeout.basicGetValue();
    }

    @Override
    public void setListenTimeout(Integer newListenTimeout) {
        Integer oldListenTimeout = (Integer)this.listenTimeout.basicGetValue();
        this.listenTimeout.basicSetValue((Object)newListenTimeout);
        boolean oldListenTimeoutESet = this.listenTimeoutESet;
        this.listenTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldListenTimeout, (Object)newListenTimeout, !oldListenTimeoutESet));
        }
    }

    @Override
    public void unsetListenTimeout() {
        Integer oldListenTimeout = (Integer)this.listenTimeout.basicGetValue();
        boolean oldListenTimeoutESet = this.listenTimeoutESet;
        this.listenTimeout = LISTEN_TIMEOUT_EDEFAULT.clone();
        this.listenTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldListenTimeout, (Object)LISTEN_TIMEOUT_EDEFAULT, oldListenTimeoutESet));
        }
    }

    @Override
    public boolean isSetListenTimeout() {
        return this.listenTimeoutESet;
    }

    @Override
    public Integer getMacroInitialOffsetA() {
        return (Integer)this.macroInitialOffsetA.basicGetValue();
    }

    @Override
    public void setMacroInitialOffsetA(Integer newMacroInitialOffsetA) {
        Integer oldMacroInitialOffsetA = (Integer)this.macroInitialOffsetA.basicGetValue();
        this.macroInitialOffsetA.basicSetValue((Object)newMacroInitialOffsetA);
        boolean oldMacroInitialOffsetAESet = this.macroInitialOffsetAESet;
        this.macroInitialOffsetAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMacroInitialOffsetA, (Object)newMacroInitialOffsetA, !oldMacroInitialOffsetAESet));
        }
    }

    @Override
    public void unsetMacroInitialOffsetA() {
        Integer oldMacroInitialOffsetA = (Integer)this.macroInitialOffsetA.basicGetValue();
        boolean oldMacroInitialOffsetAESet = this.macroInitialOffsetAESet;
        this.macroInitialOffsetA = MACRO_INITIAL_OFFSET_A_EDEFAULT.clone();
        this.macroInitialOffsetAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMacroInitialOffsetA, (Object)MACRO_INITIAL_OFFSET_A_EDEFAULT, oldMacroInitialOffsetAESet));
        }
    }

    @Override
    public boolean isSetMacroInitialOffsetA() {
        return this.macroInitialOffsetAESet;
    }

    @Override
    public Integer getMacroInitialOffsetB() {
        return (Integer)this.macroInitialOffsetB.basicGetValue();
    }

    @Override
    public void setMacroInitialOffsetB(Integer newMacroInitialOffsetB) {
        Integer oldMacroInitialOffsetB = (Integer)this.macroInitialOffsetB.basicGetValue();
        this.macroInitialOffsetB.basicSetValue((Object)newMacroInitialOffsetB);
        boolean oldMacroInitialOffsetBESet = this.macroInitialOffsetBESet;
        this.macroInitialOffsetBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMacroInitialOffsetB, (Object)newMacroInitialOffsetB, !oldMacroInitialOffsetBESet));
        }
    }

    @Override
    public void unsetMacroInitialOffsetB() {
        Integer oldMacroInitialOffsetB = (Integer)this.macroInitialOffsetB.basicGetValue();
        boolean oldMacroInitialOffsetBESet = this.macroInitialOffsetBESet;
        this.macroInitialOffsetB = MACRO_INITIAL_OFFSET_B_EDEFAULT.clone();
        this.macroInitialOffsetBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldMacroInitialOffsetB, (Object)MACRO_INITIAL_OFFSET_B_EDEFAULT, oldMacroInitialOffsetBESet));
        }
    }

    @Override
    public boolean isSetMacroInitialOffsetB() {
        return this.macroInitialOffsetBESet;
    }

    @Override
    public Integer getMaximumDynamicPayloadLength() {
        return (Integer)this.maximumDynamicPayloadLength.basicGetValue();
    }

    @Override
    public void setMaximumDynamicPayloadLength(Integer newMaximumDynamicPayloadLength) {
        Integer oldMaximumDynamicPayloadLength = (Integer)this.maximumDynamicPayloadLength.basicGetValue();
        this.maximumDynamicPayloadLength.basicSetValue((Object)newMaximumDynamicPayloadLength);
        boolean oldMaximumDynamicPayloadLengthESet = this.maximumDynamicPayloadLengthESet;
        this.maximumDynamicPayloadLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaximumDynamicPayloadLength, (Object)newMaximumDynamicPayloadLength, !oldMaximumDynamicPayloadLengthESet));
        }
    }

    @Override
    public void unsetMaximumDynamicPayloadLength() {
        Integer oldMaximumDynamicPayloadLength = (Integer)this.maximumDynamicPayloadLength.basicGetValue();
        boolean oldMaximumDynamicPayloadLengthESet = this.maximumDynamicPayloadLengthESet;
        this.maximumDynamicPayloadLength = MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT.clone();
        this.maximumDynamicPayloadLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMaximumDynamicPayloadLength, (Object)MAXIMUM_DYNAMIC_PAYLOAD_LENGTH_EDEFAULT, oldMaximumDynamicPayloadLengthESet));
        }
    }

    @Override
    public boolean isSetMaximumDynamicPayloadLength() {
        return this.maximumDynamicPayloadLengthESet;
    }

    @Override
    public Integer getMicroInitialOffsetA() {
        return (Integer)this.microInitialOffsetA.basicGetValue();
    }

    @Override
    public void setMicroInitialOffsetA(Integer newMicroInitialOffsetA) {
        Integer oldMicroInitialOffsetA = (Integer)this.microInitialOffsetA.basicGetValue();
        this.microInitialOffsetA.basicSetValue((Object)newMicroInitialOffsetA);
        boolean oldMicroInitialOffsetAESet = this.microInitialOffsetAESet;
        this.microInitialOffsetAESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMicroInitialOffsetA, (Object)newMicroInitialOffsetA, !oldMicroInitialOffsetAESet));
        }
    }

    @Override
    public void unsetMicroInitialOffsetA() {
        Integer oldMicroInitialOffsetA = (Integer)this.microInitialOffsetA.basicGetValue();
        boolean oldMicroInitialOffsetAESet = this.microInitialOffsetAESet;
        this.microInitialOffsetA = MICRO_INITIAL_OFFSET_A_EDEFAULT.clone();
        this.microInitialOffsetAESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMicroInitialOffsetA, (Object)MICRO_INITIAL_OFFSET_A_EDEFAULT, oldMicroInitialOffsetAESet));
        }
    }

    @Override
    public boolean isSetMicroInitialOffsetA() {
        return this.microInitialOffsetAESet;
    }

    @Override
    public Integer getMicroInitialOffsetB() {
        return (Integer)this.microInitialOffsetB.basicGetValue();
    }

    @Override
    public void setMicroInitialOffsetB(Integer newMicroInitialOffsetB) {
        Integer oldMicroInitialOffsetB = (Integer)this.microInitialOffsetB.basicGetValue();
        this.microInitialOffsetB.basicSetValue((Object)newMicroInitialOffsetB);
        boolean oldMicroInitialOffsetBESet = this.microInitialOffsetBESet;
        this.microInitialOffsetBESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldMicroInitialOffsetB, (Object)newMicroInitialOffsetB, !oldMicroInitialOffsetBESet));
        }
    }

    @Override
    public void unsetMicroInitialOffsetB() {
        Integer oldMicroInitialOffsetB = (Integer)this.microInitialOffsetB.basicGetValue();
        boolean oldMicroInitialOffsetBESet = this.microInitialOffsetBESet;
        this.microInitialOffsetB = MICRO_INITIAL_OFFSET_B_EDEFAULT.clone();
        this.microInitialOffsetBESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldMicroInitialOffsetB, (Object)MICRO_INITIAL_OFFSET_B_EDEFAULT, oldMicroInitialOffsetBESet));
        }
    }

    @Override
    public boolean isSetMicroInitialOffsetB() {
        return this.microInitialOffsetBESet;
    }

    @Override
    public Integer getMicroPerCycle() {
        return (Integer)this.microPerCycle.basicGetValue();
    }

    @Override
    public void setMicroPerCycle(Integer newMicroPerCycle) {
        Integer oldMicroPerCycle = (Integer)this.microPerCycle.basicGetValue();
        this.microPerCycle.basicSetValue((Object)newMicroPerCycle);
        boolean oldMicroPerCycleESet = this.microPerCycleESet;
        this.microPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldMicroPerCycle, (Object)newMicroPerCycle, !oldMicroPerCycleESet));
        }
    }

    @Override
    public void unsetMicroPerCycle() {
        Integer oldMicroPerCycle = (Integer)this.microPerCycle.basicGetValue();
        boolean oldMicroPerCycleESet = this.microPerCycleESet;
        this.microPerCycle = MICRO_PER_CYCLE_EDEFAULT.clone();
        this.microPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldMicroPerCycle, (Object)MICRO_PER_CYCLE_EDEFAULT, oldMicroPerCycleESet));
        }
    }

    @Override
    public boolean isSetMicroPerCycle() {
        return this.microPerCycleESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldMicrotickDuration, (Object)this.microtickDuration, !oldMicrotickDurationESet));
        }
    }

    @Override
    public void unsetMicrotickDuration() {
        Double oldMicrotickDuration = this.microtickDuration;
        boolean oldMicrotickDurationESet = this.microtickDurationESet;
        this.microtickDuration = MICROTICK_DURATION_EDEFAULT;
        this.microtickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldMicrotickDuration, (Object)MICROTICK_DURATION_EDEFAULT, oldMicrotickDurationESet));
        }
    }

    @Override
    public boolean isSetMicrotickDuration() {
        return this.microtickDurationESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldNmVectorEarlyUpdate, (Object)this.nmVectorEarlyUpdate, !oldNmVectorEarlyUpdateESet));
        }
    }

    @Override
    public void unsetNmVectorEarlyUpdate() {
        Boolean oldNmVectorEarlyUpdate = this.nmVectorEarlyUpdate;
        boolean oldNmVectorEarlyUpdateESet = this.nmVectorEarlyUpdateESet;
        this.nmVectorEarlyUpdate = NM_VECTOR_EARLY_UPDATE_EDEFAULT;
        this.nmVectorEarlyUpdateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldNmVectorEarlyUpdate, (Object)NM_VECTOR_EARLY_UPDATE_EDEFAULT, oldNmVectorEarlyUpdateESet));
        }
    }

    @Override
    public boolean isSetNmVectorEarlyUpdate() {
        return this.nmVectorEarlyUpdateESet;
    }

    @Override
    public Integer getOffsetCorrectionOut() {
        return (Integer)this.offsetCorrectionOut.basicGetValue();
    }

    @Override
    public void setOffsetCorrectionOut(Integer newOffsetCorrectionOut) {
        Integer oldOffsetCorrectionOut = (Integer)this.offsetCorrectionOut.basicGetValue();
        this.offsetCorrectionOut.basicSetValue((Object)newOffsetCorrectionOut);
        boolean oldOffsetCorrectionOutESet = this.offsetCorrectionOutESet;
        this.offsetCorrectionOutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldOffsetCorrectionOut, (Object)newOffsetCorrectionOut, !oldOffsetCorrectionOutESet));
        }
    }

    @Override
    public void unsetOffsetCorrectionOut() {
        Integer oldOffsetCorrectionOut = (Integer)this.offsetCorrectionOut.basicGetValue();
        boolean oldOffsetCorrectionOutESet = this.offsetCorrectionOutESet;
        this.offsetCorrectionOut = OFFSET_CORRECTION_OUT_EDEFAULT.clone();
        this.offsetCorrectionOutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldOffsetCorrectionOut, (Object)OFFSET_CORRECTION_OUT_EDEFAULT, oldOffsetCorrectionOutESet));
        }
    }

    @Override
    public boolean isSetOffsetCorrectionOut() {
        return this.offsetCorrectionOutESet;
    }

    @Override
    public Integer getRateCorrectionOut() {
        return (Integer)this.rateCorrectionOut.basicGetValue();
    }

    @Override
    public void setRateCorrectionOut(Integer newRateCorrectionOut) {
        Integer oldRateCorrectionOut = (Integer)this.rateCorrectionOut.basicGetValue();
        this.rateCorrectionOut.basicSetValue((Object)newRateCorrectionOut);
        boolean oldRateCorrectionOutESet = this.rateCorrectionOutESet;
        this.rateCorrectionOutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldRateCorrectionOut, (Object)newRateCorrectionOut, !oldRateCorrectionOutESet));
        }
    }

    @Override
    public void unsetRateCorrectionOut() {
        Integer oldRateCorrectionOut = (Integer)this.rateCorrectionOut.basicGetValue();
        boolean oldRateCorrectionOutESet = this.rateCorrectionOutESet;
        this.rateCorrectionOut = RATE_CORRECTION_OUT_EDEFAULT.clone();
        this.rateCorrectionOutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldRateCorrectionOut, (Object)RATE_CORRECTION_OUT_EDEFAULT, oldRateCorrectionOutESet));
        }
    }

    @Override
    public boolean isSetRateCorrectionOut() {
        return this.rateCorrectionOutESet;
    }

    @Override
    public Integer getSamplesPerMicrotick() {
        return (Integer)this.samplesPerMicrotick.basicGetValue();
    }

    @Override
    public void setSamplesPerMicrotick(Integer newSamplesPerMicrotick) {
        Integer oldSamplesPerMicrotick = (Integer)this.samplesPerMicrotick.basicGetValue();
        this.samplesPerMicrotick.basicSetValue((Object)newSamplesPerMicrotick);
        boolean oldSamplesPerMicrotickESet = this.samplesPerMicrotickESet;
        this.samplesPerMicrotickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldSamplesPerMicrotick, (Object)newSamplesPerMicrotick, !oldSamplesPerMicrotickESet));
        }
    }

    @Override
    public void unsetSamplesPerMicrotick() {
        Integer oldSamplesPerMicrotick = (Integer)this.samplesPerMicrotick.basicGetValue();
        boolean oldSamplesPerMicrotickESet = this.samplesPerMicrotickESet;
        this.samplesPerMicrotick = SAMPLES_PER_MICROTICK_EDEFAULT.clone();
        this.samplesPerMicrotickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldSamplesPerMicrotick, (Object)SAMPLES_PER_MICROTICK_EDEFAULT, oldSamplesPerMicrotickESet));
        }
    }

    @Override
    public boolean isSetSamplesPerMicrotick() {
        return this.samplesPerMicrotickESet;
    }

    @Override
    public Long getSecondKeySlotId() {
        return (Long)this.secondKeySlotId.basicGetValue();
    }

    @Override
    public void setSecondKeySlotId(Long newSecondKeySlotId) {
        Long oldSecondKeySlotId = (Long)this.secondKeySlotId.basicGetValue();
        this.secondKeySlotId.basicSetValue((Object)newSecondKeySlotId);
        boolean oldSecondKeySlotIdESet = this.secondKeySlotIdESet;
        this.secondKeySlotIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldSecondKeySlotId, (Object)newSecondKeySlotId, !oldSecondKeySlotIdESet));
        }
    }

    @Override
    public void unsetSecondKeySlotId() {
        Long oldSecondKeySlotId = (Long)this.secondKeySlotId.basicGetValue();
        boolean oldSecondKeySlotIdESet = this.secondKeySlotIdESet;
        this.secondKeySlotId = SECOND_KEY_SLOT_ID_EDEFAULT.clone();
        this.secondKeySlotIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldSecondKeySlotId, (Object)SECOND_KEY_SLOT_ID_EDEFAULT, oldSecondKeySlotIdESet));
        }
    }

    @Override
    public boolean isSetSecondKeySlotId() {
        return this.secondKeySlotIdESet;
    }

    @Override
    public Boolean getTwoKeySlotMode() {
        return this.twoKeySlotMode;
    }

    @Override
    public void setTwoKeySlotMode(Boolean newTwoKeySlotMode) {
        Boolean oldTwoKeySlotMode = this.twoKeySlotMode;
        this.twoKeySlotMode = newTwoKeySlotMode;
        boolean oldTwoKeySlotModeESet = this.twoKeySlotModeESet;
        this.twoKeySlotModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldTwoKeySlotMode, (Object)this.twoKeySlotMode, !oldTwoKeySlotModeESet));
        }
    }

    @Override
    public void unsetTwoKeySlotMode() {
        Boolean oldTwoKeySlotMode = this.twoKeySlotMode;
        boolean oldTwoKeySlotModeESet = this.twoKeySlotModeESet;
        this.twoKeySlotMode = TWO_KEY_SLOT_MODE_EDEFAULT;
        this.twoKeySlotModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldTwoKeySlotMode, (Object)TWO_KEY_SLOT_MODE_EDEFAULT, oldTwoKeySlotModeESet));
        }
    }

    @Override
    public boolean isSetTwoKeySlotMode() {
        return this.twoKeySlotModeESet;
    }

    @Override
    public Integer getWakeUpPattern() {
        return (Integer)this.wakeUpPattern.basicGetValue();
    }

    @Override
    public void setWakeUpPattern(Integer newWakeUpPattern) {
        Integer oldWakeUpPattern = (Integer)this.wakeUpPattern.basicGetValue();
        this.wakeUpPattern.basicSetValue((Object)newWakeUpPattern);
        boolean oldWakeUpPatternESet = this.wakeUpPatternESet;
        this.wakeUpPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldWakeUpPattern, (Object)newWakeUpPattern, !oldWakeUpPatternESet));
        }
    }

    @Override
    public void unsetWakeUpPattern() {
        Integer oldWakeUpPattern = (Integer)this.wakeUpPattern.basicGetValue();
        boolean oldWakeUpPatternESet = this.wakeUpPatternESet;
        this.wakeUpPattern = WAKE_UP_PATTERN_EDEFAULT.clone();
        this.wakeUpPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldWakeUpPattern, (Object)WAKE_UP_PATTERN_EDEFAULT, oldWakeUpPatternESet));
        }
    }

    @Override
    public boolean isSetWakeUpPattern() {
        return this.wakeUpPatternESet;
    }

    @Override
    public IntegerDatatype getAcceptedStartupRangeData() {
        return this.acceptedStartupRange.clone();
    }

    @Override
    public void setAcceptedStartupRangeData(IntegerDatatype newAcceptedStartupRange) {
        this.acceptedStartupRange.setRadix((int)newAcceptedStartupRange.getRadix());
        this.acceptedStartupRange.setNoOfDigits((int)newAcceptedStartupRange.getNoOfDigits());
        this.setAcceptedStartupRange(newAcceptedStartupRange.getValue());
    }

    @Override
    public IntegerDatatype getAllowPassiveToActiveData() {
        return this.allowPassiveToActive.clone();
    }

    @Override
    public void setAllowPassiveToActiveData(IntegerDatatype newAllowPassiveToActive) {
        this.allowPassiveToActive.setRadix((int)newAllowPassiveToActive.getRadix());
        this.allowPassiveToActive.setNoOfDigits((int)newAllowPassiveToActive.getNoOfDigits());
        this.setAllowPassiveToActive(newAllowPassiveToActive.getValue());
    }

    @Override
    public IntegerDatatype getClusterDriftDampingData() {
        return this.clusterDriftDamping.clone();
    }

    @Override
    public void setClusterDriftDampingData(IntegerDatatype newClusterDriftDamping) {
        this.clusterDriftDamping.setRadix((int)newClusterDriftDamping.getRadix());
        this.clusterDriftDamping.setNoOfDigits((int)newClusterDriftDamping.getNoOfDigits());
        this.setClusterDriftDamping(newClusterDriftDamping.getValue());
    }

    @Override
    public IntegerDatatype getDecodingCorrectionData() {
        return this.decodingCorrection.clone();
    }

    @Override
    public void setDecodingCorrectionData(IntegerDatatype newDecodingCorrection) {
        this.decodingCorrection.setRadix((int)newDecodingCorrection.getRadix());
        this.decodingCorrection.setNoOfDigits((int)newDecodingCorrection.getNoOfDigits());
        this.setDecodingCorrection(newDecodingCorrection.getValue());
    }

    @Override
    public IntegerDatatype getDelayCompensationAData() {
        return this.delayCompensationA.clone();
    }

    @Override
    public void setDelayCompensationAData(IntegerDatatype newDelayCompensationA) {
        this.delayCompensationA.setRadix((int)newDelayCompensationA.getRadix());
        this.delayCompensationA.setNoOfDigits((int)newDelayCompensationA.getNoOfDigits());
        this.setDelayCompensationA(newDelayCompensationA.getValue());
    }

    @Override
    public IntegerDatatype getDelayCompensationBData() {
        return this.delayCompensationB.clone();
    }

    @Override
    public void setDelayCompensationBData(IntegerDatatype newDelayCompensationB) {
        this.delayCompensationB.setRadix((int)newDelayCompensationB.getRadix());
        this.delayCompensationB.setNoOfDigits((int)newDelayCompensationB.getNoOfDigits());
        this.setDelayCompensationB(newDelayCompensationB.getValue());
    }

    @Override
    public IntegerDatatype getExternOffsetCorrectionData() {
        return this.externOffsetCorrection.clone();
    }

    @Override
    public void setExternOffsetCorrectionData(IntegerDatatype newExternOffsetCorrection) {
        this.externOffsetCorrection.setRadix((int)newExternOffsetCorrection.getRadix());
        this.externOffsetCorrection.setNoOfDigits((int)newExternOffsetCorrection.getNoOfDigits());
        this.setExternOffsetCorrection(newExternOffsetCorrection.getValue());
    }

    @Override
    public IntegerDatatype getExternRateCorrectionData() {
        return this.externRateCorrection.clone();
    }

    @Override
    public void setExternRateCorrectionData(IntegerDatatype newExternRateCorrection) {
        this.externRateCorrection.setRadix((int)newExternRateCorrection.getRadix());
        this.externRateCorrection.setNoOfDigits((int)newExternRateCorrection.getNoOfDigits());
        this.setExternRateCorrection(newExternRateCorrection.getValue());
    }

    @Override
    public PositiveIntegerDatatype getKeySlotIDData() {
        return this.keySlotID.clone();
    }

    @Override
    public void setKeySlotIDData(PositiveIntegerDatatype newKeySlotID) {
        this.keySlotID.setRadix((int)newKeySlotID.getRadix());
        this.keySlotID.setNoOfDigits((int)newKeySlotID.getNoOfDigits());
        this.setKeySlotID(newKeySlotID.getValue());
    }

    @Override
    public IntegerDatatype getLatestTXData() {
        return this.latestTX.clone();
    }

    @Override
    public void setLatestTXData(IntegerDatatype newLatestTX) {
        this.latestTX.setRadix((int)newLatestTX.getRadix());
        this.latestTX.setNoOfDigits((int)newLatestTX.getNoOfDigits());
        this.setLatestTX(newLatestTX.getValue());
    }

    @Override
    public IntegerDatatype getListenTimeoutData() {
        return this.listenTimeout.clone();
    }

    @Override
    public void setListenTimeoutData(IntegerDatatype newListenTimeout) {
        this.listenTimeout.setRadix((int)newListenTimeout.getRadix());
        this.listenTimeout.setNoOfDigits((int)newListenTimeout.getNoOfDigits());
        this.setListenTimeout(newListenTimeout.getValue());
    }

    @Override
    public IntegerDatatype getMacroInitialOffsetAData() {
        return this.macroInitialOffsetA.clone();
    }

    @Override
    public void setMacroInitialOffsetAData(IntegerDatatype newMacroInitialOffsetA) {
        this.macroInitialOffsetA.setRadix((int)newMacroInitialOffsetA.getRadix());
        this.macroInitialOffsetA.setNoOfDigits((int)newMacroInitialOffsetA.getNoOfDigits());
        this.setMacroInitialOffsetA(newMacroInitialOffsetA.getValue());
    }

    @Override
    public IntegerDatatype getMacroInitialOffsetBData() {
        return this.macroInitialOffsetB.clone();
    }

    @Override
    public void setMacroInitialOffsetBData(IntegerDatatype newMacroInitialOffsetB) {
        this.macroInitialOffsetB.setRadix((int)newMacroInitialOffsetB.getRadix());
        this.macroInitialOffsetB.setNoOfDigits((int)newMacroInitialOffsetB.getNoOfDigits());
        this.setMacroInitialOffsetB(newMacroInitialOffsetB.getValue());
    }

    @Override
    public IntegerDatatype getMaximumDynamicPayloadLengthData() {
        return this.maximumDynamicPayloadLength.clone();
    }

    @Override
    public void setMaximumDynamicPayloadLengthData(IntegerDatatype newMaximumDynamicPayloadLength) {
        this.maximumDynamicPayloadLength.setRadix((int)newMaximumDynamicPayloadLength.getRadix());
        this.maximumDynamicPayloadLength.setNoOfDigits((int)newMaximumDynamicPayloadLength.getNoOfDigits());
        this.setMaximumDynamicPayloadLength(newMaximumDynamicPayloadLength.getValue());
    }

    @Override
    public IntegerDatatype getMicroInitialOffsetAData() {
        return this.microInitialOffsetA.clone();
    }

    @Override
    public void setMicroInitialOffsetAData(IntegerDatatype newMicroInitialOffsetA) {
        this.microInitialOffsetA.setRadix((int)newMicroInitialOffsetA.getRadix());
        this.microInitialOffsetA.setNoOfDigits((int)newMicroInitialOffsetA.getNoOfDigits());
        this.setMicroInitialOffsetA(newMicroInitialOffsetA.getValue());
    }

    @Override
    public IntegerDatatype getMicroInitialOffsetBData() {
        return this.microInitialOffsetB.clone();
    }

    @Override
    public void setMicroInitialOffsetBData(IntegerDatatype newMicroInitialOffsetB) {
        this.microInitialOffsetB.setRadix((int)newMicroInitialOffsetB.getRadix());
        this.microInitialOffsetB.setNoOfDigits((int)newMicroInitialOffsetB.getNoOfDigits());
        this.setMicroInitialOffsetB(newMicroInitialOffsetB.getValue());
    }

    @Override
    public IntegerDatatype getMicroPerCycleData() {
        return this.microPerCycle.clone();
    }

    @Override
    public void setMicroPerCycleData(IntegerDatatype newMicroPerCycle) {
        this.microPerCycle.setRadix((int)newMicroPerCycle.getRadix());
        this.microPerCycle.setNoOfDigits((int)newMicroPerCycle.getNoOfDigits());
        this.setMicroPerCycle(newMicroPerCycle.getValue());
    }

    @Override
    public IntegerDatatype getOffsetCorrectionOutData() {
        return this.offsetCorrectionOut.clone();
    }

    @Override
    public void setOffsetCorrectionOutData(IntegerDatatype newOffsetCorrectionOut) {
        this.offsetCorrectionOut.setRadix((int)newOffsetCorrectionOut.getRadix());
        this.offsetCorrectionOut.setNoOfDigits((int)newOffsetCorrectionOut.getNoOfDigits());
        this.setOffsetCorrectionOut(newOffsetCorrectionOut.getValue());
    }

    @Override
    public IntegerDatatype getRateCorrectionOutData() {
        return this.rateCorrectionOut.clone();
    }

    @Override
    public void setRateCorrectionOutData(IntegerDatatype newRateCorrectionOut) {
        this.rateCorrectionOut.setRadix((int)newRateCorrectionOut.getRadix());
        this.rateCorrectionOut.setNoOfDigits((int)newRateCorrectionOut.getNoOfDigits());
        this.setRateCorrectionOut(newRateCorrectionOut.getValue());
    }

    @Override
    public IntegerDatatype getSamplesPerMicrotickData() {
        return this.samplesPerMicrotick.clone();
    }

    @Override
    public void setSamplesPerMicrotickData(IntegerDatatype newSamplesPerMicrotick) {
        this.samplesPerMicrotick.setRadix((int)newSamplesPerMicrotick.getRadix());
        this.samplesPerMicrotick.setNoOfDigits((int)newSamplesPerMicrotick.getNoOfDigits());
        this.setSamplesPerMicrotick(newSamplesPerMicrotick.getValue());
    }

    @Override
    public PositiveIntegerDatatype getSecondKeySlotIdData() {
        return this.secondKeySlotId.clone();
    }

    @Override
    public void setSecondKeySlotIdData(PositiveIntegerDatatype newSecondKeySlotId) {
        this.secondKeySlotId.setRadix((int)newSecondKeySlotId.getRadix());
        this.secondKeySlotId.setNoOfDigits((int)newSecondKeySlotId.getNoOfDigits());
        this.setSecondKeySlotId(newSecondKeySlotId.getValue());
    }

    @Override
    public IntegerDatatype getWakeUpPatternData() {
        return this.wakeUpPattern.clone();
    }

    @Override
    public void setWakeUpPatternData(IntegerDatatype newWakeUpPattern) {
        this.wakeUpPattern.setRadix((int)newWakeUpPattern.getRadix());
        this.wakeUpPattern.setNoOfDigits((int)newWakeUpPattern.getNoOfDigits());
        this.setWakeUpPattern(newWakeUpPattern.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 15: {
                return ((InternalEList)this.getFlexrayFifos()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 15: {
                return ((InternalEList)this.getFlexrayFifos()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAcceptedStartupRange();
            }
            case 5: {
                return this.getAllowHaltDueToClock();
            }
            case 6: {
                return this.getAllowPassiveToActive();
            }
            case 7: {
                return this.getClusterDriftDamping();
            }
            case 8: {
                return this.getDecodingCorrection();
            }
            case 9: {
                return this.getDelayCompensationA();
            }
            case 10: {
                return this.getDelayCompensationB();
            }
            case 11: {
                return this.getExternOffsetCorrection();
            }
            case 12: {
                return this.getExternRateCorrection();
            }
            case 13: {
                return this.getExternalSync();
            }
            case 14: {
                return this.getFallBackInternal();
            }
            case 15: {
                return this.getFlexrayFifos();
            }
            case 16: {
                return this.getKeySlotID();
            }
            case 17: {
                return this.getKeySlotOnlyEnabled();
            }
            case 18: {
                return this.getKeySlotUsedForStartUp();
            }
            case 19: {
                return this.getKeySlotUsedForSync();
            }
            case 20: {
                return this.getLatestTX();
            }
            case 21: {
                return this.getListenTimeout();
            }
            case 22: {
                return this.getMacroInitialOffsetA();
            }
            case 23: {
                return this.getMacroInitialOffsetB();
            }
            case 24: {
                return this.getMaximumDynamicPayloadLength();
            }
            case 25: {
                return this.getMicroInitialOffsetA();
            }
            case 26: {
                return this.getMicroInitialOffsetB();
            }
            case 27: {
                return this.getMicroPerCycle();
            }
            case 28: {
                return this.getMicrotickDuration();
            }
            case 29: {
                return this.getNmVectorEarlyUpdate();
            }
            case 30: {
                return this.getOffsetCorrectionOut();
            }
            case 31: {
                return this.getRateCorrectionOut();
            }
            case 32: {
                return this.getSamplesPerMicrotick();
            }
            case 33: {
                return this.getSecondKeySlotId();
            }
            case 34: {
                return this.getTwoKeySlotMode();
            }
            case 35: {
                return this.getWakeUpPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAcceptedStartupRange((Integer)newValue);
                return;
            }
            case 5: {
                this.setAllowHaltDueToClock((Boolean)newValue);
                return;
            }
            case 6: {
                this.setAllowPassiveToActive((Integer)newValue);
                return;
            }
            case 7: {
                this.setClusterDriftDamping((Integer)newValue);
                return;
            }
            case 8: {
                this.setDecodingCorrection((Integer)newValue);
                return;
            }
            case 9: {
                this.setDelayCompensationA((Integer)newValue);
                return;
            }
            case 10: {
                this.setDelayCompensationB((Integer)newValue);
                return;
            }
            case 11: {
                this.setExternOffsetCorrection((Integer)newValue);
                return;
            }
            case 12: {
                this.setExternRateCorrection((Integer)newValue);
                return;
            }
            case 13: {
                this.setExternalSync((Boolean)newValue);
                return;
            }
            case 14: {
                this.setFallBackInternal((Boolean)newValue);
                return;
            }
            case 15: {
                this.getFlexrayFifos().clear();
                this.getFlexrayFifos().addAll((Collection)newValue);
                return;
            }
            case 16: {
                this.setKeySlotID((Long)newValue);
                return;
            }
            case 17: {
                this.setKeySlotOnlyEnabled((Boolean)newValue);
                return;
            }
            case 18: {
                this.setKeySlotUsedForStartUp((Boolean)newValue);
                return;
            }
            case 19: {
                this.setKeySlotUsedForSync((Boolean)newValue);
                return;
            }
            case 20: {
                this.setLatestTX((Integer)newValue);
                return;
            }
            case 21: {
                this.setListenTimeout((Integer)newValue);
                return;
            }
            case 22: {
                this.setMacroInitialOffsetA((Integer)newValue);
                return;
            }
            case 23: {
                this.setMacroInitialOffsetB((Integer)newValue);
                return;
            }
            case 24: {
                this.setMaximumDynamicPayloadLength((Integer)newValue);
                return;
            }
            case 25: {
                this.setMicroInitialOffsetA((Integer)newValue);
                return;
            }
            case 26: {
                this.setMicroInitialOffsetB((Integer)newValue);
                return;
            }
            case 27: {
                this.setMicroPerCycle((Integer)newValue);
                return;
            }
            case 28: {
                this.setMicrotickDuration((Double)newValue);
                return;
            }
            case 29: {
                this.setNmVectorEarlyUpdate((Boolean)newValue);
                return;
            }
            case 30: {
                this.setOffsetCorrectionOut((Integer)newValue);
                return;
            }
            case 31: {
                this.setRateCorrectionOut((Integer)newValue);
                return;
            }
            case 32: {
                this.setSamplesPerMicrotick((Integer)newValue);
                return;
            }
            case 33: {
                this.setSecondKeySlotId((Long)newValue);
                return;
            }
            case 34: {
                this.setTwoKeySlotMode((Boolean)newValue);
                return;
            }
            case 35: {
                this.setWakeUpPattern((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetAcceptedStartupRange();
                return;
            }
            case 5: {
                this.unsetAllowHaltDueToClock();
                return;
            }
            case 6: {
                this.unsetAllowPassiveToActive();
                return;
            }
            case 7: {
                this.unsetClusterDriftDamping();
                return;
            }
            case 8: {
                this.unsetDecodingCorrection();
                return;
            }
            case 9: {
                this.unsetDelayCompensationA();
                return;
            }
            case 10: {
                this.unsetDelayCompensationB();
                return;
            }
            case 11: {
                this.unsetExternOffsetCorrection();
                return;
            }
            case 12: {
                this.unsetExternRateCorrection();
                return;
            }
            case 13: {
                this.unsetExternalSync();
                return;
            }
            case 14: {
                this.unsetFallBackInternal();
                return;
            }
            case 15: {
                this.getFlexrayFifos().clear();
                return;
            }
            case 16: {
                this.unsetKeySlotID();
                return;
            }
            case 17: {
                this.unsetKeySlotOnlyEnabled();
                return;
            }
            case 18: {
                this.unsetKeySlotUsedForStartUp();
                return;
            }
            case 19: {
                this.unsetKeySlotUsedForSync();
                return;
            }
            case 20: {
                this.unsetLatestTX();
                return;
            }
            case 21: {
                this.unsetListenTimeout();
                return;
            }
            case 22: {
                this.unsetMacroInitialOffsetA();
                return;
            }
            case 23: {
                this.unsetMacroInitialOffsetB();
                return;
            }
            case 24: {
                this.unsetMaximumDynamicPayloadLength();
                return;
            }
            case 25: {
                this.unsetMicroInitialOffsetA();
                return;
            }
            case 26: {
                this.unsetMicroInitialOffsetB();
                return;
            }
            case 27: {
                this.unsetMicroPerCycle();
                return;
            }
            case 28: {
                this.unsetMicrotickDuration();
                return;
            }
            case 29: {
                this.unsetNmVectorEarlyUpdate();
                return;
            }
            case 30: {
                this.unsetOffsetCorrectionOut();
                return;
            }
            case 31: {
                this.unsetRateCorrectionOut();
                return;
            }
            case 32: {
                this.unsetSamplesPerMicrotick();
                return;
            }
            case 33: {
                this.unsetSecondKeySlotId();
                return;
            }
            case 34: {
                this.unsetTwoKeySlotMode();
                return;
            }
            case 35: {
                this.unsetWakeUpPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetAcceptedStartupRange();
            }
            case 5: {
                return this.isSetAllowHaltDueToClock();
            }
            case 6: {
                return this.isSetAllowPassiveToActive();
            }
            case 7: {
                return this.isSetClusterDriftDamping();
            }
            case 8: {
                return this.isSetDecodingCorrection();
            }
            case 9: {
                return this.isSetDelayCompensationA();
            }
            case 10: {
                return this.isSetDelayCompensationB();
            }
            case 11: {
                return this.isSetExternOffsetCorrection();
            }
            case 12: {
                return this.isSetExternRateCorrection();
            }
            case 13: {
                return this.isSetExternalSync();
            }
            case 14: {
                return this.isSetFallBackInternal();
            }
            case 15: {
                return this.flexrayFifos != null && !this.flexrayFifos.isEmpty();
            }
            case 16: {
                return this.isSetKeySlotID();
            }
            case 17: {
                return this.isSetKeySlotOnlyEnabled();
            }
            case 18: {
                return this.isSetKeySlotUsedForStartUp();
            }
            case 19: {
                return this.isSetKeySlotUsedForSync();
            }
            case 20: {
                return this.isSetLatestTX();
            }
            case 21: {
                return this.isSetListenTimeout();
            }
            case 22: {
                return this.isSetMacroInitialOffsetA();
            }
            case 23: {
                return this.isSetMacroInitialOffsetB();
            }
            case 24: {
                return this.isSetMaximumDynamicPayloadLength();
            }
            case 25: {
                return this.isSetMicroInitialOffsetA();
            }
            case 26: {
                return this.isSetMicroInitialOffsetB();
            }
            case 27: {
                return this.isSetMicroPerCycle();
            }
            case 28: {
                return this.isSetMicrotickDuration();
            }
            case 29: {
                return this.isSetNmVectorEarlyUpdate();
            }
            case 30: {
                return this.isSetOffsetCorrectionOut();
            }
            case 31: {
                return this.isSetRateCorrectionOut();
            }
            case 32: {
                return this.isSetSamplesPerMicrotick();
            }
            case 33: {
                return this.isSetSecondKeySlotId();
            }
            case 34: {
                return this.isSetTwoKeySlotMode();
            }
            case 35: {
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
        result.append(", microtickDuration: ");
        if (this.microtickDurationESet) {
            result.append(this.microtickDuration);
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

