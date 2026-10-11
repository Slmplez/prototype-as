/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar21.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ApplicationattributesPackage
extends EPackage {
    public static final String eNAME = "applicationattributes";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/aa";
    public static final String eNS_PREFIX = "";
    public static final ApplicationattributesPackage eINSTANCE = ApplicationattributesPackageImpl.init();
    public static final int PORT_ANNOTATION = 13;
    public static final int PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int PORT_ANNOTATION__CHECKSUM = 2;
    public static final int PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int PORT_ANNOTATION__PORT_PROTOTYPE = 4;
    public static final int PORT_ANNOTATION__EXT_ANNOTATIONS = 5;
    public static final int PORT_ANNOTATION_FEATURE_COUNT = 6;
    public static final int CALIBRATION_PORT_ANNOTATION = 0;
    public static final int CALIBRATION_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int CALIBRATION_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int CALIBRATION_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int CALIBRATION_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int CALIBRATION_PORT_ANNOTATION__PORT_PROTOTYPE = 4;
    public static final int CALIBRATION_PORT_ANNOTATION__EXT_ANNOTATIONS = 5;
    public static final int CALIBRATION_PORT_ANNOTATION__CALPRM_ELEMENT = 6;
    public static final int CALIBRATION_PORT_ANNOTATION_FEATURE_COUNT = 7;
    public static final int SERVICE_NEEDS = 2;
    public static final int SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SERVICE_NEEDS__PORT_PROTOTYPE = 4;
    public static final int SERVICE_NEEDS__EXT_ANNOTATIONS = 5;
    public static final int SERVICE_NEEDS_FEATURE_COUNT = 6;
    public static final int COM_MUSER_NEEDS = 1;
    public static final int COM_MUSER_NEEDS__GCHECKSUM = 0;
    public static final int COM_MUSER_NEEDS__GTIMESTAMP = 1;
    public static final int COM_MUSER_NEEDS__CHECKSUM = 2;
    public static final int COM_MUSER_NEEDS__TIMESTAMP = 3;
    public static final int COM_MUSER_NEEDS__PORT_PROTOTYPE = 4;
    public static final int COM_MUSER_NEEDS__EXT_ANNOTATIONS = 5;
    public static final int COM_MUSER_NEEDS__MAX_COMM_MODE = 6;
    public static final int COM_MUSER_NEEDS_FEATURE_COUNT = 7;
    public static final int EXT_ANNOTATION = 3;
    public static final int EXT_ANNOTATION__GCHECKSUM = 0;
    public static final int EXT_ANNOTATION__GTIMESTAMP = 1;
    public static final int EXT_ANNOTATION__CHECKSUM = 2;
    public static final int EXT_ANNOTATION__TIMESTAMP = 3;
    public static final int EXT_ANNOTATION__PORT_ANNOTATION = 4;
    public static final int EXT_ANNOTATION__NAME = 5;
    public static final int EXT_ANNOTATION__VALUE = 6;
    public static final int EXT_ANNOTATION_FEATURE_COUNT = 7;
    public static final int FAILURE_MONITORING = 4;
    public static final int FAILURE_MONITORING__GCHECKSUM = 0;
    public static final int FAILURE_MONITORING__GTIMESTAMP = 1;
    public static final int FAILURE_MONITORING__CHECKSUM = 2;
    public static final int FAILURE_MONITORING__TIMESTAMP = 3;
    public static final int FAILURE_MONITORING__IO_HW_ABSTRACTION_SERVER_ANNOTATION = 4;
    public static final int FAILURE_MONITORING__MONITORS_FAILURE = 5;
    public static final int FAILURE_MONITORING_FEATURE_COUNT = 6;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION = 5;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__GCHECKSUM = 0;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__CHECKSUM = 2;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__TIMESTAMP = 3;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORT_PROTOTYPE = 4;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__EXT_ANNOTATIONS = 5;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__AGE = 6;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__ARGUMENT_PROTOTYPE = 7;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MAX = 8;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MIN = 9;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RESOLUTION = 10;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__DATA_ELEMENT_PROTOTYPE = 11;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__FAILURE_MONITORING = 12;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__FILTERING_DEBOUNCING = 13;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PULSE_TEST = 14;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__REPORT_FEATURE = 15;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__UNIT = 16;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__WAKE_UP = 17;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION_FEATURE_COUNT = 18;
    public static final int REPORT_FEATURE = 6;
    public static final int REPORT_FEATURE__GCHECKSUM = 0;
    public static final int REPORT_FEATURE__GTIMESTAMP = 1;
    public static final int REPORT_FEATURE__CHECKSUM = 2;
    public static final int REPORT_FEATURE__TIMESTAMP = 3;
    public static final int REPORT_FEATURE__IO_HW_ABSTRACTION_SERVER_ANNOTATION = 4;
    public static final int REPORT_FEATURE_FEATURE_COUNT = 5;
    public static final int WAKE_UP = 7;
    public static final int WAKE_UP__GCHECKSUM = 0;
    public static final int WAKE_UP__GTIMESTAMP = 1;
    public static final int WAKE_UP__CHECKSUM = 2;
    public static final int WAKE_UP__TIMESTAMP = 3;
    public static final int WAKE_UP__IO_HW_ABSTRACTION_SERVER_ANNOTATION = 4;
    public static final int WAKE_UP_FEATURE_COUNT = 5;
    public static final int NVRAM_BLOCK_NEEDS = 8;
    public static final int NVRAM_BLOCK_NEEDS__GCHECKSUM = 0;
    public static final int NVRAM_BLOCK_NEEDS__GTIMESTAMP = 1;
    public static final int NVRAM_BLOCK_NEEDS__CHECKSUM = 2;
    public static final int NVRAM_BLOCK_NEEDS__TIMESTAMP = 3;
    public static final int NVRAM_BLOCK_NEEDS__PORT_PROTOTYPE = 4;
    public static final int NVRAM_BLOCK_NEEDS__EXT_ANNOTATIONS = 5;
    public static final int NVRAM_BLOCK_NEEDS__NDATA_SETS = 6;
    public static final int NVRAM_BLOCK_NEEDS__READONLY = 7;
    public static final int NVRAM_BLOCK_NEEDS__RELIABILITY = 8;
    public static final int NVRAM_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = 9;
    public static final int NVRAM_BLOCK_NEEDS__RESTORE_AT_START = 10;
    public static final int NVRAM_BLOCK_NEEDS__TRANSACTION_SAFE = 11;
    public static final int NVRAM_BLOCK_NEEDS__WRITE_ONLY_ONCE = 12;
    public static final int NVRAM_BLOCK_NEEDS__WRITING_FREQUENCY = 13;
    public static final int NVRAM_BLOCK_NEEDS__WRITING_PRIORITY = 14;
    public static final int NVRAM_BLOCK_NEEDS_FEATURE_COUNT = 15;
    public static final int SENDER_RECEIVER_ANNOTATION = 10;
    public static final int SENDER_RECEIVER_ANNOTATION__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_ANNOTATION__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_ANNOTATION__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_ANNOTATION__PORT_PROTOTYPE = 4;
    public static final int SENDER_RECEIVER_ANNOTATION__EXT_ANNOTATIONS = 5;
    public static final int SENDER_RECEIVER_ANNOTATION__COMPUTED = 6;
    public static final int SENDER_RECEIVER_ANNOTATION__LIMIT_TYPE = 7;
    public static final int SENDER_RECEIVER_ANNOTATION__PROCESSING_TYPE = 8;
    public static final int SENDER_RECEIVER_ANNOTATION__SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT = 9;
    public static final int SENDER_RECEIVER_ANNOTATION_FEATURE_COUNT = 10;
    public static final int RECEIVER_ANNOTATION = 9;
    public static final int RECEIVER_ANNOTATION__GCHECKSUM = 0;
    public static final int RECEIVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int RECEIVER_ANNOTATION__CHECKSUM = 2;
    public static final int RECEIVER_ANNOTATION__TIMESTAMP = 3;
    public static final int RECEIVER_ANNOTATION__PORT_PROTOTYPE = 4;
    public static final int RECEIVER_ANNOTATION__EXT_ANNOTATIONS = 5;
    public static final int RECEIVER_ANNOTATION__COMPUTED = 6;
    public static final int RECEIVER_ANNOTATION__LIMIT_TYPE = 7;
    public static final int RECEIVER_ANNOTATION__PROCESSING_TYPE = 8;
    public static final int RECEIVER_ANNOTATION__SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT = 9;
    public static final int RECEIVER_ANNOTATION__SIGNAL_AGE = 10;
    public static final int RECEIVER_ANNOTATION_FEATURE_COUNT = 11;
    public static final int SENDER_ANNOTATION = 11;
    public static final int SENDER_ANNOTATION__GCHECKSUM = 0;
    public static final int SENDER_ANNOTATION__GTIMESTAMP = 1;
    public static final int SENDER_ANNOTATION__CHECKSUM = 2;
    public static final int SENDER_ANNOTATION__TIMESTAMP = 3;
    public static final int SENDER_ANNOTATION__PORT_PROTOTYPE = 4;
    public static final int SENDER_ANNOTATION__EXT_ANNOTATIONS = 5;
    public static final int SENDER_ANNOTATION__COMPUTED = 6;
    public static final int SENDER_ANNOTATION__LIMIT_TYPE = 7;
    public static final int SENDER_ANNOTATION__PROCESSING_TYPE = 8;
    public static final int SENDER_ANNOTATION__SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT = 9;
    public static final int SENDER_ANNOTATION_FEATURE_COUNT = 10;
    public static final int SUPERVISED_ENTITY_NEEDS = 12;
    public static final int SUPERVISED_ENTITY_NEEDS__GCHECKSUM = 0;
    public static final int SUPERVISED_ENTITY_NEEDS__GTIMESTAMP = 1;
    public static final int SUPERVISED_ENTITY_NEEDS__CHECKSUM = 2;
    public static final int SUPERVISED_ENTITY_NEEDS__TIMESTAMP = 3;
    public static final int SUPERVISED_ENTITY_NEEDS__PORT_PROTOTYPE = 4;
    public static final int SUPERVISED_ENTITY_NEEDS__EXT_ANNOTATIONS = 5;
    public static final int SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = 6;
    public static final int SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = 7;
    public static final int SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = 8;
    public static final int SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = 9;
    public static final int SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = 10;
    public static final int SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = 11;
    public static final int SUPERVISED_ENTITY_NEEDS_FEATURE_COUNT = 12;
    public static final int MAX_COMM_MODE = 14;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION_PULSE_TEST_ENUM = 15;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION_FILTERING_DEBOUNCING_ENUM = 16;
    public static final int NVRAM_BLOCK_NEEDS_RELIABILITY_ENUM = 17;
    public static final int NVRAM_BLOCK_NEEDS_WRITING_PRIORITY_ENUM = 18;
    public static final int SENDER_RECEIVER_ANNOTATION_LIMIT_TYPE_ENUM = 19;
    public static final int SENDER_RECEIVER_ANNOTATION_PROCESSING_TYPE_ENUM = 20;

    public EClass getCalibrationPortAnnotation();

    public EReference getCalibrationPortAnnotation_CalprmElement();

    public EClass getComMUserNeeds();

    public EAttribute getComMUserNeeds_MaxCommMode();

    public EClass getServiceNeeds();

    public EClass getExtAnnotation();

    public EReference getExtAnnotation_PortAnnotation();

    public EAttribute getExtAnnotation_Name();

    public EAttribute getExtAnnotation_Value();

    public EClass getFailureMonitoring();

    public EReference getFailureMonitoring_IoHwAbstractionServerAnnotation();

    public EReference getFailureMonitoring_MonitorsFailure();

    public EClass getIoHwAbstractionServerAnnotation();

    public EAttribute getIoHwAbstractionServerAnnotation_Age();

    public EReference getIoHwAbstractionServerAnnotation_ArgumentPrototype();

    public EAttribute getIoHwAbstractionServerAnnotation_BswRangeMax();

    public EAttribute getIoHwAbstractionServerAnnotation_BswRangeMin();

    public EAttribute getIoHwAbstractionServerAnnotation_BswResolution();

    public EReference getIoHwAbstractionServerAnnotation_DataElementPrototype();

    public EReference getIoHwAbstractionServerAnnotation_FailureMonitoring();

    public EAttribute getIoHwAbstractionServerAnnotation_FilteringDebouncing();

    public EAttribute getIoHwAbstractionServerAnnotation_PulseTest();

    public EReference getIoHwAbstractionServerAnnotation_ReportFeature();

    public EAttribute getIoHwAbstractionServerAnnotation_Unit();

    public EReference getIoHwAbstractionServerAnnotation_WakeUp();

    public EClass getReportFeature();

    public EReference getReportFeature_IoHwAbstractionServerAnnotation();

    public EClass getWakeUp();

    public EReference getWakeUp_IoHwAbstractionServerAnnotation();

    public EClass getNVRAMBlockNeeds();

    public EAttribute getNVRAMBlockNeeds_NDataSets();

    public EAttribute getNVRAMBlockNeeds_Readonly();

    public EAttribute getNVRAMBlockNeeds_Reliability();

    public EAttribute getNVRAMBlockNeeds_ResistantToChangedSw();

    public EAttribute getNVRAMBlockNeeds_RestoreAtStart();

    public EAttribute getNVRAMBlockNeeds_TransactionSafe();

    public EAttribute getNVRAMBlockNeeds_WriteOnlyOnce();

    public EAttribute getNVRAMBlockNeeds_WritingFrequency();

    public EAttribute getNVRAMBlockNeeds_WritingPriority();

    public EClass getReceiverAnnotation();

    public EAttribute getReceiverAnnotation_SignalAge();

    public EClass getSenderReceiverAnnotation();

    public EAttribute getSenderReceiverAnnotation_Computed();

    public EAttribute getSenderReceiverAnnotation_LimitType();

    public EAttribute getSenderReceiverAnnotation_ProcessingType();

    public EReference getSenderReceiverAnnotation_SenderReceiverAnnotation_dataElement();

    public EClass getSenderAnnotation();

    public EClass getSupervisedEntityNeeds();

    public EAttribute getSupervisedEntityNeeds_ActivateAtStart();

    public EAttribute getSupervisedEntityNeeds_EnableDeactivation();

    public EAttribute getSupervisedEntityNeeds_ExpectedAliveCycle();

    public EAttribute getSupervisedEntityNeeds_MaxAliveCycle();

    public EAttribute getSupervisedEntityNeeds_MinAliveCycle();

    public EAttribute getSupervisedEntityNeeds_ToleratedFailedCycles();

    public EClass getPortAnnotation();

    public EReference getPortAnnotation_PortPrototype();

    public EReference getPortAnnotation_ExtAnnotations();

    public EEnum getMaxCommMode();

    public EEnum getIoHwAbstractionServerAnnotationPulseTestEnum();

    public EEnum getIoHwAbstractionServerAnnotationFilteringDebouncingEnum();

    public EEnum getNVRAMBlockNeedsReliabilityEnum();

    public EEnum getNVRAMBlockNeedsWritingPriorityEnum();

    public EEnum getSenderReceiverAnnotationLimitTypeEnum();

    public EEnum getSenderReceiverAnnotationProcessingTypeEnum();

    public ApplicationattributesFactory getApplicationattributesFactory();

    public static interface Literals {
        public static final EClass CALIBRATION_PORT_ANNOTATION = eINSTANCE.getCalibrationPortAnnotation();
        public static final EReference CALIBRATION_PORT_ANNOTATION__CALPRM_ELEMENT = eINSTANCE.getCalibrationPortAnnotation_CalprmElement();
        public static final EClass COM_MUSER_NEEDS = eINSTANCE.getComMUserNeeds();
        public static final EAttribute COM_MUSER_NEEDS__MAX_COMM_MODE = eINSTANCE.getComMUserNeeds_MaxCommMode();
        public static final EClass SERVICE_NEEDS = eINSTANCE.getServiceNeeds();
        public static final EClass EXT_ANNOTATION = eINSTANCE.getExtAnnotation();
        public static final EReference EXT_ANNOTATION__PORT_ANNOTATION = eINSTANCE.getExtAnnotation_PortAnnotation();
        public static final EAttribute EXT_ANNOTATION__NAME = eINSTANCE.getExtAnnotation_Name();
        public static final EAttribute EXT_ANNOTATION__VALUE = eINSTANCE.getExtAnnotation_Value();
        public static final EClass FAILURE_MONITORING = eINSTANCE.getFailureMonitoring();
        public static final EReference FAILURE_MONITORING__IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getFailureMonitoring_IoHwAbstractionServerAnnotation();
        public static final EReference FAILURE_MONITORING__MONITORS_FAILURE = eINSTANCE.getFailureMonitoring_MonitorsFailure();
        public static final EClass IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getIoHwAbstractionServerAnnotation();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__AGE = eINSTANCE.getIoHwAbstractionServerAnnotation_Age();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__ARGUMENT_PROTOTYPE = eINSTANCE.getIoHwAbstractionServerAnnotation_ArgumentPrototype();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MAX = eINSTANCE.getIoHwAbstractionServerAnnotation_BswRangeMax();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MIN = eINSTANCE.getIoHwAbstractionServerAnnotation_BswRangeMin();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RESOLUTION = eINSTANCE.getIoHwAbstractionServerAnnotation_BswResolution();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getIoHwAbstractionServerAnnotation_DataElementPrototype();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__FAILURE_MONITORING = eINSTANCE.getIoHwAbstractionServerAnnotation_FailureMonitoring();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__FILTERING_DEBOUNCING = eINSTANCE.getIoHwAbstractionServerAnnotation_FilteringDebouncing();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__PULSE_TEST = eINSTANCE.getIoHwAbstractionServerAnnotation_PulseTest();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__REPORT_FEATURE = eINSTANCE.getIoHwAbstractionServerAnnotation_ReportFeature();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__UNIT = eINSTANCE.getIoHwAbstractionServerAnnotation_Unit();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__WAKE_UP = eINSTANCE.getIoHwAbstractionServerAnnotation_WakeUp();
        public static final EClass REPORT_FEATURE = eINSTANCE.getReportFeature();
        public static final EReference REPORT_FEATURE__IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getReportFeature_IoHwAbstractionServerAnnotation();
        public static final EClass WAKE_UP = eINSTANCE.getWakeUp();
        public static final EReference WAKE_UP__IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getWakeUp_IoHwAbstractionServerAnnotation();
        public static final EClass NVRAM_BLOCK_NEEDS = eINSTANCE.getNVRAMBlockNeeds();
        public static final EAttribute NVRAM_BLOCK_NEEDS__NDATA_SETS = eINSTANCE.getNVRAMBlockNeeds_NDataSets();
        public static final EAttribute NVRAM_BLOCK_NEEDS__READONLY = eINSTANCE.getNVRAMBlockNeeds_Readonly();
        public static final EAttribute NVRAM_BLOCK_NEEDS__RELIABILITY = eINSTANCE.getNVRAMBlockNeeds_Reliability();
        public static final EAttribute NVRAM_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = eINSTANCE.getNVRAMBlockNeeds_ResistantToChangedSw();
        public static final EAttribute NVRAM_BLOCK_NEEDS__RESTORE_AT_START = eINSTANCE.getNVRAMBlockNeeds_RestoreAtStart();
        public static final EAttribute NVRAM_BLOCK_NEEDS__TRANSACTION_SAFE = eINSTANCE.getNVRAMBlockNeeds_TransactionSafe();
        public static final EAttribute NVRAM_BLOCK_NEEDS__WRITE_ONLY_ONCE = eINSTANCE.getNVRAMBlockNeeds_WriteOnlyOnce();
        public static final EAttribute NVRAM_BLOCK_NEEDS__WRITING_FREQUENCY = eINSTANCE.getNVRAMBlockNeeds_WritingFrequency();
        public static final EAttribute NVRAM_BLOCK_NEEDS__WRITING_PRIORITY = eINSTANCE.getNVRAMBlockNeeds_WritingPriority();
        public static final EClass RECEIVER_ANNOTATION = eINSTANCE.getReceiverAnnotation();
        public static final EAttribute RECEIVER_ANNOTATION__SIGNAL_AGE = eINSTANCE.getReceiverAnnotation_SignalAge();
        public static final EClass SENDER_RECEIVER_ANNOTATION = eINSTANCE.getSenderReceiverAnnotation();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__COMPUTED = eINSTANCE.getSenderReceiverAnnotation_Computed();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__LIMIT_TYPE = eINSTANCE.getSenderReceiverAnnotation_LimitType();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__PROCESSING_TYPE = eINSTANCE.getSenderReceiverAnnotation_ProcessingType();
        public static final EReference SENDER_RECEIVER_ANNOTATION__SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT = eINSTANCE.getSenderReceiverAnnotation_SenderReceiverAnnotation_dataElement();
        public static final EClass SENDER_ANNOTATION = eINSTANCE.getSenderAnnotation();
        public static final EClass SUPERVISED_ENTITY_NEEDS = eINSTANCE.getSupervisedEntityNeeds();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = eINSTANCE.getSupervisedEntityNeeds_ActivateAtStart();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = eINSTANCE.getSupervisedEntityNeeds_EnableDeactivation();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_ExpectedAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_MaxAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_MinAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = eINSTANCE.getSupervisedEntityNeeds_ToleratedFailedCycles();
        public static final EClass PORT_ANNOTATION = eINSTANCE.getPortAnnotation();
        public static final EReference PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getPortAnnotation_PortPrototype();
        public static final EReference PORT_ANNOTATION__EXT_ANNOTATIONS = eINSTANCE.getPortAnnotation_ExtAnnotations();
        public static final EEnum MAX_COMM_MODE = eINSTANCE.getMaxCommMode();
        public static final EEnum IO_HW_ABSTRACTION_SERVER_ANNOTATION_PULSE_TEST_ENUM = eINSTANCE.getIoHwAbstractionServerAnnotationPulseTestEnum();
        public static final EEnum IO_HW_ABSTRACTION_SERVER_ANNOTATION_FILTERING_DEBOUNCING_ENUM = eINSTANCE.getIoHwAbstractionServerAnnotationFilteringDebouncingEnum();
        public static final EEnum NVRAM_BLOCK_NEEDS_RELIABILITY_ENUM = eINSTANCE.getNVRAMBlockNeedsReliabilityEnum();
        public static final EEnum NVRAM_BLOCK_NEEDS_WRITING_PRIORITY_ENUM = eINSTANCE.getNVRAMBlockNeedsWritingPriorityEnum();
        public static final EEnum SENDER_RECEIVER_ANNOTATION_LIMIT_TYPE_ENUM = eINSTANCE.getSenderReceiverAnnotationLimitTypeEnum();
        public static final EEnum SENDER_RECEIVER_ANNOTATION_PROCESSING_TYPE_ENUM = eINSTANCE.getSenderReceiverAnnotationProcessingTypeEnum();
    }
}

