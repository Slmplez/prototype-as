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
package autosar40.swcomponent.applicationattributes;

import autosar40.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar40.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ApplicationattributesPackage
extends EPackage {
    public static final String eNAME = "applicationattributes";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/aa";
    public static final String eNS_PREFIX = "";
    public static final ApplicationattributesPackage eINSTANCE = ApplicationattributesPackageImpl.init();
    public static final int CLIENT_SERVER_ANNOTATION = 0;
    public static final int CLIENT_SERVER_ANNOTATION__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_ANNOTATION__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_ANNOTATION__CHECKSUM = 2;
    public static final int CLIENT_SERVER_ANNOTATION__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int CLIENT_SERVER_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int CLIENT_SERVER_ANNOTATION__LABEL = 6;
    public static final int CLIENT_SERVER_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int CLIENT_SERVER_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int CLIENT_SERVER_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int CLIENT_SERVER_ANNOTATION__OPERATION = 10;
    public static final int CLIENT_SERVER_ANNOTATION_FEATURE_COUNT = 11;
    public static final int DELEGATED_PORT_ANNOTATION = 1;
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
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION = 2;
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
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__ARGUMENT = 11;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RESOLUTION = 12;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__DATA_ELEMENT = 13;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__FAILURE_MONITORING = 14;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__FILTERING_DEBOUNCING = 15;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PULSE_TEST = 16;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION_FEATURE_COUNT = 17;
    public static final int MODE_PORT_ANNOTATION = 3;
    public static final int MODE_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int MODE_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int MODE_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int MODE_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int MODE_PORT_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int MODE_PORT_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int MODE_PORT_ANNOTATION__LABEL = 6;
    public static final int MODE_PORT_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int MODE_PORT_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int MODE_PORT_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int MODE_PORT_ANNOTATION__MODE_GROUP = 10;
    public static final int MODE_PORT_ANNOTATION_FEATURE_COUNT = 11;
    public static final int NV_DATA_PORT_ANNOTATION = 4;
    public static final int NV_DATA_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int NV_DATA_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int NV_DATA_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int NV_DATA_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int NV_DATA_PORT_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int NV_DATA_PORT_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int NV_DATA_PORT_ANNOTATION__LABEL = 6;
    public static final int NV_DATA_PORT_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int NV_DATA_PORT_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int NV_DATA_PORT_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int NV_DATA_PORT_ANNOTATION__VARIABLE = 10;
    public static final int NV_DATA_PORT_ANNOTATION_FEATURE_COUNT = 11;
    public static final int PARAMETER_PORT_ANNOTATION = 5;
    public static final int PARAMETER_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int PARAMETER_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int PARAMETER_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int PARAMETER_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int PARAMETER_PORT_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int PARAMETER_PORT_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int PARAMETER_PORT_ANNOTATION__LABEL = 6;
    public static final int PARAMETER_PORT_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int PARAMETER_PORT_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int PARAMETER_PORT_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int PARAMETER_PORT_ANNOTATION__PARAMETER = 10;
    public static final int PARAMETER_PORT_ANNOTATION_FEATURE_COUNT = 11;
    public static final int SENDER_RECEIVER_ANNOTATION = 9;
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
    public static final int RECEIVER_ANNOTATION = 6;
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
    public static final int SENDER_ANNOTATION = 7;
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
    public static final int TRIGGER_PORT_ANNOTATION = 8;
    public static final int TRIGGER_PORT_ANNOTATION__GCHECKSUM = 0;
    public static final int TRIGGER_PORT_ANNOTATION__GTIMESTAMP = 1;
    public static final int TRIGGER_PORT_ANNOTATION__CHECKSUM = 2;
    public static final int TRIGGER_PORT_ANNOTATION__TIMESTAMP = 3;
    public static final int TRIGGER_PORT_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int TRIGGER_PORT_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int TRIGGER_PORT_ANNOTATION__LABEL = 6;
    public static final int TRIGGER_PORT_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int TRIGGER_PORT_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int TRIGGER_PORT_ANNOTATION__PORT_PROTOTYPE = 9;
    public static final int TRIGGER_PORT_ANNOTATION__TRIGGER = 10;
    public static final int TRIGGER_PORT_ANNOTATION_FEATURE_COUNT = 11;
    public static final int DATA_LIMIT_KIND_ENUM = 10;
    public static final int SIGNAL_FAN_ENUM = 11;
    public static final int FILTER_DEBOUNCING_ENUM = 12;
    public static final int PULSE_TEST_ENUM = 13;
    public static final int PROCESSING_KIND_ENUM = 14;

    public EClass getClientServerAnnotation();

    public EReference getClientServerAnnotation_PortPrototype();

    public EReference getClientServerAnnotation_Operation();

    public EClass getDelegatedPortAnnotation();

    public EReference getDelegatedPortAnnotation_PortPrototype();

    public EAttribute getDelegatedPortAnnotation_SignalFan();

    public EClass getIoHwAbstractionServerAnnotation();

    public EReference getIoHwAbstractionServerAnnotation_PortPrototype();

    public EReference getIoHwAbstractionServerAnnotation_Age();

    public EReference getIoHwAbstractionServerAnnotation_Argument();

    public EAttribute getIoHwAbstractionServerAnnotation_BswResolution();

    public EReference getIoHwAbstractionServerAnnotation_DataElement();

    public EReference getIoHwAbstractionServerAnnotation_FailureMonitoring();

    public EAttribute getIoHwAbstractionServerAnnotation_FilteringDebouncing();

    public EAttribute getIoHwAbstractionServerAnnotation_PulseTest();

    public EClass getModePortAnnotation();

    public EReference getModePortAnnotation_PortPrototype();

    public EReference getModePortAnnotation_ModeGroup();

    public EClass getNvDataPortAnnotation();

    public EReference getNvDataPortAnnotation_PortPrototype();

    public EReference getNvDataPortAnnotation_Variable();

    public EClass getParameterPortAnnotation();

    public EReference getParameterPortAnnotation_PortPrototype();

    public EReference getParameterPortAnnotation_Parameter();

    public EClass getReceiverAnnotation();

    public EReference getReceiverAnnotation_SignalAge();

    public EClass getSenderAnnotation();

    public EClass getTriggerPortAnnotation();

    public EReference getTriggerPortAnnotation_PortPrototype();

    public EReference getTriggerPortAnnotation_Trigger();

    public EClass getSenderReceiverAnnotation();

    public EReference getSenderReceiverAnnotation_PortPrototype();

    public EAttribute getSenderReceiverAnnotation_Computed();

    public EReference getSenderReceiverAnnotation_DataElement();

    public EAttribute getSenderReceiverAnnotation_LimitKind();

    public EAttribute getSenderReceiverAnnotation_ProcessingKind();

    public EEnum getDataLimitKindEnum();

    public EEnum getSignalFanEnum();

    public EEnum getFilterDebouncingEnum();

    public EEnum getPulseTestEnum();

    public EEnum getProcessingKindEnum();

    public ApplicationattributesFactory getApplicationattributesFactory();

    public static interface Literals {
        public static final EClass CLIENT_SERVER_ANNOTATION = eINSTANCE.getClientServerAnnotation();
        public static final EReference CLIENT_SERVER_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getClientServerAnnotation_PortPrototype();
        public static final EReference CLIENT_SERVER_ANNOTATION__OPERATION = eINSTANCE.getClientServerAnnotation_Operation();
        public static final EClass DELEGATED_PORT_ANNOTATION = eINSTANCE.getDelegatedPortAnnotation();
        public static final EReference DELEGATED_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getDelegatedPortAnnotation_PortPrototype();
        public static final EAttribute DELEGATED_PORT_ANNOTATION__SIGNAL_FAN = eINSTANCE.getDelegatedPortAnnotation_SignalFan();
        public static final EClass IO_HW_ABSTRACTION_SERVER_ANNOTATION = eINSTANCE.getIoHwAbstractionServerAnnotation();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getIoHwAbstractionServerAnnotation_PortPrototype();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__AGE = eINSTANCE.getIoHwAbstractionServerAnnotation_Age();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__ARGUMENT = eINSTANCE.getIoHwAbstractionServerAnnotation_Argument();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__BSW_RESOLUTION = eINSTANCE.getIoHwAbstractionServerAnnotation_BswResolution();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__DATA_ELEMENT = eINSTANCE.getIoHwAbstractionServerAnnotation_DataElement();
        public static final EReference IO_HW_ABSTRACTION_SERVER_ANNOTATION__FAILURE_MONITORING = eINSTANCE.getIoHwAbstractionServerAnnotation_FailureMonitoring();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__FILTERING_DEBOUNCING = eINSTANCE.getIoHwAbstractionServerAnnotation_FilteringDebouncing();
        public static final EAttribute IO_HW_ABSTRACTION_SERVER_ANNOTATION__PULSE_TEST = eINSTANCE.getIoHwAbstractionServerAnnotation_PulseTest();
        public static final EClass MODE_PORT_ANNOTATION = eINSTANCE.getModePortAnnotation();
        public static final EReference MODE_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getModePortAnnotation_PortPrototype();
        public static final EReference MODE_PORT_ANNOTATION__MODE_GROUP = eINSTANCE.getModePortAnnotation_ModeGroup();
        public static final EClass NV_DATA_PORT_ANNOTATION = eINSTANCE.getNvDataPortAnnotation();
        public static final EReference NV_DATA_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getNvDataPortAnnotation_PortPrototype();
        public static final EReference NV_DATA_PORT_ANNOTATION__VARIABLE = eINSTANCE.getNvDataPortAnnotation_Variable();
        public static final EClass PARAMETER_PORT_ANNOTATION = eINSTANCE.getParameterPortAnnotation();
        public static final EReference PARAMETER_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getParameterPortAnnotation_PortPrototype();
        public static final EReference PARAMETER_PORT_ANNOTATION__PARAMETER = eINSTANCE.getParameterPortAnnotation_Parameter();
        public static final EClass RECEIVER_ANNOTATION = eINSTANCE.getReceiverAnnotation();
        public static final EReference RECEIVER_ANNOTATION__SIGNAL_AGE = eINSTANCE.getReceiverAnnotation_SignalAge();
        public static final EClass SENDER_ANNOTATION = eINSTANCE.getSenderAnnotation();
        public static final EClass TRIGGER_PORT_ANNOTATION = eINSTANCE.getTriggerPortAnnotation();
        public static final EReference TRIGGER_PORT_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getTriggerPortAnnotation_PortPrototype();
        public static final EReference TRIGGER_PORT_ANNOTATION__TRIGGER = eINSTANCE.getTriggerPortAnnotation_Trigger();
        public static final EClass SENDER_RECEIVER_ANNOTATION = eINSTANCE.getSenderReceiverAnnotation();
        public static final EReference SENDER_RECEIVER_ANNOTATION__PORT_PROTOTYPE = eINSTANCE.getSenderReceiverAnnotation_PortPrototype();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__COMPUTED = eINSTANCE.getSenderReceiverAnnotation_Computed();
        public static final EReference SENDER_RECEIVER_ANNOTATION__DATA_ELEMENT = eINSTANCE.getSenderReceiverAnnotation_DataElement();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__LIMIT_KIND = eINSTANCE.getSenderReceiverAnnotation_LimitKind();
        public static final EAttribute SENDER_RECEIVER_ANNOTATION__PROCESSING_KIND = eINSTANCE.getSenderReceiverAnnotation_ProcessingKind();
        public static final EEnum DATA_LIMIT_KIND_ENUM = eINSTANCE.getDataLimitKindEnum();
        public static final EEnum SIGNAL_FAN_ENUM = eINSTANCE.getSignalFanEnum();
        public static final EEnum FILTER_DEBOUNCING_ENUM = eINSTANCE.getFilterDebouncingEnum();
        public static final EEnum PULSE_TEST_ENUM = eINSTANCE.getPulseTestEnum();
        public static final EEnum PROCESSING_KIND_ENUM = eINSTANCE.getProcessingKindEnum();
    }
}

