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
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.CommunicationFactory;
import autosar3x.swcomponent.communication.impl.CommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CommunicationPackage
extends EPackage {
    public static final String eNAME = "communication";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/communication";
    public static final String eNS_PREFIX = "";
    public static final CommunicationPackage eINSTANCE = CommunicationPackageImpl.init();
    public static final int PPORT_COM_SPEC = 1;
    public static final int PPORT_COM_SPEC__GCHECKSUM = 0;
    public static final int PPORT_COM_SPEC__GTIMESTAMP = 1;
    public static final int PPORT_COM_SPEC__CHECKSUM = 2;
    public static final int PPORT_COM_SPEC__TIMESTAMP = 3;
    public static final int PPORT_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int PPORT_COM_SPEC_FEATURE_COUNT = 5;
    public static final int MODE_SWITCH_COM_SPEC = 0;
    public static final int MODE_SWITCH_COM_SPEC__GCHECKSUM = 0;
    public static final int MODE_SWITCH_COM_SPEC__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_COM_SPEC__CHECKSUM = 2;
    public static final int MODE_SWITCH_COM_SPEC__TIMESTAMP = 3;
    public static final int MODE_SWITCH_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int MODE_SWITCH_COM_SPEC__MODE_GROUP = 5;
    public static final int MODE_SWITCH_COM_SPEC__MODE_SWITCHED_ACK = 6;
    public static final int MODE_SWITCH_COM_SPEC__QUEUE_LENGTH = 7;
    public static final int MODE_SWITCH_COM_SPEC_FEATURE_COUNT = 8;
    public static final int MODE_SWITCHED_ACK_REQUEST = 2;
    public static final int MODE_SWITCHED_ACK_REQUEST__GCHECKSUM = 0;
    public static final int MODE_SWITCHED_ACK_REQUEST__GTIMESTAMP = 1;
    public static final int MODE_SWITCHED_ACK_REQUEST__CHECKSUM = 2;
    public static final int MODE_SWITCHED_ACK_REQUEST__TIMESTAMP = 3;
    public static final int MODE_SWITCHED_ACK_REQUEST__MODE_SWITCH_COM_SPEC = 4;
    public static final int MODE_SWITCHED_ACK_REQUEST__TIMEOUT = 5;
    public static final int MODE_SWITCHED_ACK_REQUEST_FEATURE_COUNT = 6;
    public static final int PARAMETER_PROVIDE_COM_SPEC = 3;
    public static final int PARAMETER_PROVIDE_COM_SPEC__GCHECKSUM = 0;
    public static final int PARAMETER_PROVIDE_COM_SPEC__GTIMESTAMP = 1;
    public static final int PARAMETER_PROVIDE_COM_SPEC__CHECKSUM = 2;
    public static final int PARAMETER_PROVIDE_COM_SPEC__TIMESTAMP = 3;
    public static final int PARAMETER_PROVIDE_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int PARAMETER_PROVIDE_COM_SPEC__INIT_VALUE = 5;
    public static final int PARAMETER_PROVIDE_COM_SPEC__PARAMETER = 6;
    public static final int PARAMETER_PROVIDE_COM_SPEC_FEATURE_COUNT = 7;
    public static final int RPORT_COM_SPEC = 14;
    public static final int RPORT_COM_SPEC__GCHECKSUM = 0;
    public static final int RPORT_COM_SPEC__GTIMESTAMP = 1;
    public static final int RPORT_COM_SPEC__CHECKSUM = 2;
    public static final int RPORT_COM_SPEC__TIMESTAMP = 3;
    public static final int RPORT_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int RPORT_COM_SPEC_FEATURE_COUNT = 5;
    public static final int PARAMETER_REQUIRE_COM_SPEC = 4;
    public static final int PARAMETER_REQUIRE_COM_SPEC__GCHECKSUM = 0;
    public static final int PARAMETER_REQUIRE_COM_SPEC__GTIMESTAMP = 1;
    public static final int PARAMETER_REQUIRE_COM_SPEC__CHECKSUM = 2;
    public static final int PARAMETER_REQUIRE_COM_SPEC__TIMESTAMP = 3;
    public static final int PARAMETER_REQUIRE_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int PARAMETER_REQUIRE_COM_SPEC__INIT_VALUE = 5;
    public static final int PARAMETER_REQUIRE_COM_SPEC__PARAMETER = 6;
    public static final int PARAMETER_REQUIRE_COM_SPEC_FEATURE_COUNT = 7;
    public static final int SENDER_COM_SPEC = 5;
    public static final int SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int SENDER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int SENDER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = 7;
    public static final int SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = 8;
    public static final int SENDER_COM_SPEC_FEATURE_COUNT = 9;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST = 6;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__GCHECKSUM = 0;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__GTIMESTAMP = 1;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__CHECKSUM = 2;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__TIMESTAMP = 3;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__SENDER_COM_SPEC = 4;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__TIMEOUT = 5;
    public static final int TRANSMISSION_ACKNOWLEDGEMENT_REQUEST_FEATURE_COUNT = 6;
    public static final int UNQUEUED_SENDER_COM_SPEC = 7;
    public static final int UNQUEUED_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int UNQUEUED_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int UNQUEUED_SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int UNQUEUED_SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int UNQUEUED_SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int UNQUEUED_SENDER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int UNQUEUED_SENDER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int UNQUEUED_SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = 7;
    public static final int UNQUEUED_SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = 8;
    public static final int UNQUEUED_SENDER_COM_SPEC__GINIT_VALUE = 9;
    public static final int UNQUEUED_SENDER_COM_SPEC__CAN_INVALIDATE = 10;
    public static final int UNQUEUED_SENDER_COM_SPEC__INIT_VALUE = 11;
    public static final int UNQUEUED_SENDER_COM_SPEC_FEATURE_COUNT = 12;
    public static final int QUEUED_SENDER_COM_SPEC = 8;
    public static final int QUEUED_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int QUEUED_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int QUEUED_SENDER_COM_SPEC__CHECKSUM = 2;
    public static final int QUEUED_SENDER_COM_SPEC__TIMESTAMP = 3;
    public static final int QUEUED_SENDER_COM_SPEC__PPORT_PROTOTYPE = 4;
    public static final int QUEUED_SENDER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int QUEUED_SENDER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int QUEUED_SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = 7;
    public static final int QUEUED_SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = 8;
    public static final int QUEUED_SENDER_COM_SPEC_FEATURE_COUNT = 9;
    public static final int SERVER_COM_SPEC = 9;
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
    public static final int RECEIVER_COM_SPEC = 10;
    public static final int RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int RECEIVER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int RECEIVER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int RECEIVER_COM_SPEC__FILTER = 7;
    public static final int RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = 8;
    public static final int RECEIVER_COM_SPEC_FEATURE_COUNT = 9;
    public static final int UNQUEUED_RECEIVER_COM_SPEC = 11;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__FILTER = 7;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = 8;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__GINIT_VALUE = 9;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__ALIVE_TIMEOUT = 10;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__HANDLE_INVALID = 11;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__HANDLE_NEVER_RECEIVED = 12;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__INIT_VALUE = 13;
    public static final int UNQUEUED_RECEIVER_COM_SPEC__RESYNC_TIME = 14;
    public static final int UNQUEUED_RECEIVER_COM_SPEC_FEATURE_COUNT = 15;
    public static final int QUEUED_RECEIVER_COM_SPEC = 12;
    public static final int QUEUED_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int QUEUED_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int QUEUED_RECEIVER_COM_SPEC__CHECKSUM = 2;
    public static final int QUEUED_RECEIVER_COM_SPEC__TIMESTAMP = 3;
    public static final int QUEUED_RECEIVER_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int QUEUED_RECEIVER_COM_SPEC__GDATA_ELEMENT = 5;
    public static final int QUEUED_RECEIVER_COM_SPEC__DATA_ELEMENT = 6;
    public static final int QUEUED_RECEIVER_COM_SPEC__FILTER = 7;
    public static final int QUEUED_RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = 8;
    public static final int QUEUED_RECEIVER_COM_SPEC__GQUEUE_LENGTH = 9;
    public static final int QUEUED_RECEIVER_COM_SPEC__QUEUE_LENGTH = 10;
    public static final int QUEUED_RECEIVER_COM_SPEC_FEATURE_COUNT = 11;
    public static final int CLIENT_COM_SPEC = 13;
    public static final int CLIENT_COM_SPEC__GCHECKSUM = 0;
    public static final int CLIENT_COM_SPEC__GTIMESTAMP = 1;
    public static final int CLIENT_COM_SPEC__CHECKSUM = 2;
    public static final int CLIENT_COM_SPEC__TIMESTAMP = 3;
    public static final int CLIENT_COM_SPEC__RPORT_PROTOTYPE = 4;
    public static final int CLIENT_COM_SPEC__GOPERATION = 5;
    public static final int CLIENT_COM_SPEC__OPERATION = 6;
    public static final int CLIENT_COM_SPEC_FEATURE_COUNT = 7;
    public static final int HANDLE_INVALID_TYPE = 15;

    public EClass getModeSwitchComSpec();

    public EReference getModeSwitchComSpec_ModeGroup();

    public EReference getModeSwitchComSpec_ModeSwitchedAck();

    public EAttribute getModeSwitchComSpec_QueueLength();

    public EClass getPPortComSpec();

    public EReference getPPortComSpec_PPortPrototype();

    public EClass getModeSwitchedAckRequest();

    public EReference getModeSwitchedAckRequest_ModeSwitchComSpec();

    public EAttribute getModeSwitchedAckRequest_Timeout();

    public EClass getParameterProvideComSpec();

    public EClass getParameterRequireComSpec();

    public EClass getSenderComSpec();

    public EReference getSenderComSpec_DataElement();

    public EReference getSenderComSpec_TransmissionAcknowledge();

    public EAttribute getSenderComSpec_UsesEndToEndProtection();

    public EClass getTransmissionAcknowledgementRequest();

    public EReference getTransmissionAcknowledgementRequest_SenderComSpec();

    public EAttribute getTransmissionAcknowledgementRequest_Timeout();

    public EClass getUnqueuedSenderComSpec();

    public EAttribute getUnqueuedSenderComSpec_CanInvalidate();

    public EReference getUnqueuedSenderComSpec_InitValue();

    public EClass getQueuedSenderComSpec();

    public EClass getServerComSpec();

    public EReference getServerComSpec_Operation();

    public EAttribute getServerComSpec_QueueLength();

    public EClass getReceiverComSpec();

    public EReference getReceiverComSpec_DataElement();

    public EReference getReceiverComSpec_Filter();

    public EAttribute getReceiverComSpec_UsesEndToEndProtection();

    public EClass getUnqueuedReceiverComSpec();

    public EAttribute getUnqueuedReceiverComSpec_AliveTimeout();

    public EAttribute getUnqueuedReceiverComSpec_HandleInvalid();

    public EAttribute getUnqueuedReceiverComSpec_HandleNeverReceived();

    public EReference getUnqueuedReceiverComSpec_InitValue();

    public EAttribute getUnqueuedReceiverComSpec_ResyncTime();

    public EClass getQueuedReceiverComSpec();

    public EAttribute getQueuedReceiverComSpec_QueueLength();

    public EClass getClientComSpec();

    public EReference getClientComSpec_Operation();

    public EClass getRPortComSpec();

    public EReference getRPortComSpec_RPortPrototype();

    public EEnum getHandleInvalidType();

    public CommunicationFactory getCommunicationFactory();

    public static interface Literals {
        public static final EClass MODE_SWITCH_COM_SPEC = eINSTANCE.getModeSwitchComSpec();
        public static final EReference MODE_SWITCH_COM_SPEC__MODE_GROUP = eINSTANCE.getModeSwitchComSpec_ModeGroup();
        public static final EReference MODE_SWITCH_COM_SPEC__MODE_SWITCHED_ACK = eINSTANCE.getModeSwitchComSpec_ModeSwitchedAck();
        public static final EAttribute MODE_SWITCH_COM_SPEC__QUEUE_LENGTH = eINSTANCE.getModeSwitchComSpec_QueueLength();
        public static final EClass PPORT_COM_SPEC = eINSTANCE.getPPortComSpec();
        public static final EReference PPORT_COM_SPEC__PPORT_PROTOTYPE = eINSTANCE.getPPortComSpec_PPortPrototype();
        public static final EClass MODE_SWITCHED_ACK_REQUEST = eINSTANCE.getModeSwitchedAckRequest();
        public static final EReference MODE_SWITCHED_ACK_REQUEST__MODE_SWITCH_COM_SPEC = eINSTANCE.getModeSwitchedAckRequest_ModeSwitchComSpec();
        public static final EAttribute MODE_SWITCHED_ACK_REQUEST__TIMEOUT = eINSTANCE.getModeSwitchedAckRequest_Timeout();
        public static final EClass PARAMETER_PROVIDE_COM_SPEC = eINSTANCE.getParameterProvideComSpec();
        public static final EClass PARAMETER_REQUIRE_COM_SPEC = eINSTANCE.getParameterRequireComSpec();
        public static final EClass SENDER_COM_SPEC = eINSTANCE.getSenderComSpec();
        public static final EReference SENDER_COM_SPEC__DATA_ELEMENT = eINSTANCE.getSenderComSpec_DataElement();
        public static final EReference SENDER_COM_SPEC__TRANSMISSION_ACKNOWLEDGE = eINSTANCE.getSenderComSpec_TransmissionAcknowledge();
        public static final EAttribute SENDER_COM_SPEC__USES_END_TO_END_PROTECTION = eINSTANCE.getSenderComSpec_UsesEndToEndProtection();
        public static final EClass TRANSMISSION_ACKNOWLEDGEMENT_REQUEST = eINSTANCE.getTransmissionAcknowledgementRequest();
        public static final EReference TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__SENDER_COM_SPEC = eINSTANCE.getTransmissionAcknowledgementRequest_SenderComSpec();
        public static final EAttribute TRANSMISSION_ACKNOWLEDGEMENT_REQUEST__TIMEOUT = eINSTANCE.getTransmissionAcknowledgementRequest_Timeout();
        public static final EClass UNQUEUED_SENDER_COM_SPEC = eINSTANCE.getUnqueuedSenderComSpec();
        public static final EAttribute UNQUEUED_SENDER_COM_SPEC__CAN_INVALIDATE = eINSTANCE.getUnqueuedSenderComSpec_CanInvalidate();
        public static final EReference UNQUEUED_SENDER_COM_SPEC__INIT_VALUE = eINSTANCE.getUnqueuedSenderComSpec_InitValue();
        public static final EClass QUEUED_SENDER_COM_SPEC = eINSTANCE.getQueuedSenderComSpec();
        public static final EClass SERVER_COM_SPEC = eINSTANCE.getServerComSpec();
        public static final EReference SERVER_COM_SPEC__OPERATION = eINSTANCE.getServerComSpec_Operation();
        public static final EAttribute SERVER_COM_SPEC__QUEUE_LENGTH = eINSTANCE.getServerComSpec_QueueLength();
        public static final EClass RECEIVER_COM_SPEC = eINSTANCE.getReceiverComSpec();
        public static final EReference RECEIVER_COM_SPEC__DATA_ELEMENT = eINSTANCE.getReceiverComSpec_DataElement();
        public static final EReference RECEIVER_COM_SPEC__FILTER = eINSTANCE.getReceiverComSpec_Filter();
        public static final EAttribute RECEIVER_COM_SPEC__USES_END_TO_END_PROTECTION = eINSTANCE.getReceiverComSpec_UsesEndToEndProtection();
        public static final EClass UNQUEUED_RECEIVER_COM_SPEC = eINSTANCE.getUnqueuedReceiverComSpec();
        public static final EAttribute UNQUEUED_RECEIVER_COM_SPEC__ALIVE_TIMEOUT = eINSTANCE.getUnqueuedReceiverComSpec_AliveTimeout();
        public static final EAttribute UNQUEUED_RECEIVER_COM_SPEC__HANDLE_INVALID = eINSTANCE.getUnqueuedReceiverComSpec_HandleInvalid();
        public static final EAttribute UNQUEUED_RECEIVER_COM_SPEC__HANDLE_NEVER_RECEIVED = eINSTANCE.getUnqueuedReceiverComSpec_HandleNeverReceived();
        public static final EReference UNQUEUED_RECEIVER_COM_SPEC__INIT_VALUE = eINSTANCE.getUnqueuedReceiverComSpec_InitValue();
        public static final EAttribute UNQUEUED_RECEIVER_COM_SPEC__RESYNC_TIME = eINSTANCE.getUnqueuedReceiverComSpec_ResyncTime();
        public static final EClass QUEUED_RECEIVER_COM_SPEC = eINSTANCE.getQueuedReceiverComSpec();
        public static final EAttribute QUEUED_RECEIVER_COM_SPEC__QUEUE_LENGTH = eINSTANCE.getQueuedReceiverComSpec_QueueLength();
        public static final EClass CLIENT_COM_SPEC = eINSTANCE.getClientComSpec();
        public static final EReference CLIENT_COM_SPEC__OPERATION = eINSTANCE.getClientComSpec_Operation();
        public static final EClass RPORT_COM_SPEC = eINSTANCE.getRPortComSpec();
        public static final EReference RPORT_COM_SPEC__RPORT_PROTOTYPE = eINSTANCE.getRPortComSpec_RPortPrototype();
        public static final EEnum HANDLE_INVALID_TYPE = eINSTANCE.getHandleInvalidType();
    }
}

