/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.applicationattributes.instanceref;

import autosar21.swcomponent.applicationattributes.instanceref.InstancerefFactory;
import autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/aa/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int FAILURE_MONITORING_MONITORS_FAILURE = 0;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__GCHECKSUM = 0;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__GTIMESTAMP = 1;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__CHECKSUM = 2;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__TIMESTAMP = 3;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__FAILURE_MONITORING = 4;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__COMPONENT_PROTOTYPE = 5;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE__PORT_PROTOTYPE = 6;
    public static final int FAILURE_MONITORING_MONITORS_FAILURE_FEATURE_COUNT = 7;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT = 1;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__SENDER_RECEIVER_ANNOTATION = 4;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__COMPONENT_PROTOTYPE = 5;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__PORT_PROTOTYPE = 6;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 7;
    public static final int SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT_FEATURE_COUNT = 8;

    public EClass getFailureMonitoringMonitorsFailure();

    public EReference getFailureMonitoringMonitorsFailure_FailureMonitoring();

    public EReference getFailureMonitoringMonitorsFailure_ComponentPrototype();

    public EReference getFailureMonitoringMonitorsFailure_PortPrototype();

    public EClass getSenderReceiverAnnotationDataElement();

    public EReference getSenderReceiverAnnotationDataElement_SenderReceiverAnnotation();

    public EReference getSenderReceiverAnnotationDataElement_ComponentPrototype();

    public EReference getSenderReceiverAnnotationDataElement_PortPrototype();

    public EReference getSenderReceiverAnnotationDataElement_DataElementPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass FAILURE_MONITORING_MONITORS_FAILURE = eINSTANCE.getFailureMonitoringMonitorsFailure();
        public static final EReference FAILURE_MONITORING_MONITORS_FAILURE__FAILURE_MONITORING = eINSTANCE.getFailureMonitoringMonitorsFailure_FailureMonitoring();
        public static final EReference FAILURE_MONITORING_MONITORS_FAILURE__COMPONENT_PROTOTYPE = eINSTANCE.getFailureMonitoringMonitorsFailure_ComponentPrototype();
        public static final EReference FAILURE_MONITORING_MONITORS_FAILURE__PORT_PROTOTYPE = eINSTANCE.getFailureMonitoringMonitorsFailure_PortPrototype();
        public static final EClass SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT = eINSTANCE.getSenderReceiverAnnotationDataElement();
        public static final EReference SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__SENDER_RECEIVER_ANNOTATION = eINSTANCE.getSenderReceiverAnnotationDataElement_SenderReceiverAnnotation();
        public static final EReference SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__COMPONENT_PROTOTYPE = eINSTANCE.getSenderReceiverAnnotationDataElement_ComponentPrototype();
        public static final EReference SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getSenderReceiverAnnotationDataElement_PortPrototype();
        public static final EReference SENDER_RECEIVER_ANNOTATION_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getSenderReceiverAnnotationDataElement_DataElementPrototype();
    }
}

