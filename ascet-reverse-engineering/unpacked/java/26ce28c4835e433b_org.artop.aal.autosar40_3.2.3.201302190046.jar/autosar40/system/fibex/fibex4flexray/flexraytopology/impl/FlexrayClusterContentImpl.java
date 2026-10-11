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
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterContentImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class FlexrayClusterContentImpl
extends CommunicationClusterContentImpl
implements FlexrayClusterContent {
    protected static final IntegerDatatype ACTION_POINT_OFFSET_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype actionPointOffset = ACTION_POINT_OFFSET_EDEFAULT.clone();
    protected boolean actionPointOffsetESet;
    protected static final Double BIT_EDEFAULT = new Double(0.0);
    protected Double bit = BIT_EDEFAULT;
    protected boolean bitESet;
    protected static final IntegerDatatype CAS_RX_LOW_MAX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype casRxLowMax = CAS_RX_LOW_MAX_EDEFAULT.clone();
    protected boolean casRxLowMaxESet;
    protected static final IntegerDatatype COLD_START_ATTEMPTS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype coldStartAttempts = COLD_START_ATTEMPTS_EDEFAULT.clone();
    protected boolean coldStartAttemptsESet;
    protected static final Double CYCLE_EDEFAULT = new Double(0.0);
    protected Double cycle = CYCLE_EDEFAULT;
    protected boolean cycleESet;
    protected static final IntegerDatatype CYCLE_COUNT_MAX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype cycleCountMax = CYCLE_COUNT_MAX_EDEFAULT.clone();
    protected boolean cycleCountMaxESet;
    protected static final Boolean DETECT_NIT_ERROR_EDEFAULT = Boolean.FALSE;
    protected Boolean detectNitError = DETECT_NIT_ERROR_EDEFAULT;
    protected boolean detectNitErrorESet;
    protected static final IntegerDatatype DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype dynamicSlotIdlePhase = DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT.clone();
    protected boolean dynamicSlotIdlePhaseESet;
    protected static final IntegerDatatype IGNORE_AFTER_TX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype ignoreAfterTx = IGNORE_AFTER_TX_EDEFAULT.clone();
    protected boolean ignoreAfterTxESet;
    protected static final IntegerDatatype LISTEN_NOISE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype listenNoise = LISTEN_NOISE_EDEFAULT.clone();
    protected boolean listenNoiseESet;
    protected static final IntegerDatatype MACRO_PER_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype macroPerCycle = MACRO_PER_CYCLE_EDEFAULT.clone();
    protected boolean macroPerCycleESet;
    protected static final Double MACROTICK_DURATION_EDEFAULT = new Double(0.0);
    protected Double macrotickDuration = MACROTICK_DURATION_EDEFAULT;
    protected boolean macrotickDurationESet;
    protected static final IntegerDatatype MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxWithoutClockCorrectionFatal = MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT.clone();
    protected boolean maxWithoutClockCorrectionFatalESet;
    protected static final IntegerDatatype MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxWithoutClockCorrectionPassive = MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT.clone();
    protected boolean maxWithoutClockCorrectionPassiveESet;
    protected static final IntegerDatatype MINISLOT_ACTION_POINT_OFFSET_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype minislotActionPointOffset = MINISLOT_ACTION_POINT_OFFSET_EDEFAULT.clone();
    protected boolean minislotActionPointOffsetESet;
    protected static final IntegerDatatype MINISLOT_DURATION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype minislotDuration = MINISLOT_DURATION_EDEFAULT.clone();
    protected boolean minislotDurationESet;
    protected static final IntegerDatatype NETWORK_IDLE_TIME_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype networkIdleTime = NETWORK_IDLE_TIME_EDEFAULT.clone();
    protected boolean networkIdleTimeESet;
    protected static final IntegerDatatype NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype networkManagementVectorLength = NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT.clone();
    protected boolean networkManagementVectorLengthESet;
    protected static final IntegerDatatype NUMBER_OF_MINISLOTS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype numberOfMinislots = NUMBER_OF_MINISLOTS_EDEFAULT.clone();
    protected boolean numberOfMinislotsESet;
    protected static final IntegerDatatype NUMBER_OF_STATIC_SLOTS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype numberOfStaticSlots = NUMBER_OF_STATIC_SLOTS_EDEFAULT.clone();
    protected boolean numberOfStaticSlotsESet;
    protected static final IntegerDatatype OFFSET_CORRECTION_START_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype offsetCorrectionStart = OFFSET_CORRECTION_START_EDEFAULT.clone();
    protected boolean offsetCorrectionStartESet;
    protected static final IntegerDatatype PAYLOAD_LENGTH_STATIC_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype payloadLengthStatic = PAYLOAD_LENGTH_STATIC_EDEFAULT.clone();
    protected boolean payloadLengthStaticESet;
    protected static final IntegerDatatype SAFETY_MARGIN_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype safetyMargin = SAFETY_MARGIN_EDEFAULT.clone();
    protected boolean safetyMarginESet;
    protected static final Double SAMPLE_CLOCK_PERIOD_EDEFAULT = new Double(0.0);
    protected Double sampleClockPeriod = SAMPLE_CLOCK_PERIOD_EDEFAULT;
    protected boolean sampleClockPeriodESet;
    protected static final IntegerDatatype STATIC_SLOT_DURATION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype staticSlotDuration = STATIC_SLOT_DURATION_EDEFAULT.clone();
    protected boolean staticSlotDurationESet;
    protected static final IntegerDatatype SYMBOL_WINDOW_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype symbolWindow = SYMBOL_WINDOW_EDEFAULT.clone();
    protected boolean symbolWindowESet;
    protected static final IntegerDatatype SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype symbolWindowActionPointOffset = SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT.clone();
    protected boolean symbolWindowActionPointOffsetESet;
    protected static final IntegerDatatype SYNC_FRAME_ID_COUNT_MAX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype syncFrameIdCountMax = SYNC_FRAME_ID_COUNT_MAX_EDEFAULT.clone();
    protected boolean syncFrameIdCountMaxESet;
    protected static final IntegerDatatype TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype transmissionStartSequenceDuration = TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT.clone();
    protected boolean transmissionStartSequenceDurationESet;
    protected static final IntegerDatatype WAKEUP_RX_IDLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype wakeupRxIdle = WAKEUP_RX_IDLE_EDEFAULT.clone();
    protected boolean wakeupRxIdleESet;
    protected static final IntegerDatatype WAKEUP_RX_LOW_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype wakeupRxLow = WAKEUP_RX_LOW_EDEFAULT.clone();
    protected boolean wakeupRxLowESet;
    protected static final IntegerDatatype WAKEUP_RX_WINDOW_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype wakeupRxWindow = WAKEUP_RX_WINDOW_EDEFAULT.clone();
    protected boolean wakeupRxWindowESet;
    protected static final IntegerDatatype WAKEUP_TX_ACTIVE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype wakeupTxActive = WAKEUP_TX_ACTIVE_EDEFAULT.clone();
    protected boolean wakeupTxActiveESet;
    protected static final IntegerDatatype WAKEUP_TX_IDLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype wakeupTxIdle = WAKEUP_TX_IDLE_EDEFAULT.clone();
    protected boolean wakeupTxIdleESet;

    protected FlexrayClusterContentImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_CLUSTER_CONTENT;
    }

    public Integer getActionPointOffset() {
        return (Integer)this.actionPointOffset.basicGetValue();
    }

    public void setActionPointOffset(Integer newActionPointOffset) {
        Integer oldActionPointOffset = (Integer)this.actionPointOffset.basicGetValue();
        this.actionPointOffset.basicSetValue((Object)newActionPointOffset);
        boolean oldActionPointOffsetESet = this.actionPointOffsetESet;
        this.actionPointOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldActionPointOffset, (Object)newActionPointOffset, !oldActionPointOffsetESet));
        }
    }

    public void unsetActionPointOffset() {
        Integer oldActionPointOffset = (Integer)this.actionPointOffset.basicGetValue();
        boolean oldActionPointOffsetESet = this.actionPointOffsetESet;
        this.actionPointOffset = ACTION_POINT_OFFSET_EDEFAULT.clone();
        this.actionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldActionPointOffset, (Object)ACTION_POINT_OFFSET_EDEFAULT, oldActionPointOffsetESet));
        }
    }

    public boolean isSetActionPointOffset() {
        return this.actionPointOffsetESet;
    }

    public Double getBit() {
        return this.bit;
    }

    public void setBit(Double newBit) {
        Double oldBit = this.bit;
        this.bit = newBit;
        boolean oldBitESet = this.bitESet;
        this.bitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldBit, (Object)this.bit, !oldBitESet));
        }
    }

    public void unsetBit() {
        Double oldBit = this.bit;
        boolean oldBitESet = this.bitESet;
        this.bit = BIT_EDEFAULT;
        this.bitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldBit, (Object)BIT_EDEFAULT, oldBitESet));
        }
    }

    public boolean isSetBit() {
        return this.bitESet;
    }

    public Integer getCasRxLowMax() {
        return (Integer)this.casRxLowMax.basicGetValue();
    }

    public void setCasRxLowMax(Integer newCasRxLowMax) {
        Integer oldCasRxLowMax = (Integer)this.casRxLowMax.basicGetValue();
        this.casRxLowMax.basicSetValue((Object)newCasRxLowMax);
        boolean oldCasRxLowMaxESet = this.casRxLowMaxESet;
        this.casRxLowMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldCasRxLowMax, (Object)newCasRxLowMax, !oldCasRxLowMaxESet));
        }
    }

    public void unsetCasRxLowMax() {
        Integer oldCasRxLowMax = (Integer)this.casRxLowMax.basicGetValue();
        boolean oldCasRxLowMaxESet = this.casRxLowMaxESet;
        this.casRxLowMax = CAS_RX_LOW_MAX_EDEFAULT.clone();
        this.casRxLowMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldCasRxLowMax, (Object)CAS_RX_LOW_MAX_EDEFAULT, oldCasRxLowMaxESet));
        }
    }

    public boolean isSetCasRxLowMax() {
        return this.casRxLowMaxESet;
    }

    public Integer getColdStartAttempts() {
        return (Integer)this.coldStartAttempts.basicGetValue();
    }

    public void setColdStartAttempts(Integer newColdStartAttempts) {
        Integer oldColdStartAttempts = (Integer)this.coldStartAttempts.basicGetValue();
        this.coldStartAttempts.basicSetValue((Object)newColdStartAttempts);
        boolean oldColdStartAttemptsESet = this.coldStartAttemptsESet;
        this.coldStartAttemptsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldColdStartAttempts, (Object)newColdStartAttempts, !oldColdStartAttemptsESet));
        }
    }

    public void unsetColdStartAttempts() {
        Integer oldColdStartAttempts = (Integer)this.coldStartAttempts.basicGetValue();
        boolean oldColdStartAttemptsESet = this.coldStartAttemptsESet;
        this.coldStartAttempts = COLD_START_ATTEMPTS_EDEFAULT.clone();
        this.coldStartAttemptsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldColdStartAttempts, (Object)COLD_START_ATTEMPTS_EDEFAULT, oldColdStartAttemptsESet));
        }
    }

    public boolean isSetColdStartAttempts() {
        return this.coldStartAttemptsESet;
    }

    public Double getCycle() {
        return this.cycle;
    }

    public void setCycle(Double newCycle) {
        Double oldCycle = this.cycle;
        this.cycle = newCycle;
        boolean oldCycleESet = this.cycleESet;
        this.cycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldCycle, (Object)this.cycle, !oldCycleESet));
        }
    }

    public void unsetCycle() {
        Double oldCycle = this.cycle;
        boolean oldCycleESet = this.cycleESet;
        this.cycle = CYCLE_EDEFAULT;
        this.cycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldCycle, (Object)CYCLE_EDEFAULT, oldCycleESet));
        }
    }

    public boolean isSetCycle() {
        return this.cycleESet;
    }

    public Integer getCycleCountMax() {
        return (Integer)this.cycleCountMax.basicGetValue();
    }

    public void setCycleCountMax(Integer newCycleCountMax) {
        Integer oldCycleCountMax = (Integer)this.cycleCountMax.basicGetValue();
        this.cycleCountMax.basicSetValue((Object)newCycleCountMax);
        boolean oldCycleCountMaxESet = this.cycleCountMaxESet;
        this.cycleCountMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldCycleCountMax, (Object)newCycleCountMax, !oldCycleCountMaxESet));
        }
    }

    public void unsetCycleCountMax() {
        Integer oldCycleCountMax = (Integer)this.cycleCountMax.basicGetValue();
        boolean oldCycleCountMaxESet = this.cycleCountMaxESet;
        this.cycleCountMax = CYCLE_COUNT_MAX_EDEFAULT.clone();
        this.cycleCountMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldCycleCountMax, (Object)CYCLE_COUNT_MAX_EDEFAULT, oldCycleCountMaxESet));
        }
    }

    public boolean isSetCycleCountMax() {
        return this.cycleCountMaxESet;
    }

    public Boolean getDetectNitError() {
        return this.detectNitError;
    }

    public void setDetectNitError(Boolean newDetectNitError) {
        Boolean oldDetectNitError = this.detectNitError;
        this.detectNitError = newDetectNitError;
        boolean oldDetectNitErrorESet = this.detectNitErrorESet;
        this.detectNitErrorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldDetectNitError, (Object)this.detectNitError, !oldDetectNitErrorESet));
        }
    }

    public void unsetDetectNitError() {
        Boolean oldDetectNitError = this.detectNitError;
        boolean oldDetectNitErrorESet = this.detectNitErrorESet;
        this.detectNitError = DETECT_NIT_ERROR_EDEFAULT;
        this.detectNitErrorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldDetectNitError, (Object)DETECT_NIT_ERROR_EDEFAULT, oldDetectNitErrorESet));
        }
    }

    public boolean isSetDetectNitError() {
        return this.detectNitErrorESet;
    }

    public Integer getDynamicSlotIdlePhase() {
        return (Integer)this.dynamicSlotIdlePhase.basicGetValue();
    }

    public void setDynamicSlotIdlePhase(Integer newDynamicSlotIdlePhase) {
        Integer oldDynamicSlotIdlePhase = (Integer)this.dynamicSlotIdlePhase.basicGetValue();
        this.dynamicSlotIdlePhase.basicSetValue((Object)newDynamicSlotIdlePhase);
        boolean oldDynamicSlotIdlePhaseESet = this.dynamicSlotIdlePhaseESet;
        this.dynamicSlotIdlePhaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldDynamicSlotIdlePhase, (Object)newDynamicSlotIdlePhase, !oldDynamicSlotIdlePhaseESet));
        }
    }

    public void unsetDynamicSlotIdlePhase() {
        Integer oldDynamicSlotIdlePhase = (Integer)this.dynamicSlotIdlePhase.basicGetValue();
        boolean oldDynamicSlotIdlePhaseESet = this.dynamicSlotIdlePhaseESet;
        this.dynamicSlotIdlePhase = DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT.clone();
        this.dynamicSlotIdlePhaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldDynamicSlotIdlePhase, (Object)DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT, oldDynamicSlotIdlePhaseESet));
        }
    }

    public boolean isSetDynamicSlotIdlePhase() {
        return this.dynamicSlotIdlePhaseESet;
    }

    public Integer getIgnoreAfterTx() {
        return (Integer)this.ignoreAfterTx.basicGetValue();
    }

    public void setIgnoreAfterTx(Integer newIgnoreAfterTx) {
        Integer oldIgnoreAfterTx = (Integer)this.ignoreAfterTx.basicGetValue();
        this.ignoreAfterTx.basicSetValue((Object)newIgnoreAfterTx);
        boolean oldIgnoreAfterTxESet = this.ignoreAfterTxESet;
        this.ignoreAfterTxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldIgnoreAfterTx, (Object)newIgnoreAfterTx, !oldIgnoreAfterTxESet));
        }
    }

    public void unsetIgnoreAfterTx() {
        Integer oldIgnoreAfterTx = (Integer)this.ignoreAfterTx.basicGetValue();
        boolean oldIgnoreAfterTxESet = this.ignoreAfterTxESet;
        this.ignoreAfterTx = IGNORE_AFTER_TX_EDEFAULT.clone();
        this.ignoreAfterTxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldIgnoreAfterTx, (Object)IGNORE_AFTER_TX_EDEFAULT, oldIgnoreAfterTxESet));
        }
    }

    public boolean isSetIgnoreAfterTx() {
        return this.ignoreAfterTxESet;
    }

    public Integer getListenNoise() {
        return (Integer)this.listenNoise.basicGetValue();
    }

    public void setListenNoise(Integer newListenNoise) {
        Integer oldListenNoise = (Integer)this.listenNoise.basicGetValue();
        this.listenNoise.basicSetValue((Object)newListenNoise);
        boolean oldListenNoiseESet = this.listenNoiseESet;
        this.listenNoiseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldListenNoise, (Object)newListenNoise, !oldListenNoiseESet));
        }
    }

    public void unsetListenNoise() {
        Integer oldListenNoise = (Integer)this.listenNoise.basicGetValue();
        boolean oldListenNoiseESet = this.listenNoiseESet;
        this.listenNoise = LISTEN_NOISE_EDEFAULT.clone();
        this.listenNoiseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldListenNoise, (Object)LISTEN_NOISE_EDEFAULT, oldListenNoiseESet));
        }
    }

    public boolean isSetListenNoise() {
        return this.listenNoiseESet;
    }

    public Integer getMacroPerCycle() {
        return (Integer)this.macroPerCycle.basicGetValue();
    }

    public void setMacroPerCycle(Integer newMacroPerCycle) {
        Integer oldMacroPerCycle = (Integer)this.macroPerCycle.basicGetValue();
        this.macroPerCycle.basicSetValue((Object)newMacroPerCycle);
        boolean oldMacroPerCycleESet = this.macroPerCycleESet;
        this.macroPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldMacroPerCycle, (Object)newMacroPerCycle, !oldMacroPerCycleESet));
        }
    }

    public void unsetMacroPerCycle() {
        Integer oldMacroPerCycle = (Integer)this.macroPerCycle.basicGetValue();
        boolean oldMacroPerCycleESet = this.macroPerCycleESet;
        this.macroPerCycle = MACRO_PER_CYCLE_EDEFAULT.clone();
        this.macroPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldMacroPerCycle, (Object)MACRO_PER_CYCLE_EDEFAULT, oldMacroPerCycleESet));
        }
    }

    public boolean isSetMacroPerCycle() {
        return this.macroPerCycleESet;
    }

    public Double getMacrotickDuration() {
        return this.macrotickDuration;
    }

    public void setMacrotickDuration(Double newMacrotickDuration) {
        Double oldMacrotickDuration = this.macrotickDuration;
        this.macrotickDuration = newMacrotickDuration;
        boolean oldMacrotickDurationESet = this.macrotickDurationESet;
        this.macrotickDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldMacrotickDuration, (Object)this.macrotickDuration, !oldMacrotickDurationESet));
        }
    }

    public void unsetMacrotickDuration() {
        Double oldMacrotickDuration = this.macrotickDuration;
        boolean oldMacrotickDurationESet = this.macrotickDurationESet;
        this.macrotickDuration = MACROTICK_DURATION_EDEFAULT;
        this.macrotickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldMacrotickDuration, (Object)MACROTICK_DURATION_EDEFAULT, oldMacrotickDurationESet));
        }
    }

    public boolean isSetMacrotickDuration() {
        return this.macrotickDurationESet;
    }

    public Integer getMaxWithoutClockCorrectionFatal() {
        return (Integer)this.maxWithoutClockCorrectionFatal.basicGetValue();
    }

    public void setMaxWithoutClockCorrectionFatal(Integer newMaxWithoutClockCorrectionFatal) {
        Integer oldMaxWithoutClockCorrectionFatal = (Integer)this.maxWithoutClockCorrectionFatal.basicGetValue();
        this.maxWithoutClockCorrectionFatal.basicSetValue((Object)newMaxWithoutClockCorrectionFatal);
        boolean oldMaxWithoutClockCorrectionFatalESet = this.maxWithoutClockCorrectionFatalESet;
        this.maxWithoutClockCorrectionFatalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxWithoutClockCorrectionFatal, (Object)newMaxWithoutClockCorrectionFatal, !oldMaxWithoutClockCorrectionFatalESet));
        }
    }

    public void unsetMaxWithoutClockCorrectionFatal() {
        Integer oldMaxWithoutClockCorrectionFatal = (Integer)this.maxWithoutClockCorrectionFatal.basicGetValue();
        boolean oldMaxWithoutClockCorrectionFatalESet = this.maxWithoutClockCorrectionFatalESet;
        this.maxWithoutClockCorrectionFatal = MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT.clone();
        this.maxWithoutClockCorrectionFatalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxWithoutClockCorrectionFatal, (Object)MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT, oldMaxWithoutClockCorrectionFatalESet));
        }
    }

    public boolean isSetMaxWithoutClockCorrectionFatal() {
        return this.maxWithoutClockCorrectionFatalESet;
    }

    public Integer getMaxWithoutClockCorrectionPassive() {
        return (Integer)this.maxWithoutClockCorrectionPassive.basicGetValue();
    }

    public void setMaxWithoutClockCorrectionPassive(Integer newMaxWithoutClockCorrectionPassive) {
        Integer oldMaxWithoutClockCorrectionPassive = (Integer)this.maxWithoutClockCorrectionPassive.basicGetValue();
        this.maxWithoutClockCorrectionPassive.basicSetValue((Object)newMaxWithoutClockCorrectionPassive);
        boolean oldMaxWithoutClockCorrectionPassiveESet = this.maxWithoutClockCorrectionPassiveESet;
        this.maxWithoutClockCorrectionPassiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMaxWithoutClockCorrectionPassive, (Object)newMaxWithoutClockCorrectionPassive, !oldMaxWithoutClockCorrectionPassiveESet));
        }
    }

    public void unsetMaxWithoutClockCorrectionPassive() {
        Integer oldMaxWithoutClockCorrectionPassive = (Integer)this.maxWithoutClockCorrectionPassive.basicGetValue();
        boolean oldMaxWithoutClockCorrectionPassiveESet = this.maxWithoutClockCorrectionPassiveESet;
        this.maxWithoutClockCorrectionPassive = MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT.clone();
        this.maxWithoutClockCorrectionPassiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMaxWithoutClockCorrectionPassive, (Object)MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT, oldMaxWithoutClockCorrectionPassiveESet));
        }
    }

    public boolean isSetMaxWithoutClockCorrectionPassive() {
        return this.maxWithoutClockCorrectionPassiveESet;
    }

    public Integer getMinislotActionPointOffset() {
        return (Integer)this.minislotActionPointOffset.basicGetValue();
    }

    public void setMinislotActionPointOffset(Integer newMinislotActionPointOffset) {
        Integer oldMinislotActionPointOffset = (Integer)this.minislotActionPointOffset.basicGetValue();
        this.minislotActionPointOffset.basicSetValue((Object)newMinislotActionPointOffset);
        boolean oldMinislotActionPointOffsetESet = this.minislotActionPointOffsetESet;
        this.minislotActionPointOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMinislotActionPointOffset, (Object)newMinislotActionPointOffset, !oldMinislotActionPointOffsetESet));
        }
    }

    public void unsetMinislotActionPointOffset() {
        Integer oldMinislotActionPointOffset = (Integer)this.minislotActionPointOffset.basicGetValue();
        boolean oldMinislotActionPointOffsetESet = this.minislotActionPointOffsetESet;
        this.minislotActionPointOffset = MINISLOT_ACTION_POINT_OFFSET_EDEFAULT.clone();
        this.minislotActionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMinislotActionPointOffset, (Object)MINISLOT_ACTION_POINT_OFFSET_EDEFAULT, oldMinislotActionPointOffsetESet));
        }
    }

    public boolean isSetMinislotActionPointOffset() {
        return this.minislotActionPointOffsetESet;
    }

    public Integer getMinislotDuration() {
        return (Integer)this.minislotDuration.basicGetValue();
    }

    public void setMinislotDuration(Integer newMinislotDuration) {
        Integer oldMinislotDuration = (Integer)this.minislotDuration.basicGetValue();
        this.minislotDuration.basicSetValue((Object)newMinislotDuration);
        boolean oldMinislotDurationESet = this.minislotDurationESet;
        this.minislotDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMinislotDuration, (Object)newMinislotDuration, !oldMinislotDurationESet));
        }
    }

    public void unsetMinislotDuration() {
        Integer oldMinislotDuration = (Integer)this.minislotDuration.basicGetValue();
        boolean oldMinislotDurationESet = this.minislotDurationESet;
        this.minislotDuration = MINISLOT_DURATION_EDEFAULT.clone();
        this.minislotDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldMinislotDuration, (Object)MINISLOT_DURATION_EDEFAULT, oldMinislotDurationESet));
        }
    }

    public boolean isSetMinislotDuration() {
        return this.minislotDurationESet;
    }

    public Integer getNetworkIdleTime() {
        return (Integer)this.networkIdleTime.basicGetValue();
    }

    public void setNetworkIdleTime(Integer newNetworkIdleTime) {
        Integer oldNetworkIdleTime = (Integer)this.networkIdleTime.basicGetValue();
        this.networkIdleTime.basicSetValue((Object)newNetworkIdleTime);
        boolean oldNetworkIdleTimeESet = this.networkIdleTimeESet;
        this.networkIdleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldNetworkIdleTime, (Object)newNetworkIdleTime, !oldNetworkIdleTimeESet));
        }
    }

    public void unsetNetworkIdleTime() {
        Integer oldNetworkIdleTime = (Integer)this.networkIdleTime.basicGetValue();
        boolean oldNetworkIdleTimeESet = this.networkIdleTimeESet;
        this.networkIdleTime = NETWORK_IDLE_TIME_EDEFAULT.clone();
        this.networkIdleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldNetworkIdleTime, (Object)NETWORK_IDLE_TIME_EDEFAULT, oldNetworkIdleTimeESet));
        }
    }

    public boolean isSetNetworkIdleTime() {
        return this.networkIdleTimeESet;
    }

    public Integer getNetworkManagementVectorLength() {
        return (Integer)this.networkManagementVectorLength.basicGetValue();
    }

    public void setNetworkManagementVectorLength(Integer newNetworkManagementVectorLength) {
        Integer oldNetworkManagementVectorLength = (Integer)this.networkManagementVectorLength.basicGetValue();
        this.networkManagementVectorLength.basicSetValue((Object)newNetworkManagementVectorLength);
        boolean oldNetworkManagementVectorLengthESet = this.networkManagementVectorLengthESet;
        this.networkManagementVectorLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldNetworkManagementVectorLength, (Object)newNetworkManagementVectorLength, !oldNetworkManagementVectorLengthESet));
        }
    }

    public void unsetNetworkManagementVectorLength() {
        Integer oldNetworkManagementVectorLength = (Integer)this.networkManagementVectorLength.basicGetValue();
        boolean oldNetworkManagementVectorLengthESet = this.networkManagementVectorLengthESet;
        this.networkManagementVectorLength = NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT.clone();
        this.networkManagementVectorLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldNetworkManagementVectorLength, (Object)NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT, oldNetworkManagementVectorLengthESet));
        }
    }

    public boolean isSetNetworkManagementVectorLength() {
        return this.networkManagementVectorLengthESet;
    }

    public Integer getNumberOfMinislots() {
        return (Integer)this.numberOfMinislots.basicGetValue();
    }

    public void setNumberOfMinislots(Integer newNumberOfMinislots) {
        Integer oldNumberOfMinislots = (Integer)this.numberOfMinislots.basicGetValue();
        this.numberOfMinislots.basicSetValue((Object)newNumberOfMinislots);
        boolean oldNumberOfMinislotsESet = this.numberOfMinislotsESet;
        this.numberOfMinislotsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNumberOfMinislots, (Object)newNumberOfMinislots, !oldNumberOfMinislotsESet));
        }
    }

    public void unsetNumberOfMinislots() {
        Integer oldNumberOfMinislots = (Integer)this.numberOfMinislots.basicGetValue();
        boolean oldNumberOfMinislotsESet = this.numberOfMinislotsESet;
        this.numberOfMinislots = NUMBER_OF_MINISLOTS_EDEFAULT.clone();
        this.numberOfMinislotsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNumberOfMinislots, (Object)NUMBER_OF_MINISLOTS_EDEFAULT, oldNumberOfMinislotsESet));
        }
    }

    public boolean isSetNumberOfMinislots() {
        return this.numberOfMinislotsESet;
    }

    public Integer getNumberOfStaticSlots() {
        return (Integer)this.numberOfStaticSlots.basicGetValue();
    }

    public void setNumberOfStaticSlots(Integer newNumberOfStaticSlots) {
        Integer oldNumberOfStaticSlots = (Integer)this.numberOfStaticSlots.basicGetValue();
        this.numberOfStaticSlots.basicSetValue((Object)newNumberOfStaticSlots);
        boolean oldNumberOfStaticSlotsESet = this.numberOfStaticSlotsESet;
        this.numberOfStaticSlotsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldNumberOfStaticSlots, (Object)newNumberOfStaticSlots, !oldNumberOfStaticSlotsESet));
        }
    }

    public void unsetNumberOfStaticSlots() {
        Integer oldNumberOfStaticSlots = (Integer)this.numberOfStaticSlots.basicGetValue();
        boolean oldNumberOfStaticSlotsESet = this.numberOfStaticSlotsESet;
        this.numberOfStaticSlots = NUMBER_OF_STATIC_SLOTS_EDEFAULT.clone();
        this.numberOfStaticSlotsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldNumberOfStaticSlots, (Object)NUMBER_OF_STATIC_SLOTS_EDEFAULT, oldNumberOfStaticSlotsESet));
        }
    }

    public boolean isSetNumberOfStaticSlots() {
        return this.numberOfStaticSlotsESet;
    }

    public Integer getOffsetCorrectionStart() {
        return (Integer)this.offsetCorrectionStart.basicGetValue();
    }

    public void setOffsetCorrectionStart(Integer newOffsetCorrectionStart) {
        Integer oldOffsetCorrectionStart = (Integer)this.offsetCorrectionStart.basicGetValue();
        this.offsetCorrectionStart.basicSetValue((Object)newOffsetCorrectionStart);
        boolean oldOffsetCorrectionStartESet = this.offsetCorrectionStartESet;
        this.offsetCorrectionStartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldOffsetCorrectionStart, (Object)newOffsetCorrectionStart, !oldOffsetCorrectionStartESet));
        }
    }

    public void unsetOffsetCorrectionStart() {
        Integer oldOffsetCorrectionStart = (Integer)this.offsetCorrectionStart.basicGetValue();
        boolean oldOffsetCorrectionStartESet = this.offsetCorrectionStartESet;
        this.offsetCorrectionStart = OFFSET_CORRECTION_START_EDEFAULT.clone();
        this.offsetCorrectionStartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldOffsetCorrectionStart, (Object)OFFSET_CORRECTION_START_EDEFAULT, oldOffsetCorrectionStartESet));
        }
    }

    public boolean isSetOffsetCorrectionStart() {
        return this.offsetCorrectionStartESet;
    }

    public Integer getPayloadLengthStatic() {
        return (Integer)this.payloadLengthStatic.basicGetValue();
    }

    public void setPayloadLengthStatic(Integer newPayloadLengthStatic) {
        Integer oldPayloadLengthStatic = (Integer)this.payloadLengthStatic.basicGetValue();
        this.payloadLengthStatic.basicSetValue((Object)newPayloadLengthStatic);
        boolean oldPayloadLengthStaticESet = this.payloadLengthStaticESet;
        this.payloadLengthStaticESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldPayloadLengthStatic, (Object)newPayloadLengthStatic, !oldPayloadLengthStaticESet));
        }
    }

    public void unsetPayloadLengthStatic() {
        Integer oldPayloadLengthStatic = (Integer)this.payloadLengthStatic.basicGetValue();
        boolean oldPayloadLengthStaticESet = this.payloadLengthStaticESet;
        this.payloadLengthStatic = PAYLOAD_LENGTH_STATIC_EDEFAULT.clone();
        this.payloadLengthStaticESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldPayloadLengthStatic, (Object)PAYLOAD_LENGTH_STATIC_EDEFAULT, oldPayloadLengthStaticESet));
        }
    }

    public boolean isSetPayloadLengthStatic() {
        return this.payloadLengthStaticESet;
    }

    public Integer getSafetyMargin() {
        return (Integer)this.safetyMargin.basicGetValue();
    }

    public void setSafetyMargin(Integer newSafetyMargin) {
        Integer oldSafetyMargin = (Integer)this.safetyMargin.basicGetValue();
        this.safetyMargin.basicSetValue((Object)newSafetyMargin);
        boolean oldSafetyMarginESet = this.safetyMarginESet;
        this.safetyMarginESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldSafetyMargin, (Object)newSafetyMargin, !oldSafetyMarginESet));
        }
    }

    public void unsetSafetyMargin() {
        Integer oldSafetyMargin = (Integer)this.safetyMargin.basicGetValue();
        boolean oldSafetyMarginESet = this.safetyMarginESet;
        this.safetyMargin = SAFETY_MARGIN_EDEFAULT.clone();
        this.safetyMarginESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldSafetyMargin, (Object)SAFETY_MARGIN_EDEFAULT, oldSafetyMarginESet));
        }
    }

    public boolean isSetSafetyMargin() {
        return this.safetyMarginESet;
    }

    public Double getSampleClockPeriod() {
        return this.sampleClockPeriod;
    }

    public void setSampleClockPeriod(Double newSampleClockPeriod) {
        Double oldSampleClockPeriod = this.sampleClockPeriod;
        this.sampleClockPeriod = newSampleClockPeriod;
        boolean oldSampleClockPeriodESet = this.sampleClockPeriodESet;
        this.sampleClockPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldSampleClockPeriod, (Object)this.sampleClockPeriod, !oldSampleClockPeriodESet));
        }
    }

    public void unsetSampleClockPeriod() {
        Double oldSampleClockPeriod = this.sampleClockPeriod;
        boolean oldSampleClockPeriodESet = this.sampleClockPeriodESet;
        this.sampleClockPeriod = SAMPLE_CLOCK_PERIOD_EDEFAULT;
        this.sampleClockPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldSampleClockPeriod, (Object)SAMPLE_CLOCK_PERIOD_EDEFAULT, oldSampleClockPeriodESet));
        }
    }

    public boolean isSetSampleClockPeriod() {
        return this.sampleClockPeriodESet;
    }

    public Integer getStaticSlotDuration() {
        return (Integer)this.staticSlotDuration.basicGetValue();
    }

    public void setStaticSlotDuration(Integer newStaticSlotDuration) {
        Integer oldStaticSlotDuration = (Integer)this.staticSlotDuration.basicGetValue();
        this.staticSlotDuration.basicSetValue((Object)newStaticSlotDuration);
        boolean oldStaticSlotDurationESet = this.staticSlotDurationESet;
        this.staticSlotDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldStaticSlotDuration, (Object)newStaticSlotDuration, !oldStaticSlotDurationESet));
        }
    }

    public void unsetStaticSlotDuration() {
        Integer oldStaticSlotDuration = (Integer)this.staticSlotDuration.basicGetValue();
        boolean oldStaticSlotDurationESet = this.staticSlotDurationESet;
        this.staticSlotDuration = STATIC_SLOT_DURATION_EDEFAULT.clone();
        this.staticSlotDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldStaticSlotDuration, (Object)STATIC_SLOT_DURATION_EDEFAULT, oldStaticSlotDurationESet));
        }
    }

    public boolean isSetStaticSlotDuration() {
        return this.staticSlotDurationESet;
    }

    public Integer getSymbolWindow() {
        return (Integer)this.symbolWindow.basicGetValue();
    }

    public void setSymbolWindow(Integer newSymbolWindow) {
        Integer oldSymbolWindow = (Integer)this.symbolWindow.basicGetValue();
        this.symbolWindow.basicSetValue((Object)newSymbolWindow);
        boolean oldSymbolWindowESet = this.symbolWindowESet;
        this.symbolWindowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldSymbolWindow, (Object)newSymbolWindow, !oldSymbolWindowESet));
        }
    }

    public void unsetSymbolWindow() {
        Integer oldSymbolWindow = (Integer)this.symbolWindow.basicGetValue();
        boolean oldSymbolWindowESet = this.symbolWindowESet;
        this.symbolWindow = SYMBOL_WINDOW_EDEFAULT.clone();
        this.symbolWindowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldSymbolWindow, (Object)SYMBOL_WINDOW_EDEFAULT, oldSymbolWindowESet));
        }
    }

    public boolean isSetSymbolWindow() {
        return this.symbolWindowESet;
    }

    public Integer getSymbolWindowActionPointOffset() {
        return (Integer)this.symbolWindowActionPointOffset.basicGetValue();
    }

    public void setSymbolWindowActionPointOffset(Integer newSymbolWindowActionPointOffset) {
        Integer oldSymbolWindowActionPointOffset = (Integer)this.symbolWindowActionPointOffset.basicGetValue();
        this.symbolWindowActionPointOffset.basicSetValue((Object)newSymbolWindowActionPointOffset);
        boolean oldSymbolWindowActionPointOffsetESet = this.symbolWindowActionPointOffsetESet;
        this.symbolWindowActionPointOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldSymbolWindowActionPointOffset, (Object)newSymbolWindowActionPointOffset, !oldSymbolWindowActionPointOffsetESet));
        }
    }

    public void unsetSymbolWindowActionPointOffset() {
        Integer oldSymbolWindowActionPointOffset = (Integer)this.symbolWindowActionPointOffset.basicGetValue();
        boolean oldSymbolWindowActionPointOffsetESet = this.symbolWindowActionPointOffsetESet;
        this.symbolWindowActionPointOffset = SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT.clone();
        this.symbolWindowActionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldSymbolWindowActionPointOffset, (Object)SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT, oldSymbolWindowActionPointOffsetESet));
        }
    }

    public boolean isSetSymbolWindowActionPointOffset() {
        return this.symbolWindowActionPointOffsetESet;
    }

    public Integer getSyncFrameIdCountMax() {
        return (Integer)this.syncFrameIdCountMax.basicGetValue();
    }

    public void setSyncFrameIdCountMax(Integer newSyncFrameIdCountMax) {
        Integer oldSyncFrameIdCountMax = (Integer)this.syncFrameIdCountMax.basicGetValue();
        this.syncFrameIdCountMax.basicSetValue((Object)newSyncFrameIdCountMax);
        boolean oldSyncFrameIdCountMaxESet = this.syncFrameIdCountMaxESet;
        this.syncFrameIdCountMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldSyncFrameIdCountMax, (Object)newSyncFrameIdCountMax, !oldSyncFrameIdCountMaxESet));
        }
    }

    public void unsetSyncFrameIdCountMax() {
        Integer oldSyncFrameIdCountMax = (Integer)this.syncFrameIdCountMax.basicGetValue();
        boolean oldSyncFrameIdCountMaxESet = this.syncFrameIdCountMaxESet;
        this.syncFrameIdCountMax = SYNC_FRAME_ID_COUNT_MAX_EDEFAULT.clone();
        this.syncFrameIdCountMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldSyncFrameIdCountMax, (Object)SYNC_FRAME_ID_COUNT_MAX_EDEFAULT, oldSyncFrameIdCountMaxESet));
        }
    }

    public boolean isSetSyncFrameIdCountMax() {
        return this.syncFrameIdCountMaxESet;
    }

    public Integer getTransmissionStartSequenceDuration() {
        return (Integer)this.transmissionStartSequenceDuration.basicGetValue();
    }

    public void setTransmissionStartSequenceDuration(Integer newTransmissionStartSequenceDuration) {
        Integer oldTransmissionStartSequenceDuration = (Integer)this.transmissionStartSequenceDuration.basicGetValue();
        this.transmissionStartSequenceDuration.basicSetValue((Object)newTransmissionStartSequenceDuration);
        boolean oldTransmissionStartSequenceDurationESet = this.transmissionStartSequenceDurationESet;
        this.transmissionStartSequenceDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldTransmissionStartSequenceDuration, (Object)newTransmissionStartSequenceDuration, !oldTransmissionStartSequenceDurationESet));
        }
    }

    public void unsetTransmissionStartSequenceDuration() {
        Integer oldTransmissionStartSequenceDuration = (Integer)this.transmissionStartSequenceDuration.basicGetValue();
        boolean oldTransmissionStartSequenceDurationESet = this.transmissionStartSequenceDurationESet;
        this.transmissionStartSequenceDuration = TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT.clone();
        this.transmissionStartSequenceDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldTransmissionStartSequenceDuration, (Object)TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT, oldTransmissionStartSequenceDurationESet));
        }
    }

    public boolean isSetTransmissionStartSequenceDuration() {
        return this.transmissionStartSequenceDurationESet;
    }

    public Integer getWakeupRxIdle() {
        return (Integer)this.wakeupRxIdle.basicGetValue();
    }

    public void setWakeupRxIdle(Integer newWakeupRxIdle) {
        Integer oldWakeupRxIdle = (Integer)this.wakeupRxIdle.basicGetValue();
        this.wakeupRxIdle.basicSetValue((Object)newWakeupRxIdle);
        boolean oldWakeupRxIdleESet = this.wakeupRxIdleESet;
        this.wakeupRxIdleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldWakeupRxIdle, (Object)newWakeupRxIdle, !oldWakeupRxIdleESet));
        }
    }

    public void unsetWakeupRxIdle() {
        Integer oldWakeupRxIdle = (Integer)this.wakeupRxIdle.basicGetValue();
        boolean oldWakeupRxIdleESet = this.wakeupRxIdleESet;
        this.wakeupRxIdle = WAKEUP_RX_IDLE_EDEFAULT.clone();
        this.wakeupRxIdleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldWakeupRxIdle, (Object)WAKEUP_RX_IDLE_EDEFAULT, oldWakeupRxIdleESet));
        }
    }

    public boolean isSetWakeupRxIdle() {
        return this.wakeupRxIdleESet;
    }

    public Integer getWakeupRxLow() {
        return (Integer)this.wakeupRxLow.basicGetValue();
    }

    public void setWakeupRxLow(Integer newWakeupRxLow) {
        Integer oldWakeupRxLow = (Integer)this.wakeupRxLow.basicGetValue();
        this.wakeupRxLow.basicSetValue((Object)newWakeupRxLow);
        boolean oldWakeupRxLowESet = this.wakeupRxLowESet;
        this.wakeupRxLowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldWakeupRxLow, (Object)newWakeupRxLow, !oldWakeupRxLowESet));
        }
    }

    public void unsetWakeupRxLow() {
        Integer oldWakeupRxLow = (Integer)this.wakeupRxLow.basicGetValue();
        boolean oldWakeupRxLowESet = this.wakeupRxLowESet;
        this.wakeupRxLow = WAKEUP_RX_LOW_EDEFAULT.clone();
        this.wakeupRxLowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldWakeupRxLow, (Object)WAKEUP_RX_LOW_EDEFAULT, oldWakeupRxLowESet));
        }
    }

    public boolean isSetWakeupRxLow() {
        return this.wakeupRxLowESet;
    }

    public Integer getWakeupRxWindow() {
        return (Integer)this.wakeupRxWindow.basicGetValue();
    }

    public void setWakeupRxWindow(Integer newWakeupRxWindow) {
        Integer oldWakeupRxWindow = (Integer)this.wakeupRxWindow.basicGetValue();
        this.wakeupRxWindow.basicSetValue((Object)newWakeupRxWindow);
        boolean oldWakeupRxWindowESet = this.wakeupRxWindowESet;
        this.wakeupRxWindowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldWakeupRxWindow, (Object)newWakeupRxWindow, !oldWakeupRxWindowESet));
        }
    }

    public void unsetWakeupRxWindow() {
        Integer oldWakeupRxWindow = (Integer)this.wakeupRxWindow.basicGetValue();
        boolean oldWakeupRxWindowESet = this.wakeupRxWindowESet;
        this.wakeupRxWindow = WAKEUP_RX_WINDOW_EDEFAULT.clone();
        this.wakeupRxWindowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldWakeupRxWindow, (Object)WAKEUP_RX_WINDOW_EDEFAULT, oldWakeupRxWindowESet));
        }
    }

    public boolean isSetWakeupRxWindow() {
        return this.wakeupRxWindowESet;
    }

    public Integer getWakeupTxActive() {
        return (Integer)this.wakeupTxActive.basicGetValue();
    }

    public void setWakeupTxActive(Integer newWakeupTxActive) {
        Integer oldWakeupTxActive = (Integer)this.wakeupTxActive.basicGetValue();
        this.wakeupTxActive.basicSetValue((Object)newWakeupTxActive);
        boolean oldWakeupTxActiveESet = this.wakeupTxActiveESet;
        this.wakeupTxActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldWakeupTxActive, (Object)newWakeupTxActive, !oldWakeupTxActiveESet));
        }
    }

    public void unsetWakeupTxActive() {
        Integer oldWakeupTxActive = (Integer)this.wakeupTxActive.basicGetValue();
        boolean oldWakeupTxActiveESet = this.wakeupTxActiveESet;
        this.wakeupTxActive = WAKEUP_TX_ACTIVE_EDEFAULT.clone();
        this.wakeupTxActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldWakeupTxActive, (Object)WAKEUP_TX_ACTIVE_EDEFAULT, oldWakeupTxActiveESet));
        }
    }

    public boolean isSetWakeupTxActive() {
        return this.wakeupTxActiveESet;
    }

    public Integer getWakeupTxIdle() {
        return (Integer)this.wakeupTxIdle.basicGetValue();
    }

    public void setWakeupTxIdle(Integer newWakeupTxIdle) {
        Integer oldWakeupTxIdle = (Integer)this.wakeupTxIdle.basicGetValue();
        this.wakeupTxIdle.basicSetValue((Object)newWakeupTxIdle);
        boolean oldWakeupTxIdleESet = this.wakeupTxIdleESet;
        this.wakeupTxIdleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldWakeupTxIdle, (Object)newWakeupTxIdle, !oldWakeupTxIdleESet));
        }
    }

    public void unsetWakeupTxIdle() {
        Integer oldWakeupTxIdle = (Integer)this.wakeupTxIdle.basicGetValue();
        boolean oldWakeupTxIdleESet = this.wakeupTxIdleESet;
        this.wakeupTxIdle = WAKEUP_TX_IDLE_EDEFAULT.clone();
        this.wakeupTxIdleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldWakeupTxIdle, (Object)WAKEUP_TX_IDLE_EDEFAULT, oldWakeupTxIdleESet));
        }
    }

    public boolean isSetWakeupTxIdle() {
        return this.wakeupTxIdleESet;
    }

    public IntegerDatatype getActionPointOffsetData() {
        return this.actionPointOffset.clone();
    }

    public void setActionPointOffsetData(IntegerDatatype newActionPointOffset) {
        this.actionPointOffset.setRadix((int)newActionPointOffset.getRadix());
        this.actionPointOffset.setNoOfDigits((int)newActionPointOffset.getNoOfDigits());
        this.setActionPointOffset(newActionPointOffset.getValue());
    }

    public IntegerDatatype getCasRxLowMaxData() {
        return this.casRxLowMax.clone();
    }

    public void setCasRxLowMaxData(IntegerDatatype newCasRxLowMax) {
        this.casRxLowMax.setRadix((int)newCasRxLowMax.getRadix());
        this.casRxLowMax.setNoOfDigits((int)newCasRxLowMax.getNoOfDigits());
        this.setCasRxLowMax(newCasRxLowMax.getValue());
    }

    public IntegerDatatype getColdStartAttemptsData() {
        return this.coldStartAttempts.clone();
    }

    public void setColdStartAttemptsData(IntegerDatatype newColdStartAttempts) {
        this.coldStartAttempts.setRadix((int)newColdStartAttempts.getRadix());
        this.coldStartAttempts.setNoOfDigits((int)newColdStartAttempts.getNoOfDigits());
        this.setColdStartAttempts(newColdStartAttempts.getValue());
    }

    public IntegerDatatype getCycleCountMaxData() {
        return this.cycleCountMax.clone();
    }

    public void setCycleCountMaxData(IntegerDatatype newCycleCountMax) {
        this.cycleCountMax.setRadix((int)newCycleCountMax.getRadix());
        this.cycleCountMax.setNoOfDigits((int)newCycleCountMax.getNoOfDigits());
        this.setCycleCountMax(newCycleCountMax.getValue());
    }

    public IntegerDatatype getDynamicSlotIdlePhaseData() {
        return this.dynamicSlotIdlePhase.clone();
    }

    public void setDynamicSlotIdlePhaseData(IntegerDatatype newDynamicSlotIdlePhase) {
        this.dynamicSlotIdlePhase.setRadix((int)newDynamicSlotIdlePhase.getRadix());
        this.dynamicSlotIdlePhase.setNoOfDigits((int)newDynamicSlotIdlePhase.getNoOfDigits());
        this.setDynamicSlotIdlePhase(newDynamicSlotIdlePhase.getValue());
    }

    public IntegerDatatype getIgnoreAfterTxData() {
        return this.ignoreAfterTx.clone();
    }

    public void setIgnoreAfterTxData(IntegerDatatype newIgnoreAfterTx) {
        this.ignoreAfterTx.setRadix((int)newIgnoreAfterTx.getRadix());
        this.ignoreAfterTx.setNoOfDigits((int)newIgnoreAfterTx.getNoOfDigits());
        this.setIgnoreAfterTx(newIgnoreAfterTx.getValue());
    }

    public IntegerDatatype getListenNoiseData() {
        return this.listenNoise.clone();
    }

    public void setListenNoiseData(IntegerDatatype newListenNoise) {
        this.listenNoise.setRadix((int)newListenNoise.getRadix());
        this.listenNoise.setNoOfDigits((int)newListenNoise.getNoOfDigits());
        this.setListenNoise(newListenNoise.getValue());
    }

    public IntegerDatatype getMacroPerCycleData() {
        return this.macroPerCycle.clone();
    }

    public void setMacroPerCycleData(IntegerDatatype newMacroPerCycle) {
        this.macroPerCycle.setRadix((int)newMacroPerCycle.getRadix());
        this.macroPerCycle.setNoOfDigits((int)newMacroPerCycle.getNoOfDigits());
        this.setMacroPerCycle(newMacroPerCycle.getValue());
    }

    public IntegerDatatype getMaxWithoutClockCorrectionFatalData() {
        return this.maxWithoutClockCorrectionFatal.clone();
    }

    public void setMaxWithoutClockCorrectionFatalData(IntegerDatatype newMaxWithoutClockCorrectionFatal) {
        this.maxWithoutClockCorrectionFatal.setRadix((int)newMaxWithoutClockCorrectionFatal.getRadix());
        this.maxWithoutClockCorrectionFatal.setNoOfDigits((int)newMaxWithoutClockCorrectionFatal.getNoOfDigits());
        this.setMaxWithoutClockCorrectionFatal(newMaxWithoutClockCorrectionFatal.getValue());
    }

    public IntegerDatatype getMaxWithoutClockCorrectionPassiveData() {
        return this.maxWithoutClockCorrectionPassive.clone();
    }

    public void setMaxWithoutClockCorrectionPassiveData(IntegerDatatype newMaxWithoutClockCorrectionPassive) {
        this.maxWithoutClockCorrectionPassive.setRadix((int)newMaxWithoutClockCorrectionPassive.getRadix());
        this.maxWithoutClockCorrectionPassive.setNoOfDigits((int)newMaxWithoutClockCorrectionPassive.getNoOfDigits());
        this.setMaxWithoutClockCorrectionPassive(newMaxWithoutClockCorrectionPassive.getValue());
    }

    public IntegerDatatype getMinislotActionPointOffsetData() {
        return this.minislotActionPointOffset.clone();
    }

    public void setMinislotActionPointOffsetData(IntegerDatatype newMinislotActionPointOffset) {
        this.minislotActionPointOffset.setRadix((int)newMinislotActionPointOffset.getRadix());
        this.minislotActionPointOffset.setNoOfDigits((int)newMinislotActionPointOffset.getNoOfDigits());
        this.setMinislotActionPointOffset(newMinislotActionPointOffset.getValue());
    }

    public IntegerDatatype getMinislotDurationData() {
        return this.minislotDuration.clone();
    }

    public void setMinislotDurationData(IntegerDatatype newMinislotDuration) {
        this.minislotDuration.setRadix((int)newMinislotDuration.getRadix());
        this.minislotDuration.setNoOfDigits((int)newMinislotDuration.getNoOfDigits());
        this.setMinislotDuration(newMinislotDuration.getValue());
    }

    public IntegerDatatype getNetworkIdleTimeData() {
        return this.networkIdleTime.clone();
    }

    public void setNetworkIdleTimeData(IntegerDatatype newNetworkIdleTime) {
        this.networkIdleTime.setRadix((int)newNetworkIdleTime.getRadix());
        this.networkIdleTime.setNoOfDigits((int)newNetworkIdleTime.getNoOfDigits());
        this.setNetworkIdleTime(newNetworkIdleTime.getValue());
    }

    public IntegerDatatype getNetworkManagementVectorLengthData() {
        return this.networkManagementVectorLength.clone();
    }

    public void setNetworkManagementVectorLengthData(IntegerDatatype newNetworkManagementVectorLength) {
        this.networkManagementVectorLength.setRadix((int)newNetworkManagementVectorLength.getRadix());
        this.networkManagementVectorLength.setNoOfDigits((int)newNetworkManagementVectorLength.getNoOfDigits());
        this.setNetworkManagementVectorLength(newNetworkManagementVectorLength.getValue());
    }

    public IntegerDatatype getNumberOfMinislotsData() {
        return this.numberOfMinislots.clone();
    }

    public void setNumberOfMinislotsData(IntegerDatatype newNumberOfMinislots) {
        this.numberOfMinislots.setRadix((int)newNumberOfMinislots.getRadix());
        this.numberOfMinislots.setNoOfDigits((int)newNumberOfMinislots.getNoOfDigits());
        this.setNumberOfMinislots(newNumberOfMinislots.getValue());
    }

    public IntegerDatatype getNumberOfStaticSlotsData() {
        return this.numberOfStaticSlots.clone();
    }

    public void setNumberOfStaticSlotsData(IntegerDatatype newNumberOfStaticSlots) {
        this.numberOfStaticSlots.setRadix((int)newNumberOfStaticSlots.getRadix());
        this.numberOfStaticSlots.setNoOfDigits((int)newNumberOfStaticSlots.getNoOfDigits());
        this.setNumberOfStaticSlots(newNumberOfStaticSlots.getValue());
    }

    public IntegerDatatype getOffsetCorrectionStartData() {
        return this.offsetCorrectionStart.clone();
    }

    public void setOffsetCorrectionStartData(IntegerDatatype newOffsetCorrectionStart) {
        this.offsetCorrectionStart.setRadix((int)newOffsetCorrectionStart.getRadix());
        this.offsetCorrectionStart.setNoOfDigits((int)newOffsetCorrectionStart.getNoOfDigits());
        this.setOffsetCorrectionStart(newOffsetCorrectionStart.getValue());
    }

    public IntegerDatatype getPayloadLengthStaticData() {
        return this.payloadLengthStatic.clone();
    }

    public void setPayloadLengthStaticData(IntegerDatatype newPayloadLengthStatic) {
        this.payloadLengthStatic.setRadix((int)newPayloadLengthStatic.getRadix());
        this.payloadLengthStatic.setNoOfDigits((int)newPayloadLengthStatic.getNoOfDigits());
        this.setPayloadLengthStatic(newPayloadLengthStatic.getValue());
    }

    public IntegerDatatype getSafetyMarginData() {
        return this.safetyMargin.clone();
    }

    public void setSafetyMarginData(IntegerDatatype newSafetyMargin) {
        this.safetyMargin.setRadix((int)newSafetyMargin.getRadix());
        this.safetyMargin.setNoOfDigits((int)newSafetyMargin.getNoOfDigits());
        this.setSafetyMargin(newSafetyMargin.getValue());
    }

    public IntegerDatatype getStaticSlotDurationData() {
        return this.staticSlotDuration.clone();
    }

    public void setStaticSlotDurationData(IntegerDatatype newStaticSlotDuration) {
        this.staticSlotDuration.setRadix((int)newStaticSlotDuration.getRadix());
        this.staticSlotDuration.setNoOfDigits((int)newStaticSlotDuration.getNoOfDigits());
        this.setStaticSlotDuration(newStaticSlotDuration.getValue());
    }

    public IntegerDatatype getSymbolWindowData() {
        return this.symbolWindow.clone();
    }

    public void setSymbolWindowData(IntegerDatatype newSymbolWindow) {
        this.symbolWindow.setRadix((int)newSymbolWindow.getRadix());
        this.symbolWindow.setNoOfDigits((int)newSymbolWindow.getNoOfDigits());
        this.setSymbolWindow(newSymbolWindow.getValue());
    }

    public IntegerDatatype getSymbolWindowActionPointOffsetData() {
        return this.symbolWindowActionPointOffset.clone();
    }

    public void setSymbolWindowActionPointOffsetData(IntegerDatatype newSymbolWindowActionPointOffset) {
        this.symbolWindowActionPointOffset.setRadix((int)newSymbolWindowActionPointOffset.getRadix());
        this.symbolWindowActionPointOffset.setNoOfDigits((int)newSymbolWindowActionPointOffset.getNoOfDigits());
        this.setSymbolWindowActionPointOffset(newSymbolWindowActionPointOffset.getValue());
    }

    public IntegerDatatype getSyncFrameIdCountMaxData() {
        return this.syncFrameIdCountMax.clone();
    }

    public void setSyncFrameIdCountMaxData(IntegerDatatype newSyncFrameIdCountMax) {
        this.syncFrameIdCountMax.setRadix((int)newSyncFrameIdCountMax.getRadix());
        this.syncFrameIdCountMax.setNoOfDigits((int)newSyncFrameIdCountMax.getNoOfDigits());
        this.setSyncFrameIdCountMax(newSyncFrameIdCountMax.getValue());
    }

    public IntegerDatatype getTransmissionStartSequenceDurationData() {
        return this.transmissionStartSequenceDuration.clone();
    }

    public void setTransmissionStartSequenceDurationData(IntegerDatatype newTransmissionStartSequenceDuration) {
        this.transmissionStartSequenceDuration.setRadix((int)newTransmissionStartSequenceDuration.getRadix());
        this.transmissionStartSequenceDuration.setNoOfDigits((int)newTransmissionStartSequenceDuration.getNoOfDigits());
        this.setTransmissionStartSequenceDuration(newTransmissionStartSequenceDuration.getValue());
    }

    public IntegerDatatype getWakeupRxIdleData() {
        return this.wakeupRxIdle.clone();
    }

    public void setWakeupRxIdleData(IntegerDatatype newWakeupRxIdle) {
        this.wakeupRxIdle.setRadix((int)newWakeupRxIdle.getRadix());
        this.wakeupRxIdle.setNoOfDigits((int)newWakeupRxIdle.getNoOfDigits());
        this.setWakeupRxIdle(newWakeupRxIdle.getValue());
    }

    public IntegerDatatype getWakeupRxLowData() {
        return this.wakeupRxLow.clone();
    }

    public void setWakeupRxLowData(IntegerDatatype newWakeupRxLow) {
        this.wakeupRxLow.setRadix((int)newWakeupRxLow.getRadix());
        this.wakeupRxLow.setNoOfDigits((int)newWakeupRxLow.getNoOfDigits());
        this.setWakeupRxLow(newWakeupRxLow.getValue());
    }

    public IntegerDatatype getWakeupRxWindowData() {
        return this.wakeupRxWindow.clone();
    }

    public void setWakeupRxWindowData(IntegerDatatype newWakeupRxWindow) {
        this.wakeupRxWindow.setRadix((int)newWakeupRxWindow.getRadix());
        this.wakeupRxWindow.setNoOfDigits((int)newWakeupRxWindow.getNoOfDigits());
        this.setWakeupRxWindow(newWakeupRxWindow.getValue());
    }

    public IntegerDatatype getWakeupTxActiveData() {
        return this.wakeupTxActive.clone();
    }

    public void setWakeupTxActiveData(IntegerDatatype newWakeupTxActive) {
        this.wakeupTxActive.setRadix((int)newWakeupTxActive.getRadix());
        this.wakeupTxActive.setNoOfDigits((int)newWakeupTxActive.getNoOfDigits());
        this.setWakeupTxActive(newWakeupTxActive.getValue());
    }

    public IntegerDatatype getWakeupTxIdleData() {
        return this.wakeupTxIdle.clone();
    }

    public void setWakeupTxIdleData(IntegerDatatype newWakeupTxIdle) {
        this.wakeupTxIdle.setRadix((int)newWakeupTxIdle.getRadix());
        this.wakeupTxIdle.setNoOfDigits((int)newWakeupTxIdle.getNoOfDigits());
        this.setWakeupTxIdle(newWakeupTxIdle.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getActionPointOffset();
            }
            case 9: {
                return this.getBit();
            }
            case 10: {
                return this.getCasRxLowMax();
            }
            case 11: {
                return this.getColdStartAttempts();
            }
            case 12: {
                return this.getCycle();
            }
            case 13: {
                return this.getCycleCountMax();
            }
            case 14: {
                return this.getDetectNitError();
            }
            case 15: {
                return this.getDynamicSlotIdlePhase();
            }
            case 16: {
                return this.getIgnoreAfterTx();
            }
            case 17: {
                return this.getListenNoise();
            }
            case 18: {
                return this.getMacroPerCycle();
            }
            case 19: {
                return this.getMacrotickDuration();
            }
            case 20: {
                return this.getMaxWithoutClockCorrectionFatal();
            }
            case 21: {
                return this.getMaxWithoutClockCorrectionPassive();
            }
            case 22: {
                return this.getMinislotActionPointOffset();
            }
            case 23: {
                return this.getMinislotDuration();
            }
            case 24: {
                return this.getNetworkIdleTime();
            }
            case 25: {
                return this.getNetworkManagementVectorLength();
            }
            case 26: {
                return this.getNumberOfMinislots();
            }
            case 27: {
                return this.getNumberOfStaticSlots();
            }
            case 28: {
                return this.getOffsetCorrectionStart();
            }
            case 29: {
                return this.getPayloadLengthStatic();
            }
            case 30: {
                return this.getSafetyMargin();
            }
            case 31: {
                return this.getSampleClockPeriod();
            }
            case 32: {
                return this.getStaticSlotDuration();
            }
            case 33: {
                return this.getSymbolWindow();
            }
            case 34: {
                return this.getSymbolWindowActionPointOffset();
            }
            case 35: {
                return this.getSyncFrameIdCountMax();
            }
            case 36: {
                return this.getTransmissionStartSequenceDuration();
            }
            case 37: {
                return this.getWakeupRxIdle();
            }
            case 38: {
                return this.getWakeupRxLow();
            }
            case 39: {
                return this.getWakeupRxWindow();
            }
            case 40: {
                return this.getWakeupTxActive();
            }
            case 41: {
                return this.getWakeupTxIdle();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setActionPointOffset((Integer)newValue);
                return;
            }
            case 9: {
                this.setBit((Double)newValue);
                return;
            }
            case 10: {
                this.setCasRxLowMax((Integer)newValue);
                return;
            }
            case 11: {
                this.setColdStartAttempts((Integer)newValue);
                return;
            }
            case 12: {
                this.setCycle((Double)newValue);
                return;
            }
            case 13: {
                this.setCycleCountMax((Integer)newValue);
                return;
            }
            case 14: {
                this.setDetectNitError((Boolean)newValue);
                return;
            }
            case 15: {
                this.setDynamicSlotIdlePhase((Integer)newValue);
                return;
            }
            case 16: {
                this.setIgnoreAfterTx((Integer)newValue);
                return;
            }
            case 17: {
                this.setListenNoise((Integer)newValue);
                return;
            }
            case 18: {
                this.setMacroPerCycle((Integer)newValue);
                return;
            }
            case 19: {
                this.setMacrotickDuration((Double)newValue);
                return;
            }
            case 20: {
                this.setMaxWithoutClockCorrectionFatal((Integer)newValue);
                return;
            }
            case 21: {
                this.setMaxWithoutClockCorrectionPassive((Integer)newValue);
                return;
            }
            case 22: {
                this.setMinislotActionPointOffset((Integer)newValue);
                return;
            }
            case 23: {
                this.setMinislotDuration((Integer)newValue);
                return;
            }
            case 24: {
                this.setNetworkIdleTime((Integer)newValue);
                return;
            }
            case 25: {
                this.setNetworkManagementVectorLength((Integer)newValue);
                return;
            }
            case 26: {
                this.setNumberOfMinislots((Integer)newValue);
                return;
            }
            case 27: {
                this.setNumberOfStaticSlots((Integer)newValue);
                return;
            }
            case 28: {
                this.setOffsetCorrectionStart((Integer)newValue);
                return;
            }
            case 29: {
                this.setPayloadLengthStatic((Integer)newValue);
                return;
            }
            case 30: {
                this.setSafetyMargin((Integer)newValue);
                return;
            }
            case 31: {
                this.setSampleClockPeriod((Double)newValue);
                return;
            }
            case 32: {
                this.setStaticSlotDuration((Integer)newValue);
                return;
            }
            case 33: {
                this.setSymbolWindow((Integer)newValue);
                return;
            }
            case 34: {
                this.setSymbolWindowActionPointOffset((Integer)newValue);
                return;
            }
            case 35: {
                this.setSyncFrameIdCountMax((Integer)newValue);
                return;
            }
            case 36: {
                this.setTransmissionStartSequenceDuration((Integer)newValue);
                return;
            }
            case 37: {
                this.setWakeupRxIdle((Integer)newValue);
                return;
            }
            case 38: {
                this.setWakeupRxLow((Integer)newValue);
                return;
            }
            case 39: {
                this.setWakeupRxWindow((Integer)newValue);
                return;
            }
            case 40: {
                this.setWakeupTxActive((Integer)newValue);
                return;
            }
            case 41: {
                this.setWakeupTxIdle((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.unsetActionPointOffset();
                return;
            }
            case 9: {
                this.unsetBit();
                return;
            }
            case 10: {
                this.unsetCasRxLowMax();
                return;
            }
            case 11: {
                this.unsetColdStartAttempts();
                return;
            }
            case 12: {
                this.unsetCycle();
                return;
            }
            case 13: {
                this.unsetCycleCountMax();
                return;
            }
            case 14: {
                this.unsetDetectNitError();
                return;
            }
            case 15: {
                this.unsetDynamicSlotIdlePhase();
                return;
            }
            case 16: {
                this.unsetIgnoreAfterTx();
                return;
            }
            case 17: {
                this.unsetListenNoise();
                return;
            }
            case 18: {
                this.unsetMacroPerCycle();
                return;
            }
            case 19: {
                this.unsetMacrotickDuration();
                return;
            }
            case 20: {
                this.unsetMaxWithoutClockCorrectionFatal();
                return;
            }
            case 21: {
                this.unsetMaxWithoutClockCorrectionPassive();
                return;
            }
            case 22: {
                this.unsetMinislotActionPointOffset();
                return;
            }
            case 23: {
                this.unsetMinislotDuration();
                return;
            }
            case 24: {
                this.unsetNetworkIdleTime();
                return;
            }
            case 25: {
                this.unsetNetworkManagementVectorLength();
                return;
            }
            case 26: {
                this.unsetNumberOfMinislots();
                return;
            }
            case 27: {
                this.unsetNumberOfStaticSlots();
                return;
            }
            case 28: {
                this.unsetOffsetCorrectionStart();
                return;
            }
            case 29: {
                this.unsetPayloadLengthStatic();
                return;
            }
            case 30: {
                this.unsetSafetyMargin();
                return;
            }
            case 31: {
                this.unsetSampleClockPeriod();
                return;
            }
            case 32: {
                this.unsetStaticSlotDuration();
                return;
            }
            case 33: {
                this.unsetSymbolWindow();
                return;
            }
            case 34: {
                this.unsetSymbolWindowActionPointOffset();
                return;
            }
            case 35: {
                this.unsetSyncFrameIdCountMax();
                return;
            }
            case 36: {
                this.unsetTransmissionStartSequenceDuration();
                return;
            }
            case 37: {
                this.unsetWakeupRxIdle();
                return;
            }
            case 38: {
                this.unsetWakeupRxLow();
                return;
            }
            case 39: {
                this.unsetWakeupRxWindow();
                return;
            }
            case 40: {
                this.unsetWakeupTxActive();
                return;
            }
            case 41: {
                this.unsetWakeupTxIdle();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.isSetActionPointOffset();
            }
            case 9: {
                return this.isSetBit();
            }
            case 10: {
                return this.isSetCasRxLowMax();
            }
            case 11: {
                return this.isSetColdStartAttempts();
            }
            case 12: {
                return this.isSetCycle();
            }
            case 13: {
                return this.isSetCycleCountMax();
            }
            case 14: {
                return this.isSetDetectNitError();
            }
            case 15: {
                return this.isSetDynamicSlotIdlePhase();
            }
            case 16: {
                return this.isSetIgnoreAfterTx();
            }
            case 17: {
                return this.isSetListenNoise();
            }
            case 18: {
                return this.isSetMacroPerCycle();
            }
            case 19: {
                return this.isSetMacrotickDuration();
            }
            case 20: {
                return this.isSetMaxWithoutClockCorrectionFatal();
            }
            case 21: {
                return this.isSetMaxWithoutClockCorrectionPassive();
            }
            case 22: {
                return this.isSetMinislotActionPointOffset();
            }
            case 23: {
                return this.isSetMinislotDuration();
            }
            case 24: {
                return this.isSetNetworkIdleTime();
            }
            case 25: {
                return this.isSetNetworkManagementVectorLength();
            }
            case 26: {
                return this.isSetNumberOfMinislots();
            }
            case 27: {
                return this.isSetNumberOfStaticSlots();
            }
            case 28: {
                return this.isSetOffsetCorrectionStart();
            }
            case 29: {
                return this.isSetPayloadLengthStatic();
            }
            case 30: {
                return this.isSetSafetyMargin();
            }
            case 31: {
                return this.isSetSampleClockPeriod();
            }
            case 32: {
                return this.isSetStaticSlotDuration();
            }
            case 33: {
                return this.isSetSymbolWindow();
            }
            case 34: {
                return this.isSetSymbolWindowActionPointOffset();
            }
            case 35: {
                return this.isSetSyncFrameIdCountMax();
            }
            case 36: {
                return this.isSetTransmissionStartSequenceDuration();
            }
            case 37: {
                return this.isSetWakeupRxIdle();
            }
            case 38: {
                return this.isSetWakeupRxLow();
            }
            case 39: {
                return this.isSetWakeupRxWindow();
            }
            case 40: {
                return this.isSetWakeupTxActive();
            }
            case 41: {
                return this.isSetWakeupTxIdle();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (actionPointOffset: ");
        if (this.actionPointOffsetESet) {
            result.append(this.actionPointOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", bit: ");
        if (this.bitESet) {
            result.append(this.bit);
        } else {
            result.append("<unset>");
        }
        result.append(", casRxLowMax: ");
        if (this.casRxLowMaxESet) {
            result.append(this.casRxLowMax);
        } else {
            result.append("<unset>");
        }
        result.append(", coldStartAttempts: ");
        if (this.coldStartAttemptsESet) {
            result.append(this.coldStartAttempts);
        } else {
            result.append("<unset>");
        }
        result.append(", cycle: ");
        if (this.cycleESet) {
            result.append(this.cycle);
        } else {
            result.append("<unset>");
        }
        result.append(", cycleCountMax: ");
        if (this.cycleCountMaxESet) {
            result.append(this.cycleCountMax);
        } else {
            result.append("<unset>");
        }
        result.append(", detectNitError: ");
        if (this.detectNitErrorESet) {
            result.append(this.detectNitError);
        } else {
            result.append("<unset>");
        }
        result.append(", dynamicSlotIdlePhase: ");
        if (this.dynamicSlotIdlePhaseESet) {
            result.append(this.dynamicSlotIdlePhase);
        } else {
            result.append("<unset>");
        }
        result.append(", ignoreAfterTx: ");
        if (this.ignoreAfterTxESet) {
            result.append(this.ignoreAfterTx);
        } else {
            result.append("<unset>");
        }
        result.append(", listenNoise: ");
        if (this.listenNoiseESet) {
            result.append(this.listenNoise);
        } else {
            result.append("<unset>");
        }
        result.append(", macroPerCycle: ");
        if (this.macroPerCycleESet) {
            result.append(this.macroPerCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", macrotickDuration: ");
        if (this.macrotickDurationESet) {
            result.append(this.macrotickDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", maxWithoutClockCorrectionFatal: ");
        if (this.maxWithoutClockCorrectionFatalESet) {
            result.append(this.maxWithoutClockCorrectionFatal);
        } else {
            result.append("<unset>");
        }
        result.append(", maxWithoutClockCorrectionPassive: ");
        if (this.maxWithoutClockCorrectionPassiveESet) {
            result.append(this.maxWithoutClockCorrectionPassive);
        } else {
            result.append("<unset>");
        }
        result.append(", minislotActionPointOffset: ");
        if (this.minislotActionPointOffsetESet) {
            result.append(this.minislotActionPointOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", minislotDuration: ");
        if (this.minislotDurationESet) {
            result.append(this.minislotDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", networkIdleTime: ");
        if (this.networkIdleTimeESet) {
            result.append(this.networkIdleTime);
        } else {
            result.append("<unset>");
        }
        result.append(", networkManagementVectorLength: ");
        if (this.networkManagementVectorLengthESet) {
            result.append(this.networkManagementVectorLength);
        } else {
            result.append("<unset>");
        }
        result.append(", numberOfMinislots: ");
        if (this.numberOfMinislotsESet) {
            result.append(this.numberOfMinislots);
        } else {
            result.append("<unset>");
        }
        result.append(", numberOfStaticSlots: ");
        if (this.numberOfStaticSlotsESet) {
            result.append(this.numberOfStaticSlots);
        } else {
            result.append("<unset>");
        }
        result.append(", offsetCorrectionStart: ");
        if (this.offsetCorrectionStartESet) {
            result.append(this.offsetCorrectionStart);
        } else {
            result.append("<unset>");
        }
        result.append(", payloadLengthStatic: ");
        if (this.payloadLengthStaticESet) {
            result.append(this.payloadLengthStatic);
        } else {
            result.append("<unset>");
        }
        result.append(", safetyMargin: ");
        if (this.safetyMarginESet) {
            result.append(this.safetyMargin);
        } else {
            result.append("<unset>");
        }
        result.append(", sampleClockPeriod: ");
        if (this.sampleClockPeriodESet) {
            result.append(this.sampleClockPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(", staticSlotDuration: ");
        if (this.staticSlotDurationESet) {
            result.append(this.staticSlotDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", symbolWindow: ");
        if (this.symbolWindowESet) {
            result.append(this.symbolWindow);
        } else {
            result.append("<unset>");
        }
        result.append(", symbolWindowActionPointOffset: ");
        if (this.symbolWindowActionPointOffsetESet) {
            result.append(this.symbolWindowActionPointOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", syncFrameIdCountMax: ");
        if (this.syncFrameIdCountMaxESet) {
            result.append(this.syncFrameIdCountMax);
        } else {
            result.append("<unset>");
        }
        result.append(", transmissionStartSequenceDuration: ");
        if (this.transmissionStartSequenceDurationESet) {
            result.append(this.transmissionStartSequenceDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeupRxIdle: ");
        if (this.wakeupRxIdleESet) {
            result.append(this.wakeupRxIdle);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeupRxLow: ");
        if (this.wakeupRxLowESet) {
            result.append(this.wakeupRxLow);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeupRxWindow: ");
        if (this.wakeupRxWindowESet) {
            result.append(this.wakeupRxWindow);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeupTxActive: ");
        if (this.wakeupTxActiveESet) {
            result.append(this.wakeupTxActive);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeupTxIdle: ");
        if (this.wakeupTxIdleESet) {
            result.append(this.wakeupTxIdle);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

