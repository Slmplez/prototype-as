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
package autosar40.swcomponent.communication;

import autosar40.swcomponent.communication.CommunicationFactory;
import autosar40.swcomponent.communication.impl.CommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CommunicationPackage
extends EPackage {
    public static final String eNAME = "communication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/communication";
    public static final String eNS_PREFIX = "";
    public static final CommunicationPackage eINSTANCE = CommunicationPackageImpl.init();
    public static final int MODE_SWITCHED_ACK_REQUEST = 0;
    public static final int MODE_SWITCHED_ACK_REQUEST__GCHECKSUM = 0;
    public static final int MODE_SWITCHED_ACK_REQUEST__GTIMESTAMP = 1;
    public static final int MODE_SWITCHED_ACK_REQUEST__CHECKSUM = 2;
    public static final int MODE_SWITCHED_ACK_REQUEST__TIMESTAMP = 3;
    public static final int MODE_SWITCHED_ACK_REQUEST__MODE_SWITCH_SENDER_COM_SPEC = 4;
    public static final int MODE_SWITCHED_ACK_REQUEST__TIMEOUT = 5;
    public static final int MODE_SWITCHED_ACK_REQUEST_FEATURE_COUNT = 6;
    public static final int RPORT_COM_SPEC = 2;
    public static final int RPORT_COM_SPEC__GCHECKSUM = 0;
    public static final int RPORT_COM_SPEC__GTIMESTAMP = 1;
    public static final int RPORT_COM_SPEC__CHECKSUM = 2;
    public static final int RPORT_COM_SPEC__TIMESTAMP = 3;
    public static final int RPORT_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int RPORT_COM_SPEC_FEATURE_COUNT = 5;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC = 1;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__ENHANCED_MODE_API = 5;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC__SUPPORTS_ASYNCHRONOUS_MODE_SWITCH = 6;
    public static final int MODE_SWITCH_RECEIVER_COM_SPEC_FEATURE_COUNT = 7;
    public static final int PPORT_COM_SPEC = 17;
    public static final int PPORT_COM_SPEC__GCHECKSUM = 0;
    public static final int PPORT_COM_SPEC__GTIMESTAMP = 1;
    public static final int PPORT_COM_SPEC__CHECKSUM = 2;
    public static final int PPORT_COM_SPEC__TIMESTAMP = 3;
    public static final int PPORT_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int PPORT_COM_SPEC_FEATURE_COUNT = 5;
    public static final int MODE_SWITCH_SENDER_COM_SPEC = 3;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__ENHANCED_MODE_API = 5;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__MODE_GROUP = 6;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__MODE_SWITCHED_ACK = 7;
    public static final int MODE_SWITCH_SENDER_COM_SPEC__QUEUE_LENGTH = 8;
    public static final int MODE_SWITCH_SENDER_COM_SPEC_FEATURE_COUNT = 9;
    public static final int NV_PROVIDE_COM_SPEC = 4;
    public static final int NV_PROVIDE_COM_SPEC__GCHECKSUM = 0;
    public static final int NV_PROVIDE_COM_SPEC__GTIMESTAMP = 1;
    public static final int NV_PROVIDE_COM_SPEC__CHECKSUM = 2;
    public static final int NV_PROVIDE_COM_SPEC__TIMESTAMP = 3;
    public static final int NV_PROVIDE_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int NV_PROVIDE_COM_SPEC__RAM_BLOCK_INIT_VALUE = 5;
    public static final int NV_PROVIDE_COM_SPEC__ROM_BLOCK_INIT_VALUE = 6;
    public static final int NV_PROVIDE_COM_SPEC__VARIABLE = 7;
    public static final int NV_PROVIDE_COM_SPEC_FEATURE_COUNT = 8;
    public static final int NV_REQUIRE_COM_SPEC = 5;
    public static final int NV_REQUIRE_COM_SPEC__GCHECKSUM = 0;
    public static final int NV_REQUIRE_COM_SPEC__GTIMESTAMP = 1;
    public static final int NV_REQUIRE_COM_SPEC__CHECKSUM = 2;
    public static final int NV_REQUIRE_COM_SPEC__TIMESTAMP = 3;
    public static final int NV_REQUIRE_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int NV_REQUIRE_COM_SPEC__INIT_VALUE = 5;
    public static final int NV_REQUIRE_COM_SPEC__VARIABLE = 6;
    public static final int NV_REQUIRE_COM_SPEC_FEATURE_COUNT = 7;
    public static final int PARAMETER_PROVIDE_COM_SPEC = 6;
    public static final int PARAMETER_PROVIDE_COM_SPEC__GCHECKSUM = 0;
    public static final int PARAMETER_PROVIDE_COM_SPEC__GTIMESTAMP = 1;
    public static final int PARAMETER_PROVIDE_COM_SPEC__CHECKSUM = 2;
    public static final int PARAMETER_PROVIDE_COM_SPEC__TIMESTAMP = 3;
    public static final int PARAMETER_PROVIDE_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int PARAMETER_PROVIDE_COM_SPEC__INIT_VALUE = 5;
    public static final int PARAMETER_PROVIDE_COM_SPEC__PARAMETER = 6;
    public static final int PARAMETER_PROVIDE_COM_SPEC_FEATURE_COUNT = 7;
    public static final int PARAMETER_REQUIRE_COM_SPEC = 7;
    public static final int PARAMETER_REQUIRE_COM_SPEC__GCHECKSUM = 0;
    public static final int PARAMETER_REQUIRE_COM_SPEC__GTIMESTAMP = 1;
    public static final int PARAMETER_REQUIRE_COM_SPEC__CHECKSUM = 2;
    public static final int PARAMETER_REQUIRE_COM_SPEC__TIMESTAMP = 3;
    public static final int PARAMETER_REQUIRE_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int PARAMETER_REQUIRE_COM_SPEC__INIT_VALUE = 5;
    public static final int PARAMETER_REQUIRE_COM_SPEC__PARAMETER = 6;
    public static final int PARAMETER_REQUIRE_COM_SPEC_FEATURE_COUNT = 7;
    public static final int SENDER_COM_SPEC = 8;
    public static final int SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int SENDER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int SENDER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int SENDER_COM_SPEC__HANDLE_OUT_OF_RANGE = 7;
    public static final int SENDER_COM_SPEC__NETWORK_REPRESENTATION = 8;
    public static final int SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = 9;
    public static final int SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = 10;
    public static final int SENDER_COM_SPEC_FEATURE_COUNT = 11;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST = 9;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__GCHECKSUM = 0;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__GTIMESTAMP = 1;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__CHECKSUM = 2;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__TIMESTAMP = 3;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__SENDER_COM_SPEC = 4;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__TIMEOUT = 5;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST_FEATURE_COUNT = 6;
    public static final int NONQUEUED_SENDER_COM_SPEC = 10;
    public static final int NONQUEUED_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int NONQUEUED_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int NONQUEUED_SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int NONQUEUED_SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int NONQUEUED_SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int NONQUEUED_SENDER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int NONQUEUED_SENDER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int NONQUEUED_SENDER_COM_SPEC__HANDLE_OUT_OF_RANGE = 7;
    public static final int NONQUEUED_SENDER_COM_SPEC__NETWORK_REPRESENTATION = 8;
    public static final int NONQUEUED_SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = 9;
    public static final int NONQUEUED_SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = 10;
    public static final int NONQUEUED_SENDER_COM_SPEC__GINIT_VALUE = 11;
    public static final int NONQUEUED_SENDER_COM_SPEC__INIT_VALUE = 12;
    public static final int NONQUEUED_SENDER_COM_SPEC_FEATURE_COUNT = 13;
    public static final int QUEUED_SENDER_COM_SPEC = 11;
    public static final int QUEUED_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int QUEUED_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int QUEUED_SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int QUEUED_SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int QUEUED_SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int QUEUED_SENDER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int QUEUED_SENDER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int QUEUED_SENDER_COM_SPEC__HANDLE_OUT_OF_RANGE = 7;
    public static final int QUEUED_SENDER_COM_SPEC__NETWORK_REPRESENTATION = 8;
    public static final int QUEUED_SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = 9;
    public static final int QUEUED_SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = 10;
    public static final int QUEUED_SENDER_COM_SPEC_FEATURE_COUNT = 11;
    public static final int SERVER_COM_SPEC = 12;
    public static final int SERVER_COM_SPEC__GCHECKSUM = 0;
    public static final int SERVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int SERVER_COM_SPEC__CHECKSUM = 2;
    public static final int SERVER_COM_SPEC__TIMESTAMP = 3;
    public static final int SERVER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int SERVER_COM_SPEC__GQUEUE_LENGTH = 5;
    public static final int SERVER_COM_SPEC__GOPERATION = 6;
    public static final int SERVER_COM_SPEC__OPERATION = 7;
    public static final int SERVER_COM_SPEC__QUEUE_LENGTH = 8;
    public static final int SERVER_COM_SPEC_FEATURE_COUNT = 9;
    public static final int RECEIVER_COM_SPEC = 13;
    public static final int RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int RECEIVER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int RECEIVER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int RECEIVER_COM_SPEC__EXTERNAL_REPLACEMENT = 7;
    public static final int RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE = 8;
    public static final int RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE_STATUS = 9;
    public static final int RECEIVER_COM_SPEC__MAX_DELTA_COUNTER_INIT = 10;
    public static final int RECEIVER_COM_SPEC__NETWORK_REPRESENTATION = 11;
    public static final int RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = 12;
    public static final int RECEIVER_COM_SPEC_FEATURE_COUNT = 13;
    public static final int NONQUEUED_RECEIVER_COM_SPEC = 14;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__EXTERNAL_REPLACEMENT = 7;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE = 8;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE_STATUS = 9;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__MAX_DELTA_COUNTER_INIT = 10;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__NETWORK_REPRESENTATION = 11;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = 12;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__GINIT_VALUE = 13;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__ALIVE_TIMEOUT = 14;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__ENABLE_UPDATE = 15;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__FILTER = 16;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__HANDLE_NEVER_RECEIVED = 17;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__HANDLE_TIMEOUT_TYPE = 18;
    public static final int NONQUEUED_RECEIVER_COM_SPEC__INIT_VALUE = 19;
    public static final int NONQUEUED_RECEIVER_COM_SPEC_FEATURE_COUNT = 20;
    public static final int QUEUED_RECEIVER_COM_SPEC = 15;
    public static final int QUEUED_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int QUEUED_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int QUEUED_RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int QUEUED_RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int QUEUED_RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int QUEUED_RECEIVER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int QUEUED_RECEIVER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int QUEUED_RECEIVER_COM_SPEC__EXTERNAL_REPLACEMENT = 7;
    public static final int QUEUED_RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE = 8;
    public static final int QUEUED_RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE_STATUS = 9;
    public static final int QUEUED_RECEIVER_COM_SPEC__MAX_DELTA_COUNTER_INIT = 10;
    public static final int QUEUED_RECEIVER_COM_SPEC__NETWORK_REPRESENTATION = 11;
    public static final int QUEUED_RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = 12;
    public static final int QUEUED_RECEIVER_COM_SPEC__GQUEUE_LENGTH = 13;
    public static final int QUEUED_RECEIVER_COM_SPEC__QUEUE_LENGTH = 14;
    public static final int QUEUED_RECEIVER_COM_SPEC_FEATURE_COUNT = 15;
    public static final int CLIENT_COM_SPEC = 16;
    public static final int CLIENT_COM_SPEC__GCHECKSUM = 0;
    public static final int CLIENT_COM_SPEC__GTIMESTAMP = 1;
    public static final int CLIENT_COM_SPEC__CHECKSUM = 2;
    public static final int CLIENT_COM_SPEC__TIMESTAMP = 3;
    public static final int CLIENT_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int CLIENT_COM_SPEC__GOPERATION = 5;
    public static final int CLIENT_COM_SPEC__OPERATION = 6;
    public static final int CLIENT_COM_SPEC_FEATURE_COUNT = 7;
    public static final int HANDLE_INVALID_ENUM = 18;
    public static final int HANDLE_OUT_OF_RANGE_ENUM = 19;
    public static final int HANDLE_OUT_OF_RANGE_STATUS_ENUM = 20;
    public static final int HANDLE_TIMEOUT_ENUM = 21;

    public EClass getModeSwitchedAckRequest();

    public EReference getModeSwitchedAckRequest_ModeSwitchSenderComSpec();

    public EAttribute getModeSwitchedAckRequest_Timeout();

    public EClass getModeSwitchReceiverComSpec();

    public EAttribute getModeSwitchReceiverComSpec_EnhancedModeApi();

    public EAttribute getModeSwitchReceiverComSpec_SupportsAsynchronousModeSwitch();

    public EClass getRPortComSpec();

    public EReference getRPortComSpec_RPortPrototype();

    public EClass getModeSwitchSenderComSpec();

    public EAttribute getModeSwitchSenderComSpec_EnhancedModeApi();

    public EReference getModeSwitchSenderComSpec_ModeGroup();

    public EReference getModeSwitchSenderComSpec_ModeSwitchedAck();

    public EAttribute getModeSwitchSenderComSpec_QueueLength();

    public EClass getNvProvideComSpec();

    public EReference getNvProvideComSpec_RamBlockInitValue();

    public EReference getNvProvideComSpec_RomBlockInitValue();

    public EReference getNvProvideComSpec_Variable();

    public EClass getNvRequireComSpec();

    public EReference getNvRequireComSpec_InitValue();

    public EReference getNvRequireComSpec_Variable();

    public EClass getParameterProvideComSpec();

    public EReference getParameterProvideComSpec_InitValue();

    public EReference getParameterProvideComSpec_Parameter();

    public EClass getParameterRequireComSpec();

    public EReference getParameterRequireComSpec_InitValue();

    public EReference getParameterRequireComSpec_Parameter();

    public EClass getSenderComSpec();

    public EReference getSenderComSpec_DataElement();

    public EAttribute getSenderComSpec_HandleOutOfRange();

    public EReference getSenderComSpec_NetworkRepresentation();

    public EReference getSenderComSpec_TransmissionAcknowledge();

    public EReference getSenderComSpec_UsesEndToEndProtection();

    public EClass getTransmissionAcknowledgementRequest();

    public EReference getTransmissionAcknowledgementRequest_SenderComSpec();

    public EAttribute getTransmissionAcknowledgementRequest_Timeout();

    public EClass getNonqueuedSenderComSpec();

    public EReference getNonqueuedSenderComSpec_InitValue();

    public EClass getQueuedSenderComSpec();

    public EClass getServerComSpec();

    public EReference getServerComSpec_Operation();

    public EAttribute getServerComSpec_QueueLength();

    public EClass getReceiverComSpec();

    public EReference getReceiverComSpec_DataElement();

    public EReference getReceiverComSpec_ExternalReplacement();

    public EAttribute getReceiverComSpec_HandleOutOfRange();

    public EAttribute getReceiverComSpec_HandleOutOfRangeStatus();

    public EReference getReceiverComSpec_MaxDeltaCounterInit();

    public EReference getReceiverComSpec_NetworkRepresentation();

    public EReference getReceiverComSpec_UsesEndToEndProtection();

    public EClass getNonqueuedReceiverComSpec();

    public EAttribute getNonqueuedReceiverComSpec_AliveTimeout();

    public EAttribute getNonqueuedReceiverComSpec_EnableUpdate();

    public EReference getNonqueuedReceiverComSpec_Filter();

    public EAttribute getNonqueuedReceiverComSpec_HandleNeverReceived();

    public EAttribute getNonqueuedReceiverComSpec_HandleTimeoutType();

    public EReference getNonqueuedReceiverComSpec_InitValue();

    public EClass getQueuedReceiverComSpec();

    public EAttribute getQueuedReceiverComSpec_QueueLength();

    public EClass getClientComSpec();

    public EReference getClientComSpec_Operation();

    public EClass getPPortComSpec();

    public EReference getPPortComSpec_PPortPrototype();

    public EEnum getHandleInvalidEnum();

    public EEnum getHandleOutOfRangeEnum();

    public EEnum getHandleOutOfRangeStatusEnum();

    public EEnum getHandleTimeoutEnum();

    public CommunicationFactory getCommunicationFactory();

    public static interface Literals {
        public static final EClass MODE_SWITCHED_ACK_REQUEST = eINSTANCE.getModeSwitchedAckRequest();
        public static final EReference MODE_SWITCHED_ACK_REQUEST__MODE_SWITCH_SENDER_COM_SPEC = eINSTANCE.getModeSwitchedAckRequest_ModeSwitchSenderComSpec();
        public static final EAttribute MODE_SWITCHED_ACK_REQUEST__TIMEOUT = eINSTANCE.getModeSwitchedAckRequest_Timeout();
        public static final EClass MODE_SWITCH_RECEIVER_COM_SPEC = eINSTANCE.getModeSwitchReceiverComSpec();
        public static final EAttribute MODE_SWITCH_RECEIVER_COM_SPEC__ENHANCED_MODE_API = eINSTANCE.getModeSwitchReceiverComSpec_EnhancedModeApi();
        public static final EAttribute MODE_SWITCH_RECEIVER_COM_SPEC__SUPPORTS_ASYNCHRONOUS_MODE_SWITCH = eINSTANCE.getModeSwitchReceiverComSpec_SupportsAsynchronousModeSwitch();
        public static final EClass RPORT_COM_SPEC = eINSTANCE.getRPortComSpec();
        public static final EReference RPORT_COM_SPEC__RPORT_PROTOTYPE = eINSTANCE.getRPortComSpec_RPortPrototype();
        public static final EClass MODE_SWITCH_SENDER_COM_SPEC = eINSTANCE.getModeSwitchSenderComSpec();
        public static final EAttribute MODE_SWITCH_SENDER_COM_SPEC__ENHANCED_MODE_API = eINSTANCE.getModeSwitchSenderComSpec_EnhancedModeApi();
        public static final EReference MODE_SWITCH_SENDER_COM_SPEC__MODE_GROUP = eINSTANCE.getModeSwitchSenderComSpec_ModeGroup();
        public static final EReference MODE_SWITCH_SENDER_COM_SPEC__MODE_SWITCHED_ACK = eINSTANCE.getModeSwitchSenderComSpec_ModeSwitchedAck();
        public static final EAttribute MODE_SWITCH_SENDER_COM_SPEC__QUEUE_LENGTH = eINSTANCE.getModeSwitchSenderComSpec_QueueLength();
        public static final EClass NV_PROVIDE_COM_SPEC = eINSTANCE.getNvProvideComSpec();
        public static final EReference NV_PROVIDE_COM_SPEC__RAM_BLOCK_INIT_VALUE = eINSTANCE.getNvProvideComSpec_RamBlockInitValue();
        public static final EReference NV_PROVIDE_COM_SPEC__ROM_BLOCK_INIT_VALUE = eINSTANCE.getNvProvideComSpec_RomBlockInitValue();
        public static final EReference NV_PROVIDE_COM_SPEC__VARIABLE = eINSTANCE.getNvProvideComSpec_Variable();
        public static final EClass NV_REQUIRE_COM_SPEC = eINSTANCE.getNvRequireComSpec();
        public static final EReference NV_REQUIRE_COM_SPEC__INIT_VALUE = eINSTANCE.getNvRequireComSpec_InitValue();
        public static final EReference NV_REQUIRE_COM_SPEC__VARIABLE = eINSTANCE.getNvRequireComSpec_Variable();
        public static final EClass PARAMETER_PROVIDE_COM_SPEC = eINSTANCE.getParameterProvideComSpec();
        public static final EReference PARAMETER_PROVIDE_COM_SPEC__INIT_VALUE = eINSTANCE.getParameterProvideComSpec_InitValue();
        public static final EReference PARAMETER_PROVIDE_COM_SPEC__PARAMETER = eINSTANCE.getParameterProvideComSpec_Parameter();
        public static final EClass PARAMETER_REQUIRE_COM_SPEC = eINSTANCE.getParameterRequireComSpec();
        public static final EReference PARAMETER_REQUIRE_COM_SPEC__INIT_VALUE = eINSTANCE.getParameterRequireComSpec_InitValue();
        public static final EReference PARAMETER_REQUIRE_COM_SPEC__PARAMETER = eINSTANCE.getParameterRequireComSpec_Parameter();
        public static final EClass SENDER_COM_SPEC = eINSTANCE.getSenderComSpec();
        public static final EReference SENDER_COM_SPEC__DATA_ELEMENT = eINSTANCE.getSenderComSpec_DataElement();
        public static final EAttribute SENDER_COM_SPEC__HANDLE_OUT_OF_RANGE = eINSTANCE.getSenderComSpec_HandleOutOfRange();
        public static final EReference SENDER_COM_SPEC__NETWORK_REPRESENTATION = eINSTANCE.getSenderComSpec_NetworkRepresentation();
        public static final EReference SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = eINSTANCE.getSenderComSpec_TransmissionAcknowledge();
        public static final EReference SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = eINSTANCE.getSenderComSpec_UsesEndToEndProtection();
        public static final EClass TRANSMISSION_ACKNOWLEDGEMENT_REQUEST = eINSTANCE.getTransmissionAcknowledgementRequest();
        public static final EReference TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__SENDER_COM_SPEC = eINSTANCE.getTransmissionAcknowledgementRequest_SenderComSpec();
        public static final EAttribute TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__TIMEOUT = eINSTANCE.getTransmissionAcknowledgementRequest_Timeout();
        public static final EClass NONQUEUED_SENDER_COM_SPEC = eINSTANCE.getNonqueuedSenderComSpec();
        public static final EReference NONQUEUED_SENDER_COM_SPEC__INIT_VALUE = eINSTANCE.getNonqueuedSenderComSpec_InitValue();
        public static final EClass QUEUED_SENDER_COM_SPEC = eINSTANCE.getQueuedSenderComSpec();
        public static final EClass SERVER_COM_SPEC = eINSTANCE.getServerComSpec();
        public static final EReference SERVER_COM_SPEC__OPERATION = eINSTANCE.getServerComSpec_Operation();
        public static final EAttribute SERVER_COM_SPEC__QUEUE_LENGTH = eINSTANCE.getServerComSpec_QueueLength();
        public static final EClass RECEIVER_COM_SPEC = eINSTANCE.getReceiverComSpec();
        public static final EReference RECEIVER_COM_SPEC__DATA_ELEMENT = eINSTANCE.getReceiverComSpec_DataElement();
        public static final EReference RECEIVER_COM_SPEC__EXTERNAL_REPLACEMENT = eINSTANCE.getReceiverComSpec_ExternalReplacement();
        public static final EAttribute RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE = eINSTANCE.getReceiverComSpec_HandleOutOfRange();
        public static final EAttribute RECEIVER_COM_SPEC__HANDLE_OUT_OF_RANGE_STATUS = eINSTANCE.getReceiverComSpec_HandleOutOfRangeStatus();
        public static final EReference RECEIVER_COM_SPEC__MAX_DELTA_COUNTER_INIT = eINSTANCE.getReceiverComSpec_MaxDeltaCounterInit();
        public static final EReference RECEIVER_COM_SPEC__NETWORK_REPRESENTATION = eINSTANCE.getReceiverComSpec_NetworkRepresentation();
        public static final EReference RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = eINSTANCE.getReceiverComSpec_UsesEndToEndProtection();
        public static final EClass NONQUEUED_RECEIVER_COM_SPEC = eINSTANCE.getNonqueuedReceiverComSpec();
        public static final EAttribute NONQUEUED_RECEIVER_COM_SPEC__ALIVE_TIMEOUT = eINSTANCE.getNonqueuedReceiverComSpec_AliveTimeout();
        public static final EAttribute NONQUEUED_RECEIVER_COM_SPEC__ENABLE_UPDATE = eINSTANCE.getNonqueuedReceiverComSpec_EnableUpdate();
        public static final EReference NONQUEUED_RECEIVER_COM_SPEC__FILTER = eINSTANCE.getNonqueuedReceiverComSpec_Filter();
        public static final EAttribute NONQUEUED_RECEIVER_COM_SPEC__HANDLE_NEVER_RECEIVED = eINSTANCE.getNonqueuedReceiverComSpec_HandleNeverReceived();
        public static final EAttribute NONQUEUED_RECEIVER_COM_SPEC__HANDLE_TIMEOUT_TYPE = eINSTANCE.getNonqueuedReceiverComSpec_HandleTimeoutType();
        public static final EReference NONQUEUED_RECEIVER_COM_SPEC__INIT_VALUE = eINSTANCE.getNonqueuedReceiverComSpec_InitValue();
        public static final EClass QUEUED_RECEIVER_COM_SPEC = eINSTANCE.getQueuedReceiverComSpec();
        public static final EAttribute QUEUED_RECEIVER_COM_SPEC__QUEUE_LENGTH = eINSTANCE.getQueuedReceiverComSpec_QueueLength();
        public static final EClass CLIENT_COM_SPEC = eINSTANCE.getClientComSpec();
        public static final EReference CLIENT_COM_SPEC__OPERATION = eINSTANCE.getClientComSpec_Operation();
        public static final EClass PPORT_COM_SPEC = eINSTANCE.getPPortComSpec();
        public static final EReference PPORT_COM_SPEC__PPORT_PROTOTYPE = eINSTANCE.getPPortComSpec_PPortPrototype();
        public static final EEnum HANDLE_INVALID_ENUM = eINSTANCE.getHandleInvalidEnum();
        public static final EEnum HANDLE_OUT_OF_RANGE_ENUM = eINSTANCE.getHandleOutOfRangeEnum();
        public static final EEnum HANDLE_OUT_OF_RANGE_STATUS_ENUM = eINSTANCE.getHandleOutOfRangeStatusEnum();
        public static final EEnum HANDLE_TIMEOUT_ENUM = eINSTANCE.getHandleTimeoutEnum();
    }
}

