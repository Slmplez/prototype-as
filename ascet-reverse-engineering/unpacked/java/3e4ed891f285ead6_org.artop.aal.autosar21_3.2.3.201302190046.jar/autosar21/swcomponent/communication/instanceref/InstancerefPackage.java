/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.swcomponent.communication.instanceref.InstancerefFactory;
import autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/communication/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int CLIENT_COM_SPEC_OPERATION = 0;
    public static final int CLIENT_COM_SPEC_OPERATION__GCHECKSUM = 0;
    public static final int CLIENT_COM_SPEC_OPERATION__GTIMESTAMP = 1;
    public static final int CLIENT_COM_SPEC_OPERATION__CHECKSUM = 2;
    public static final int CLIENT_COM_SPEC_OPERATION__TIMESTAMP = 3;
    public static final int CLIENT_COM_SPEC_OPERATION__CLIENT_COM_SPEC = 4;
    public static final int CLIENT_COM_SPEC_OPERATION__RPORT_PROTOTYPE = 5;
    public static final int CLIENT_COM_SPEC_OPERATION__OPERATION_PROTOTYPE = 6;
    public static final int CLIENT_COM_SPEC_OPERATION_FEATURE_COUNT = 7;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION = 1;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__CHECKSUM = 2;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__CLIENT_SERVER_CONNECTOR_COM_SPEC = 4;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__COMPONENT_PROTOTYPE = 5;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__RPORT_PROTOTYPE = 6;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__OPERATION_PROTOTYPE = 7;
    public static final int CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION_FEATURE_COUNT = 8;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE = 2;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__GCHECKSUM = 0;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__CHECKSUM = 2;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__TIMESTAMP = 3;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__MODE_SWITCH_COM_SPEC = 4;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__PPORT_PROTOTYPE = 5;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__MODE_DECLARATION_GROUP_PROTOTYPE = 6;
    public static final int MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT = 3;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__CHECKSUM = 2;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__RECEIVER_COM_SPEC = 4;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__RPORT_PROTOTYPE = 5;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 6;
    public static final int RECEIVER_COM_SPEC_DATA_ELEMENT_FEATURE_COUNT = 7;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT = 4;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__SENDER_COM_SPEC = 4;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__PPORT_PROTOTYPE = 5;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 6;
    public static final int SENDER_COM_SPEC_DATA_ELEMENT_FEATURE_COUNT = 7;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT = 5;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__SENDER_RECEIVER_CONNECTOR_COM_SPEC = 4;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__COMPONENT_PROTOTYPE = 5;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__RPORT_PROTOTYPE = 6;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 7;
    public static final int SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT_FEATURE_COUNT = 8;
    public static final int SERVER_COM_SPEC_OPERATION = 6;
    public static final int SERVER_COM_SPEC_OPERATION__GCHECKSUM = 0;
    public static final int SERVER_COM_SPEC_OPERATION__GTIMESTAMP = 1;
    public static final int SERVER_COM_SPEC_OPERATION__CHECKSUM = 2;
    public static final int SERVER_COM_SPEC_OPERATION__TIMESTAMP = 3;
    public static final int SERVER_COM_SPEC_OPERATION__SERVER_COM_SPEC = 4;
    public static final int SERVER_COM_SPEC_OPERATION__PPORT_PROTOTYPE = 5;
    public static final int SERVER_COM_SPEC_OPERATION__OPERATION_PROTOTYPE = 6;
    public static final int SERVER_COM_SPEC_OPERATION_FEATURE_COUNT = 7;

    public EClass getClientComSpecOperation();

    public EReference getClientComSpecOperation_ClientComSpec();

    public EReference getClientComSpecOperation_RPortPrototype();

    public EReference getClientComSpecOperation_OperationPrototype();

    public EClass getClientServerConnectorComSpecOperation();

    public EReference getClientServerConnectorComSpecOperation_ClientServerConnectorComSpec();

    public EReference getClientServerConnectorComSpecOperation_ComponentPrototype();

    public EReference getClientServerConnectorComSpecOperation_RPortPrototype();

    public EReference getClientServerConnectorComSpecOperation_OperationPrototype();

    public EClass getModeSwitchComSpecModeDeclarationGroupPrototype();

    public EReference getModeSwitchComSpecModeDeclarationGroupPrototype_ModeSwitchComSpec();

    public EReference getModeSwitchComSpecModeDeclarationGroupPrototype_PPortPrototype();

    public EReference getModeSwitchComSpecModeDeclarationGroupPrototype_ModeDeclarationGroupPrototype();

    public EClass getReceiverComSpecDataElement();

    public EReference getReceiverComSpecDataElement_ReceiverComSpec();

    public EReference getReceiverComSpecDataElement_RPortPrototype();

    public EReference getReceiverComSpecDataElement_DataElementPrototype();

    public EClass getSenderComSpecDataElement();

    public EReference getSenderComSpecDataElement_SenderComSpec();

    public EReference getSenderComSpecDataElement_PPortPrototype();

    public EReference getSenderComSpecDataElement_DataElementPrototype();

    public EClass getSenderReceiverConnectorComSpecDataElement();

    public EReference getSenderReceiverConnectorComSpecDataElement_SenderReceiverConnectorComSpec();

    public EReference getSenderReceiverConnectorComSpecDataElement_ComponentPrototype();

    public EReference getSenderReceiverConnectorComSpecDataElement_RPortPrototype();

    public EReference getSenderReceiverConnectorComSpecDataElement_DataElementPrototype();

    public EClass getServerComSpecOperation();

    public EReference getServerComSpecOperation_ServerComSpec();

    public EReference getServerComSpecOperation_PPortPrototype();

    public EReference getServerComSpecOperation_OperationPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass CLIENT_COM_SPEC_OPERATION = eINSTANCE.getClientComSpecOperation();
        public static final EReference CLIENT_COM_SPEC_OPERATION__CLIENT_COM_SPEC = eINSTANCE.getClientComSpecOperation_ClientComSpec();
        public static final EReference CLIENT_COM_SPEC_OPERATION__RPORT_PROTOTYPE = eINSTANCE.getClientComSpecOperation_RPortPrototype();
        public static final EReference CLIENT_COM_SPEC_OPERATION__OPERATION_PROTOTYPE = eINSTANCE.getClientComSpecOperation_OperationPrototype();
        public static final EClass CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION = eINSTANCE.getClientServerConnectorComSpecOperation();
        public static final EReference CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__CLIENT_SERVER_CONNECTOR_COM_SPEC = eINSTANCE.getClientServerConnectorComSpecOperation_ClientServerConnectorComSpec();
        public static final EReference CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__COMPONENT_PROTOTYPE = eINSTANCE.getClientServerConnectorComSpecOperation_ComponentPrototype();
        public static final EReference CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__RPORT_PROTOTYPE = eINSTANCE.getClientServerConnectorComSpecOperation_RPortPrototype();
        public static final EReference CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION__OPERATION_PROTOTYPE = eINSTANCE.getClientServerConnectorComSpecOperation_OperationPrototype();
        public static final EClass MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeSwitchComSpecModeDeclarationGroupPrototype();
        public static final EReference MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__MODE_SWITCH_COM_SPEC = eINSTANCE.getModeSwitchComSpecModeDeclarationGroupPrototype_ModeSwitchComSpec();
        public static final EReference MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__PPORT_PROTOTYPE = eINSTANCE.getModeSwitchComSpecModeDeclarationGroupPrototype_PPortPrototype();
        public static final EReference MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE__MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeSwitchComSpecModeDeclarationGroupPrototype_ModeDeclarationGroupPrototype();
        public static final EClass RECEIVER_COM_SPEC_DATA_ELEMENT = eINSTANCE.getReceiverComSpecDataElement();
        public static final EReference RECEIVER_COM_SPEC_DATA_ELEMENT__RECEIVER_COM_SPEC = eINSTANCE.getReceiverComSpecDataElement_ReceiverComSpec();
        public static final EReference RECEIVER_COM_SPEC_DATA_ELEMENT__RPORT_PROTOTYPE = eINSTANCE.getReceiverComSpecDataElement_RPortPrototype();
        public static final EReference RECEIVER_COM_SPEC_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getReceiverComSpecDataElement_DataElementPrototype();
        public static final EClass SENDER_COM_SPEC_DATA_ELEMENT = eINSTANCE.getSenderComSpecDataElement();
        public static final EReference SENDER_COM_SPEC_DATA_ELEMENT__SENDER_COM_SPEC = eINSTANCE.getSenderComSpecDataElement_SenderComSpec();
        public static final EReference SENDER_COM_SPEC_DATA_ELEMENT__PPORT_PROTOTYPE = eINSTANCE.getSenderComSpecDataElement_PPortPrototype();
        public static final EReference SENDER_COM_SPEC_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getSenderComSpecDataElement_DataElementPrototype();
        public static final EClass SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT = eINSTANCE.getSenderReceiverConnectorComSpecDataElement();
        public static final EReference SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__SENDER_RECEIVER_CONNECTOR_COM_SPEC = eINSTANCE.getSenderReceiverConnectorComSpecDataElement_SenderReceiverConnectorComSpec();
        public static final EReference SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__COMPONENT_PROTOTYPE = eINSTANCE.getSenderReceiverConnectorComSpecDataElement_ComponentPrototype();
        public static final EReference SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__RPORT_PROTOTYPE = eINSTANCE.getSenderReceiverConnectorComSpecDataElement_RPortPrototype();
        public static final EReference SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getSenderReceiverConnectorComSpecDataElement_DataElementPrototype();
        public static final EClass SERVER_COM_SPEC_OPERATION = eINSTANCE.getServerComSpecOperation();
        public static final EReference SERVER_COM_SPEC_OPERATION__SERVER_COM_SPEC = eINSTANCE.getServerComSpecOperation_ServerComSpec();
        public static final EReference SERVER_COM_SPEC_OPERATION__PPORT_PROTOTYPE = eINSTANCE.getServerComSpecOperation_PPortPrototype();
        public static final EReference SERVER_COM_SPEC_OPERATION__OPERATION_PROTOTYPE = eINSTANCE.getServerComSpecOperation_OperationPrototype();
    }
}

