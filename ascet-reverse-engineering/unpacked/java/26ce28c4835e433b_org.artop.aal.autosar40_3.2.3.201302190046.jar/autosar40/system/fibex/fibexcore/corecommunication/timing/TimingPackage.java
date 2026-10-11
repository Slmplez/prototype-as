/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingFactory;
import autosar40.system.fibex.fibexcore.corecommunication.timing.impl.TimingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TimingPackage
extends EPackage {
    public static final String eNAME = "timing";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc/t";
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
    public static final int CYCLIC_TIMING__TRANSMISSION_MODE_TIMING = 4;
    public static final int CYCLIC_TIMING__TIME_OFFSET = 5;
    public static final int CYCLIC_TIMING__TIME_PERIOD = 6;
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
    public static final int EVENT_CONTROLLED_TIMING__TRANSMISSION_MODE_TIMING = 4;
    public static final int EVENT_CONTROLLED_TIMING__NUMBER_OF_REPETITIONS = 5;
    public static final int EVENT_CONTROLLED_TIMING__REPETITION_PERIOD = 6;
    public static final int EVENT_CONTROLLED_TIMING_FEATURE_COUNT = 7;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION = 5;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION__GCHECKSUM = 0;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION__GTIMESTAMP = 1;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION__CHECKSUM = 2;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION__TIMESTAMP = 3;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION__MODE_DECLARATIONS = 4;
    public static final int MODE_DRIVEN_TRANSMISSION_MODE_CONDITION_FEATURE_COUNT = 5;
    public static final int RELATIVE_TOLERANCE = 6;
    public static final int RELATIVE_TOLERANCE__GCHECKSUM = 0;
    public static final int RELATIVE_TOLERANCE__GTIMESTAMP = 1;
    public static final int RELATIVE_TOLERANCE__CHECKSUM = 2;
    public static final int RELATIVE_TOLERANCE__TIMESTAMP = 3;
    public static final int RELATIVE_TOLERANCE__TIME_RANGE_TYPE = 4;
    public static final int RELATIVE_TOLERANCE__RELATIVE = 5;
    public static final int RELATIVE_TOLERANCE_FEATURE_COUNT = 6;
    public static final int TRANSMISSION_MODE_CONDITION = 7;
    public static final int TRANSMISSION_MODE_CONDITION__GCHECKSUM = 0;
    public static final int TRANSMISSION_MODE_CONDITION__GTIMESTAMP = 1;
    public static final int TRANSMISSION_MODE_CONDITION__CHECKSUM = 2;
    public static final int TRANSMISSION_MODE_CONDITION__TIMESTAMP = 3;
    public static final int TRANSMISSION_MODE_CONDITION__TRANSMISSION_MODE_DECLARATION = 4;
    public static final int TRANSMISSION_MODE_CONDITION__DATA_FILTER = 5;
    public static final int TRANSMISSION_MODE_CONDITION__ISIGNAL_IN_IPDU = 6;
    public static final int TRANSMISSION_MODE_CONDITION_FEATURE_COUNT = 7;
    public static final int TRANSMISSION_MODE_TIMING = 8;
    public static final int TRANSMISSION_MODE_TIMING__GCHECKSUM = 0;
    public static final int TRANSMISSION_MODE_TIMING__GTIMESTAMP = 1;
    public static final int TRANSMISSION_MODE_TIMING__CHECKSUM = 2;
    public static final int TRANSMISSION_MODE_TIMING__TIMESTAMP = 3;
    public static final int TRANSMISSION_MODE_TIMING__CYCLIC_TIMING = 4;
    public static final int TRANSMISSION_MODE_TIMING__EVENT_CONTROLLED_TIMING = 5;
    public static final int TRANSMISSION_MODE_TIMING_FEATURE_COUNT = 6;
    public static final int TRANSMISSION_MODE_DECLARATION = 9;
    public static final int TRANSMISSION_MODE_DECLARATION__GCHECKSUM = 0;
    public static final int TRANSMISSION_MODE_DECLARATION__GTIMESTAMP = 1;
    public static final int TRANSMISSION_MODE_DECLARATION__CHECKSUM = 2;
    public static final int TRANSMISSION_MODE_DECLARATION__TIMESTAMP = 3;
    public static final int TRANSMISSION_MODE_DECLARATION__IPDU_TIMING = 4;
    public static final int TRANSMISSION_MODE_DECLARATION__MODE_DRIVEN_FALSE_CONDITIONS = 5;
    public static final int TRANSMISSION_MODE_DECLARATION__MODE_DRIVEN_TRUE_CONDITIONS = 6;
    public static final int TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_CONDITIONS = 7;
    public static final int TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_FALSE_TIMING = 8;
    public static final int TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_TRUE_TIMING = 9;
    public static final int TRANSMISSION_MODE_DECLARATION_FEATURE_COUNT = 10;

    public EClass getAbsoluteTolerance();

    public EAttribute getAbsoluteTolerance_Absolute();

    public EClass getTimeRangeTypeTolerance();

    public EReference getTimeRangeTypeTolerance_TimeRangeType();

    public EClass getCyclicTiming();

    public EReference getCyclicTiming_TransmissionModeTiming();

    public EReference getCyclicTiming_TimeOffset();

    public EReference getCyclicTiming_TimePeriod();

    public EClass getTimeRangeType();

    public EReference getTimeRangeType_Tolerance();

    public EAttribute getTimeRangeType_Value();

    public EClass getEventControlledTiming();

    public EReference getEventControlledTiming_TransmissionModeTiming();

    public EAttribute getEventControlledTiming_NumberOfRepetitions();

    public EReference getEventControlledTiming_RepetitionPeriod();

    public EClass getModeDrivenTransmissionModeCondition();

    public EReference getModeDrivenTransmissionModeCondition_ModeDeclarations();

    public EClass getRelativeTolerance();

    public EAttribute getRelativeTolerance_Relative();

    public EClass getTransmissionModeCondition();

    public EReference getTransmissionModeCondition_TransmissionModeDeclaration();

    public EReference getTransmissionModeCondition_DataFilter();

    public EReference getTransmissionModeCondition_ISignalInIPdu();

    public EClass getTransmissionModeTiming();

    public EReference getTransmissionModeTiming_CyclicTiming();

    public EReference getTransmissionModeTiming_EventControlledTiming();

    public EClass getTransmissionModeDeclaration();

    public EReference getTransmissionModeDeclaration_IPduTiming();

    public EReference getTransmissionModeDeclaration_ModeDrivenFalseConditions();

    public EReference getTransmissionModeDeclaration_ModeDrivenTrueConditions();

    public EReference getTransmissionModeDeclaration_TransmissionModeConditions();

    public EReference getTransmissionModeDeclaration_TransmissionModeFalseTiming();

    public EReference getTransmissionModeDeclaration_TransmissionModeTrueTiming();

    public TimingFactory getTimingFactory();

    public static interface Literals {
        public static final EClass ABSOLUTE_TOLERANCE = eINSTANCE.getAbsoluteTolerance();
        public static final EAttribute ABSOLUTE_TOLERANCE__ABSOLUTE = eINSTANCE.getAbsoluteTolerance_Absolute();
        public static final EClass TIME_RANGE_TYPE_TOLERANCE = eINSTANCE.getTimeRangeTypeTolerance();
        public static final EReference TIME_RANGE_TYPE_TOLERANCE__TIME_RANGE_TYPE = eINSTANCE.getTimeRangeTypeTolerance_TimeRangeType();
        public static final EClass CYCLIC_TIMING = eINSTANCE.getCyclicTiming();
        public static final EReference CYCLIC_TIMING__TRANSMISSION_MODE_TIMING = eINSTANCE.getCyclicTiming_TransmissionModeTiming();
        public static final EReference CYCLIC_TIMING__TIME_OFFSET = eINSTANCE.getCyclicTiming_TimeOffset();
        public static final EReference CYCLIC_TIMING__TIME_PERIOD = eINSTANCE.getCyclicTiming_TimePeriod();
        public static final EClass TIME_RANGE_TYPE = eINSTANCE.getTimeRangeType();
        public static final EReference TIME_RANGE_TYPE__TOLERANCE = eINSTANCE.getTimeRangeType_Tolerance();
        public static final EAttribute TIME_RANGE_TYPE__VALUE = eINSTANCE.getTimeRangeType_Value();
        public static final EClass EVENT_CONTROLLED_TIMING = eINSTANCE.getEventControlledTiming();
        public static final EReference EVENT_CONTROLLED_TIMING__TRANSMISSION_MODE_TIMING = eINSTANCE.getEventControlledTiming_TransmissionModeTiming();
        public static final EAttribute EVENT_CONTROLLED_TIMING__NUMBER_OF_REPETITIONS = eINSTANCE.getEventControlledTiming_NumberOfRepetitions();
        public static final EReference EVENT_CONTROLLED_TIMING__REPETITION_PERIOD = eINSTANCE.getEventControlledTiming_RepetitionPeriod();
        public static final EClass MODE_DRIVEN_TRANSMISSION_MODE_CONDITION = eINSTANCE.getModeDrivenTransmissionModeCondition();
        public static final EReference MODE_DRIVEN_TRANSMISSION_MODE_CONDITION__MODE_DECLARATIONS = eINSTANCE.getModeDrivenTransmissionModeCondition_ModeDeclarations();
        public static final EClass RELATIVE_TOLERANCE = eINSTANCE.getRelativeTolerance();
        public static final EAttribute RELATIVE_TOLERANCE__RELATIVE = eINSTANCE.getRelativeTolerance_Relative();
        public static final EClass TRANSMISSION_MODE_CONDITION = eINSTANCE.getTransmissionModeCondition();
        public static final EReference TRANSMISSION_MODE_CONDITION__TRANSMISSION_MODE_DECLARATION = eINSTANCE.getTransmissionModeCondition_TransmissionModeDeclaration();
        public static final EReference TRANSMISSION_MODE_CONDITION__DATA_FILTER = eINSTANCE.getTransmissionModeCondition_DataFilter();
        public static final EReference TRANSMISSION_MODE_CONDITION__ISIGNAL_IN_IPDU = eINSTANCE.getTransmissionModeCondition_ISignalInIPdu();
        public static final EClass TRANSMISSION_MODE_TIMING = eINSTANCE.getTransmissionModeTiming();
        public static final EReference TRANSMISSION_MODE_TIMING__CYCLIC_TIMING = eINSTANCE.getTransmissionModeTiming_CyclicTiming();
        public static final EReference TRANSMISSION_MODE_TIMING__EVENT_CONTROLLED_TIMING = eINSTANCE.getTransmissionModeTiming_EventControlledTiming();
        public static final EClass TRANSMISSION_MODE_DECLARATION = eINSTANCE.getTransmissionModeDeclaration();
        public static final EReference TRANSMISSION_MODE_DECLARATION__IPDU_TIMING = eINSTANCE.getTransmissionModeDeclaration_IPduTiming();
        public static final EReference TRANSMISSION_MODE_DECLARATION__MODE_DRIVEN_FALSE_CONDITIONS = eINSTANCE.getTransmissionModeDeclaration_ModeDrivenFalseConditions();
        public static final EReference TRANSMISSION_MODE_DECLARATION__MODE_DRIVEN_TRUE_CONDITIONS = eINSTANCE.getTransmissionModeDeclaration_ModeDrivenTrueConditions();
        public static final EReference TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_CONDITIONS = eINSTANCE.getTransmissionModeDeclaration_TransmissionModeConditions();
        public static final EReference TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_FALSE_TIMING = eINSTANCE.getTransmissionModeDeclaration_TransmissionModeFalseTiming();
        public static final EReference TRANSMISSION_MODE_DECLARATION__TRANSMISSION_MODE_TRUE_TIMING = eINSTANCE.getTransmissionModeDeclaration_TransmissionModeTrueTiming();
    }
}

