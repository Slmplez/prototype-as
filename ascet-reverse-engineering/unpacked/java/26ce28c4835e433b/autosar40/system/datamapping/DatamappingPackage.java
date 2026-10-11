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
package autosar40.system.datamapping;

import autosar40.system.datamapping.DatamappingFactory;
import autosar40.system.datamapping.impl.DatamappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatamappingPackage
extends EPackage {
    public static final String eNAME = "datamapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/dm";
    public static final String eNS_PREFIX = "";
    public static final DatamappingPackage eINSTANCE = DatamappingPackageImpl.init();
    public static final int APPLICATION_ERROR_MAPPING = 0;
    public static final int APPLICATION_ERROR_MAPPING__GCHECKSUM = 0;
    public static final int APPLICATION_ERROR_MAPPING__GTIMESTAMP = 1;
    public static final int APPLICATION_ERROR_MAPPING__CHECKSUM = 2;
    public static final int APPLICATION_ERROR_MAPPING__TIMESTAMP = 3;
    public static final int APPLICATION_ERROR_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int APPLICATION_ERROR_MAPPING__SYSTEM_SIGNAL = 5;
    public static final int APPLICATION_ERROR_MAPPING_FEATURE_COUNT = 6;
    public static final int CLIENT_ID_MAPPING = 1;
    public static final int CLIENT_ID_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_ID_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_ID_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_ID_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_ID_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int CLIENT_ID_MAPPING__SYSTEM_SIGNAL = 5;
    public static final int CLIENT_ID_MAPPING_FEATURE_COUNT = 6;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING = 2;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__CLIENT_SERVER_ARRAY_TYPE_MAPPING = 4;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = 5;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__INDEXED_ARRAY_ELEMENT = 6;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__SYSTEM_SIGNAL = 7;
    public static final int CLIENT_SERVER_ARRAY_ELEMENT_MAPPING_FEATURE_COUNT = 8;
    public static final int INDEXED_ARRAY_ELEMENT = 3;
    public static final int INDEXED_ARRAY_ELEMENT__GCHECKSUM = 0;
    public static final int INDEXED_ARRAY_ELEMENT__GTIMESTAMP = 1;
    public static final int INDEXED_ARRAY_ELEMENT__CHECKSUM = 2;
    public static final int INDEXED_ARRAY_ELEMENT__TIMESTAMP = 3;
    public static final int INDEXED_ARRAY_ELEMENT__APPLICATION_ARRAY_ELEMENT = 4;
    public static final int INDEXED_ARRAY_ELEMENT__IMPLEMENTATION_ARRAY_ELEMENT = 5;
    public static final int INDEXED_ARRAY_ELEMENT__INDEX = 6;
    public static final int INDEXED_ARRAY_ELEMENT_FEATURE_COUNT = 7;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING = 4;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING__ARGUMENT = 4;
    public static final int CLIENT_SERVER_COMPOSITE_TYPE_MAPPING_FEATURE_COUNT = 5;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING = 5;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING__ARGUMENT = 4;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING__ARRAY_ELEMENT_MAPPINGS = 5;
    public static final int CLIENT_SERVER_ARRAY_TYPE_MAPPING_FEATURE_COUNT = 6;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING = 6;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__ARGUMENT = 5;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__SYSTEM_SIGNAL = 6;
    public static final int CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING_FEATURE_COUNT = 7;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING = 7;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__CLIENT_SERVER_RECORD_TYPE_MAPPING = 4;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__APPLICATION_RECORD_ELEMENT = 5;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = 6;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__IMPLEMENTATION_RECORD_ELEMENT = 7;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING__SYSTEM_SIGNAL = 8;
    public static final int CLIENT_SERVER_RECORD_ELEMENT_MAPPING_FEATURE_COUNT = 9;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING = 8;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING__ARGUMENT = 4;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING__RECORD_ELEMENT_MAPPINGS = 5;
    public static final int CLIENT_SERVER_RECORD_TYPE_MAPPING_FEATURE_COUNT = 6;
    public static final int DATA_MAPPING = 10;
    public static final int DATA_MAPPING__GCHECKSUM = 0;
    public static final int DATA_MAPPING__GTIMESTAMP = 1;
    public static final int DATA_MAPPING__CHECKSUM = 2;
    public static final int DATA_MAPPING__TIMESTAMP = 3;
    public static final int DATA_MAPPING__SYSTEM_MAPPING = 4;
    public static final int DATA_MAPPING__INTRODUCTION = 5;
    public static final int DATA_MAPPING__VARIATION_POINT = 6;
    public static final int DATA_MAPPING_FEATURE_COUNT = 7;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 9;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__SYSTEM_MAPPING = 4;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__INTRODUCTION = 5;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__VARIATION_POINT = 6;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__APPLICATION_ERROR = 7;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__CLIENT_ID = 8;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__COMPOSITE_TYPE_MAPPINGS = 9;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__EMPTY_SIGNAL = 10;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__MAPPED_OPERATION = 11;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__PRIMITIVE_TYPE_MAPPINGS = 12;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__REQUEST_GROUP = 13;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__RESPONSE_GROUP = 14;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__SEQUENCE_COUNTER = 15;
    public static final int CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_FEATURE_COUNT = 16;
    public static final int EMPTY_SIGNAL_MAPPING = 11;
    public static final int EMPTY_SIGNAL_MAPPING__GCHECKSUM = 0;
    public static final int EMPTY_SIGNAL_MAPPING__GTIMESTAMP = 1;
    public static final int EMPTY_SIGNAL_MAPPING__CHECKSUM = 2;
    public static final int EMPTY_SIGNAL_MAPPING__TIMESTAMP = 3;
    public static final int EMPTY_SIGNAL_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int EMPTY_SIGNAL_MAPPING__SYSTEM_SIGNAL = 5;
    public static final int EMPTY_SIGNAL_MAPPING_FEATURE_COUNT = 6;
    public static final int SEQUENCE_COUNTER_MAPPING = 12;
    public static final int SEQUENCE_COUNTER_MAPPING__GCHECKSUM = 0;
    public static final int SEQUENCE_COUNTER_MAPPING__GTIMESTAMP = 1;
    public static final int SEQUENCE_COUNTER_MAPPING__CHECKSUM = 2;
    public static final int SEQUENCE_COUNTER_MAPPING__TIMESTAMP = 3;
    public static final int SEQUENCE_COUNTER_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = 4;
    public static final int SEQUENCE_COUNTER_MAPPING__SYSTEM_SIGNAL = 5;
    public static final int SEQUENCE_COUNTER_MAPPING_FEATURE_COUNT = 6;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING = 13;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__CHECKSUM = 2;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__SENDER_REC_ARRAY_TYPE_MAPPING = 4;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = 5;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__INDEXED_ARRAY_ELEMENT = 6;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING__SYSTEM_SIGNAL = 7;
    public static final int SENDER_REC_ARRAY_ELEMENT_MAPPING_FEATURE_COUNT = 8;
    public static final int SENDER_REC_COMPOSITE_TYPE_MAPPING = 14;
    public static final int SENDER_REC_COMPOSITE_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_REC_COMPOSITE_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_REC_COMPOSITE_TYPE_MAPPING__CHECKSUM = 2;
    public static final int SENDER_REC_COMPOSITE_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_REC_COMPOSITE_TYPE_MAPPING_FEATURE_COUNT = 4;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING = 15;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING__CHECKSUM = 2;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING__ARRAY_ELEMENT_MAPPINGS = 4;
    public static final int SENDER_REC_ARRAY_TYPE_MAPPING_FEATURE_COUNT = 5;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING = 16;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__SYSTEM_MAPPING = 4;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__INTRODUCTION = 5;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__VARIATION_POINT = 6;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__DATA_ELEMENT = 7;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__SIGNAL_GROUP = 8;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__TYPE_MAPPING = 9;
    public static final int SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING_FEATURE_COUNT = 10;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING = 17;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__SYSTEM_MAPPING = 4;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__INTRODUCTION = 5;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__VARIATION_POINT = 6;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__DATA_ELEMENT = 7;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING__SYSTEM_SIGNAL = 8;
    public static final int SENDER_RECEIVER_TO_SIGNAL_MAPPING_FEATURE_COUNT = 9;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING = 18;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__CHECKSUM = 2;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__SENDER_REC_RECORD_TYPE_MAPPING = 4;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__APPLICATION_RECORD_ELEMENT = 5;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = 6;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__IMPLEMENTATION_RECORD_ELEMENT = 7;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING__SYSTEM_SIGNAL = 8;
    public static final int SENDER_REC_RECORD_ELEMENT_MAPPING_FEATURE_COUNT = 9;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING = 19;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING__GCHECKSUM = 0;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING__GTIMESTAMP = 1;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING__CHECKSUM = 2;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING__TIMESTAMP = 3;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING__RECORD_ELEMENT_MAPPINGS = 4;
    public static final int SENDER_REC_RECORD_TYPE_MAPPING_FEATURE_COUNT = 5;
    public static final int DATA_TYPE_POLICY_ENUM = 20;

    public EClass getApplicationErrorMapping();

    public EReference getApplicationErrorMapping_ClientServerToSignalGroupMapping();

    public EReference getApplicationErrorMapping_SystemSignal();

    public EClass getClientIdMapping();

    public EReference getClientIdMapping_ClientServerToSignalGroupMapping();

    public EReference getClientIdMapping_SystemSignal();

    public EClass getClientServerArrayElementMapping();

    public EReference getClientServerArrayElementMapping_ClientServerArrayTypeMapping();

    public EReference getClientServerArrayElementMapping_ComplexTypeMapping();

    public EReference getClientServerArrayElementMapping_IndexedArrayElement();

    public EReference getClientServerArrayElementMapping_SystemSignal();

    public EClass getIndexedArrayElement();

    public EReference getIndexedArrayElement_ApplicationArrayElement();

    public EReference getIndexedArrayElement_ImplementationArrayElement();

    public EAttribute getIndexedArrayElement_Index();

    public EClass getClientServerCompositeTypeMapping();

    public EReference getClientServerCompositeTypeMapping_Argument();

    public EClass getClientServerArrayTypeMapping();

    public EReference getClientServerArrayTypeMapping_ArrayElementMappings();

    public EClass getClientServerPrimitiveTypeMapping();

    public EReference getClientServerPrimitiveTypeMapping_ClientServerToSignalGroupMapping();

    public EReference getClientServerPrimitiveTypeMapping_Argument();

    public EReference getClientServerPrimitiveTypeMapping_SystemSignal();

    public EClass getClientServerRecordElementMapping();

    public EReference getClientServerRecordElementMapping_ClientServerRecordTypeMapping();

    public EReference getClientServerRecordElementMapping_ApplicationRecordElement();

    public EReference getClientServerRecordElementMapping_ComplexTypeMapping();

    public EReference getClientServerRecordElementMapping_ImplementationRecordElement();

    public EReference getClientServerRecordElementMapping_SystemSignal();

    public EClass getClientServerRecordTypeMapping();

    public EReference getClientServerRecordTypeMapping_RecordElementMappings();

    public EClass getClientServerToSignalGroupMapping();

    public EReference getClientServerToSignalGroupMapping_ApplicationError();

    public EReference getClientServerToSignalGroupMapping_ClientID();

    public EReference getClientServerToSignalGroupMapping_CompositeTypeMappings();

    public EReference getClientServerToSignalGroupMapping_EmptySignal();

    public EReference getClientServerToSignalGroupMapping_MappedOperation();

    public EReference getClientServerToSignalGroupMapping_PrimitiveTypeMappings();

    public EReference getClientServerToSignalGroupMapping_RequestGroup();

    public EReference getClientServerToSignalGroupMapping_ResponseGroup();

    public EReference getClientServerToSignalGroupMapping_SequenceCounter();

    public EClass getDataMapping();

    public EReference getDataMapping_SystemMapping();

    public EReference getDataMapping_Introduction();

    public EReference getDataMapping_VariationPoint();

    public EClass getEmptySignalMapping();

    public EReference getEmptySignalMapping_ClientServerToSignalGroupMapping();

    public EReference getEmptySignalMapping_SystemSignal();

    public EClass getSequenceCounterMapping();

    public EReference getSequenceCounterMapping_ClientServerToSignalGroupMapping();

    public EReference getSequenceCounterMapping_SystemSignal();

    public EClass getSenderRecArrayElementMapping();

    public EReference getSenderRecArrayElementMapping_SenderRecArrayTypeMapping();

    public EReference getSenderRecArrayElementMapping_ComplexTypeMapping();

    public EReference getSenderRecArrayElementMapping_IndexedArrayElement();

    public EReference getSenderRecArrayElementMapping_SystemSignal();

    public EClass getSenderRecCompositeTypeMapping();

    public EClass getSenderRecArrayTypeMapping();

    public EReference getSenderRecArrayTypeMapping_ArrayElementMappings();

    public EClass getSenderReceiverToSignalGroupMapping();

    public EReference getSenderReceiverToSignalGroupMapping_DataElement();

    public EReference getSenderReceiverToSignalGroupMapping_SignalGroup();

    public EReference getSenderReceiverToSignalGroupMapping_TypeMapping();

    public EClass getSenderReceiverToSignalMapping();

    public EReference getSenderReceiverToSignalMapping_DataElement();

    public EReference getSenderReceiverToSignalMapping_SystemSignal();

    public EClass getSenderRecRecordElementMapping();

    public EReference getSenderRecRecordElementMapping_SenderRecRecordTypeMapping();

    public EReference getSenderRecRecordElementMapping_ApplicationRecordElement();

    public EReference getSenderRecRecordElementMapping_ComplexTypeMapping();

    public EReference getSenderRecRecordElementMapping_ImplementationRecordElement();

    public EReference getSenderRecRecordElementMapping_SystemSignal();

    public EClass getSenderRecRecordTypeMapping();

    public EReference getSenderRecRecordTypeMapping_RecordElementMappings();

    public EEnum getDataTypePolicyEnum();

    public DatamappingFactory getDatamappingFactory();

    public static interface Literals {
        public static final EClass APPLICATION_ERROR_MAPPING = eINSTANCE.getApplicationErrorMapping();
        public static final EReference APPLICATION_ERROR_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getApplicationErrorMapping_ClientServerToSignalGroupMapping();
        public static final EReference APPLICATION_ERROR_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getApplicationErrorMapping_SystemSignal();
        public static final EClass CLIENT_ID_MAPPING = eINSTANCE.getClientIdMapping();
        public static final EReference CLIENT_ID_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getClientIdMapping_ClientServerToSignalGroupMapping();
        public static final EReference CLIENT_ID_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getClientIdMapping_SystemSignal();
        public static final EClass CLIENT_SERVER_ARRAY_ELEMENT_MAPPING = eINSTANCE.getClientServerArrayElementMapping();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__CLIENT_SERVER_ARRAY_TYPE_MAPPING = eINSTANCE.getClientServerArrayElementMapping_ClientServerArrayTypeMapping();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = eINSTANCE.getClientServerArrayElementMapping_ComplexTypeMapping();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__INDEXED_ARRAY_ELEMENT = eINSTANCE.getClientServerArrayElementMapping_IndexedArrayElement();
        public static final EReference CLIENT_SERVER_ARRAY_ELEMENT_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getClientServerArrayElementMapping_SystemSignal();
        public static final EClass INDEXED_ARRAY_ELEMENT = eINSTANCE.getIndexedArrayElement();
        public static final EReference INDEXED_ARRAY_ELEMENT__APPLICATION_ARRAY_ELEMENT = eINSTANCE.getIndexedArrayElement_ApplicationArrayElement();
        public static final EReference INDEXED_ARRAY_ELEMENT__IMPLEMENTATION_ARRAY_ELEMENT = eINSTANCE.getIndexedArrayElement_ImplementationArrayElement();
        public static final EAttribute INDEXED_ARRAY_ELEMENT__INDEX = eINSTANCE.getIndexedArrayElement_Index();
        public static final EClass CLIENT_SERVER_COMPOSITE_TYPE_MAPPING = eINSTANCE.getClientServerCompositeTypeMapping();
        public static final EReference CLIENT_SERVER_COMPOSITE_TYPE_MAPPING__ARGUMENT = eINSTANCE.getClientServerCompositeTypeMapping_Argument();
        public static final EClass CLIENT_SERVER_ARRAY_TYPE_MAPPING = eINSTANCE.getClientServerArrayTypeMapping();
        public static final EReference CLIENT_SERVER_ARRAY_TYPE_MAPPING__ARRAY_ELEMENT_MAPPINGS = eINSTANCE.getClientServerArrayTypeMapping_ArrayElementMappings();
        public static final EClass CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING = eINSTANCE.getClientServerPrimitiveTypeMapping();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getClientServerPrimitiveTypeMapping_ClientServerToSignalGroupMapping();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__ARGUMENT = eINSTANCE.getClientServerPrimitiveTypeMapping_Argument();
        public static final EReference CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getClientServerPrimitiveTypeMapping_SystemSignal();
        public static final EClass CLIENT_SERVER_RECORD_ELEMENT_MAPPING = eINSTANCE.getClientServerRecordElementMapping();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING__CLIENT_SERVER_RECORD_TYPE_MAPPING = eINSTANCE.getClientServerRecordElementMapping_ClientServerRecordTypeMapping();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING__APPLICATION_RECORD_ELEMENT = eINSTANCE.getClientServerRecordElementMapping_ApplicationRecordElement();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = eINSTANCE.getClientServerRecordElementMapping_ComplexTypeMapping();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING__IMPLEMENTATION_RECORD_ELEMENT = eINSTANCE.getClientServerRecordElementMapping_ImplementationRecordElement();
        public static final EReference CLIENT_SERVER_RECORD_ELEMENT_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getClientServerRecordElementMapping_SystemSignal();
        public static final EClass CLIENT_SERVER_RECORD_TYPE_MAPPING = eINSTANCE.getClientServerRecordTypeMapping();
        public static final EReference CLIENT_SERVER_RECORD_TYPE_MAPPING__RECORD_ELEMENT_MAPPINGS = eINSTANCE.getClientServerRecordTypeMapping_RecordElementMappings();
        public static final EClass CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getClientServerToSignalGroupMapping();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__APPLICATION_ERROR = eINSTANCE.getClientServerToSignalGroupMapping_ApplicationError();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__CLIENT_ID = eINSTANCE.getClientServerToSignalGroupMapping_ClientID();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__COMPOSITE_TYPE_MAPPINGS = eINSTANCE.getClientServerToSignalGroupMapping_CompositeTypeMappings();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__EMPTY_SIGNAL = eINSTANCE.getClientServerToSignalGroupMapping_EmptySignal();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__MAPPED_OPERATION = eINSTANCE.getClientServerToSignalGroupMapping_MappedOperation();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__PRIMITIVE_TYPE_MAPPINGS = eINSTANCE.getClientServerToSignalGroupMapping_PrimitiveTypeMappings();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__REQUEST_GROUP = eINSTANCE.getClientServerToSignalGroupMapping_RequestGroup();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__RESPONSE_GROUP = eINSTANCE.getClientServerToSignalGroupMapping_ResponseGroup();
        public static final EReference CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING__SEQUENCE_COUNTER = eINSTANCE.getClientServerToSignalGroupMapping_SequenceCounter();
        public static final EClass DATA_MAPPING = eINSTANCE.getDataMapping();
        public static final EReference DATA_MAPPING__SYSTEM_MAPPING = eINSTANCE.getDataMapping_SystemMapping();
        public static final EReference DATA_MAPPING__INTRODUCTION = eINSTANCE.getDataMapping_Introduction();
        public static final EReference DATA_MAPPING__VARIATION_POINT = eINSTANCE.getDataMapping_VariationPoint();
        public static final EClass EMPTY_SIGNAL_MAPPING = eINSTANCE.getEmptySignalMapping();
        public static final EReference EMPTY_SIGNAL_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getEmptySignalMapping_ClientServerToSignalGroupMapping();
        public static final EReference EMPTY_SIGNAL_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getEmptySignalMapping_SystemSignal();
        public static final EClass SEQUENCE_COUNTER_MAPPING = eINSTANCE.getSequenceCounterMapping();
        public static final EReference SEQUENCE_COUNTER_MAPPING__CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getSequenceCounterMapping_ClientServerToSignalGroupMapping();
        public static final EReference SEQUENCE_COUNTER_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getSequenceCounterMapping_SystemSignal();
        public static final EClass SENDER_REC_ARRAY_ELEMENT_MAPPING = eINSTANCE.getSenderRecArrayElementMapping();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING__SENDER_REC_ARRAY_TYPE_MAPPING = eINSTANCE.getSenderRecArrayElementMapping_SenderRecArrayTypeMapping();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = eINSTANCE.getSenderRecArrayElementMapping_ComplexTypeMapping();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING__INDEXED_ARRAY_ELEMENT = eINSTANCE.getSenderRecArrayElementMapping_IndexedArrayElement();
        public static final EReference SENDER_REC_ARRAY_ELEMENT_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getSenderRecArrayElementMapping_SystemSignal();
        public static final EClass SENDER_REC_COMPOSITE_TYPE_MAPPING = eINSTANCE.getSenderRecCompositeTypeMapping();
        public static final EClass SENDER_REC_ARRAY_TYPE_MAPPING = eINSTANCE.getSenderRecArrayTypeMapping();
        public static final EReference SENDER_REC_ARRAY_TYPE_MAPPING__ARRAY_ELEMENT_MAPPINGS = eINSTANCE.getSenderRecArrayTypeMapping_ArrayElementMappings();
        public static final EClass SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING = eINSTANCE.getSenderReceiverToSignalGroupMapping();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__DATA_ELEMENT = eINSTANCE.getSenderReceiverToSignalGroupMapping_DataElement();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__SIGNAL_GROUP = eINSTANCE.getSenderReceiverToSignalGroupMapping_SignalGroup();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING__TYPE_MAPPING = eINSTANCE.getSenderReceiverToSignalGroupMapping_TypeMapping();
        public static final EClass SENDER_RECEIVER_TO_SIGNAL_MAPPING = eINSTANCE.getSenderReceiverToSignalMapping();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING__DATA_ELEMENT = eINSTANCE.getSenderReceiverToSignalMapping_DataElement();
        public static final EReference SENDER_RECEIVER_TO_SIGNAL_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getSenderReceiverToSignalMapping_SystemSignal();
        public static final EClass SENDER_REC_RECORD_ELEMENT_MAPPING = eINSTANCE.getSenderRecRecordElementMapping();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING__SENDER_REC_RECORD_TYPE_MAPPING = eINSTANCE.getSenderRecRecordElementMapping_SenderRecRecordTypeMapping();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING__APPLICATION_RECORD_ELEMENT = eINSTANCE.getSenderRecRecordElementMapping_ApplicationRecordElement();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING__COMPLEX_TYPE_MAPPING = eINSTANCE.getSenderRecRecordElementMapping_ComplexTypeMapping();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING__IMPLEMENTATION_RECORD_ELEMENT = eINSTANCE.getSenderRecRecordElementMapping_ImplementationRecordElement();
        public static final EReference SENDER_REC_RECORD_ELEMENT_MAPPING__SYSTEM_SIGNAL = eINSTANCE.getSenderRecRecordElementMapping_SystemSignal();
        public static final EClass SENDER_REC_RECORD_TYPE_MAPPING = eINSTANCE.getSenderRecRecordTypeMapping();
        public static final EReference SENDER_REC_RECORD_TYPE_MAPPING__RECORD_ELEMENT_MAPPINGS = eINSTANCE.getSenderRecRecordTypeMapping_RecordElementMappings();
        public static final EEnum DATA_TYPE_POLICY_ENUM = eINSTANCE.getDataTypePolicyEnum();
    }
}

