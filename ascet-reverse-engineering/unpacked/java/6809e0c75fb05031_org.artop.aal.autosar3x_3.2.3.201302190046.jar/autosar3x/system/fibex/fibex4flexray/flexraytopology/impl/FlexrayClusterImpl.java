/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationClusterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexrayClusterImpl
extends CommunicationClusterImpl
implements FlexrayCluster {
    protected static final Integer ACTION_POINT_OFFSET_EDEFAULT = new Integer(0);
    protected Integer actionPointOffset = ACTION_POINT_OFFSET_EDEFAULT;
    protected boolean actionPointOffsetESet;
    protected static final Double BIT_EDEFAULT = new Double(0.0);
    protected Double bit = BIT_EDEFAULT;
    protected boolean bitESet;
    protected static final Integer BUS_GUARDIAN_ENABLE_PART_EDEFAULT = new Integer(0);
    protected Integer busGuardianEnablePart = BUS_GUARDIAN_ENABLE_PART_EDEFAULT;
    protected boolean busGuardianEnablePartESet;
    protected static final Integer CAS_RX_LOW_MAX_EDEFAULT = new Integer(0);
    protected Integer casRxLowMax = CAS_RX_LOW_MAX_EDEFAULT;
    protected boolean casRxLowMaxESet;
    protected static final Integer CAS_RX_LOW_MIN_EDEFAULT = new Integer(0);
    protected Integer casRxLowMin = CAS_RX_LOW_MIN_EDEFAULT;
    protected boolean casRxLowMinESet;
    protected static final Integer COLD_START_ATTEMPTS_EDEFAULT = new Integer(0);
    protected Integer coldStartAttempts = COLD_START_ATTEMPTS_EDEFAULT;
    protected boolean coldStartAttemptsESet;
    protected static final Double CYCLE_EDEFAULT = new Double(0.0);
    protected Double cycle = CYCLE_EDEFAULT;
    protected boolean cycleESet;
    protected static final String CYCLE_COUNT_MAX_EDEFAULT = "";
    protected String cycleCountMax = "";
    protected boolean cycleCountMaxESet;
    protected static final Integer DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT = new Integer(0);
    protected Integer dynamicSlotIdlePhase = DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT;
    protected boolean dynamicSlotIdlePhaseESet;
    protected static final Integer IGNORE_AFTER_TX_EDEFAULT = new Integer(0);
    protected Integer ignoreAfterTx = IGNORE_AFTER_TX_EDEFAULT;
    protected boolean ignoreAfterTxESet;
    protected static final Integer LISTEN_NOISE_EDEFAULT = new Integer(0);
    protected Integer listenNoise = LISTEN_NOISE_EDEFAULT;
    protected boolean listenNoiseESet;
    protected static final Integer MACRO_INITIAL_OFFSET_EDEFAULT = new Integer(0);
    protected Integer macroInitialOffset = MACRO_INITIAL_OFFSET_EDEFAULT;
    protected boolean macroInitialOffsetESet;
    protected static final Integer MACRO_PER_CYCLE_EDEFAULT = new Integer(0);
    protected Integer macroPerCycle = MACRO_PER_CYCLE_EDEFAULT;
    protected boolean macroPerCycleESet;
    protected static final Double MACROTICK_DURATION_EDEFAULT = new Double(0.0);
    protected Double macrotickDuration = MACROTICK_DURATION_EDEFAULT;
    protected boolean macrotickDurationESet;
    protected static final Double MAX_INITIALISATION_ERROR_EDEFAULT = new Double(0.0);
    protected Double maxInitialisationError = MAX_INITIALISATION_ERROR_EDEFAULT;
    protected boolean maxInitialisationErrorESet;
    protected static final Double MAX_PROPAGATION_DELAY_EDEFAULT = new Double(0.0);
    protected Double maxPropagationDelay = MAX_PROPAGATION_DELAY_EDEFAULT;
    protected boolean maxPropagationDelayESet;
    protected static final Integer MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT = new Integer(0);
    protected Integer maxWithoutClockCorrectionFatal = MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT;
    protected boolean maxWithoutClockCorrectionFatalESet;
    protected static final Integer MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT = new Integer(0);
    protected Integer maxWithoutClockCorrectionPassive = MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT;
    protected boolean maxWithoutClockCorrectionPassiveESet;
    protected static final Double MIN_PROPAGATION_DELAY_EDEFAULT = new Double(0.0);
    protected Double minPropagationDelay = MIN_PROPAGATION_DELAY_EDEFAULT;
    protected boolean minPropagationDelayESet;
    protected static final Integer MINISLOT_ACTION_POINT_OFFSET_EDEFAULT = new Integer(0);
    protected Integer minislotActionPointOffset = MINISLOT_ACTION_POINT_OFFSET_EDEFAULT;
    protected boolean minislotActionPointOffsetESet;
    protected static final Integer MINISLOT_DURATION_EDEFAULT = new Integer(0);
    protected Integer minislotDuration = MINISLOT_DURATION_EDEFAULT;
    protected boolean minislotDurationESet;
    protected static final Integer NETWORK_IDLE_TIME_EDEFAULT = new Integer(0);
    protected Integer networkIdleTime = NETWORK_IDLE_TIME_EDEFAULT;
    protected boolean networkIdleTimeESet;
    protected static final Integer NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT = new Integer(0);
    protected Integer networkManagementVectorLength = NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT;
    protected boolean networkManagementVectorLengthESet;
    protected static final Integer NM_DATA_CYCLE_EDEFAULT = new Integer(0);
    protected Integer nmDataCycle = NM_DATA_CYCLE_EDEFAULT;
    protected boolean nmDataCycleESet;
    protected static final Integer NM_READY_SLEEP_COUNT_EDEFAULT = new Integer(0);
    protected Integer nmReadySleepCount = NM_READY_SLEEP_COUNT_EDEFAULT;
    protected boolean nmReadySleepCountESet;
    protected static final Double NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
    protected boolean nmRemoteSleepIndicationTimeESet;
    protected static final Double NM_REPEAT_MESSAGE_TIME_EDEFAULT = new Double(0.0);
    protected Double nmRepeatMessageTime = NM_REPEAT_MESSAGE_TIME_EDEFAULT;
    protected boolean nmRepeatMessageTimeESet;
    protected static final Integer NM_REPETITION_CYCLE_EDEFAULT = new Integer(0);
    protected Integer nmRepetitionCycle = NM_REPETITION_CYCLE_EDEFAULT;
    protected boolean nmRepetitionCycleESet;
    protected static final Integer NM_VOTING_CYCLE_EDEFAULT = new Integer(0);
    protected Integer nmVotingCycle = NM_VOTING_CYCLE_EDEFAULT;
    protected boolean nmVotingCycleESet;
    protected static final Integer NUMBER_OF_CYCLES_EDEFAULT = new Integer(0);
    protected Integer numberOfCycles = NUMBER_OF_CYCLES_EDEFAULT;
    protected boolean numberOfCyclesESet;
    protected static final Integer NUMBER_OF_MINISLOTS_EDEFAULT = new Integer(0);
    protected Integer numberOfMinislots = NUMBER_OF_MINISLOTS_EDEFAULT;
    protected boolean numberOfMinislotsESet;
    protected static final Integer NUMBER_OF_STATIC_SLOTS_EDEFAULT = new Integer(0);
    protected Integer numberOfStaticSlots = NUMBER_OF_STATIC_SLOTS_EDEFAULT;
    protected boolean numberOfStaticSlotsESet;
    protected static final Double OFFSET_CORRECTION_MAX_EDEFAULT = new Double(0.0);
    protected Double offsetCorrectionMax = OFFSET_CORRECTION_MAX_EDEFAULT;
    protected boolean offsetCorrectionMaxESet;
    protected static final Integer OFFSET_CORRECTION_START_EDEFAULT = new Integer(0);
    protected Integer offsetCorrectionStart = OFFSET_CORRECTION_START_EDEFAULT;
    protected boolean offsetCorrectionStartESet;
    protected static final Integer PAYLOAD_LENGTH_STATIC_EDEFAULT = new Integer(0);
    protected Integer payloadLengthStatic = PAYLOAD_LENGTH_STATIC_EDEFAULT;
    protected boolean payloadLengthStaticESet;
    protected static final Double SAMPLE_CLOCK_PERIOD_EDEFAULT = new Double(0.0);
    protected Double sampleClockPeriod = SAMPLE_CLOCK_PERIOD_EDEFAULT;
    protected boolean sampleClockPeriodESet;
    protected static final Integer STATIC_SLOT_DURATION_EDEFAULT = new Integer(0);
    protected Integer staticSlotDuration = STATIC_SLOT_DURATION_EDEFAULT;
    protected boolean staticSlotDurationESet;
    protected static final Integer SYMBOL_WINDOW_EDEFAULT = new Integer(0);
    protected Integer symbolWindow = SYMBOL_WINDOW_EDEFAULT;
    protected boolean symbolWindowESet;
    protected static final Integer SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT = new Integer(0);
    protected Integer symbolWindowActionPointOffset = SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT;
    protected boolean symbolWindowActionPointOffsetESet;
    protected static final Integer SYNC_FRAME_ID_COUNT_MAX_EDEFAULT = new Integer(0);
    protected Integer syncFrameIDCountMax = SYNC_FRAME_ID_COUNT_MAX_EDEFAULT;
    protected boolean syncFrameIDCountMaxESet;
    protected static final Integer TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT = new Integer(0);
    protected Integer transmissionStartSequenceDuration = TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT;
    protected boolean transmissionStartSequenceDurationESet;
    protected static final Integer WAKEUP_RX_IDLE_EDEFAULT = new Integer(0);
    protected Integer wakeupRxIdle = WAKEUP_RX_IDLE_EDEFAULT;
    protected boolean wakeupRxIdleESet;
    protected static final Integer WAKEUP_RX_LOW_EDEFAULT = new Integer(0);
    protected Integer wakeupRxLow = WAKEUP_RX_LOW_EDEFAULT;
    protected boolean wakeupRxLowESet;
    protected static final Integer WAKEUP_RX_WINDOW_EDEFAULT = new Integer(0);
    protected Integer wakeupRxWindow = WAKEUP_RX_WINDOW_EDEFAULT;
    protected boolean wakeupRxWindowESet;
    protected static final Integer WAKEUP_TX_ACTIVE_EDEFAULT = new Integer(0);
    protected Integer wakeupTxActive = WAKEUP_TX_ACTIVE_EDEFAULT;
    protected boolean wakeupTxActiveESet;
    protected static final Integer WAKEUP_TX_IDLE_EDEFAULT = new Integer(0);
    protected Integer wakeupTxIdle = WAKEUP_TX_IDLE_EDEFAULT;
    protected boolean wakeupTxIdleESet;

    protected FlexrayClusterImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_CLUSTER;
    }

    public Integer getActionPointOffset() {
        return this.actionPointOffset;
    }

    public void setActionPointOffset(Integer newActionPointOffset) {
        Integer oldActionPointOffset = this.actionPointOffset;
        this.actionPointOffset = newActionPointOffset;
        boolean oldActionPointOffsetESet = this.actionPointOffsetESet;
        this.actionPointOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldActionPointOffset, (Object)this.actionPointOffset, !oldActionPointOffsetESet));
        }
    }

    public void unsetActionPointOffset() {
        Integer oldActionPointOffset = this.actionPointOffset;
        boolean oldActionPointOffsetESet = this.actionPointOffsetESet;
        this.actionPointOffset = ACTION_POINT_OFFSET_EDEFAULT;
        this.actionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldActionPointOffset, (Object)ACTION_POINT_OFFSET_EDEFAULT, oldActionPointOffsetESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldBit, (Object)this.bit, !oldBitESet));
        }
    }

    public void unsetBit() {
        Double oldBit = this.bit;
        boolean oldBitESet = this.bitESet;
        this.bit = BIT_EDEFAULT;
        this.bitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldBit, (Object)BIT_EDEFAULT, oldBitESet));
        }
    }

    public boolean isSetBit() {
        return this.bitESet;
    }

    public Integer getBusGuardianEnablePart() {
        return this.busGuardianEnablePart;
    }

    public void setBusGuardianEnablePart(Integer newBusGuardianEnablePart) {
        Integer oldBusGuardianEnablePart = this.busGuardianEnablePart;
        this.busGuardianEnablePart = newBusGuardianEnablePart;
        boolean oldBusGuardianEnablePartESet = this.busGuardianEnablePartESet;
        this.busGuardianEnablePartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldBusGuardianEnablePart, (Object)this.busGuardianEnablePart, !oldBusGuardianEnablePartESet));
        }
    }

    public void unsetBusGuardianEnablePart() {
        Integer oldBusGuardianEnablePart = this.busGuardianEnablePart;
        boolean oldBusGuardianEnablePartESet = this.busGuardianEnablePartESet;
        this.busGuardianEnablePart = BUS_GUARDIAN_ENABLE_PART_EDEFAULT;
        this.busGuardianEnablePartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldBusGuardianEnablePart, (Object)BUS_GUARDIAN_ENABLE_PART_EDEFAULT, oldBusGuardianEnablePartESet));
        }
    }

    public boolean isSetBusGuardianEnablePart() {
        return this.busGuardianEnablePartESet;
    }

    public Integer getCasRxLowMax() {
        return this.casRxLowMax;
    }

    public void setCasRxLowMax(Integer newCasRxLowMax) {
        Integer oldCasRxLowMax = this.casRxLowMax;
        this.casRxLowMax = newCasRxLowMax;
        boolean oldCasRxLowMaxESet = this.casRxLowMaxESet;
        this.casRxLowMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldCasRxLowMax, (Object)this.casRxLowMax, !oldCasRxLowMaxESet));
        }
    }

    public void unsetCasRxLowMax() {
        Integer oldCasRxLowMax = this.casRxLowMax;
        boolean oldCasRxLowMaxESet = this.casRxLowMaxESet;
        this.casRxLowMax = CAS_RX_LOW_MAX_EDEFAULT;
        this.casRxLowMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldCasRxLowMax, (Object)CAS_RX_LOW_MAX_EDEFAULT, oldCasRxLowMaxESet));
        }
    }

    public boolean isSetCasRxLowMax() {
        return this.casRxLowMaxESet;
    }

    public Integer getCasRxLowMin() {
        return this.casRxLowMin;
    }

    public void setCasRxLowMin(Integer newCasRxLowMin) {
        Integer oldCasRxLowMin = this.casRxLowMin;
        this.casRxLowMin = newCasRxLowMin;
        boolean oldCasRxLowMinESet = this.casRxLowMinESet;
        this.casRxLowMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldCasRxLowMin, (Object)this.casRxLowMin, !oldCasRxLowMinESet));
        }
    }

    public void unsetCasRxLowMin() {
        Integer oldCasRxLowMin = this.casRxLowMin;
        boolean oldCasRxLowMinESet = this.casRxLowMinESet;
        this.casRxLowMin = CAS_RX_LOW_MIN_EDEFAULT;
        this.casRxLowMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldCasRxLowMin, (Object)CAS_RX_LOW_MIN_EDEFAULT, oldCasRxLowMinESet));
        }
    }

    public boolean isSetCasRxLowMin() {
        return this.casRxLowMinESet;
    }

    public Integer getColdStartAttempts() {
        return this.coldStartAttempts;
    }

    public void setColdStartAttempts(Integer newColdStartAttempts) {
        Integer oldColdStartAttempts = this.coldStartAttempts;
        this.coldStartAttempts = newColdStartAttempts;
        boolean oldColdStartAttemptsESet = this.coldStartAttemptsESet;
        this.coldStartAttemptsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldColdStartAttempts, (Object)this.coldStartAttempts, !oldColdStartAttemptsESet));
        }
    }

    public void unsetColdStartAttempts() {
        Integer oldColdStartAttempts = this.coldStartAttempts;
        boolean oldColdStartAttemptsESet = this.coldStartAttemptsESet;
        this.coldStartAttempts = COLD_START_ATTEMPTS_EDEFAULT;
        this.coldStartAttemptsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldColdStartAttempts, (Object)COLD_START_ATTEMPTS_EDEFAULT, oldColdStartAttemptsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldCycle, (Object)this.cycle, !oldCycleESet));
        }
    }

    public void unsetCycle() {
        Double oldCycle = this.cycle;
        boolean oldCycleESet = this.cycleESet;
        this.cycle = CYCLE_EDEFAULT;
        this.cycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldCycle, (Object)CYCLE_EDEFAULT, oldCycleESet));
        }
    }

    public boolean isSetCycle() {
        return this.cycleESet;
    }

    public String getCycleCountMax() {
        return this.cycleCountMax;
    }

    public void setCycleCountMax(String newCycleCountMax) {
        String oldCycleCountMax = this.cycleCountMax;
        this.cycleCountMax = newCycleCountMax;
        boolean oldCycleCountMaxESet = this.cycleCountMaxESet;
        this.cycleCountMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldCycleCountMax, (Object)this.cycleCountMax, !oldCycleCountMaxESet));
        }
    }

    public void unsetCycleCountMax() {
        String oldCycleCountMax = this.cycleCountMax;
        boolean oldCycleCountMaxESet = this.cycleCountMaxESet;
        this.cycleCountMax = CYCLE_COUNT_MAX_EDEFAULT;
        this.cycleCountMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldCycleCountMax, (Object)CYCLE_COUNT_MAX_EDEFAULT, oldCycleCountMaxESet));
        }
    }

    public boolean isSetCycleCountMax() {
        return this.cycleCountMaxESet;
    }

    public Integer getDynamicSlotIdlePhase() {
        return this.dynamicSlotIdlePhase;
    }

    public void setDynamicSlotIdlePhase(Integer newDynamicSlotIdlePhase) {
        Integer oldDynamicSlotIdlePhase = this.dynamicSlotIdlePhase;
        this.dynamicSlotIdlePhase = newDynamicSlotIdlePhase;
        boolean oldDynamicSlotIdlePhaseESet = this.dynamicSlotIdlePhaseESet;
        this.dynamicSlotIdlePhaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldDynamicSlotIdlePhase, (Object)this.dynamicSlotIdlePhase, !oldDynamicSlotIdlePhaseESet));
        }
    }

    public void unsetDynamicSlotIdlePhase() {
        Integer oldDynamicSlotIdlePhase = this.dynamicSlotIdlePhase;
        boolean oldDynamicSlotIdlePhaseESet = this.dynamicSlotIdlePhaseESet;
        this.dynamicSlotIdlePhase = DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT;
        this.dynamicSlotIdlePhaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldDynamicSlotIdlePhase, (Object)DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT, oldDynamicSlotIdlePhaseESet));
        }
    }

    public boolean isSetDynamicSlotIdlePhase() {
        return this.dynamicSlotIdlePhaseESet;
    }

    public Integer getIgnoreAfterTx() {
        return this.ignoreAfterTx;
    }

    public void setIgnoreAfterTx(Integer newIgnoreAfterTx) {
        Integer oldIgnoreAfterTx = this.ignoreAfterTx;
        this.ignoreAfterTx = newIgnoreAfterTx;
        boolean oldIgnoreAfterTxESet = this.ignoreAfterTxESet;
        this.ignoreAfterTxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldIgnoreAfterTx, (Object)this.ignoreAfterTx, !oldIgnoreAfterTxESet));
        }
    }

    public void unsetIgnoreAfterTx() {
        Integer oldIgnoreAfterTx = this.ignoreAfterTx;
        boolean oldIgnoreAfterTxESet = this.ignoreAfterTxESet;
        this.ignoreAfterTx = IGNORE_AFTER_TX_EDEFAULT;
        this.ignoreAfterTxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldIgnoreAfterTx, (Object)IGNORE_AFTER_TX_EDEFAULT, oldIgnoreAfterTxESet));
        }
    }

    public boolean isSetIgnoreAfterTx() {
        return this.ignoreAfterTxESet;
    }

    public Integer getListenNoise() {
        return this.listenNoise;
    }

    public void setListenNoise(Integer newListenNoise) {
        Integer oldListenNoise = this.listenNoise;
        this.listenNoise = newListenNoise;
        boolean oldListenNoiseESet = this.listenNoiseESet;
        this.listenNoiseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldListenNoise, (Object)this.listenNoise, !oldListenNoiseESet));
        }
    }

    public void unsetListenNoise() {
        Integer oldListenNoise = this.listenNoise;
        boolean oldListenNoiseESet = this.listenNoiseESet;
        this.listenNoise = LISTEN_NOISE_EDEFAULT;
        this.listenNoiseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldListenNoise, (Object)LISTEN_NOISE_EDEFAULT, oldListenNoiseESet));
        }
    }

    public boolean isSetListenNoise() {
        return this.listenNoiseESet;
    }

    public Integer getMacroInitialOffset() {
        return this.macroInitialOffset;
    }

    public void setMacroInitialOffset(Integer newMacroInitialOffset) {
        Integer oldMacroInitialOffset = this.macroInitialOffset;
        this.macroInitialOffset = newMacroInitialOffset;
        boolean oldMacroInitialOffsetESet = this.macroInitialOffsetESet;
        this.macroInitialOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldMacroInitialOffset, (Object)this.macroInitialOffset, !oldMacroInitialOffsetESet));
        }
    }

    public void unsetMacroInitialOffset() {
        Integer oldMacroInitialOffset = this.macroInitialOffset;
        boolean oldMacroInitialOffsetESet = this.macroInitialOffsetESet;
        this.macroInitialOffset = MACRO_INITIAL_OFFSET_EDEFAULT;
        this.macroInitialOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldMacroInitialOffset, (Object)MACRO_INITIAL_OFFSET_EDEFAULT, oldMacroInitialOffsetESet));
        }
    }

    public boolean isSetMacroInitialOffset() {
        return this.macroInitialOffsetESet;
    }

    public Integer getMacroPerCycle() {
        return this.macroPerCycle;
    }

    public void setMacroPerCycle(Integer newMacroPerCycle) {
        Integer oldMacroPerCycle = this.macroPerCycle;
        this.macroPerCycle = newMacroPerCycle;
        boolean oldMacroPerCycleESet = this.macroPerCycleESet;
        this.macroPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldMacroPerCycle, (Object)this.macroPerCycle, !oldMacroPerCycleESet));
        }
    }

    public void unsetMacroPerCycle() {
        Integer oldMacroPerCycle = this.macroPerCycle;
        boolean oldMacroPerCycleESet = this.macroPerCycleESet;
        this.macroPerCycle = MACRO_PER_CYCLE_EDEFAULT;
        this.macroPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldMacroPerCycle, (Object)MACRO_PER_CYCLE_EDEFAULT, oldMacroPerCycleESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldMacrotickDuration, (Object)this.macrotickDuration, !oldMacrotickDurationESet));
        }
    }

    public void unsetMacrotickDuration() {
        Double oldMacrotickDuration = this.macrotickDuration;
        boolean oldMacrotickDurationESet = this.macrotickDurationESet;
        this.macrotickDuration = MACROTICK_DURATION_EDEFAULT;
        this.macrotickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldMacrotickDuration, (Object)MACROTICK_DURATION_EDEFAULT, oldMacrotickDurationESet));
        }
    }

    public boolean isSetMacrotickDuration() {
        return this.macrotickDurationESet;
    }

    public Double getMaxInitialisationError() {
        return this.maxInitialisationError;
    }

    public void setMaxInitialisationError(Double newMaxInitialisationError) {
        Double oldMaxInitialisationError = this.maxInitialisationError;
        this.maxInitialisationError = newMaxInitialisationError;
        boolean oldMaxInitialisationErrorESet = this.maxInitialisationErrorESet;
        this.maxInitialisationErrorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldMaxInitialisationError, (Object)this.maxInitialisationError, !oldMaxInitialisationErrorESet));
        }
    }

    public void unsetMaxInitialisationError() {
        Double oldMaxInitialisationError = this.maxInitialisationError;
        boolean oldMaxInitialisationErrorESet = this.maxInitialisationErrorESet;
        this.maxInitialisationError = MAX_INITIALISATION_ERROR_EDEFAULT;
        this.maxInitialisationErrorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldMaxInitialisationError, (Object)MAX_INITIALISATION_ERROR_EDEFAULT, oldMaxInitialisationErrorESet));
        }
    }

    public boolean isSetMaxInitialisationError() {
        return this.maxInitialisationErrorESet;
    }

    public Double getMaxPropagationDelay() {
        return this.maxPropagationDelay;
    }

    public void setMaxPropagationDelay(Double newMaxPropagationDelay) {
        Double oldMaxPropagationDelay = this.maxPropagationDelay;
        this.maxPropagationDelay = newMaxPropagationDelay;
        boolean oldMaxPropagationDelayESet = this.maxPropagationDelayESet;
        this.maxPropagationDelayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 42, (Object)oldMaxPropagationDelay, (Object)this.maxPropagationDelay, !oldMaxPropagationDelayESet));
        }
    }

    public void unsetMaxPropagationDelay() {
        Double oldMaxPropagationDelay = this.maxPropagationDelay;
        boolean oldMaxPropagationDelayESet = this.maxPropagationDelayESet;
        this.maxPropagationDelay = MAX_PROPAGATION_DELAY_EDEFAULT;
        this.maxPropagationDelayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 42, (Object)oldMaxPropagationDelay, (Object)MAX_PROPAGATION_DELAY_EDEFAULT, oldMaxPropagationDelayESet));
        }
    }

    public boolean isSetMaxPropagationDelay() {
        return this.maxPropagationDelayESet;
    }

    public Integer getMaxWithoutClockCorrectionFatal() {
        return this.maxWithoutClockCorrectionFatal;
    }

    public void setMaxWithoutClockCorrectionFatal(Integer newMaxWithoutClockCorrectionFatal) {
        Integer oldMaxWithoutClockCorrectionFatal = this.maxWithoutClockCorrectionFatal;
        this.maxWithoutClockCorrectionFatal = newMaxWithoutClockCorrectionFatal;
        boolean oldMaxWithoutClockCorrectionFatalESet = this.maxWithoutClockCorrectionFatalESet;
        this.maxWithoutClockCorrectionFatalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 43, (Object)oldMaxWithoutClockCorrectionFatal, (Object)this.maxWithoutClockCorrectionFatal, !oldMaxWithoutClockCorrectionFatalESet));
        }
    }

    public void unsetMaxWithoutClockCorrectionFatal() {
        Integer oldMaxWithoutClockCorrectionFatal = this.maxWithoutClockCorrectionFatal;
        boolean oldMaxWithoutClockCorrectionFatalESet = this.maxWithoutClockCorrectionFatalESet;
        this.maxWithoutClockCorrectionFatal = MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT;
        this.maxWithoutClockCorrectionFatalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 43, (Object)oldMaxWithoutClockCorrectionFatal, (Object)MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT, oldMaxWithoutClockCorrectionFatalESet));
        }
    }

    public boolean isSetMaxWithoutClockCorrectionFatal() {
        return this.maxWithoutClockCorrectionFatalESet;
    }

    public Integer getMaxWithoutClockCorrectionPassive() {
        return this.maxWithoutClockCorrectionPassive;
    }

    public void setMaxWithoutClockCorrectionPassive(Integer newMaxWithoutClockCorrectionPassive) {
        Integer oldMaxWithoutClockCorrectionPassive = this.maxWithoutClockCorrectionPassive;
        this.maxWithoutClockCorrectionPassive = newMaxWithoutClockCorrectionPassive;
        boolean oldMaxWithoutClockCorrectionPassiveESet = this.maxWithoutClockCorrectionPassiveESet;
        this.maxWithoutClockCorrectionPassiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 44, (Object)oldMaxWithoutClockCorrectionPassive, (Object)this.maxWithoutClockCorrectionPassive, !oldMaxWithoutClockCorrectionPassiveESet));
        }
    }

    public void unsetMaxWithoutClockCorrectionPassive() {
        Integer oldMaxWithoutClockCorrectionPassive = this.maxWithoutClockCorrectionPassive;
        boolean oldMaxWithoutClockCorrectionPassiveESet = this.maxWithoutClockCorrectionPassiveESet;
        this.maxWithoutClockCorrectionPassive = MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT;
        this.maxWithoutClockCorrectionPassiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 44, (Object)oldMaxWithoutClockCorrectionPassive, (Object)MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT, oldMaxWithoutClockCorrectionPassiveESet));
        }
    }

    public boolean isSetMaxWithoutClockCorrectionPassive() {
        return this.maxWithoutClockCorrectionPassiveESet;
    }

    public Double getMinPropagationDelay() {
        return this.minPropagationDelay;
    }

    public void setMinPropagationDelay(Double newMinPropagationDelay) {
        Double oldMinPropagationDelay = this.minPropagationDelay;
        this.minPropagationDelay = newMinPropagationDelay;
        boolean oldMinPropagationDelayESet = this.minPropagationDelayESet;
        this.minPropagationDelayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 45, (Object)oldMinPropagationDelay, (Object)this.minPropagationDelay, !oldMinPropagationDelayESet));
        }
    }

    public void unsetMinPropagationDelay() {
        Double oldMinPropagationDelay = this.minPropagationDelay;
        boolean oldMinPropagationDelayESet = this.minPropagationDelayESet;
        this.minPropagationDelay = MIN_PROPAGATION_DELAY_EDEFAULT;
        this.minPropagationDelayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 45, (Object)oldMinPropagationDelay, (Object)MIN_PROPAGATION_DELAY_EDEFAULT, oldMinPropagationDelayESet));
        }
    }

    public boolean isSetMinPropagationDelay() {
        return this.minPropagationDelayESet;
    }

    public Integer getMinislotActionPointOffset() {
        return this.minislotActionPointOffset;
    }

    public void setMinislotActionPointOffset(Integer newMinislotActionPointOffset) {
        Integer oldMinislotActionPointOffset = this.minislotActionPointOffset;
        this.minislotActionPointOffset = newMinislotActionPointOffset;
        boolean oldMinislotActionPointOffsetESet = this.minislotActionPointOffsetESet;
        this.minislotActionPointOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 46, (Object)oldMinislotActionPointOffset, (Object)this.minislotActionPointOffset, !oldMinislotActionPointOffsetESet));
        }
    }

    public void unsetMinislotActionPointOffset() {
        Integer oldMinislotActionPointOffset = this.minislotActionPointOffset;
        boolean oldMinislotActionPointOffsetESet = this.minislotActionPointOffsetESet;
        this.minislotActionPointOffset = MINISLOT_ACTION_POINT_OFFSET_EDEFAULT;
        this.minislotActionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 46, (Object)oldMinislotActionPointOffset, (Object)MINISLOT_ACTION_POINT_OFFSET_EDEFAULT, oldMinislotActionPointOffsetESet));
        }
    }

    public boolean isSetMinislotActionPointOffset() {
        return this.minislotActionPointOffsetESet;
    }

    public Integer getMinislotDuration() {
        return this.minislotDuration;
    }

    public void setMinislotDuration(Integer newMinislotDuration) {
        Integer oldMinislotDuration = this.minislotDuration;
        this.minislotDuration = newMinislotDuration;
        boolean oldMinislotDurationESet = this.minislotDurationESet;
        this.minislotDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 47, (Object)oldMinislotDuration, (Object)this.minislotDuration, !oldMinislotDurationESet));
        }
    }

    public void unsetMinislotDuration() {
        Integer oldMinislotDuration = this.minislotDuration;
        boolean oldMinislotDurationESet = this.minislotDurationESet;
        this.minislotDuration = MINISLOT_DURATION_EDEFAULT;
        this.minislotDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 47, (Object)oldMinislotDuration, (Object)MINISLOT_DURATION_EDEFAULT, oldMinislotDurationESet));
        }
    }

    public boolean isSetMinislotDuration() {
        return this.minislotDurationESet;
    }

    public Integer getNetworkIdleTime() {
        return this.networkIdleTime;
    }

    public void setNetworkIdleTime(Integer newNetworkIdleTime) {
        Integer oldNetworkIdleTime = this.networkIdleTime;
        this.networkIdleTime = newNetworkIdleTime;
        boolean oldNetworkIdleTimeESet = this.networkIdleTimeESet;
        this.networkIdleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 48, (Object)oldNetworkIdleTime, (Object)this.networkIdleTime, !oldNetworkIdleTimeESet));
        }
    }

    public void unsetNetworkIdleTime() {
        Integer oldNetworkIdleTime = this.networkIdleTime;
        boolean oldNetworkIdleTimeESet = this.networkIdleTimeESet;
        this.networkIdleTime = NETWORK_IDLE_TIME_EDEFAULT;
        this.networkIdleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 48, (Object)oldNetworkIdleTime, (Object)NETWORK_IDLE_TIME_EDEFAULT, oldNetworkIdleTimeESet));
        }
    }

    public boolean isSetNetworkIdleTime() {
        return this.networkIdleTimeESet;
    }

    public Integer getNetworkManagementVectorLength() {
        return this.networkManagementVectorLength;
    }

    public void setNetworkManagementVectorLength(Integer newNetworkManagementVectorLength) {
        Integer oldNetworkManagementVectorLength = this.networkManagementVectorLength;
        this.networkManagementVectorLength = newNetworkManagementVectorLength;
        boolean oldNetworkManagementVectorLengthESet = this.networkManagementVectorLengthESet;
        this.networkManagementVectorLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 49, (Object)oldNetworkManagementVectorLength, (Object)this.networkManagementVectorLength, !oldNetworkManagementVectorLengthESet));
        }
    }

    public void unsetNetworkManagementVectorLength() {
        Integer oldNetworkManagementVectorLength = this.networkManagementVectorLength;
        boolean oldNetworkManagementVectorLengthESet = this.networkManagementVectorLengthESet;
        this.networkManagementVectorLength = NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT;
        this.networkManagementVectorLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 49, (Object)oldNetworkManagementVectorLength, (Object)NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT, oldNetworkManagementVectorLengthESet));
        }
    }

    public boolean isSetNetworkManagementVectorLength() {
        return this.networkManagementVectorLengthESet;
    }

    public Integer getNmDataCycle() {
        return this.nmDataCycle;
    }

    public void setNmDataCycle(Integer newNmDataCycle) {
        Integer oldNmDataCycle = this.nmDataCycle;
        this.nmDataCycle = newNmDataCycle;
        boolean oldNmDataCycleESet = this.nmDataCycleESet;
        this.nmDataCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 50, (Object)oldNmDataCycle, (Object)this.nmDataCycle, !oldNmDataCycleESet));
        }
    }

    public void unsetNmDataCycle() {
        Integer oldNmDataCycle = this.nmDataCycle;
        boolean oldNmDataCycleESet = this.nmDataCycleESet;
        this.nmDataCycle = NM_DATA_CYCLE_EDEFAULT;
        this.nmDataCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 50, (Object)oldNmDataCycle, (Object)NM_DATA_CYCLE_EDEFAULT, oldNmDataCycleESet));
        }
    }

    public boolean isSetNmDataCycle() {
        return this.nmDataCycleESet;
    }

    public Integer getNmReadySleepCount() {
        return this.nmReadySleepCount;
    }

    public void setNmReadySleepCount(Integer newNmReadySleepCount) {
        Integer oldNmReadySleepCount = this.nmReadySleepCount;
        this.nmReadySleepCount = newNmReadySleepCount;
        boolean oldNmReadySleepCountESet = this.nmReadySleepCountESet;
        this.nmReadySleepCountESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 51, (Object)oldNmReadySleepCount, (Object)this.nmReadySleepCount, !oldNmReadySleepCountESet));
        }
    }

    public void unsetNmReadySleepCount() {
        Integer oldNmReadySleepCount = this.nmReadySleepCount;
        boolean oldNmReadySleepCountESet = this.nmReadySleepCountESet;
        this.nmReadySleepCount = NM_READY_SLEEP_COUNT_EDEFAULT;
        this.nmReadySleepCountESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 51, (Object)oldNmReadySleepCount, (Object)NM_READY_SLEEP_COUNT_EDEFAULT, oldNmReadySleepCountESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 52, (Object)oldNmRemoteSleepIndicationTime, (Object)this.nmRemoteSleepIndicationTime, !oldNmRemoteSleepIndicationTimeESet));
        }
    }

    public void unsetNmRemoteSleepIndicationTime() {
        Double oldNmRemoteSleepIndicationTime = this.nmRemoteSleepIndicationTime;
        boolean oldNmRemoteSleepIndicationTimeESet = this.nmRemoteSleepIndicationTimeESet;
        this.nmRemoteSleepIndicationTime = NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT;
        this.nmRemoteSleepIndicationTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 52, (Object)oldNmRemoteSleepIndicationTime, (Object)NM_REMOTE_SLEEP_INDICATION_TIME_EDEFAULT, oldNmRemoteSleepIndicationTimeESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 53, (Object)oldNmRepeatMessageTime, (Object)this.nmRepeatMessageTime, !oldNmRepeatMessageTimeESet));
        }
    }

    public void unsetNmRepeatMessageTime() {
        Double oldNmRepeatMessageTime = this.nmRepeatMessageTime;
        boolean oldNmRepeatMessageTimeESet = this.nmRepeatMessageTimeESet;
        this.nmRepeatMessageTime = NM_REPEAT_MESSAGE_TIME_EDEFAULT;
        this.nmRepeatMessageTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 53, (Object)oldNmRepeatMessageTime, (Object)NM_REPEAT_MESSAGE_TIME_EDEFAULT, oldNmRepeatMessageTimeESet));
        }
    }

    public boolean isSetNmRepeatMessageTime() {
        return this.nmRepeatMessageTimeESet;
    }

    public Integer getNmRepetitionCycle() {
        return this.nmRepetitionCycle;
    }

    public void setNmRepetitionCycle(Integer newNmRepetitionCycle) {
        Integer oldNmRepetitionCycle = this.nmRepetitionCycle;
        this.nmRepetitionCycle = newNmRepetitionCycle;
        boolean oldNmRepetitionCycleESet = this.nmRepetitionCycleESet;
        this.nmRepetitionCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 54, (Object)oldNmRepetitionCycle, (Object)this.nmRepetitionCycle, !oldNmRepetitionCycleESet));
        }
    }

    public void unsetNmRepetitionCycle() {
        Integer oldNmRepetitionCycle = this.nmRepetitionCycle;
        boolean oldNmRepetitionCycleESet = this.nmRepetitionCycleESet;
        this.nmRepetitionCycle = NM_REPETITION_CYCLE_EDEFAULT;
        this.nmRepetitionCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 54, (Object)oldNmRepetitionCycle, (Object)NM_REPETITION_CYCLE_EDEFAULT, oldNmRepetitionCycleESet));
        }
    }

    public boolean isSetNmRepetitionCycle() {
        return this.nmRepetitionCycleESet;
    }

    public Integer getNmVotingCycle() {
        return this.nmVotingCycle;
    }

    public void setNmVotingCycle(Integer newNmVotingCycle) {
        Integer oldNmVotingCycle = this.nmVotingCycle;
        this.nmVotingCycle = newNmVotingCycle;
        boolean oldNmVotingCycleESet = this.nmVotingCycleESet;
        this.nmVotingCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 55, (Object)oldNmVotingCycle, (Object)this.nmVotingCycle, !oldNmVotingCycleESet));
        }
    }

    public void unsetNmVotingCycle() {
        Integer oldNmVotingCycle = this.nmVotingCycle;
        boolean oldNmVotingCycleESet = this.nmVotingCycleESet;
        this.nmVotingCycle = NM_VOTING_CYCLE_EDEFAULT;
        this.nmVotingCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 55, (Object)oldNmVotingCycle, (Object)NM_VOTING_CYCLE_EDEFAULT, oldNmVotingCycleESet));
        }
    }

    public boolean isSetNmVotingCycle() {
        return this.nmVotingCycleESet;
    }

    public Integer getNumberOfCycles() {
        return this.numberOfCycles;
    }

    public void setNumberOfCycles(Integer newNumberOfCycles) {
        Integer oldNumberOfCycles = this.numberOfCycles;
        this.numberOfCycles = newNumberOfCycles;
        boolean oldNumberOfCyclesESet = this.numberOfCyclesESet;
        this.numberOfCyclesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 56, (Object)oldNumberOfCycles, (Object)this.numberOfCycles, !oldNumberOfCyclesESet));
        }
    }

    public void unsetNumberOfCycles() {
        Integer oldNumberOfCycles = this.numberOfCycles;
        boolean oldNumberOfCyclesESet = this.numberOfCyclesESet;
        this.numberOfCycles = NUMBER_OF_CYCLES_EDEFAULT;
        this.numberOfCyclesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 56, (Object)oldNumberOfCycles, (Object)NUMBER_OF_CYCLES_EDEFAULT, oldNumberOfCyclesESet));
        }
    }

    public boolean isSetNumberOfCycles() {
        return this.numberOfCyclesESet;
    }

    public Integer getNumberOfMinislots() {
        return this.numberOfMinislots;
    }

    public void setNumberOfMinislots(Integer newNumberOfMinislots) {
        Integer oldNumberOfMinislots = this.numberOfMinislots;
        this.numberOfMinislots = newNumberOfMinislots;
        boolean oldNumberOfMinislotsESet = this.numberOfMinislotsESet;
        this.numberOfMinislotsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 57, (Object)oldNumberOfMinislots, (Object)this.numberOfMinislots, !oldNumberOfMinislotsESet));
        }
    }

    public void unsetNumberOfMinislots() {
        Integer oldNumberOfMinislots = this.numberOfMinislots;
        boolean oldNumberOfMinislotsESet = this.numberOfMinislotsESet;
        this.numberOfMinislots = NUMBER_OF_MINISLOTS_EDEFAULT;
        this.numberOfMinislotsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 57, (Object)oldNumberOfMinislots, (Object)NUMBER_OF_MINISLOTS_EDEFAULT, oldNumberOfMinislotsESet));
        }
    }

    public boolean isSetNumberOfMinislots() {
        return this.numberOfMinislotsESet;
    }

    public Integer getNumberOfStaticSlots() {
        return this.numberOfStaticSlots;
    }

    public void setNumberOfStaticSlots(Integer newNumberOfStaticSlots) {
        Integer oldNumberOfStaticSlots = this.numberOfStaticSlots;
        this.numberOfStaticSlots = newNumberOfStaticSlots;
        boolean oldNumberOfStaticSlotsESet = this.numberOfStaticSlotsESet;
        this.numberOfStaticSlotsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 58, (Object)oldNumberOfStaticSlots, (Object)this.numberOfStaticSlots, !oldNumberOfStaticSlotsESet));
        }
    }

    public void unsetNumberOfStaticSlots() {
        Integer oldNumberOfStaticSlots = this.numberOfStaticSlots;
        boolean oldNumberOfStaticSlotsESet = this.numberOfStaticSlotsESet;
        this.numberOfStaticSlots = NUMBER_OF_STATIC_SLOTS_EDEFAULT;
        this.numberOfStaticSlotsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 58, (Object)oldNumberOfStaticSlots, (Object)NUMBER_OF_STATIC_SLOTS_EDEFAULT, oldNumberOfStaticSlotsESet));
        }
    }

    public boolean isSetNumberOfStaticSlots() {
        return this.numberOfStaticSlotsESet;
    }

    public Double getOffsetCorrectionMax() {
        return this.offsetCorrectionMax;
    }

    public void setOffsetCorrectionMax(Double newOffsetCorrectionMax) {
        Double oldOffsetCorrectionMax = this.offsetCorrectionMax;
        this.offsetCorrectionMax = newOffsetCorrectionMax;
        boolean oldOffsetCorrectionMaxESet = this.offsetCorrectionMaxESet;
        this.offsetCorrectionMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 59, (Object)oldOffsetCorrectionMax, (Object)this.offsetCorrectionMax, !oldOffsetCorrectionMaxESet));
        }
    }

    public void unsetOffsetCorrectionMax() {
        Double oldOffsetCorrectionMax = this.offsetCorrectionMax;
        boolean oldOffsetCorrectionMaxESet = this.offsetCorrectionMaxESet;
        this.offsetCorrectionMax = OFFSET_CORRECTION_MAX_EDEFAULT;
        this.offsetCorrectionMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 59, (Object)oldOffsetCorrectionMax, (Object)OFFSET_CORRECTION_MAX_EDEFAULT, oldOffsetCorrectionMaxESet));
        }
    }

    public boolean isSetOffsetCorrectionMax() {
        return this.offsetCorrectionMaxESet;
    }

    public Integer getOffsetCorrectionStart() {
        return this.offsetCorrectionStart;
    }

    public void setOffsetCorrectionStart(Integer newOffsetCorrectionStart) {
        Integer oldOffsetCorrectionStart = this.offsetCorrectionStart;
        this.offsetCorrectionStart = newOffsetCorrectionStart;
        boolean oldOffsetCorrectionStartESet = this.offsetCorrectionStartESet;
        this.offsetCorrectionStartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 60, (Object)oldOffsetCorrectionStart, (Object)this.offsetCorrectionStart, !oldOffsetCorrectionStartESet));
        }
    }

    public void unsetOffsetCorrectionStart() {
        Integer oldOffsetCorrectionStart = this.offsetCorrectionStart;
        boolean oldOffsetCorrectionStartESet = this.offsetCorrectionStartESet;
        this.offsetCorrectionStart = OFFSET_CORRECTION_START_EDEFAULT;
        this.offsetCorrectionStartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 60, (Object)oldOffsetCorrectionStart, (Object)OFFSET_CORRECTION_START_EDEFAULT, oldOffsetCorrectionStartESet));
        }
    }

    public boolean isSetOffsetCorrectionStart() {
        return this.offsetCorrectionStartESet;
    }

    public Integer getPayloadLengthStatic() {
        return this.payloadLengthStatic;
    }

    public void setPayloadLengthStatic(Integer newPayloadLengthStatic) {
        Integer oldPayloadLengthStatic = this.payloadLengthStatic;
        this.payloadLengthStatic = newPayloadLengthStatic;
        boolean oldPayloadLengthStaticESet = this.payloadLengthStaticESet;
        this.payloadLengthStaticESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 61, (Object)oldPayloadLengthStatic, (Object)this.payloadLengthStatic, !oldPayloadLengthStaticESet));
        }
    }

    public void unsetPayloadLengthStatic() {
        Integer oldPayloadLengthStatic = this.payloadLengthStatic;
        boolean oldPayloadLengthStaticESet = this.payloadLengthStaticESet;
        this.payloadLengthStatic = PAYLOAD_LENGTH_STATIC_EDEFAULT;
        this.payloadLengthStaticESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 61, (Object)oldPayloadLengthStatic, (Object)PAYLOAD_LENGTH_STATIC_EDEFAULT, oldPayloadLengthStaticESet));
        }
    }

    public boolean isSetPayloadLengthStatic() {
        return this.payloadLengthStaticESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 62, (Object)oldSampleClockPeriod, (Object)this.sampleClockPeriod, !oldSampleClockPeriodESet));
        }
    }

    public void unsetSampleClockPeriod() {
        Double oldSampleClockPeriod = this.sampleClockPeriod;
        boolean oldSampleClockPeriodESet = this.sampleClockPeriodESet;
        this.sampleClockPeriod = SAMPLE_CLOCK_PERIOD_EDEFAULT;
        this.sampleClockPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 62, (Object)oldSampleClockPeriod, (Object)SAMPLE_CLOCK_PERIOD_EDEFAULT, oldSampleClockPeriodESet));
        }
    }

    public boolean isSetSampleClockPeriod() {
        return this.sampleClockPeriodESet;
    }

    public Integer getStaticSlotDuration() {
        return this.staticSlotDuration;
    }

    public void setStaticSlotDuration(Integer newStaticSlotDuration) {
        Integer oldStaticSlotDuration = this.staticSlotDuration;
        this.staticSlotDuration = newStaticSlotDuration;
        boolean oldStaticSlotDurationESet = this.staticSlotDurationESet;
        this.staticSlotDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 63, (Object)oldStaticSlotDuration, (Object)this.staticSlotDuration, !oldStaticSlotDurationESet));
        }
    }

    public void unsetStaticSlotDuration() {
        Integer oldStaticSlotDuration = this.staticSlotDuration;
        boolean oldStaticSlotDurationESet = this.staticSlotDurationESet;
        this.staticSlotDuration = STATIC_SLOT_DURATION_EDEFAULT;
        this.staticSlotDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 63, (Object)oldStaticSlotDuration, (Object)STATIC_SLOT_DURATION_EDEFAULT, oldStaticSlotDurationESet));
        }
    }

    public boolean isSetStaticSlotDuration() {
        return this.staticSlotDurationESet;
    }

    public Integer getSymbolWindow() {
        return this.symbolWindow;
    }

    public void setSymbolWindow(Integer newSymbolWindow) {
        Integer oldSymbolWindow = this.symbolWindow;
        this.symbolWindow = newSymbolWindow;
        boolean oldSymbolWindowESet = this.symbolWindowESet;
        this.symbolWindowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 64, (Object)oldSymbolWindow, (Object)this.symbolWindow, !oldSymbolWindowESet));
        }
    }

    public void unsetSymbolWindow() {
        Integer oldSymbolWindow = this.symbolWindow;
        boolean oldSymbolWindowESet = this.symbolWindowESet;
        this.symbolWindow = SYMBOL_WINDOW_EDEFAULT;
        this.symbolWindowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 64, (Object)oldSymbolWindow, (Object)SYMBOL_WINDOW_EDEFAULT, oldSymbolWindowESet));
        }
    }

    public boolean isSetSymbolWindow() {
        return this.symbolWindowESet;
    }

    public Integer getSymbolWindowActionPointOffset() {
        return this.symbolWindowActionPointOffset;
    }

    public void setSymbolWindowActionPointOffset(Integer newSymbolWindowActionPointOffset) {
        Integer oldSymbolWindowActionPointOffset = this.symbolWindowActionPointOffset;
        this.symbolWindowActionPointOffset = newSymbolWindowActionPointOffset;
        boolean oldSymbolWindowActionPointOffsetESet = this.symbolWindowActionPointOffsetESet;
        this.symbolWindowActionPointOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 65, (Object)oldSymbolWindowActionPointOffset, (Object)this.symbolWindowActionPointOffset, !oldSymbolWindowActionPointOffsetESet));
        }
    }

    public void unsetSymbolWindowActionPointOffset() {
        Integer oldSymbolWindowActionPointOffset = this.symbolWindowActionPointOffset;
        boolean oldSymbolWindowActionPointOffsetESet = this.symbolWindowActionPointOffsetESet;
        this.symbolWindowActionPointOffset = SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT;
        this.symbolWindowActionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 65, (Object)oldSymbolWindowActionPointOffset, (Object)SYMBOL_WINDOW_ACTION_POINT_OFFSET_EDEFAULT, oldSymbolWindowActionPointOffsetESet));
        }
    }

    public boolean isSetSymbolWindowActionPointOffset() {
        return this.symbolWindowActionPointOffsetESet;
    }

    public Integer getSyncFrameIDCountMax() {
        return this.syncFrameIDCountMax;
    }

    public void setSyncFrameIDCountMax(Integer newSyncFrameIDCountMax) {
        Integer oldSyncFrameIDCountMax = this.syncFrameIDCountMax;
        this.syncFrameIDCountMax = newSyncFrameIDCountMax;
        boolean oldSyncFrameIDCountMaxESet = this.syncFrameIDCountMaxESet;
        this.syncFrameIDCountMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 66, (Object)oldSyncFrameIDCountMax, (Object)this.syncFrameIDCountMax, !oldSyncFrameIDCountMaxESet));
        }
    }

    public void unsetSyncFrameIDCountMax() {
        Integer oldSyncFrameIDCountMax = this.syncFrameIDCountMax;
        boolean oldSyncFrameIDCountMaxESet = this.syncFrameIDCountMaxESet;
        this.syncFrameIDCountMax = SYNC_FRAME_ID_COUNT_MAX_EDEFAULT;
        this.syncFrameIDCountMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 66, (Object)oldSyncFrameIDCountMax, (Object)SYNC_FRAME_ID_COUNT_MAX_EDEFAULT, oldSyncFrameIDCountMaxESet));
        }
    }

    public boolean isSetSyncFrameIDCountMax() {
        return this.syncFrameIDCountMaxESet;
    }

    public Integer getTransmissionStartSequenceDuration() {
        return this.transmissionStartSequenceDuration;
    }

    public void setTransmissionStartSequenceDuration(Integer newTransmissionStartSequenceDuration) {
        Integer oldTransmissionStartSequenceDuration = this.transmissionStartSequenceDuration;
        this.transmissionStartSequenceDuration = newTransmissionStartSequenceDuration;
        boolean oldTransmissionStartSequenceDurationESet = this.transmissionStartSequenceDurationESet;
        this.transmissionStartSequenceDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 67, (Object)oldTransmissionStartSequenceDuration, (Object)this.transmissionStartSequenceDuration, !oldTransmissionStartSequenceDurationESet));
        }
    }

    public void unsetTransmissionStartSequenceDuration() {
        Integer oldTransmissionStartSequenceDuration = this.transmissionStartSequenceDuration;
        boolean oldTransmissionStartSequenceDurationESet = this.transmissionStartSequenceDurationESet;
        this.transmissionStartSequenceDuration = TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT;
        this.transmissionStartSequenceDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 67, (Object)oldTransmissionStartSequenceDuration, (Object)TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT, oldTransmissionStartSequenceDurationESet));
        }
    }

    public boolean isSetTransmissionStartSequenceDuration() {
        return this.transmissionStartSequenceDurationESet;
    }

    public Integer getWakeupRxIdle() {
        return this.wakeupRxIdle;
    }

    public void setWakeupRxIdle(Integer newWakeupRxIdle) {
        Integer oldWakeupRxIdle = this.wakeupRxIdle;
        this.wakeupRxIdle = newWakeupRxIdle;
        boolean oldWakeupRxIdleESet = this.wakeupRxIdleESet;
        this.wakeupRxIdleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 68, (Object)oldWakeupRxIdle, (Object)this.wakeupRxIdle, !oldWakeupRxIdleESet));
        }
    }

    public void unsetWakeupRxIdle() {
        Integer oldWakeupRxIdle = this.wakeupRxIdle;
        boolean oldWakeupRxIdleESet = this.wakeupRxIdleESet;
        this.wakeupRxIdle = WAKEUP_RX_IDLE_EDEFAULT;
        this.wakeupRxIdleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 68, (Object)oldWakeupRxIdle, (Object)WAKEUP_RX_IDLE_EDEFAULT, oldWakeupRxIdleESet));
        }
    }

    public boolean isSetWakeupRxIdle() {
        return this.wakeupRxIdleESet;
    }

    public Integer getWakeupRxLow() {
        return this.wakeupRxLow;
    }

    public void setWakeupRxLow(Integer newWakeupRxLow) {
        Integer oldWakeupRxLow = this.wakeupRxLow;
        this.wakeupRxLow = newWakeupRxLow;
        boolean oldWakeupRxLowESet = this.wakeupRxLowESet;
        this.wakeupRxLowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 69, (Object)oldWakeupRxLow, (Object)this.wakeupRxLow, !oldWakeupRxLowESet));
        }
    }

    public void unsetWakeupRxLow() {
        Integer oldWakeupRxLow = this.wakeupRxLow;
        boolean oldWakeupRxLowESet = this.wakeupRxLowESet;
        this.wakeupRxLow = WAKEUP_RX_LOW_EDEFAULT;
        this.wakeupRxLowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 69, (Object)oldWakeupRxLow, (Object)WAKEUP_RX_LOW_EDEFAULT, oldWakeupRxLowESet));
        }
    }

    public boolean isSetWakeupRxLow() {
        return this.wakeupRxLowESet;
    }

    public Integer getWakeupRxWindow() {
        return this.wakeupRxWindow;
    }

    public void setWakeupRxWindow(Integer newWakeupRxWindow) {
        Integer oldWakeupRxWindow = this.wakeupRxWindow;
        this.wakeupRxWindow = newWakeupRxWindow;
        boolean oldWakeupRxWindowESet = this.wakeupRxWindowESet;
        this.wakeupRxWindowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 70, (Object)oldWakeupRxWindow, (Object)this.wakeupRxWindow, !oldWakeupRxWindowESet));
        }
    }

    public void unsetWakeupRxWindow() {
        Integer oldWakeupRxWindow = this.wakeupRxWindow;
        boolean oldWakeupRxWindowESet = this.wakeupRxWindowESet;
        this.wakeupRxWindow = WAKEUP_RX_WINDOW_EDEFAULT;
        this.wakeupRxWindowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 70, (Object)oldWakeupRxWindow, (Object)WAKEUP_RX_WINDOW_EDEFAULT, oldWakeupRxWindowESet));
        }
    }

    public boolean isSetWakeupRxWindow() {
        return this.wakeupRxWindowESet;
    }

    public Integer getWakeupTxActive() {
        return this.wakeupTxActive;
    }

    public void setWakeupTxActive(Integer newWakeupTxActive) {
        Integer oldWakeupTxActive = this.wakeupTxActive;
        this.wakeupTxActive = newWakeupTxActive;
        boolean oldWakeupTxActiveESet = this.wakeupTxActiveESet;
        this.wakeupTxActiveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 71, (Object)oldWakeupTxActive, (Object)this.wakeupTxActive, !oldWakeupTxActiveESet));
        }
    }

    public void unsetWakeupTxActive() {
        Integer oldWakeupTxActive = this.wakeupTxActive;
        boolean oldWakeupTxActiveESet = this.wakeupTxActiveESet;
        this.wakeupTxActive = WAKEUP_TX_ACTIVE_EDEFAULT;
        this.wakeupTxActiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 71, (Object)oldWakeupTxActive, (Object)WAKEUP_TX_ACTIVE_EDEFAULT, oldWakeupTxActiveESet));
        }
    }

    public boolean isSetWakeupTxActive() {
        return this.wakeupTxActiveESet;
    }

    public Integer getWakeupTxIdle() {
        return this.wakeupTxIdle;
    }

    public void setWakeupTxIdle(Integer newWakeupTxIdle) {
        Integer oldWakeupTxIdle = this.wakeupTxIdle;
        this.wakeupTxIdle = newWakeupTxIdle;
        boolean oldWakeupTxIdleESet = this.wakeupTxIdleESet;
        this.wakeupTxIdleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 72, (Object)oldWakeupTxIdle, (Object)this.wakeupTxIdle, !oldWakeupTxIdleESet));
        }
    }

    public void unsetWakeupTxIdle() {
        Integer oldWakeupTxIdle = this.wakeupTxIdle;
        boolean oldWakeupTxIdleESet = this.wakeupTxIdleESet;
        this.wakeupTxIdle = WAKEUP_TX_IDLE_EDEFAULT;
        this.wakeupTxIdleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 72, (Object)oldWakeupTxIdle, (Object)WAKEUP_TX_IDLE_EDEFAULT, oldWakeupTxIdleESet));
        }
    }

    public boolean isSetWakeupTxIdle() {
        return this.wakeupTxIdleESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getActionPointOffset();
            }
            case 28: {
                return this.getBit();
            }
            case 29: {
                return this.getBusGuardianEnablePart();
            }
            case 30: {
                return this.getCasRxLowMax();
            }
            case 31: {
                return this.getCasRxLowMin();
            }
            case 32: {
                return this.getColdStartAttempts();
            }
            case 33: {
                return this.getCycle();
            }
            case 34: {
                return this.getCycleCountMax();
            }
            case 35: {
                return this.getDynamicSlotIdlePhase();
            }
            case 36: {
                return this.getIgnoreAfterTx();
            }
            case 37: {
                return this.getListenNoise();
            }
            case 38: {
                return this.getMacroInitialOffset();
            }
            case 39: {
                return this.getMacroPerCycle();
            }
            case 40: {
                return this.getMacrotickDuration();
            }
            case 41: {
                return this.getMaxInitialisationError();
            }
            case 42: {
                return this.getMaxPropagationDelay();
            }
            case 43: {
                return this.getMaxWithoutClockCorrectionFatal();
            }
            case 44: {
                return this.getMaxWithoutClockCorrectionPassive();
            }
            case 45: {
                return this.getMinPropagationDelay();
            }
            case 46: {
                return this.getMinislotActionPointOffset();
            }
            case 47: {
                return this.getMinislotDuration();
            }
            case 48: {
                return this.getNetworkIdleTime();
            }
            case 49: {
                return this.getNetworkManagementVectorLength();
            }
            case 50: {
                return this.getNmDataCycle();
            }
            case 51: {
                return this.getNmReadySleepCount();
            }
            case 52: {
                return this.getNmRemoteSleepIndicationTime();
            }
            case 53: {
                return this.getNmRepeatMessageTime();
            }
            case 54: {
                return this.getNmRepetitionCycle();
            }
            case 55: {
                return this.getNmVotingCycle();
            }
            case 56: {
                return this.getNumberOfCycles();
            }
            case 57: {
                return this.getNumberOfMinislots();
            }
            case 58: {
                return this.getNumberOfStaticSlots();
            }
            case 59: {
                return this.getOffsetCorrectionMax();
            }
            case 60: {
                return this.getOffsetCorrectionStart();
            }
            case 61: {
                return this.getPayloadLengthStatic();
            }
            case 62: {
                return this.getSampleClockPeriod();
            }
            case 63: {
                return this.getStaticSlotDuration();
            }
            case 64: {
                return this.getSymbolWindow();
            }
            case 65: {
                return this.getSymbolWindowActionPointOffset();
            }
            case 66: {
                return this.getSyncFrameIDCountMax();
            }
            case 67: {
                return this.getTransmissionStartSequenceDuration();
            }
            case 68: {
                return this.getWakeupRxIdle();
            }
            case 69: {
                return this.getWakeupRxLow();
            }
            case 70: {
                return this.getWakeupRxWindow();
            }
            case 71: {
                return this.getWakeupTxActive();
            }
            case 72: {
                return this.getWakeupTxIdle();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setActionPointOffset((Integer)newValue);
                return;
            }
            case 28: {
                this.setBit((Double)newValue);
                return;
            }
            case 29: {
                this.setBusGuardianEnablePart((Integer)newValue);
                return;
            }
            case 30: {
                this.setCasRxLowMax((Integer)newValue);
                return;
            }
            case 31: {
                this.setCasRxLowMin((Integer)newValue);
                return;
            }
            case 32: {
                this.setColdStartAttempts((Integer)newValue);
                return;
            }
            case 33: {
                this.setCycle((Double)newValue);
                return;
            }
            case 34: {
                this.setCycleCountMax((String)newValue);
                return;
            }
            case 35: {
                this.setDynamicSlotIdlePhase((Integer)newValue);
                return;
            }
            case 36: {
                this.setIgnoreAfterTx((Integer)newValue);
                return;
            }
            case 37: {
                this.setListenNoise((Integer)newValue);
                return;
            }
            case 38: {
                this.setMacroInitialOffset((Integer)newValue);
                return;
            }
            case 39: {
                this.setMacroPerCycle((Integer)newValue);
                return;
            }
            case 40: {
                this.setMacrotickDuration((Double)newValue);
                return;
            }
            case 41: {
                this.setMaxInitialisationError((Double)newValue);
                return;
            }
            case 42: {
                this.setMaxPropagationDelay((Double)newValue);
                return;
            }
            case 43: {
                this.setMaxWithoutClockCorrectionFatal((Integer)newValue);
                return;
            }
            case 44: {
                this.setMaxWithoutClockCorrectionPassive((Integer)newValue);
                return;
            }
            case 45: {
                this.setMinPropagationDelay((Double)newValue);
                return;
            }
            case 46: {
                this.setMinislotActionPointOffset((Integer)newValue);
                return;
            }
            case 47: {
                this.setMinislotDuration((Integer)newValue);
                return;
            }
            case 48: {
                this.setNetworkIdleTime((Integer)newValue);
                return;
            }
            case 49: {
                this.setNetworkManagementVectorLength((Integer)newValue);
                return;
            }
            case 50: {
                this.setNmDataCycle((Integer)newValue);
                return;
            }
            case 51: {
                this.setNmReadySleepCount((Integer)newValue);
                return;
            }
            case 52: {
                this.setNmRemoteSleepIndicationTime((Double)newValue);
                return;
            }
            case 53: {
                this.setNmRepeatMessageTime((Double)newValue);
                return;
            }
            case 54: {
                this.setNmRepetitionCycle((Integer)newValue);
                return;
            }
            case 55: {
                this.setNmVotingCycle((Integer)newValue);
                return;
            }
            case 56: {
                this.setNumberOfCycles((Integer)newValue);
                return;
            }
            case 57: {
                this.setNumberOfMinislots((Integer)newValue);
                return;
            }
            case 58: {
                this.setNumberOfStaticSlots((Integer)newValue);
                return;
            }
            case 59: {
                this.setOffsetCorrectionMax((Double)newValue);
                return;
            }
            case 60: {
                this.setOffsetCorrectionStart((Integer)newValue);
                return;
            }
            case 61: {
                this.setPayloadLengthStatic((Integer)newValue);
                return;
            }
            case 62: {
                this.setSampleClockPeriod((Double)newValue);
                return;
            }
            case 63: {
                this.setStaticSlotDuration((Integer)newValue);
                return;
            }
            case 64: {
                this.setSymbolWindow((Integer)newValue);
                return;
            }
            case 65: {
                this.setSymbolWindowActionPointOffset((Integer)newValue);
                return;
            }
            case 66: {
                this.setSyncFrameIDCountMax((Integer)newValue);
                return;
            }
            case 67: {
                this.setTransmissionStartSequenceDuration((Integer)newValue);
                return;
            }
            case 68: {
                this.setWakeupRxIdle((Integer)newValue);
                return;
            }
            case 69: {
                this.setWakeupRxLow((Integer)newValue);
                return;
            }
            case 70: {
                this.setWakeupRxWindow((Integer)newValue);
                return;
            }
            case 71: {
                this.setWakeupTxActive((Integer)newValue);
                return;
            }
            case 72: {
                this.setWakeupTxIdle((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.unsetActionPointOffset();
                return;
            }
            case 28: {
                this.unsetBit();
                return;
            }
            case 29: {
                this.unsetBusGuardianEnablePart();
                return;
            }
            case 30: {
                this.unsetCasRxLowMax();
                return;
            }
            case 31: {
                this.unsetCasRxLowMin();
                return;
            }
            case 32: {
                this.unsetColdStartAttempts();
                return;
            }
            case 33: {
                this.unsetCycle();
                return;
            }
            case 34: {
                this.unsetCycleCountMax();
                return;
            }
            case 35: {
                this.unsetDynamicSlotIdlePhase();
                return;
            }
            case 36: {
                this.unsetIgnoreAfterTx();
                return;
            }
            case 37: {
                this.unsetListenNoise();
                return;
            }
            case 38: {
                this.unsetMacroInitialOffset();
                return;
            }
            case 39: {
                this.unsetMacroPerCycle();
                return;
            }
            case 40: {
                this.unsetMacrotickDuration();
                return;
            }
            case 41: {
                this.unsetMaxInitialisationError();
                return;
            }
            case 42: {
                this.unsetMaxPropagationDelay();
                return;
            }
            case 43: {
                this.unsetMaxWithoutClockCorrectionFatal();
                return;
            }
            case 44: {
                this.unsetMaxWithoutClockCorrectionPassive();
                return;
            }
            case 45: {
                this.unsetMinPropagationDelay();
                return;
            }
            case 46: {
                this.unsetMinislotActionPointOffset();
                return;
            }
            case 47: {
                this.unsetMinislotDuration();
                return;
            }
            case 48: {
                this.unsetNetworkIdleTime();
                return;
            }
            case 49: {
                this.unsetNetworkManagementVectorLength();
                return;
            }
            case 50: {
                this.unsetNmDataCycle();
                return;
            }
            case 51: {
                this.unsetNmReadySleepCount();
                return;
            }
            case 52: {
                this.unsetNmRemoteSleepIndicationTime();
                return;
            }
            case 53: {
                this.unsetNmRepeatMessageTime();
                return;
            }
            case 54: {
                this.unsetNmRepetitionCycle();
                return;
            }
            case 55: {
                this.unsetNmVotingCycle();
                return;
            }
            case 56: {
                this.unsetNumberOfCycles();
                return;
            }
            case 57: {
                this.unsetNumberOfMinislots();
                return;
            }
            case 58: {
                this.unsetNumberOfStaticSlots();
                return;
            }
            case 59: {
                this.unsetOffsetCorrectionMax();
                return;
            }
            case 60: {
                this.unsetOffsetCorrectionStart();
                return;
            }
            case 61: {
                this.unsetPayloadLengthStatic();
                return;
            }
            case 62: {
                this.unsetSampleClockPeriod();
                return;
            }
            case 63: {
                this.unsetStaticSlotDuration();
                return;
            }
            case 64: {
                this.unsetSymbolWindow();
                return;
            }
            case 65: {
                this.unsetSymbolWindowActionPointOffset();
                return;
            }
            case 66: {
                this.unsetSyncFrameIDCountMax();
                return;
            }
            case 67: {
                this.unsetTransmissionStartSequenceDuration();
                return;
            }
            case 68: {
                this.unsetWakeupRxIdle();
                return;
            }
            case 69: {
                this.unsetWakeupRxLow();
                return;
            }
            case 70: {
                this.unsetWakeupRxWindow();
                return;
            }
            case 71: {
                this.unsetWakeupTxActive();
                return;
            }
            case 72: {
                this.unsetWakeupTxIdle();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.isSetActionPointOffset();
            }
            case 28: {
                return this.isSetBit();
            }
            case 29: {
                return this.isSetBusGuardianEnablePart();
            }
            case 30: {
                return this.isSetCasRxLowMax();
            }
            case 31: {
                return this.isSetCasRxLowMin();
            }
            case 32: {
                return this.isSetColdStartAttempts();
            }
            case 33: {
                return this.isSetCycle();
            }
            case 34: {
                return this.isSetCycleCountMax();
            }
            case 35: {
                return this.isSetDynamicSlotIdlePhase();
            }
            case 36: {
                return this.isSetIgnoreAfterTx();
            }
            case 37: {
                return this.isSetListenNoise();
            }
            case 38: {
                return this.isSetMacroInitialOffset();
            }
            case 39: {
                return this.isSetMacroPerCycle();
            }
            case 40: {
                return this.isSetMacrotickDuration();
            }
            case 41: {
                return this.isSetMaxInitialisationError();
            }
            case 42: {
                return this.isSetMaxPropagationDelay();
            }
            case 43: {
                return this.isSetMaxWithoutClockCorrectionFatal();
            }
            case 44: {
                return this.isSetMaxWithoutClockCorrectionPassive();
            }
            case 45: {
                return this.isSetMinPropagationDelay();
            }
            case 46: {
                return this.isSetMinislotActionPointOffset();
            }
            case 47: {
                return this.isSetMinislotDuration();
            }
            case 48: {
                return this.isSetNetworkIdleTime();
            }
            case 49: {
                return this.isSetNetworkManagementVectorLength();
            }
            case 50: {
                return this.isSetNmDataCycle();
            }
            case 51: {
                return this.isSetNmReadySleepCount();
            }
            case 52: {
                return this.isSetNmRemoteSleepIndicationTime();
            }
            case 53: {
                return this.isSetNmRepeatMessageTime();
            }
            case 54: {
                return this.isSetNmRepetitionCycle();
            }
            case 55: {
                return this.isSetNmVotingCycle();
            }
            case 56: {
                return this.isSetNumberOfCycles();
            }
            case 57: {
                return this.isSetNumberOfMinislots();
            }
            case 58: {
                return this.isSetNumberOfStaticSlots();
            }
            case 59: {
                return this.isSetOffsetCorrectionMax();
            }
            case 60: {
                return this.isSetOffsetCorrectionStart();
            }
            case 61: {
                return this.isSetPayloadLengthStatic();
            }
            case 62: {
                return this.isSetSampleClockPeriod();
            }
            case 63: {
                return this.isSetStaticSlotDuration();
            }
            case 64: {
                return this.isSetSymbolWindow();
            }
            case 65: {
                return this.isSetSymbolWindowActionPointOffset();
            }
            case 66: {
                return this.isSetSyncFrameIDCountMax();
            }
            case 67: {
                return this.isSetTransmissionStartSequenceDuration();
            }
            case 68: {
                return this.isSetWakeupRxIdle();
            }
            case 69: {
                return this.isSetWakeupRxLow();
            }
            case 70: {
                return this.isSetWakeupRxWindow();
            }
            case 71: {
                return this.isSetWakeupTxActive();
            }
            case 72: {
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
        result.append(", busGuardianEnablePart: ");
        if (this.busGuardianEnablePartESet) {
            result.append(this.busGuardianEnablePart);
        } else {
            result.append("<unset>");
        }
        result.append(", casRxLowMax: ");
        if (this.casRxLowMaxESet) {
            result.append(this.casRxLowMax);
        } else {
            result.append("<unset>");
        }
        result.append(", casRxLowMin: ");
        if (this.casRxLowMinESet) {
            result.append(this.casRxLowMin);
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
        result.append(", macroInitialOffset: ");
        if (this.macroInitialOffsetESet) {
            result.append(this.macroInitialOffset);
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
        result.append(", maxInitialisationError: ");
        if (this.maxInitialisationErrorESet) {
            result.append(this.maxInitialisationError);
        } else {
            result.append("<unset>");
        }
        result.append(", maxPropagationDelay: ");
        if (this.maxPropagationDelayESet) {
            result.append(this.maxPropagationDelay);
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
        result.append(", minPropagationDelay: ");
        if (this.minPropagationDelayESet) {
            result.append(this.minPropagationDelay);
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
        result.append(", nmDataCycle: ");
        if (this.nmDataCycleESet) {
            result.append(this.nmDataCycle);
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
        result.append(", numberOfCycles: ");
        if (this.numberOfCyclesESet) {
            result.append(this.numberOfCycles);
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
        result.append(", offsetCorrectionMax: ");
        if (this.offsetCorrectionMaxESet) {
            result.append(this.offsetCorrectionMax);
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
        result.append(", syncFrameIDCountMax: ");
        if (this.syncFrameIDCountMaxESet) {
            result.append(this.syncFrameIDCountMax);
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

