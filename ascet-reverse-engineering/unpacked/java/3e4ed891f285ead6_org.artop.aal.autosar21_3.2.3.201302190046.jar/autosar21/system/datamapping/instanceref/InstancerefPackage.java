/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.datamapping.instanceref;

import autosar21.system.datamapping.instanceref.InstancerefFactory;
import autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/dm/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT = 0;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__CHECKSUM = 2;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__CLIENT_SERVER_ARRAY_ELEMENT_MAPPING = 4;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__ARGUMENT_PROTOTYPE = 8;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__NESTING_DATA_PROTOTYPES = 9;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__ARRAY_ELEMENT = 10;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT_FEATURE_COUNT = 11;
    public static final int INDEXED_DATA_PROTOTYPE = 1;
    public static final int INDEXED_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int INDEXED_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int INDEXED_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int INDEXED_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int INDEXED_DATA_PROTOTYPE__INDEX = 4;
    public static final int INDEXED_DATA_PROTOTYPE__NESTING_DATA_PROTOTYPE = 5;
    public static final int INDEXED_DATA_PROTOTYPE_FEATURE_COUNT = 6;
    public static final int INDEXED_ARRAY_ELEMENT = 2;
    public static final int INDEXED_ARRAY_ELEMENT__GCHECKSUM = 0;
    public static final int INDEXED_ARRAY_ELEMENT__GTIMESTAMP = 1;
    public static final int INDEXED_ARRAY_ELEMENT__CHECKSUM = 2;
    public static final int INDEXED_ARRAY_ELEMENT__TIMESTAMP = 3;
    public static final int INDEXED_ARRAY_ELEMENT__INDEX = 4;
    public static final int INDEXED_ARRAY_ELEMENT__ARRAY_ELEMENT = 5;
    public static final int INDEXED_ARRAY_ELEMENT_FEATURE_COUNT = 6;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT = 3;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__CHECKSUM = 2;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING = 4;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__SOFTWARE_COMPOSITION = 5;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__COMPONENT_PROTOTYPES = 6;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__PORT_PROTOTYPE = 7;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__ARGUMENT = 8;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT_FEATURE_COUNT = 9;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT = 4;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__CHECKSUM = 2;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__CLIENT_SERVER_RECORD_ELEMENT_MAPPING = 4;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__ARGUMENT_PROTOTYPE = 8;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__NESTING_DATA_PROTOTYPES = 9;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__RECORD_ELEMENT = 10;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT_FEATURE_COUNT = 11;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION = 5;
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
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT = 6;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__SENDER_REC_ARRAY_ELEMENT_MAPPING = 4;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__NESTING_DATA_PROTOTYPES = 9;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__ARRAY_ELEMENT = 10;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT_FEATURE_COUNT = 11;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_DATA_ELEMENT = 7;
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
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_DATA_ELEMENT = 8;
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
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT = 9;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__SENDER_REC_RECORD_ELEMENT_MAPPING = 4;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__NESTING_DATA_PROTOTYPES = 9;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__RECORD_ELEMENT = 10;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT_FEATURE_COUNT = 11;

    public EClass getClientServerArrayElementMappingArrayElement();

    public EReference getClientServerArrayElementMappingArrayElement_ClientServerArrayElementMapping();

    public EReference getClientServerArrayElementMappingArrayElement_SoftwareComposition();

    public EReference getClientServerArrayElementMappingArrayElement_ComponentPrototypes();

    public EReference getClientServerArrayElementMappingArrayElement_PortPrototype();

    public EReference getClientServerArrayElementMappingArrayElement_ArgumentPrototype();

    public EReference getClientServerArrayElementMappingArrayElement_NestingDataPrototypes();

    public EReference getClientServerArrayElementMappingArrayElement_ArrayElement();

    public EClass getIndexedDataPrototype();

    public EAttribute getIndexedDataPrototype_Index();

    public EReference getIndexedDataPrototype_NestingDataPrototype();

    public EClass getIndexedArrayElement();

    public EAttribute getIndexedArrayElement_Index();

    public EReference getIndexedArrayElement_ArrayElement();

    public EClass getClientServerPrimitiveTypeMappingArgument();

    public EReference getClientServerPrimitiveTypeMappingArgument_ClientServerPrimitiveTypeMapping();

    public EReference getClientServerPrimitiveTypeMappingArgument_SoftwareComposition();

    public EReference getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes();

    public EReference getClientServerPrimitiveTypeMappingArgument_PortPrototype();

    public EReference getClientServerPrimitiveTypeMappingArgument_Argument();

    public EClass getClientServerRecordElementMappingRecordElement();

    public EReference getClientServerRecordElementMappingRecordElement_ClientServerRecordElementMapping();

    public EReference getClientServerRecordElementMappingRecordElement_SoftwareComposition();

    public EReference getClientServerRecordElementMappingRecordElement_ComponentPrototypes();

    public EReference getClientServerRecordElementMappingRecordElement_PortPrototype();

    public EReference getClientServerRecordElementMappingRecordElement_ArgumentPrototype();

    public EReference getClientServerRecordElementMappingRecordElement_NestingDataPrototypes();

    public EReference getClientServerRecordElementMappingRecordElement_RecordElement();

    public EClass getClientServerToSignalGroupMappingMappedOperation();

    public EReference getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping();

    public EReference getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype();

    public EReference getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes();

    public EReference getClientServerToSignalGroupMappingMappedOperation_PortPrototype();

    public EReference getClientServerToSignalGroupMappingMappedOperation_Operation();

    public EClass getSenderRecArrayElementMappingArrayElement();

    public EReference getSenderRecArrayElementMappingArrayElement_SenderRecArrayElementMapping();

    public EReference getSenderRecArrayElementMappingArrayElement_SoftwareComposition();

    public EReference getSenderRecArrayElementMappingArrayElement_ComponentPrototypes();

    public EReference getSenderRecArrayElementMappingArrayElement_PortPrototype();

    public EReference getSenderRecArrayElementMappingArrayElement_DataElementPrototype();

    public EReference getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes();

    public EReference getSenderRecArrayElementMappingArrayElement_ArrayElement();

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

    public EClass getSenderRecRecordElementMappingRecordElement();

    public EReference getSenderRecRecordElementMappingRecordElement_SenderRecRecordElementMapping();

    public EReference getSenderRecRecordElementMappingRecordElement_SoftwareComposition();

    public EReference getSenderRecRecordElementMappingRecordElement_ComponentPrototypes();

    public EReference getSenderRecRecordElementMappingRecordElement_PortPrototype();

    public EReference getSenderRecRecordElementMappingRecordElement_DataElementPrototype();

    public EReference getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes();

    public EReference getSenderRecRecordElementMappingRecordElement_RecordElement();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT = eINSTANCE.getClientServerArrayElementMappingArrayElement();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__CLIENT_SERVER_ARRAY_ELEMENT_MAPPING = eINSTANCE.getClientServerArrayElementMappingArrayElement_ClientServerArrayElementMapping();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getClientServerArrayElementMappingArrayElement_SoftwareComposition();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getClientServerArrayElementMappingArrayElement_ComponentPrototypes();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getClientServerArrayElementMappingArrayElement_PortPrototype();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__ARGUMENT_PROTOTYPE = eINSTANCE.getClientServerArrayElementMappingArrayElement_ArgumentPrototype();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__NESTING_DATA_PROTOTYPES = eINSTANCE.getClientServerArrayElementMappingArrayElement_NestingDataPrototypes();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__ARRAY_ELEMENT = eINSTANCE.getClientServerArrayElementMappingArrayElement_ArrayElement();
        public static final EClass INDEXED_DATA_PROTOTYPE = eINSTANCE.getIndexedDataPrototype();
        public static final EAttribute INDEXED_DATA_PROTOTYPE__INDEX = eINSTANCE.getIndexedDataPrototype_Index();
        public static final EReference INDEXED_DATA_PROTOTYPE__NESTING_DATA_PROTOTYPE = eINSTANCE.getIndexedDataPrototype_NestingDataPrototype();
        public static final EClass INDEXED_ARRAY_ELEMENT = eINSTANCE.getIndexedArrayElement();
        public static final EAttribute INDEXED_ARRAY_ELEMENT__INDEX = eINSTANCE.getIndexedArrayElement_Index();
        public static final EReference INDEXED_ARRAY_ELEMENT__ARRAY_ELEMENT = eINSTANCE.getIndexedArrayElement_ArrayElement();
        public static final EClass CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT = eINSTANCE.getClientServerPrimitiveTypeMappingArgument();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING = eINSTANCE.getClientServerPrimitiveTypeMappingArgument_ClientServerPrimitiveTypeMapping();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__SOFTWARE_COMPOSITION = eINSTANCE.getClientServerPrimitiveTypeMappingArgument_SoftwareComposition();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__COMPONENT_PROTOTYPES = eINSTANCE.getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__PORT_PROTOTYPE = eINSTANCE.getClientServerPrimitiveTypeMappingArgument_PortPrototype();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_ARGUMENT__ARGUMENT = eINSTANCE.getClientServerPrimitiveTypeMappingArgument_Argument();
        public static final EClass CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT = eINSTANCE.getClientServerRecordElementMappingRecordElement();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__CLIENT_SERVER_RECORD_ELEMENT_MAPPING = eINSTANCE.getClientServerRecordElementMappingRecordElement_ClientServerRecordElementMapping();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getClientServerRecordElementMappingRecordElement_SoftwareComposition();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getClientServerRecordElementMappingRecordElement_ComponentPrototypes();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getClientServerRecordElementMappingRecordElement_PortPrototype();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__ARGUMENT_PROTOTYPE = eINSTANCE.getClientServerRecordElementMappingRecordElement_ArgumentPrototype();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__NESTING_DATA_PROTOTYPES = eINSTANCE.getClientServerRecordElementMappingRecordElement_NestingDataPrototypes();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__RECORD_ELEMENT = eINSTANCE.getClientServerRecordElementMappingRecordElement_RecordElement();
        public static final EClass CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__COMPOSITION_PROTOTYPE = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__COMPONENT_PROTOTYPES = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__PORT_PROTOTYPE = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_PortPrototype();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION__OPERATION = eINSTANCE.getClientServerToSignalGroupMappingMappedOperation_Operation();
        public static final EClass SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT = eINSTANCE.getSenderRecArrayElementMappingArrayElement();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__SENDER_REC_ARRAY_ELEMENT_MAPPING = eINSTANCE.getSenderRecArrayElementMappingArrayElement_SenderRecArrayElementMapping();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getSenderRecArrayElementMappingArrayElement_SoftwareComposition();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getSenderRecArrayElementMappingArrayElement_ComponentPrototypes();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getSenderRecArrayElementMappingArrayElement_PortPrototype();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getSenderRecArrayElementMappingArrayElement_DataElementPrototype();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__NESTING_DATA_PROTOTYPES = eINSTANCE.getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING_ARRAY_ELEMENT__ARRAY_ELEMENT = eINSTANCE.getSenderRecArrayElementMappingArrayElement_ArrayElement();
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
        public static final EClass SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT = eINSTANCE.getSenderRecRecordElementMappingRecordElement();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__SENDER_REC_RECORD_ELEMENT_MAPPING = eINSTANCE.getSenderRecRecordElementMappingRecordElement_SenderRecRecordElementMapping();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getSenderRecRecordElementMappingRecordElement_SoftwareComposition();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getSenderRecRecordElementMappingRecordElement_ComponentPrototypes();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getSenderRecRecordElementMappingRecordElement_PortPrototype();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getSenderRecRecordElementMappingRecordElement_DataElementPrototype();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__NESTING_DATA_PROTOTYPES = eINSTANCE.getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT__RECORD_ELEMENT = eINSTANCE.getSenderRecRecordElementMappingRecordElement_RecordElement();
    }
}

