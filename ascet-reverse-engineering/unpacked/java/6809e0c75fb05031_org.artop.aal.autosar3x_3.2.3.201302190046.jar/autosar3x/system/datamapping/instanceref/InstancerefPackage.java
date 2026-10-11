/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.datamapping.instanceref;

import autosar3x.system.datamapping.instanceref.InstancerefFactory;
import autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/dm/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT = 0;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__DATA_ELEMENT = 8;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT_FEATURE_COUNT = 9;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT = 1;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__SENDER_RECEIVER_TO_SIGNAL_MAPPING = 4;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__DATA_ELEMENT = 8;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT_FEATURE_COUNT = 9;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION = 2;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__CHECKSUM = 2;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__COMPOSITION_PROTOTYPE = 5;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__COMPONENT_PROTOTYPES = 6;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__PORT_PROTOTYPE = 7;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__OPERATION = 8;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION_FEATURE_COUNT = 9;

    public EClass getSenderReceiverToSignalGroupMappingDataElement();

    public EReference getSenderReceiverToSignalGroupMappingDataElement_SenderReceiverToSignalGroupMapping();

    public EReference getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition();

    public EReference getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes();

    public EReference getSenderReceiverToSignalGroupMappingDataElement_PortPrototype();

    public EReference getSenderReceiverToSignalGroupMappingDataElement_DataElement();

    public EClass getSenderReceiverToSignalMappingDataElement();

    public EReference getSenderReceiverToSignalMappingDataElement_SenderReceiverToSignalMapping();

    public EReference getSenderReceiverToSignalMappingDataElement_SoftwareComposition();

    public EReference getSenderReceiverToSignalMappingDataElement_ComponentPrototypes();

    public EReference getSenderReceiverToSignalMappingDataElement_PortPrototype();

    public EReference getSenderReceiverToSignalMappingDataElement_DataElement();

    public EClass getClientServerToSignalGroupMappingMappedOperation();

    public EReference getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping();

    public EReference getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype();

    public EReference getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes();

    public EReference getClientServerToSignalGroupMappingMappedOperation_PortPrototype();

    public EReference getClientServerToSignalGroupMappingMappedOperation_Operation();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT = eINSTANCE.getSenderReceiverToSignalGroupMappingDataElement();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getSenderReceiverToSignalGroupMappingDataElement_SenderReceiverToSignalGroupMapping();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getSenderReceiverToSignalGroupMappingDataElement_PortPrototype();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT__DATA_ELEMENT = eINSTANCE.getSenderReceiverToSignalGroupMappingDataElement_DataElement();
        public static final EClass SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT = eINSTANCE.getSenderReceiverToSignalMappingDataElement();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__SENDER_RECEIVER_TO_SIGNAL_MAPPING = eINSTANCE.getSenderReceiverToSignalMappingDataElement_SenderReceiverToSignalMapping();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getSenderReceiverToSignalMappingDataElement_SoftwareComposition();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getSenderReceiverToSignalMappingDataElement_ComponentPrototypes();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getSenderReceiverToSignalMappingDataElement_PortPrototype();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT__DATA_ELEMENT = eINSTANCE.getSenderReceiverToSignalMappingDataElement_DataElement();
        public static final EClass CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__COMPOSITION_PROTOTYPE = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__COMPONENT_PROTOTYPES = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__PORT_PROTOTYPE = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_PortPrototype();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__OPERATION = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_Operation();
    }
}

