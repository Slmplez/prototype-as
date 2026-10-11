/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingFactory;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TimingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TimingPackage
extends EPackage {
    public static final String eNAME = "timing";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc/t";
    public static final String eNS_PREFIX = "";
    public static final TimingPackage eINSTANCE = TimingPackageImpl.init();
    public static final int TIME_RANGE_TYPE_TOLERANCE = 1;
    public static final int TIME_RANGE_TYPE_TOLERANCE__GCHECKSUM = 0;
    public static final int TIME_RANGE_TYPE_TOLERANCE__GTIMESTAMP = 1;
    public static final int TIME_RANGE_TYPE_TOLERANCE__CHECKSUM = 2;
    public static final int TIME_RANGE_TYPE_TOLERANCE__TIMESTAMP = 3;
    public static final int TIME_RANGE_TYPE_TOLERANCE__TIME_RANGE_TYPE = 4;
    public static final int TIME_RANGE_TYPE_TOLERANCE_FEATURE_COUNT = 5;
    public static final int ABSOLUTE_TOLERANCE = 0;
    public static final int ABSOLUTE_TOLERANCE__GCHECKSUM = 0;
    public static final int ABSOLUTE_TOLERANCE__GTIMESTAMP = 1;
    public static final int ABSOLUTE_TOLERANCE__CHECKSUM = 2;
    public static final int ABSOLUTE_TOLERANCE__TIMESTAMP = 3;
    public static final int ABSOLUTE_TOLERANCE__TIME_RANGE_TYPE = 4;
    public static final int ABSOLUTE_TOLERANCE__ABSOLUTE = 5;
    public static final int ABSOLUTE_TOLERANCE_FEATURE_COUNT = 6;
    public static final int CYCLIC_TIMING = 2;
    public static final int CYCLIC_TIMING__GCHECKSUM = 0;
    public static final int CYCLIC_TIMING__GTIMESTAMP = 1;
    public static final int CYCLIC_TIMING__CHECKSUM = 2;
    public static final int CYCLIC_TIMING__TIMESTAMP = 3;
    public static final int CYCLIC_TIMING__FINAL_REPETITIONS = 4;
    public static final int CYCLIC_TIMING__REPEATING_TIME = 5;
    public static final int CYCLIC_TIMING__STARTING_TIME = 6;
    public static final int CYCLIC_TIMING_FEATURE_COUNT = 7;
    public static final int TIME_RANGE_TYPE = 3;
    public static final int TIME_RANGE_TYPE__GCHECKSUM = 0;
    public static final int TIME_RANGE_TYPE__GTIMESTAMP = 1;
    public static final int TIME_RANGE_TYPE__CHECKSUM = 2;
    public static final int TIME_RANGE_TYPE__TIMESTAMP = 3;
    public static final int TIME_RANGE_TYPE__TOLERANCE = 4;
    public static final int TIME_RANGE_TYPE__VALUE = 5;
    public static final int TIME_RANGE_TYPE_FEATURE_COUNT = 6;
    public static final int EVENT_CONTROLLED_TIMING = 4;
    public static final int EVENT_CONTROLLED_TIMING__GCHECKSUM = 0;
    public static final int EVENT_CONTROLLED_TIMING__GTIMESTAMP = 1;
    public static final int EVENT_CONTROLLED_TIMING__CHECKSUM = 2;
    public static final int EVENT_CONTROLLED_TIMING__TIMESTAMP = 3;
    public static final int EVENT_CONTROLLED_TIMING__NUMBER_OF_REPEATS = 4;
    public static final int EVENT_CONTROLLED_TIMING__REPETITION_PERIOD = 5;
    public static final int EVENT_CONTROLLED_TIMING_FEATURE_COUNT = 6;
    public static final int RELATIVE_TOLERANCE = 5;
    public static final int RELATIVE_TOLERANCE__GCHECKSUM = 0;
    public static final int RELATIVE_TOLERANCE__GTIMESTAMP = 1;
    public static final int RELATIVE_TOLERANCE__CHECKSUM = 2;
    public static final int RELATIVE_TOLERANCE__TIMESTAMP = 3;
    public static final int RELATIVE_TOLERANCE__TIME_RANGE_TYPE = 4;
    public static final int RELATIVE_TOLERANCE__RELATIVE = 5;
    public static final int RELATIVE_TOLERANCE_FEATURE_COUNT = 6;
    public static final int TRANSMISSION_MODE_CONDITION = 6;
    public static final int TRANSMISSION_MODE_CONDITION__GCHECKSUM = 0;
    public static final int TRANSMISSION_MODE_CONDITION__GTIMESTAMP = 1;
    public static final int TRANSMISSION_MODE_CONDITION__CHECKSUM = 2;
    public static final int TRANSMISSION_MODE_CONDITION__TIMESTAMP = 3;
    public static final int TRANSMISSION_MODE_CONDITION__TRANSMISSION_MODE_DECLARATION = 4;
    public static final int TRANSMISSION_MODE_CONDITION__DATA_FILTER = 5;
    public static final int TRANSMISSION_MODE_CONDITION__SIGNAL_IN_IPDU = 6;
    public static final int TRANSMISSION_MODE_CONDITION_FEATURE_COUNT = 7;
    public static final int TRANSMISSION_MODE_DECLARATION = 7;
    public static final int TRANSMISSION_MODE_DECLARATION__GCHECKSUM = 0;
    public static final int TRANSMISSION_MODE_DECLARATION__GTIMESTAMP = 1;
    public static final int TRANSMISSION_MODE_DECLARATION__CHECKSUM = 2;
    public static final int TRANSMISSION_MODE_DECLARATION__TIMESTAMP = 3;
    public static final int TRANSMISSION_MODE_DECLARATION__IPDU_TIMING = 4;
    public static final int TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_CONDITIONS = 5;
    public static final int TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_FALSE_TIMING = 6;
    public static final int TRANSMISSION_MODE_DECLARATION_FEATURE_COUNT = 7;
    public static final int TRANSMISSION_MODE_FALSE_TIMING = 8;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__GCHECKSUM = 0;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__GTIMESTAMP = 1;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__CHECKSUM = 2;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__TIMESTAMP = 3;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__TRANSMISSION_MODE_DECLARATION = 4;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__CYCLIC_TIMING = 5;
    public static final int TRANSMISSION_MODE_FALSE_TIMING__EVENT_CONTROLLED_TIMING = 6;
    public static final int TRANSMISSION_MODE_FALSE_TIMING_FEATURE_COUNT = 7;
    public static final int REQUEST_CONTROLLED_TIMING = 9;
    public static final int REQUEST_CONTROLLED_TIMING__GCHECKSUM = 0;
    public static final int REQUEST_CONTROLLED_TIMING__GTIMESTAMP = 1;
    public static final int REQUEST_CONTROLLED_TIMING__CHECKSUM = 2;
    public static final int REQUEST_CONTROLLED_TIMING__TIMESTAMP = 3;
    public static final int REQUEST_CONTROLLED_TIMING__IPDU_TIMING = 4;
    public static final int REQUEST_CONTROLLED_TIMING__FINAL_REPETITIONS = 5;
    public static final int REQUEST_CONTROLLED_TIMING__RESPONSE_TIME = 6;
    public static final int REQUEST_CONTROLLED_TIMING_FEATURE_COUNT = 7;

    public EClass getAbsoluteTolerance();

    public EAttribute getAbsoluteTolerance_Absolute();

    public EClass getTimeRangeTypeTolerance();

    public EReference getTimeRangeTypeTolerance_TimeRangeType();

    public EClass getCyclicTiming();

    public EAttribute getCyclicTiming_FinalRepetitions();

    public EReference getCyclicTiming_RepeatingTime();

    public EReference getCyclicTiming_StartingTime();

    public EClass getTimeRangeType();

    public EReference getTimeRangeType_Tolerance();

    public EAttribute getTimeRangeType_Value();

    public EClass getEventControlledTiming();

    public EAttribute getEventControlledTiming_NumberOfRepeats();

    public EReference getEventControlledTiming_RepetitionPeriod();

    public EClass getRelativeTolerance();

    public EAttribute getRelativeTolerance_Relative();

    public EClass getTransmissionModeCondition();

    public EReference getTransmissionModeCondition_TransmissionModeDeclaration();

    public EReference getTransmissionModeCondition_DataFilter();

    public EReference getTransmissionModeCondition_SignalInIPdu();

    public EClass getTransmissionModeDeclaration();

    public EReference getTransmissionModeDeclaration_IPduTiming();

    public EReference getTransmissionModeDeclaration_TransmissionModeConditions();

    public EReference getTransmissionModeDeclaration_TransmissionModeFalseTiming();

    public EClass getTransmissionModeFalseTiming();

    public EReference getTransmissionModeFalseTiming_TransmissionModeDeclaration();

    public EReference getTransmissionModeFalseTiming_CyclicTiming();

    public EReference getTransmissionModeFalseTiming_EventControlledTiming();

    public EClass getRequestControlledTiming();

    public EReference getRequestControlledTiming_IPduTiming();

    public EAttribute getRequestControlledTiming_FinalRepetitions();

    public EReference getRequestControlledTiming_ResponseTime();

    public TimingFactory getTimingFactory();

    public static interface Literals {
        public static final EClass ABSOLUTE_TOLERANCE = eINSTANCE.getAbsoluteTolerance();
        public static final EAttribute ABSOLUTE_TOLERANCE__ABSOLUTE = eINSTANCE.getAbsoluteTolerance_Absolute();
        public static final EClass TIME_RANGE_TYPE_TOLERANCE = eINSTANCE.getTimeRangeTypeTolerance();
        public static final EReference TIME_RANGE_TYPE_TOLERANCE__TIME_RANGE_TYPE = eINSTANCE.getTimeRangeTypeTolerance_TimeRangeType();
        public static final EClass CYCLIC_TIMING = eINSTANCE.getCyclicTiming();
        public static final EAttribute CYCLIC_TIMING__FINAL_REPETITIONS = eINSTANCE.getCyclicTiming_FinalRepetitions();
        public static final EReference CYCLIC_TIMING__REPEATING_TIME = eINSTANCE.getCyclicTiming_RepeatingTime();
        public static final EReference CYCLIC_TIMING__STARTING_TIME = eINSTANCE.getCyclicTiming_StartingTime();
        public static final EClass TIME_RANGE_TYPE = eINSTANCE.getTimeRangeType();
        public static final EReference TIME_RANGE_TYPE__TOLERANCE = eINSTANCE.getTimeRangeType_Tolerance();
        public static final EAttribute TIME_RANGE_TYPE__VALUE = eINSTANCE.getTimeRangeType_Value();
        public static final EClass EVENT_CONTROLLED_TIMING = eINSTANCE.getEventControlledTiming();
        public static final EAttribute EVENT_CONTROLLED_TIMING__NUMBER_OF_REPEATS = eINSTANCE.getEventControlledTiming_NumberOfRepeats();
        public static final EReference EVENT_CONTROLLED_TIMING__REPETITION_PERIOD = eINSTANCE.getEventControlledTiming_RepetitionPeriod();
        public static final EClass RELATIVE_TOLERANCE = eINSTANCE.getRelativeTolerance();
        public static final EAttribute RELATIVE_TOLERANCE__RELATIVE = eINSTANCE.getRelativeTolerance_Relative();
        public static final EClass TRANSMISSION_MODE_CONDITION = eINSTANCE.getTransmissionModeCondition();
        public static final EReference TRANSMISSION_MODE_CONDITION__TRANSMISSION_MODE_DECLARATION = eINSTANCE.getTransmissionModeCondition_TransmissionModeDeclaration();
        public static final EReference TRANSMISSION_MODE_CONDITION__DATA_FILTER = eINSTANCE.getTransmissionModeCondition_DataFilter();
        public static final EReference TRANSMISSION_MODE_CONDITION__SIGNAL_IN_IPDU = eINSTANCE.getTransmissionModeCondition_SignalInIPdu();
        public static final EClass TRANSMISSION_MODE_DECLARATION = eINSTANCE.getTransmissionModeDeclaration();
        public static final EReference TRANSMISSION_MODE_DECLARATION__IPDU_TIMING = eINSTANCE.getTransmissionModeDeclaration_IPduTiming();
        public static final EReference TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_CONDITIONS = eINSTANCE.getTransmissionModeDeclaration_TransmissionModeConditions();
        public static final EReference TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_FALSE_TIMING = eINSTANCE.getTransmissionModeDeclaration_TransmissionModeFalseTiming();
        public static final EClass TRANSMISSION_MODE_FALSE_TIMING = eINSTANCE.getTransmissionModeFalseTiming();
        public static final EReference TRANSMISSION_MODE_FALSE_TIMING__TRANSMISSION_MODE_DECLARATION = eINSTANCE.getTransmissionModeFalseTiming_TransmissionModeDeclaration();
        public static final EReference TRANSMISSION_MODE_FALSE_TIMING__CYCLIC_TIMING = eINSTANCE.getTransmissionModeFalseTiming_CyclicTiming();
        public static final EReference TRANSMISSION_MODE_FALSE_TIMING__EVENT_CONTROLLED_TIMING = eINSTANCE.getTransmissionModeFalseTiming_EventControlledTiming();
        public static final EClass REQUEST_CONTROLLED_TIMING = eINSTANCE.getRequestControlledTiming();
        public static final EReference REQUEST_CONTROLLED_TIMING__IPDU_TIMING = eINSTANCE.getRequestControlledTiming_IPduTiming();
        public static final EAttribute REQUEST_CONTROLLED_TIMING__FINAL_REPETITIONS = eINSTANCE.getRequestControlledTiming_FinalRepetitions();
        public static final EReference REQUEST_CONTROLLED_TIMING__RESPONSE_TIME = eINSTANCE.getRequestControlledTiming_ResponseTime();
    }
}

