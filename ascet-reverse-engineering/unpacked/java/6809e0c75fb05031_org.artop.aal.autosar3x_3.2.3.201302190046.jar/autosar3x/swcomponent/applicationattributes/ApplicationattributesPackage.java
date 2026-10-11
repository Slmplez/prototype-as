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
package autosar3x.swcomponent.applicationattributes;

import autosar3x.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar3x.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ApplicationattributesPackage
extends EPackage {
    public static final String eNAME = "applicationattributes";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/aa";
    public static final String eNS_PREFIX = "";
    public static final ApplicationattributesPackage eINSTANCE = ApplicationattributesPackageImpl.init();
    public static final int CALIBRATION_PORT_ANNOTATION = 0;
    public static final int CALIBRATION_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int CALIBRATION_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int CALIBRATION_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int CALIBRATION_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int CALIBRATION_PORT_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int CALIBRATION_PORT_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int CALIBRATION_PORT_ANNOTATION__LABEL = 6;
    public static final int CALIBRATION_PORT_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int CALIBRATION_PORT_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int CALIBRATION_PORT_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int CALIBRATION_PORT_ANNOTATION__CALPRM_ELEMENT = 10;
    public static final int CALIBRATION_PORT_ANNOTATION_FEATURE_COUNT = 11;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION = 1;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__GCHECKSUM = 0;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__CHECKSUM = 2;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__TIMESTAMP = 3;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__LABEL = 6;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__AGE = 10;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__ARGUMENT_PROTOTYPE = 11;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MAX = 12;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MIN = 13;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RESOLUTION = 14;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__DATA_ELEMENT_PROTOTYPE = 15;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__FAILURE_MONITORING = 16;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__FILTERING_DEBOUNCING = 17;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PULSE_TEST = 18;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__SUPPORTS_REPORT_RUNNABLE = 19;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__SUPPORTS_WAKE_UP_RUNNABLE = 20;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__UNIT = 21;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION_FEATURE_COUNT = 22;
    public static final int REPORT_FEATURE = 2;
    public static final int REPORT_FEATURE__GCHECKSUM = 0;
    public static final int REPORT_FEATURE__GTIMESTAMP = 1;
    public static final int REPORT_FEATURE__CHECKSUM = 2;
    public static final int REPORT_FEATURE__TIMESTAMP = 3;
    public static final int REPORT_FEATURE__IO_HW_ABSTRACTION_SERVER_ANNOTATION = 4;
    public static final int REPORT_FEATURE_FEATURE_COUNT = 5;
    public static final int WAKE_UP = 3;
    public static final int WAKE_UP__GCHECKSUM = 0;
    public static final int WAKE_UP__GTIMESTAMP = 1;
    public static final int WAKE_UP__CHECKSUM = 2;
    public static final int WAKE_UP__TIMESTAMP = 3;
    public static final int WAKE_UP__IO_HW_ABSTRACTION_SERVER_ANNOTATION = 4;
    public static final int WAKE_UP_FEATURE_COUNT = 5;
    public static final int SENDER_RECEIVER_ANNOTATION = 5;
    public static final int SENDER_RECEIVER_ANNOTATION__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_ANNOTATION__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_ANNOTATION__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int SENDER_RECEIVER_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int SENDER_RECEIVER_ANNOTATION__LABEL = 6;
    public static final int SENDER_RECEIVER_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int SENDER_RECEIVER_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int SENDER_RECEIVER_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int SENDER_RECEIVER_ANNOTATION__COMPUTED = 10;
    public static final int SENDER_RECEIVER_ANNOTATION__DATA_ELEMENT = 11;
    public static final int SENDER_RECEIVER_ANNOTATION__LIMIT_KIND = 12;
    public static final int SENDER_RECEIVER_ANNOTATION__PROCESSING_KIND = 13;
    public static final int SENDER_RECEIVER_ANNOTATION_FEATURE_COUNT = 14;
    public static final int RECEIVER_ANNOTATION = 4;
    public static final int RECEIVER_ANNOTATION__GCHECKSUM = 0;
    public static final int RECEIVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int RECEIVER_ANNOTATION__CHECKSUM = 2;
    public static final int RECEIVER_ANNOTATION__TIMESTAMP = 3;
    public static final int RECEIVER_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int RECEIVER_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int RECEIVER_ANNOTATION__LABEL = 6;
    public static final int RECEIVER_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int RECEIVER_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int RECEIVER_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int RECEIVER_ANNOTATION__COMPUTED = 10;
    public static final int RECEIVER_ANNOTATION__DATA_ELEMENT = 11;
    public static final int RECEIVER_ANNOTATION__LIMIT_KIND = 12;
    public static final int RECEIVER_ANNOTATION__PROCESSING_KIND = 13;
    public static final int RECEIVER_ANNOTATION__SIGNAL_AGE = 14;
    public static final int RECEIVER_ANNOTATION_FEATURE_COUNT = 15;
    public static final int SENDER_ANNOTATION = 6;
    public static final int SENDER_ANNOTATION__GCHECKSUM = 0;
    public static final int SENDER_ANNOTATION__GTIMESTAMP = 1;
    public static final int SENDER_ANNOTATION__CHECKSUM = 2;
    public static final int SENDER_ANNOTATION__TIMESTAMP = 3;
    public static final int SENDER_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int SENDER_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int SENDER_ANNOTATION__LABEL = 6;
    public static final int SENDER_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int SENDER_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int SENDER_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int SENDER_ANNOTATION__COMPUTED = 10;
    public static final int SENDER_ANNOTATION__DATA_ELEMENT = 11;
    public static final int SENDER_ANNOTATION__LIMIT_KIND = 12;
    public static final int SENDER_ANNOTATION__PROCESSING_KIND = 13;
    public static final int SENDER_ANNOTATION_FEATURE_COUNT = 14;
    public static final int DELEGATED_PORT_ANNOTATION = 7;
    public static final int DELEGATED_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int DELEGATED_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int DELEGATED_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int DELEGATED_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int DELEGATED_PORT_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int DELEGATED_PORT_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int DELEGATED_PORT_ANNOTATION__LABEL = 6;
    public static final int DELEGATED_PORT_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int DELEGATED_PORT_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int DELEGATED_PORT_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int DELEGATED_PORT_ANNOTATION__SIGNAL_FAN = 10;
    public static final int DELEGATED_PORT_ANNOTATION_FEATURE_COUNT = 11;
    public static final int FILTER_DEBOUNCING_ENUM = 8;
    public static final int PULSE_TEST_ENUM = 9;
    public static final int LIMIT_KIND = 10;
    public static final int PROCESSING_KIND = 11;
    public static final int SIGNAL_FAN_ENUM = 12;

    public EClass getCalibrationPortAnnotation();

    public EReference getCalibrationPortAnnotation_PortPrototype();

    public EReference getCalibrationPortAnnotation_CalprmElement();

    public EClass getIoHwAbstractionServerAnnotation();

    public EReference getIoHwAbstractionServerAnnotation_PortPrototype();

    public EAttribute getIoHwAbstractionServerAnnotation_Age();

    public EReference getIoHwAbstractionServerAnnotation_ArgumentPrototype();

    public EAttribute getIoHwAbstractionServerAnnotation_BswRangeMax();

    public EAttribute getIoHwAbstractionServerAnnotation_BswRangeMin();

    public EAttribute getIoHwAbstractionServerAnnotation_BswResolution();

    public EReference getIoHwAbstractionServerAnnotation_DataElementPrototype();

    public EReference getIoHwAbstractionServerAnnotation_FailureMonitoring();

    public EAttribute getIoHwAbstractionServerAnnotation_FilteringDebouncing();

    public EAttribute getIoHwAbstractionServerAnnotation_PulseTest();

    public EReference getIoHwAbstractionServerAnnotation_SupportsReportRunnable();

    public EReference getIoHwAbstractionServerAnnotation_SupportsWakeUpRunnable();

    public EAttribute getIoHwAbstractionServerAnnotation_Unit();

    public EClass getReportFeature();

    public EReference getReportFeature_IoHwAbstractionServerAnnotation();

    public EClass getWakeUp();

    public EReference getWakeUp_IoHwAbstractionServerAnnotation();

    public EClass getReceiverAnnotation();

    public EAttribute getReceiverAnnotation_SignalAge();

    public EClass getSenderReceiverAnnotation();

    public EReference getSenderReceiverAnnotation_PortPrototype();

    public EAttribute getSenderReceiverAnnotation_Computed();

    public EReference getSenderReceiverAnnotation_DataElement();

    public EAttribute getSenderReceiverAnnotation_LimitKind();

    public EAttribute getSenderReceiverAnnotation_ProcessingKind();

    public EClass getSenderAnnotation();

    public EClass getDelegatedPortAnnotation();

    public EReference getDelegatedPortAnnotation_PortPrototype();

    public EAttribute getDelegatedPortAnnotation_SignalFan();

    public EEnum getFilterDebouncingEnum();

    public EEnum getPulseTestEnum();

    public EEnum getLimitKind();

    public EEnum getProcessingKind();

    public EEnum getSignalFanEnum();

    public ApplicationattributesFactory getApplicationattributesFactory();

    public static interface Literals {
        public static final EClass CALIBRATION_PORT_ANNOTATION = eINSTANCE.getCalibrationPortAnnotation();
        public static final EReference CALIBRATION_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getCalibrationPortAnnotation_PortPrototype();
        public static final EReference CALIBRATION_PORT_ANNOTATION__CALPRM_ELEMENT = eINSTANCE.getCalibrationPortAnnotation_CalprmElement();
        public static final EClass IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getIoHwAbstractionServerAnnotation();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getIoHwAbstractionServerAnnotation_PortPrototype();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__AGE = eINSTANCE.getIoHwAbstractionServerAnnotation_Age();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__ARGUMENT_PROTOTYPE = eINSTANCE.getIoHwAbstractionServerAnnotation_ArgumentPrototype();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MAX = eINSTANCE.getIoHwAbstractionServerAnnotation_BswRangeMax();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RANGE_MIN = eINSTANCE.getIoHwAbstractionServerAnnotation_BswRangeMin();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RESOLUTION = eINSTANCE.getIoHwAbstractionServerAnnotation_BswResolution();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getIoHwAbstractionServerAnnotation_DataElementPrototype();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__FAILURE_MONITORING = eINSTANCE.getIoHwAbstractionServerAnnotation_FailureMonitoring();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__FILTERING_DEBOUNCING = eINSTANCE.getIoHwAbstractionServerAnnotation_FilteringDebouncing();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__PULSE_TEST = eINSTANCE.getIoHwAbstractionServerAnnotation_PulseTest();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__SUPPORTS_REPORT_RUNNABLE = eINSTANCE.getIoHwAbstractionServerAnnotation_SupportsReportRunnable();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__SUPPORTS_WAKE_UP_RUNNABLE = eINSTANCE.getIoHwAbstractionServerAnnotation_SupportsWakeUpRunnable();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__UNIT = eINSTANCE.getIoHwAbstractionServerAnnotation_Unit();
        public static final EClass REPORT_FEATURE = eINSTANCE.getReportFeature();
        public static final EReference REPORT_FEATURE__IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getReportFeature_IoHwAbstractionServerAnnotation();
        public static final EClass WAKE_UP = eINSTANCE.getWakeUp();
        public static final EReference WAKE_UP__IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getWakeUp_IoHwAbstractionServerAnnotation();
        public static final EClass RECEIVER_ANNOTATION = eINSTANCE.getReceiverAnnotation();
        public static final EAttribute RECEIVER_ANNOTATION__SIGNAL_AGE = eINSTANCE.getReceiverAnnotation_SignalAge();
        public static final EClass SENDER_RECEIVER_ANNOTATION = eINSTANCE.getSenderReceiverAnnotation();
        public static final EReference SENDER_RECEIVER_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getSenderReceiverAnnotation_PortPrototype();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__COMPUTED = eINSTANCE.getSenderReceiverAnnotation_Computed();
        public static final EReference SENDER_RECEIVER_ANNOTATION__DATA_ELEMENT = eINSTANCE.getSenderReceiverAnnotation_DataElement();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__LIMIT_KIND = eINSTANCE.getSenderReceiverAnnotation_LimitKind();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__PROCESSING_KIND = eINSTANCE.getSenderReceiverAnnotation_ProcessingKind();
        public static final EClass SENDER_ANNOTATION = eINSTANCE.getSenderAnnotation();
        public static final EClass DELEGATED_PORT_ANNOTATION = eINSTANCE.getDelegatedPortAnnotation();
        public static final EReference DELEGATED_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getDelegatedPortAnnotation_PortPrototype();
        public static final EAttribute DELEGATED_PORT_ANNOTATION__SIGNAL_FAN = eINSTANCE.getDelegatedPortAnnotation_SignalFan();
        public static final EEnum FILTER_DEBOUNCING_ENUM = eINSTANCE.getFilterDebouncingEnum();
        public static final EEnum PULSE_TEST_ENUM = eINSTANCE.getPulseTestEnum();
        public static final EEnum LIMIT_KIND = eINSTANCE.getLimitKind();
        public static final EEnum PROCESSING_KIND = eINSTANCE.getProcessingKind();
        public static final EEnum SIGNAL_FAN_ENUM = eINSTANCE.getSignalFanEnum();
    }
}

