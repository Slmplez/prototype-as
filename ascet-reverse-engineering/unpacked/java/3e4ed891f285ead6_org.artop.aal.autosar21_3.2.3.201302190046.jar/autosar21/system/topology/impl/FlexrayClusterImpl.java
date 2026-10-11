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

import autosar21.system.topology.FlexrayCluster;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.CommunicationClusterImpl;
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
    protected static final Integer DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT = new Integer(0);
    protected Integer dynamicSlotIdlePhase = DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT;
    protected boolean dynamicSlotIdlePhaseESet;
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
    protected static final Integer MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT = new Integer(0);
    protected Integer maxWithoutClockCorrectionFatal = MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT;
    protected boolean maxWithoutClockCorrectionFatalESet;
    protected static final Integer MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT = new Integer(0);
    protected Integer maxWithoutClockCorrectionPassive = MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT;
    protected boolean maxWithoutClockCorrectionPassiveESet;
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
    protected static final Integer NUMBER_OF_MINISLOTS_EDEFAULT = new Integer(0);
    protected Integer numberOfMinislots = NUMBER_OF_MINISLOTS_EDEFAULT;
    protected boolean numberOfMinislotsESet;
    protected static final Integer NUMBER_OF_STATIC_SLOTS_EDEFAULT = new Integer(0);
    protected Integer numberOfStaticSlots = NUMBER_OF_STATIC_SLOTS_EDEFAULT;
    protected boolean numberOfStaticSlotsESet;
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
    protected static final Integer SYNC_NODE_MAX_EDEFAULT = new Integer(0);
    protected Integer syncNodeMax = SYNC_NODE_MAX_EDEFAULT;
    protected boolean syncNodeMaxESet;
    protected static final Integer TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT = new Integer(0);
    protected Integer transmissionStartSequenceDuration = TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT;
    protected boolean transmissionStartSequenceDurationESet;
    protected static final Integer WAKE_UP_SYMBOL_RX_IDLE_EDEFAULT = new Integer(0);
    protected Integer wakeUpSymbolRxIdle = WAKE_UP_SYMBOL_RX_IDLE_EDEFAULT;
    protected boolean wakeUpSymbolRxIdleESet;
    protected static final Integer WAKE_UP_SYMBOL_RX_LOW_EDEFAULT = new Integer(0);
    protected Integer wakeUpSymbolRxLow = WAKE_UP_SYMBOL_RX_LOW_EDEFAULT;
    protected boolean wakeUpSymbolRxLowESet;
    protected static final Integer WAKE_UP_SYMBOL_RX_WINDOW_EDEFAULT = new Integer(0);
    protected Integer wakeUpSymbolRxWindow = WAKE_UP_SYMBOL_RX_WINDOW_EDEFAULT;
    protected boolean wakeUpSymbolRxWindowESet;
    protected static final Integer WAKE_UP_SYMBOL_TX_IDLE_EDEFAULT = new Integer(0);
    protected Integer wakeUpSymbolTxIdle = WAKE_UP_SYMBOL_TX_IDLE_EDEFAULT;
    protected boolean wakeUpSymbolTxIdleESet;
    protected static final Integer WAKE_UP_SYMBOL_TX_LOW_EDEFAULT = new Integer(0);
    protected Integer wakeUpSymbolTxLow = WAKE_UP_SYMBOL_TX_LOW_EDEFAULT;
    protected boolean wakeUpSymbolTxLowESet;

    protected FlexrayClusterImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.FLEXRAY_CLUSTER;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldActionPointOffset, (Object)this.actionPointOffset, !oldActionPointOffsetESet));
        }
    }

    public void unsetActionPointOffset() {
        Integer oldActionPointOffset = this.actionPointOffset;
        boolean oldActionPointOffsetESet = this.actionPointOffsetESet;
        this.actionPointOffset = ACTION_POINT_OFFSET_EDEFAULT;
        this.actionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldActionPointOffset, (Object)ACTION_POINT_OFFSET_EDEFAULT, oldActionPointOffsetESet));
        }
    }

    public boolean isSetActionPointOffset() {
        return this.actionPointOffsetESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldBusGuardianEnablePart, (Object)this.busGuardianEnablePart, !oldBusGuardianEnablePartESet));
        }
    }

    public void unsetBusGuardianEnablePart() {
        Integer oldBusGuardianEnablePart = this.busGuardianEnablePart;
        boolean oldBusGuardianEnablePartESet = this.busGuardianEnablePartESet;
        this.busGuardianEnablePart = BUS_GUARDIAN_ENABLE_PART_EDEFAULT;
        this.busGuardianEnablePartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldBusGuardianEnablePart, (Object)BUS_GUARDIAN_ENABLE_PART_EDEFAULT, oldBusGuardianEnablePartESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldCasRxLowMax, (Object)this.casRxLowMax, !oldCasRxLowMaxESet));
        }
    }

    public void unsetCasRxLowMax() {
        Integer oldCasRxLowMax = this.casRxLowMax;
        boolean oldCasRxLowMaxESet = this.casRxLowMaxESet;
        this.casRxLowMax = CAS_RX_LOW_MAX_EDEFAULT;
        this.casRxLowMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldCasRxLowMax, (Object)CAS_RX_LOW_MAX_EDEFAULT, oldCasRxLowMaxESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldCasRxLowMin, (Object)this.casRxLowMin, !oldCasRxLowMinESet));
        }
    }

    public void unsetCasRxLowMin() {
        Integer oldCasRxLowMin = this.casRxLowMin;
        boolean oldCasRxLowMinESet = this.casRxLowMinESet;
        this.casRxLowMin = CAS_RX_LOW_MIN_EDEFAULT;
        this.casRxLowMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldCasRxLowMin, (Object)CAS_RX_LOW_MIN_EDEFAULT, oldCasRxLowMinESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldColdStartAttempts, (Object)this.coldStartAttempts, !oldColdStartAttemptsESet));
        }
    }

    public void unsetColdStartAttempts() {
        Integer oldColdStartAttempts = this.coldStartAttempts;
        boolean oldColdStartAttemptsESet = this.coldStartAttemptsESet;
        this.coldStartAttempts = COLD_START_ATTEMPTS_EDEFAULT;
        this.coldStartAttemptsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldColdStartAttempts, (Object)COLD_START_ATTEMPTS_EDEFAULT, oldColdStartAttemptsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldCycle, (Object)this.cycle, !oldCycleESet));
        }
    }

    public void unsetCycle() {
        Double oldCycle = this.cycle;
        boolean oldCycleESet = this.cycleESet;
        this.cycle = CYCLE_EDEFAULT;
        this.cycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldCycle, (Object)CYCLE_EDEFAULT, oldCycleESet));
        }
    }

    public boolean isSetCycle() {
        return this.cycleESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDynamicSlotIdlePhase, (Object)this.dynamicSlotIdlePhase, !oldDynamicSlotIdlePhaseESet));
        }
    }

    public void unsetDynamicSlotIdlePhase() {
        Integer oldDynamicSlotIdlePhase = this.dynamicSlotIdlePhase;
        boolean oldDynamicSlotIdlePhaseESet = this.dynamicSlotIdlePhaseESet;
        this.dynamicSlotIdlePhase = DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT;
        this.dynamicSlotIdlePhaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldDynamicSlotIdlePhase, (Object)DYNAMIC_SLOT_IDLE_PHASE_EDEFAULT, oldDynamicSlotIdlePhaseESet));
        }
    }

    public boolean isSetDynamicSlotIdlePhase() {
        return this.dynamicSlotIdlePhaseESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldListenNoise, (Object)this.listenNoise, !oldListenNoiseESet));
        }
    }

    public void unsetListenNoise() {
        Integer oldListenNoise = this.listenNoise;
        boolean oldListenNoiseESet = this.listenNoiseESet;
        this.listenNoise = LISTEN_NOISE_EDEFAULT;
        this.listenNoiseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldListenNoise, (Object)LISTEN_NOISE_EDEFAULT, oldListenNoiseESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldMacroInitialOffset, (Object)this.macroInitialOffset, !oldMacroInitialOffsetESet));
        }
    }

    public void unsetMacroInitialOffset() {
        Integer oldMacroInitialOffset = this.macroInitialOffset;
        boolean oldMacroInitialOffsetESet = this.macroInitialOffsetESet;
        this.macroInitialOffset = MACRO_INITIAL_OFFSET_EDEFAULT;
        this.macroInitialOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldMacroInitialOffset, (Object)MACRO_INITIAL_OFFSET_EDEFAULT, oldMacroInitialOffsetESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldMacroPerCycle, (Object)this.macroPerCycle, !oldMacroPerCycleESet));
        }
    }

    public void unsetMacroPerCycle() {
        Integer oldMacroPerCycle = this.macroPerCycle;
        boolean oldMacroPerCycleESet = this.macroPerCycleESet;
        this.macroPerCycle = MACRO_PER_CYCLE_EDEFAULT;
        this.macroPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldMacroPerCycle, (Object)MACRO_PER_CYCLE_EDEFAULT, oldMacroPerCycleESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldMacrotickDuration, (Object)this.macrotickDuration, !oldMacrotickDurationESet));
        }
    }

    public void unsetMacrotickDuration() {
        Double oldMacrotickDuration = this.macrotickDuration;
        boolean oldMacrotickDurationESet = this.macrotickDurationESet;
        this.macrotickDuration = MACROTICK_DURATION_EDEFAULT;
        this.macrotickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldMacrotickDuration, (Object)MACROTICK_DURATION_EDEFAULT, oldMacrotickDurationESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldMaxInitialisationError, (Object)this.maxInitialisationError, !oldMaxInitialisationErrorESet));
        }
    }

    public void unsetMaxInitialisationError() {
        Double oldMaxInitialisationError = this.maxInitialisationError;
        boolean oldMaxInitialisationErrorESet = this.maxInitialisationErrorESet;
        this.maxInitialisationError = MAX_INITIALISATION_ERROR_EDEFAULT;
        this.maxInitialisationErrorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldMaxInitialisationError, (Object)MAX_INITIALISATION_ERROR_EDEFAULT, oldMaxInitialisationErrorESet));
        }
    }

    public boolean isSetMaxInitialisationError() {
        return this.maxInitialisationErrorESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldMaxWithoutClockCorrectionFatal, (Object)this.maxWithoutClockCorrectionFatal, !oldMaxWithoutClockCorrectionFatalESet));
        }
    }

    public void unsetMaxWithoutClockCorrectionFatal() {
        Integer oldMaxWithoutClockCorrectionFatal = this.maxWithoutClockCorrectionFatal;
        boolean oldMaxWithoutClockCorrectionFatalESet = this.maxWithoutClockCorrectionFatalESet;
        this.maxWithoutClockCorrectionFatal = MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT;
        this.maxWithoutClockCorrectionFatalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldMaxWithoutClockCorrectionFatal, (Object)MAX_WITHOUT_CLOCK_CORRECTION_FATAL_EDEFAULT, oldMaxWithoutClockCorrectionFatalESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldMaxWithoutClockCorrectionPassive, (Object)this.maxWithoutClockCorrectionPassive, !oldMaxWithoutClockCorrectionPassiveESet));
        }
    }

    public void unsetMaxWithoutClockCorrectionPassive() {
        Integer oldMaxWithoutClockCorrectionPassive = this.maxWithoutClockCorrectionPassive;
        boolean oldMaxWithoutClockCorrectionPassiveESet = this.maxWithoutClockCorrectionPassiveESet;
        this.maxWithoutClockCorrectionPassive = MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT;
        this.maxWithoutClockCorrectionPassiveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldMaxWithoutClockCorrectionPassive, (Object)MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE_EDEFAULT, oldMaxWithoutClockCorrectionPassiveESet));
        }
    }

    public boolean isSetMaxWithoutClockCorrectionPassive() {
        return this.maxWithoutClockCorrectionPassiveESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldMinislotActionPointOffset, (Object)this.minislotActionPointOffset, !oldMinislotActionPointOffsetESet));
        }
    }

    public void unsetMinislotActionPointOffset() {
        Integer oldMinislotActionPointOffset = this.minislotActionPointOffset;
        boolean oldMinislotActionPointOffsetESet = this.minislotActionPointOffsetESet;
        this.minislotActionPointOffset = MINISLOT_ACTION_POINT_OFFSET_EDEFAULT;
        this.minislotActionPointOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldMinislotActionPointOffset, (Object)MINISLOT_ACTION_POINT_OFFSET_EDEFAULT, oldMinislotActionPointOffsetESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldMinislotDuration, (Object)this.minislotDuration, !oldMinislotDurationESet));
        }
    }

    public void unsetMinislotDuration() {
        Integer oldMinislotDuration = this.minislotDuration;
        boolean oldMinislotDurationESet = this.minislotDurationESet;
        this.minislotDuration = MINISLOT_DURATION_EDEFAULT;
        this.minislotDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldMinislotDuration, (Object)MINISLOT_DURATION_EDEFAULT, oldMinislotDurationESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldNetworkIdleTime, (Object)this.networkIdleTime, !oldNetworkIdleTimeESet));
        }
    }

    public void unsetNetworkIdleTime() {
        Integer oldNetworkIdleTime = this.networkIdleTime;
        boolean oldNetworkIdleTimeESet = this.networkIdleTimeESet;
        this.networkIdleTime = NETWORK_IDLE_TIME_EDEFAULT;
        this.networkIdleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldNetworkIdleTime, (Object)NETWORK_IDLE_TIME_EDEFAULT, oldNetworkIdleTimeESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldNetworkManagementVectorLength, (Object)this.networkManagementVectorLength, !oldNetworkManagementVectorLengthESet));
        }
    }

    public void unsetNetworkManagementVectorLength() {
        Integer oldNetworkManagementVectorLength = this.networkManagementVectorLength;
        boolean oldNetworkManagementVectorLengthESet = this.networkManagementVectorLengthESet;
        this.networkManagementVectorLength = NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT;
        this.networkManagementVectorLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldNetworkManagementVectorLength, (Object)NETWORK_MANAGEMENT_VECTOR_LENGTH_EDEFAULT, oldNetworkManagementVectorLengthESet));
        }
    }

    public boolean isSetNetworkManagementVectorLength() {
        return this.networkManagementVectorLengthESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldNumberOfMinislots, (Object)this.numberOfMinislots, !oldNumberOfMinislotsESet));
        }
    }

    public void unsetNumberOfMinislots() {
        Integer oldNumberOfMinislots = this.numberOfMinislots;
        boolean oldNumberOfMinislotsESet = this.numberOfMinislotsESet;
        this.numberOfMinislots = NUMBER_OF_MINISLOTS_EDEFAULT;
        this.numberOfMinislotsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldNumberOfMinislots, (Object)NUMBER_OF_MINISLOTS_EDEFAULT, oldNumberOfMinislotsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldNumberOfStaticSlots, (Object)this.numberOfStaticSlots, !oldNumberOfStaticSlotsESet));
        }
    }

    public void unsetNumberOfStaticSlots() {
        Integer oldNumberOfStaticSlots = this.numberOfStaticSlots;
        boolean oldNumberOfStaticSlotsESet = this.numberOfStaticSlotsESet;
        this.numberOfStaticSlots = NUMBER_OF_STATIC_SLOTS_EDEFAULT;
        this.numberOfStaticSlotsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldNumberOfStaticSlots, (Object)NUMBER_OF_STATIC_SLOTS_EDEFAULT, oldNumberOfStaticSlotsESet));
        }
    }

    public boolean isSetNumberOfStaticSlots() {
        return this.numberOfStaticSlotsESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldOffsetCorrectionStart, (Object)this.offsetCorrectionStart, !oldOffsetCorrectionStartESet));
        }
    }

    public void unsetOffsetCorrectionStart() {
        Integer oldOffsetCorrectionStart = this.offsetCorrectionStart;
        boolean oldOffsetCorrectionStartESet = this.offsetCorrectionStartESet;
        this.offsetCorrectionStart = OFFSET_CORRECTION_START_EDEFAULT;
        this.offsetCorrectionStartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldOffsetCorrectionStart, (Object)OFFSET_CORRECTION_START_EDEFAULT, oldOffsetCorrectionStartESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 42, (Object)oldPayloadLengthStatic, (Object)this.payloadLengthStatic, !oldPayloadLengthStaticESet));
        }
    }

    public void unsetPayloadLengthStatic() {
        Integer oldPayloadLengthStatic = this.payloadLengthStatic;
        boolean oldPayloadLengthStaticESet = this.payloadLengthStaticESet;
        this.payloadLengthStatic = PAYLOAD_LENGTH_STATIC_EDEFAULT;
        this.payloadLengthStaticESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 42, (Object)oldPayloadLengthStatic, (Object)PAYLOAD_LENGTH_STATIC_EDEFAULT, oldPayloadLengthStaticESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 43, (Object)oldSampleClockPeriod, (Object)this.sampleClockPeriod, !oldSampleClockPeriodESet));
        }
    }

    public void unsetSampleClockPeriod() {
        Double oldSampleClockPeriod = this.sampleClockPeriod;
        boolean oldSampleClockPeriodESet = this.sampleClockPeriodESet;
        this.sampleClockPeriod = SAMPLE_CLOCK_PERIOD_EDEFAULT;
        this.sampleClockPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 43, (Object)oldSampleClockPeriod, (Object)SAMPLE_CLOCK_PERIOD_EDEFAULT, oldSampleClockPeriodESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 44, (Object)oldStaticSlotDuration, (Object)this.staticSlotDuration, !oldStaticSlotDurationESet));
        }
    }

    public void unsetStaticSlotDuration() {
        Integer oldStaticSlotDuration = this.staticSlotDuration;
        boolean oldStaticSlotDurationESet = this.staticSlotDurationESet;
        this.staticSlotDuration = STATIC_SLOT_DURATION_EDEFAULT;
        this.staticSlotDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 44, (Object)oldStaticSlotDuration, (Object)STATIC_SLOT_DURATION_EDEFAULT, oldStaticSlotDurationESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 45, (Object)oldSymbolWindow, (Object)this.symbolWindow, !oldSymbolWindowESet));
        }
    }

    public void unsetSymbolWindow() {
        Integer oldSymbolWindow = this.symbolWindow;
        boolean oldSymbolWindowESet = this.symbolWindowESet;
        this.symbolWindow = SYMBOL_WINDOW_EDEFAULT;
        this.symbolWindowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 45, (Object)oldSymbolWindow, (Object)SYMBOL_WINDOW_EDEFAULT, oldSymbolWindowESet));
        }
    }

    public boolean isSetSymbolWindow() {
        return this.symbolWindowESet;
    }

    public Integer getSyncNodeMax() {
        return this.syncNodeMax;
    }

    public void setSyncNodeMax(Integer newSyncNodeMax) {
        Integer oldSyncNodeMax = this.syncNodeMax;
        this.syncNodeMax = newSyncNodeMax;
        boolean oldSyncNodeMaxESet = this.syncNodeMaxESet;
        this.syncNodeMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 46, (Object)oldSyncNodeMax, (Object)this.syncNodeMax, !oldSyncNodeMaxESet));
        }
    }

    public void unsetSyncNodeMax() {
        Integer oldSyncNodeMax = this.syncNodeMax;
        boolean oldSyncNodeMaxESet = this.syncNodeMaxESet;
        this.syncNodeMax = SYNC_NODE_MAX_EDEFAULT;
        this.syncNodeMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 46, (Object)oldSyncNodeMax, (Object)SYNC_NODE_MAX_EDEFAULT, oldSyncNodeMaxESet));
        }
    }

    public boolean isSetSyncNodeMax() {
        return this.syncNodeMaxESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 47, (Object)oldTransmissionStartSequenceDuration, (Object)this.transmissionStartSequenceDuration, !oldTransmissionStartSequenceDurationESet));
        }
    }

    public void unsetTransmissionStartSequenceDuration() {
        Integer oldTransmissionStartSequenceDuration = this.transmissionStartSequenceDuration;
        boolean oldTransmissionStartSequenceDurationESet = this.transmissionStartSequenceDurationESet;
        this.transmissionStartSequenceDuration = TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT;
        this.transmissionStartSequenceDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 47, (Object)oldTransmissionStartSequenceDuration, (Object)TRANSMISSION_START_SEQUENCE_DURATION_EDEFAULT, oldTransmissionStartSequenceDurationESet));
        }
    }

    public boolean isSetTransmissionStartSequenceDuration() {
        return this.transmissionStartSequenceDurationESet;
    }

    public Integer getWakeUpSymbolRxIdle() {
        return this.wakeUpSymbolRxIdle;
    }

    public void setWakeUpSymbolRxIdle(Integer newWakeUpSymbolRxIdle) {
        Integer oldWakeUpSymbolRxIdle = this.wakeUpSymbolRxIdle;
        this.wakeUpSymbolRxIdle = newWakeUpSymbolRxIdle;
        boolean oldWakeUpSymbolRxIdleESet = this.wakeUpSymbolRxIdleESet;
        this.wakeUpSymbolRxIdleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 48, (Object)oldWakeUpSymbolRxIdle, (Object)this.wakeUpSymbolRxIdle, !oldWakeUpSymbolRxIdleESet));
        }
    }

    public void unsetWakeUpSymbolRxIdle() {
        Integer oldWakeUpSymbolRxIdle = this.wakeUpSymbolRxIdle;
        boolean oldWakeUpSymbolRxIdleESet = this.wakeUpSymbolRxIdleESet;
        this.wakeUpSymbolRxIdle = WAKE_UP_SYMBOL_RX_IDLE_EDEFAULT;
        this.wakeUpSymbolRxIdleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 48, (Object)oldWakeUpSymbolRxIdle, (Object)WAKE_UP_SYMBOL_RX_IDLE_EDEFAULT, oldWakeUpSymbolRxIdleESet));
        }
    }

    public boolean isSetWakeUpSymbolRxIdle() {
        return this.wakeUpSymbolRxIdleESet;
    }

    public Integer getWakeUpSymbolRxLow() {
        return this.wakeUpSymbolRxLow;
    }

    public void setWakeUpSymbolRxLow(Integer newWakeUpSymbolRxLow) {
        Integer oldWakeUpSymbolRxLow = this.wakeUpSymbolRxLow;
        this.wakeUpSymbolRxLow = newWakeUpSymbolRxLow;
        boolean oldWakeUpSymbolRxLowESet = this.wakeUpSymbolRxLowESet;
        this.wakeUpSymbolRxLowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 49, (Object)oldWakeUpSymbolRxLow, (Object)this.wakeUpSymbolRxLow, !oldWakeUpSymbolRxLowESet));
        }
    }

    public void unsetWakeUpSymbolRxLow() {
        Integer oldWakeUpSymbolRxLow = this.wakeUpSymbolRxLow;
        boolean oldWakeUpSymbolRxLowESet = this.wakeUpSymbolRxLowESet;
        this.wakeUpSymbolRxLow = WAKE_UP_SYMBOL_RX_LOW_EDEFAULT;
        this.wakeUpSymbolRxLowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 49, (Object)oldWakeUpSymbolRxLow, (Object)WAKE_UP_SYMBOL_RX_LOW_EDEFAULT, oldWakeUpSymbolRxLowESet));
        }
    }

    public boolean isSetWakeUpSymbolRxLow() {
        return this.wakeUpSymbolRxLowESet;
    }

    public Integer getWakeUpSymbolRxWindow() {
        return this.wakeUpSymbolRxWindow;
    }

    public void setWakeUpSymbolRxWindow(Integer newWakeUpSymbolRxWindow) {
        Integer oldWakeUpSymbolRxWindow = this.wakeUpSymbolRxWindow;
        this.wakeUpSymbolRxWindow = newWakeUpSymbolRxWindow;
        boolean oldWakeUpSymbolRxWindowESet = this.wakeUpSymbolRxWindowESet;
        this.wakeUpSymbolRxWindowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 50, (Object)oldWakeUpSymbolRxWindow, (Object)this.wakeUpSymbolRxWindow, !oldWakeUpSymbolRxWindowESet));
        }
    }

    public void unsetWakeUpSymbolRxWindow() {
        Integer oldWakeUpSymbolRxWindow = this.wakeUpSymbolRxWindow;
        boolean oldWakeUpSymbolRxWindowESet = this.wakeUpSymbolRxWindowESet;
        this.wakeUpSymbolRxWindow = WAKE_UP_SYMBOL_RX_WINDOW_EDEFAULT;
        this.wakeUpSymbolRxWindowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 50, (Object)oldWakeUpSymbolRxWindow, (Object)WAKE_UP_SYMBOL_RX_WINDOW_EDEFAULT, oldWakeUpSymbolRxWindowESet));
        }
    }

    public boolean isSetWakeUpSymbolRxWindow() {
        return this.wakeUpSymbolRxWindowESet;
    }

    public Integer getWakeUpSymbolTxIdle() {
        return this.wakeUpSymbolTxIdle;
    }

    public void setWakeUpSymbolTxIdle(Integer newWakeUpSymbolTxIdle) {
        Integer oldWakeUpSymbolTxIdle = this.wakeUpSymbolTxIdle;
        this.wakeUpSymbolTxIdle = newWakeUpSymbolTxIdle;
        boolean oldWakeUpSymbolTxIdleESet = this.wakeUpSymbolTxIdleESet;
        this.wakeUpSymbolTxIdleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 51, (Object)oldWakeUpSymbolTxIdle, (Object)this.wakeUpSymbolTxIdle, !oldWakeUpSymbolTxIdleESet));
        }
    }

    public void unsetWakeUpSymbolTxIdle() {
        Integer oldWakeUpSymbolTxIdle = this.wakeUpSymbolTxIdle;
        boolean oldWakeUpSymbolTxIdleESet = this.wakeUpSymbolTxIdleESet;
        this.wakeUpSymbolTxIdle = WAKE_UP_SYMBOL_TX_IDLE_EDEFAULT;
        this.wakeUpSymbolTxIdleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 51, (Object)oldWakeUpSymbolTxIdle, (Object)WAKE_UP_SYMBOL_TX_IDLE_EDEFAULT, oldWakeUpSymbolTxIdleESet));
        }
    }

    public boolean isSetWakeUpSymbolTxIdle() {
        return this.wakeUpSymbolTxIdleESet;
    }

    public Integer getWakeUpSymbolTxLow() {
        return this.wakeUpSymbolTxLow;
    }

    public void setWakeUpSymbolTxLow(Integer newWakeUpSymbolTxLow) {
        Integer oldWakeUpSymbolTxLow = this.wakeUpSymbolTxLow;
        this.wakeUpSymbolTxLow = newWakeUpSymbolTxLow;
        boolean oldWakeUpSymbolTxLowESet = this.wakeUpSymbolTxLowESet;
        this.wakeUpSymbolTxLowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 52, (Object)oldWakeUpSymbolTxLow, (Object)this.wakeUpSymbolTxLow, !oldWakeUpSymbolTxLowESet));
        }
    }

    public void unsetWakeUpSymbolTxLow() {
        Integer oldWakeUpSymbolTxLow = this.wakeUpSymbolTxLow;
        boolean oldWakeUpSymbolTxLowESet = this.wakeUpSymbolTxLowESet;
        this.wakeUpSymbolTxLow = WAKE_UP_SYMBOL_TX_LOW_EDEFAULT;
        this.wakeUpSymbolTxLowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 52, (Object)oldWakeUpSymbolTxLow, (Object)WAKE_UP_SYMBOL_TX_LOW_EDEFAULT, oldWakeUpSymbolTxLowESet));
        }
    }

    public boolean isSetWakeUpSymbolTxLow() {
        return this.wakeUpSymbolTxLowESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getActionPointOffset();
            }
            case 22: {
                return this.getBusGuardianEnablePart();
            }
            case 23: {
                return this.getCasRxLowMax();
            }
            case 24: {
                return this.getCasRxLowMin();
            }
            case 25: {
                return this.getColdStartAttempts();
            }
            case 26: {
                return this.getCycle();
            }
            case 27: {
                return this.getDynamicSlotIdlePhase();
            }
            case 28: {
                return this.getListenNoise();
            }
            case 29: {
                return this.getMacroInitialOffset();
            }
            case 30: {
                return this.getMacroPerCycle();
            }
            case 31: {
                return this.getMacrotickDuration();
            }
            case 32: {
                return this.getMaxInitialisationError();
            }
            case 33: {
                return this.getMaxWithoutClockCorrectionFatal();
            }
            case 34: {
                return this.getMaxWithoutClockCorrectionPassive();
            }
            case 35: {
                return this.getMinislotActionPointOffset();
            }
            case 36: {
                return this.getMinislotDuration();
            }
            case 37: {
                return this.getNetworkIdleTime();
            }
            case 38: {
                return this.getNetworkManagementVectorLength();
            }
            case 39: {
                return this.getNumberOfMinislots();
            }
            case 40: {
                return this.getNumberOfStaticSlots();
            }
            case 41: {
                return this.getOffsetCorrectionStart();
            }
            case 42: {
                return this.getPayloadLengthStatic();
            }
            case 43: {
                return this.getSampleClockPeriod();
            }
            case 44: {
                return this.getStaticSlotDuration();
            }
            case 45: {
                return this.getSymbolWindow();
            }
            case 46: {
                return this.getSyncNodeMax();
            }
            case 47: {
                return this.getTransmissionStartSequenceDuration();
            }
            case 48: {
                return this.getWakeUpSymbolRxIdle();
            }
            case 49: {
                return this.getWakeUpSymbolRxLow();
            }
            case 50: {
                return this.getWakeUpSymbolRxWindow();
            }
            case 51: {
                return this.getWakeUpSymbolTxIdle();
            }
            case 52: {
                return this.getWakeUpSymbolTxLow();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setActionPointOffset((Integer)newValue);
                return;
            }
            case 22: {
                this.setBusGuardianEnablePart((Integer)newValue);
                return;
            }
            case 23: {
                this.setCasRxLowMax((Integer)newValue);
                return;
            }
            case 24: {
                this.setCasRxLowMin((Integer)newValue);
                return;
            }
            case 25: {
                this.setColdStartAttempts((Integer)newValue);
                return;
            }
            case 26: {
                this.setCycle((Double)newValue);
                return;
            }
            case 27: {
                this.setDynamicSlotIdlePhase((Integer)newValue);
                return;
            }
            case 28: {
                this.setListenNoise((Integer)newValue);
                return;
            }
            case 29: {
                this.setMacroInitialOffset((Integer)newValue);
                return;
            }
            case 30: {
                this.setMacroPerCycle((Integer)newValue);
                return;
            }
            case 31: {
                this.setMacrotickDuration((Double)newValue);
                return;
            }
            case 32: {
                this.setMaxInitialisationError((Double)newValue);
                return;
            }
            case 33: {
                this.setMaxWithoutClockCorrectionFatal((Integer)newValue);
                return;
            }
            case 34: {
                this.setMaxWithoutClockCorrectionPassive((Integer)newValue);
                return;
            }
            case 35: {
                this.setMinislotActionPointOffset((Integer)newValue);
                return;
            }
            case 36: {
                this.setMinislotDuration((Integer)newValue);
                return;
            }
            case 37: {
                this.setNetworkIdleTime((Integer)newValue);
                return;
            }
            case 38: {
                this.setNetworkManagementVectorLength((Integer)newValue);
                return;
            }
            case 39: {
                this.setNumberOfMinislots((Integer)newValue);
                return;
            }
            case 40: {
                this.setNumberOfStaticSlots((Integer)newValue);
                return;
            }
            case 41: {
                this.setOffsetCorrectionStart((Integer)newValue);
                return;
            }
            case 42: {
                this.setPayloadLengthStatic((Integer)newValue);
                return;
            }
            case 43: {
                this.setSampleClockPeriod((Double)newValue);
                return;
            }
            case 44: {
                this.setStaticSlotDuration((Integer)newValue);
                return;
            }
            case 45: {
                this.setSymbolWindow((Integer)newValue);
                return;
            }
            case 46: {
                this.setSyncNodeMax((Integer)newValue);
                return;
            }
            case 47: {
                this.setTransmissionStartSequenceDuration((Integer)newValue);
                return;
            }
            case 48: {
                this.setWakeUpSymbolRxIdle((Integer)newValue);
                return;
            }
            case 49: {
                this.setWakeUpSymbolRxLow((Integer)newValue);
                return;
            }
            case 50: {
                this.setWakeUpSymbolRxWindow((Integer)newValue);
                return;
            }
            case 51: {
                this.setWakeUpSymbolTxIdle((Integer)newValue);
                return;
            }
            case 52: {
                this.setWakeUpSymbolTxLow((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetActionPointOffset();
                return;
            }
            case 22: {
                this.unsetBusGuardianEnablePart();
                return;
            }
            case 23: {
                this.unsetCasRxLowMax();
                return;
            }
            case 24: {
                this.unsetCasRxLowMin();
                return;
            }
            case 25: {
                this.unsetColdStartAttempts();
                return;
            }
            case 26: {
                this.unsetCycle();
                return;
            }
            case 27: {
                this.unsetDynamicSlotIdlePhase();
                return;
            }
            case 28: {
                this.unsetListenNoise();
                return;
            }
            case 29: {
                this.unsetMacroInitialOffset();
                return;
            }
            case 30: {
                this.unsetMacroPerCycle();
                return;
            }
            case 31: {
                this.unsetMacrotickDuration();
                return;
            }
            case 32: {
                this.unsetMaxInitialisationError();
                return;
            }
            case 33: {
                this.unsetMaxWithoutClockCorrectionFatal();
                return;
            }
            case 34: {
                this.unsetMaxWithoutClockCorrectionPassive();
                return;
            }
            case 35: {
                this.unsetMinislotActionPointOffset();
                return;
            }
            case 36: {
                this.unsetMinislotDuration();
                return;
            }
            case 37: {
                this.unsetNetworkIdleTime();
                return;
            }
            case 38: {
                this.unsetNetworkManagementVectorLength();
                return;
            }
            case 39: {
                this.unsetNumberOfMinislots();
                return;
            }
            case 40: {
                this.unsetNumberOfStaticSlots();
                return;
            }
            case 41: {
                this.unsetOffsetCorrectionStart();
                return;
            }
            case 42: {
                this.unsetPayloadLengthStatic();
                return;
            }
            case 43: {
                this.unsetSampleClockPeriod();
                return;
            }
            case 44: {
                this.unsetStaticSlotDuration();
                return;
            }
            case 45: {
                this.unsetSymbolWindow();
                return;
            }
            case 46: {
                this.unsetSyncNodeMax();
                return;
            }
            case 47: {
                this.unsetTransmissionStartSequenceDuration();
                return;
            }
            case 48: {
                this.unsetWakeUpSymbolRxIdle();
                return;
            }
            case 49: {
                this.unsetWakeUpSymbolRxLow();
                return;
            }
            case 50: {
                this.unsetWakeUpSymbolRxWindow();
                return;
            }
            case 51: {
                this.unsetWakeUpSymbolTxIdle();
                return;
            }
            case 52: {
                this.unsetWakeUpSymbolTxLow();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetActionPointOffset();
            }
            case 22: {
                return this.isSetBusGuardianEnablePart();
            }
            case 23: {
                return this.isSetCasRxLowMax();
            }
            case 24: {
                return this.isSetCasRxLowMin();
            }
            case 25: {
                return this.isSetColdStartAttempts();
            }
            case 26: {
                return this.isSetCycle();
            }
            case 27: {
                return this.isSetDynamicSlotIdlePhase();
            }
            case 28: {
                return this.isSetListenNoise();
            }
            case 29: {
                return this.isSetMacroInitialOffset();
            }
            case 30: {
                return this.isSetMacroPerCycle();
            }
            case 31: {
                return this.isSetMacrotickDuration();
            }
            case 32: {
                return this.isSetMaxInitialisationError();
            }
            case 33: {
                return this.isSetMaxWithoutClockCorrectionFatal();
            }
            case 34: {
                return this.isSetMaxWithoutClockCorrectionPassive();
            }
            case 35: {
                return this.isSetMinislotActionPointOffset();
            }
            case 36: {
                return this.isSetMinislotDuration();
            }
            case 37: {
                return this.isSetNetworkIdleTime();
            }
            case 38: {
                return this.isSetNetworkManagementVectorLength();
            }
            case 39: {
                return this.isSetNumberOfMinislots();
            }
            case 40: {
                return this.isSetNumberOfStaticSlots();
            }
            case 41: {
                return this.isSetOffsetCorrectionStart();
            }
            case 42: {
                return this.isSetPayloadLengthStatic();
            }
            case 43: {
                return this.isSetSampleClockPeriod();
            }
            case 44: {
                return this.isSetStaticSlotDuration();
            }
            case 45: {
                return this.isSetSymbolWindow();
            }
            case 46: {
                return this.isSetSyncNodeMax();
            }
            case 47: {
                return this.isSetTransmissionStartSequenceDuration();
            }
            case 48: {
                return this.isSetWakeUpSymbolRxIdle();
            }
            case 49: {
                return this.isSetWakeUpSymbolRxLow();
            }
            case 50: {
                return this.isSetWakeUpSymbolRxWindow();
            }
            case 51: {
                return this.isSetWakeUpSymbolTxIdle();
            }
            case 52: {
                return this.isSetWakeUpSymbolTxLow();
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
        result.append(", dynamicSlotIdlePhase: ");
        if (this.dynamicSlotIdlePhaseESet) {
            result.append(this.dynamicSlotIdlePhase);
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
        result.append(", OffsetCorrectionStart: ");
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
        result.append(", syncNodeMax: ");
        if (this.syncNodeMaxESet) {
            result.append(this.syncNodeMax);
        } else {
            result.append("<unset>");
        }
        result.append(", transmissionStartSequenceDuration: ");
        if (this.transmissionStartSequenceDurationESet) {
            result.append(this.transmissionStartSequenceDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpSymbolRxIdle: ");
        if (this.wakeUpSymbolRxIdleESet) {
            result.append(this.wakeUpSymbolRxIdle);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpSymbolRxLow: ");
        if (this.wakeUpSymbolRxLowESet) {
            result.append(this.wakeUpSymbolRxLow);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpSymbolRxWindow: ");
        if (this.wakeUpSymbolRxWindowESet) {
            result.append(this.wakeUpSymbolRxWindow);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpSymbolTxIdle: ");
        if (this.wakeUpSymbolTxIdleESet) {
            result.append(this.wakeUpSymbolTxIdle);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpSymbolTxLow: ");
        if (this.wakeUpSymbolTxLowESet) {
            result.append(this.wakeUpSymbolTxLow);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

