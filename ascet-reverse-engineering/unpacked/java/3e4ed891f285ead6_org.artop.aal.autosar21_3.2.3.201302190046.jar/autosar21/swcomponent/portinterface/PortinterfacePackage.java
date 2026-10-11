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
package autosar21.swcomponent.portinterface;

import autosar21.swcomponent.portinterface.PortinterfaceFactory;
import autosar21.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PortinterfacePackage
extends EPackage {
    public static final String eNAME = "portinterface";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/pi";
    public static final String eNS_PREFIX = "";
    public static final PortinterfacePackage eINSTANCE = PortinterfacePackageImpl.init();
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE = 0;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GCHECKSUM = 0;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__CHECKSUM = 2;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__TIMESTAMP = 3;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GSHORT_NAME = 4;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GUUID = 5;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GCATEGORY = 6;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GDESC = 7;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__SHORT_NAME = 8;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__LONG_NAME = 9;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__DESC = 10;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__CATEGORY = 11;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__ADMIN_DATA = 12;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__UUID = 13;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GTYPE = 16;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__SENDER_RECEIVER_INTERFACE = 17;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__TYPE = 18;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_FEATURE_COUNT = 19;
    public static final int OPERATION_PROTOTYPE = 1;
    public static final int OPERATION_PROTOTYPE__GCHECKSUM = 0;
    public static final int OPERATION_PROTOTYPE__GTIMESTAMP = 1;
    public static final int OPERATION_PROTOTYPE__CHECKSUM = 2;
    public static final int OPERATION_PROTOTYPE__TIMESTAMP = 3;
    public static final int OPERATION_PROTOTYPE__GSHORT_NAME = 4;
    public static final int OPERATION_PROTOTYPE__GUUID = 5;
    public static final int OPERATION_PROTOTYPE__GCATEGORY = 6;
    public static final int OPERATION_PROTOTYPE__GDESC = 7;
    public static final int OPERATION_PROTOTYPE__SHORT_NAME = 8;
    public static final int OPERATION_PROTOTYPE__LONG_NAME = 9;
    public static final int OPERATION_PROTOTYPE__DESC = 10;
    public static final int OPERATION_PROTOTYPE__CATEGORY = 11;
    public static final int OPERATION_PROTOTYPE__ADMIN_DATA = 12;
    public static final int OPERATION_PROTOTYPE__UUID = 13;
    public static final int OPERATION_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int OPERATION_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int OPERATION_PROTOTYPE__GARGUMENTS = 16;
    public static final int OPERATION_PROTOTYPE__GPOSSIBLE_ERRORS = 17;
    public static final int OPERATION_PROTOTYPE__CLIENT_SERVER_INTERFACE = 18;
    public static final int OPERATION_PROTOTYPE__ARGUMENTS = 19;
    public static final int OPERATION_PROTOTYPE__POSSIBLE_ERRORS = 20;
    public static final int OPERATION_PROTOTYPE_FEATURE_COUNT = 21;
    public static final int ARGUMENT_PROTOTYPE = 2;
    public static final int ARGUMENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int ARGUMENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int ARGUMENT_PROTOTYPE__CHECKSUM = 2;
    public static final int ARGUMENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int ARGUMENT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int ARGUMENT_PROTOTYPE__GUUID = 5;
    public static final int ARGUMENT_PROTOTYPE__GCATEGORY = 6;
    public static final int ARGUMENT_PROTOTYPE__GDESC = 7;
    public static final int ARGUMENT_PROTOTYPE__SHORT_NAME = 8;
    public static final int ARGUMENT_PROTOTYPE__LONG_NAME = 9;
    public static final int ARGUMENT_PROTOTYPE__DESC = 10;
    public static final int ARGUMENT_PROTOTYPE__CATEGORY = 11;
    public static final int ARGUMENT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int ARGUMENT_PROTOTYPE__UUID = 13;
    public static final int ARGUMENT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int ARGUMENT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int ARGUMENT_PROTOTYPE__GTYPE = 16;
    public static final int ARGUMENT_PROTOTYPE__GELEMENT_TYPE = 17;
    public static final int ARGUMENT_PROTOTYPE__SW_DATA_DEF_PROPS = 18;
    public static final int ARGUMENT_PROTOTYPE__TYPE = 19;
    public static final int ARGUMENT_PROTOTYPE__GDIRECTION = 20;
    public static final int ARGUMENT_PROTOTYPE__OPERATION_PROTOTYPE = 21;
    public static final int ARGUMENT_PROTOTYPE__DIRECTION = 22;
    public static final int ARGUMENT_PROTOTYPE_FEATURE_COUNT = 23;
    public static final int PORT_INTERFACE = 3;
    public static final int PORT_INTERFACE__GCHECKSUM = 0;
    public static final int PORT_INTERFACE__GTIMESTAMP = 1;
    public static final int PORT_INTERFACE__CHECKSUM = 2;
    public static final int PORT_INTERFACE__TIMESTAMP = 3;
    public static final int PORT_INTERFACE__GSHORT_NAME = 4;
    public static final int PORT_INTERFACE__GUUID = 5;
    public static final int PORT_INTERFACE__GCATEGORY = 6;
    public static final int PORT_INTERFACE__GDESC = 7;
    public static final int PORT_INTERFACE__SHORT_NAME = 8;
    public static final int PORT_INTERFACE__LONG_NAME = 9;
    public static final int PORT_INTERFACE__DESC = 10;
    public static final int PORT_INTERFACE__CATEGORY = 11;
    public static final int PORT_INTERFACE__ADMIN_DATA = 12;
    public static final int PORT_INTERFACE__UUID = 13;
    public static final int PORT_INTERFACE__ALL_EXTENSIONS = 14;
    public static final int PORT_INTERFACE__CONTAINED_EXTENSIONS = 15;
    public static final int PORT_INTERFACE__GAR_PACKAGE = 16;
    public static final int PORT_INTERFACE__AR_PACKAGE = 17;
    public static final int PORT_INTERFACE__GIS_SERVICE = 18;
    public static final int PORT_INTERFACE__IS_SERVICE = 19;
    public static final int PORT_INTERFACE_FEATURE_COUNT = 20;
    public static final int CLIENT_SERVER_INTERFACE = 4;
    public static final int CLIENT_SERVER_INTERFACE__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_INTERFACE__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_INTERFACE__CHECKSUM = 2;
    public static final int CLIENT_SERVER_INTERFACE__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_INTERFACE__GSHORT_NAME = 4;
    public static final int CLIENT_SERVER_INTERFACE__GUUID = 5;
    public static final int CLIENT_SERVER_INTERFACE__GCATEGORY = 6;
    public static final int CLIENT_SERVER_INTERFACE__GDESC = 7;
    public static final int CLIENT_SERVER_INTERFACE__SHORT_NAME = 8;
    public static final int CLIENT_SERVER_INTERFACE__LONG_NAME = 9;
    public static final int CLIENT_SERVER_INTERFACE__DESC = 10;
    public static final int CLIENT_SERVER_INTERFACE__CATEGORY = 11;
    public static final int CLIENT_SERVER_INTERFACE__ADMIN_DATA = 12;
    public static final int CLIENT_SERVER_INTERFACE__UUID = 13;
    public static final int CLIENT_SERVER_INTERFACE__ALL_EXTENSIONS = 14;
    public static final int CLIENT_SERVER_INTERFACE__CONTAINED_EXTENSIONS = 15;
    public static final int CLIENT_SERVER_INTERFACE__GAR_PACKAGE = 16;
    public static final int CLIENT_SERVER_INTERFACE__AR_PACKAGE = 17;
    public static final int CLIENT_SERVER_INTERFACE__GIS_SERVICE = 18;
    public static final int CLIENT_SERVER_INTERFACE__IS_SERVICE = 19;
    public static final int CLIENT_SERVER_INTERFACE__GOPERATIONS = 20;
    public static final int CLIENT_SERVER_INTERFACE__GPOSSIBLE_ERRORS = 21;
    public static final int CLIENT_SERVER_INTERFACE__OPERATIONS = 22;
    public static final int CLIENT_SERVER_INTERFACE__POSSIBLE_ERRORS = 23;
    public static final int CLIENT_SERVER_INTERFACE_FEATURE_COUNT = 24;
    public static final int SENDER_RECEIVER_INTERFACE = 5;
    public static final int SENDER_RECEIVER_INTERFACE__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_INTERFACE__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_INTERFACE__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_INTERFACE__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_INTERFACE__GSHORT_NAME = 4;
    public static final int SENDER_RECEIVER_INTERFACE__GUUID = 5;
    public static final int SENDER_RECEIVER_INTERFACE__GCATEGORY = 6;
    public static final int SENDER_RECEIVER_INTERFACE__GDESC = 7;
    public static final int SENDER_RECEIVER_INTERFACE__SHORT_NAME = 8;
    public static final int SENDER_RECEIVER_INTERFACE__LONG_NAME = 9;
    public static final int SENDER_RECEIVER_INTERFACE__DESC = 10;
    public static final int SENDER_RECEIVER_INTERFACE__CATEGORY = 11;
    public static final int SENDER_RECEIVER_INTERFACE__ADMIN_DATA = 12;
    public static final int SENDER_RECEIVER_INTERFACE__UUID = 13;
    public static final int SENDER_RECEIVER_INTERFACE__ALL_EXTENSIONS = 14;
    public static final int SENDER_RECEIVER_INTERFACE__CONTAINED_EXTENSIONS = 15;
    public static final int SENDER_RECEIVER_INTERFACE__GAR_PACKAGE = 16;
    public static final int SENDER_RECEIVER_INTERFACE__AR_PACKAGE = 17;
    public static final int SENDER_RECEIVER_INTERFACE__GIS_SERVICE = 18;
    public static final int SENDER_RECEIVER_INTERFACE__IS_SERVICE = 19;
    public static final int SENDER_RECEIVER_INTERFACE__GDATA_ELEMENTS = 20;
    public static final int SENDER_RECEIVER_INTERFACE__GMODE_GROUPS = 21;
    public static final int SENDER_RECEIVER_INTERFACE__DATA_ELEMENTS = 22;
    public static final int SENDER_RECEIVER_INTERFACE__MODE_GROUPS = 23;
    public static final int SENDER_RECEIVER_INTERFACE_FEATURE_COUNT = 24;
    public static final int DATA_ELEMENT_PROTOTYPE = 6;
    public static final int DATA_ELEMENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int DATA_ELEMENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int DATA_ELEMENT_PROTOTYPE__CHECKSUM = 2;
    public static final int DATA_ELEMENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int DATA_ELEMENT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int DATA_ELEMENT_PROTOTYPE__GUUID = 5;
    public static final int DATA_ELEMENT_PROTOTYPE__GCATEGORY = 6;
    public static final int DATA_ELEMENT_PROTOTYPE__GDESC = 7;
    public static final int DATA_ELEMENT_PROTOTYPE__SHORT_NAME = 8;
    public static final int DATA_ELEMENT_PROTOTYPE__LONG_NAME = 9;
    public static final int DATA_ELEMENT_PROTOTYPE__DESC = 10;
    public static final int DATA_ELEMENT_PROTOTYPE__CATEGORY = 11;
    public static final int DATA_ELEMENT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int DATA_ELEMENT_PROTOTYPE__UUID = 13;
    public static final int DATA_ELEMENT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int DATA_ELEMENT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_ELEMENT_PROTOTYPE__GTYPE = 16;
    public static final int DATA_ELEMENT_PROTOTYPE__GELEMENT_TYPE = 17;
    public static final int DATA_ELEMENT_PROTOTYPE__SW_DATA_DEF_PROPS = 18;
    public static final int DATA_ELEMENT_PROTOTYPE__TYPE = 19;
    public static final int DATA_ELEMENT_PROTOTYPE__SENDER_RECEIVER_INTERFACE = 20;
    public static final int DATA_ELEMENT_PROTOTYPE__IS_QUEUED = 21;
    public static final int DATA_ELEMENT_PROTOTYPE_FEATURE_COUNT = 22;
    public static final int DIRECTION_KIND = 7;

    public EClass getModeDeclarationGroupPrototype();

    public EReference getModeDeclarationGroupPrototype_SenderReceiverInterface();

    public EReference getModeDeclarationGroupPrototype_Type();

    public EClass getOperationPrototype();

    public EReference getOperationPrototype_ClientServerInterface();

    public EReference getOperationPrototype_Arguments();

    public EReference getOperationPrototype_PossibleErrors();

    public EClass getArgumentPrototype();

    public EReference getArgumentPrototype_OperationPrototype();

    public EAttribute getArgumentPrototype_Direction();

    public EClass getPortInterface();

    public EAttribute getPortInterface_IsService();

    public EClass getClientServerInterface();

    public EReference getClientServerInterface_Operations();

    public EReference getClientServerInterface_PossibleErrors();

    public EClass getSenderReceiverInterface();

    public EReference getSenderReceiverInterface_DataElements();

    public EReference getSenderReceiverInterface_ModeGroups();

    public EClass getDataElementPrototype();

    public EReference getDataElementPrototype_SenderReceiverInterface();

    public EAttribute getDataElementPrototype_IsQueued();

    public EEnum getDirectionKind();

    public PortinterfaceFactory getPortinterfaceFactory();

    public static interface Literals {
        public static final EClass MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeDeclarationGroupPrototype();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE__SENDER_RECEIVER_INTERFACE = eINSTANCE.getModeDeclarationGroupPrototype_SenderReceiverInterface();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE__TYPE = eINSTANCE.getModeDeclarationGroupPrototype_Type();
        public static final EClass OPERATION_PROTOTYPE = eINSTANCE.getOperationPrototype();
        public static final EReference OPERATION_PROTOTYPE__CLIENT_SERVER_INTERFACE = eINSTANCE.getOperationPrototype_ClientServerInterface();
        public static final EReference OPERATION_PROTOTYPE__ARGUMENTS = eINSTANCE.getOperationPrototype_Arguments();
        public static final EReference OPERATION_PROTOTYPE__POSSIBLE_ERRORS = eINSTANCE.getOperationPrototype_PossibleErrors();
        public static final EClass ARGUMENT_PROTOTYPE = eINSTANCE.getArgumentPrototype();
        public static final EReference ARGUMENT_PROTOTYPE__OPERATION_PROTOTYPE = eINSTANCE.getArgumentPrototype_OperationPrototype();
        public static final EAttribute ARGUMENT_PROTOTYPE__DIRECTION = eINSTANCE.getArgumentPrototype_Direction();
        public static final EClass PORT_INTERFACE = eINSTANCE.getPortInterface();
        public static final EAttribute PORT_INTERFACE__IS_SERVICE = eINSTANCE.getPortInterface_IsService();
        public static final EClass CLIENT_SERVER_INTERFACE = eINSTANCE.getClientServerInterface();
        public static final EReference CLIENT_SERVER_INTERFACE__OPERATIONS = eINSTANCE.getClientServerInterface_Operations();
        public static final EReference CLIENT_SERVER_INTERFACE__POSSIBLE_ERRORS = eINSTANCE.getClientServerInterface_PossibleErrors();
        public static final EClass SENDER_RECEIVER_INTERFACE = eINSTANCE.getSenderReceiverInterface();
        public static final EReference SENDER_RECEIVER_INTERFACE__DATA_ELEMENTS = eINSTANCE.getSenderReceiverInterface_DataElements();
        public static final EReference SENDER_RECEIVER_INTERFACE__MODE_GROUPS = eINSTANCE.getSenderReceiverInterface_ModeGroups();
        public static final EClass DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataElementPrototype();
        public static final EReference DATA_ELEMENT_PROTOTYPE__SENDER_RECEIVER_INTERFACE = eINSTANCE.getDataElementPrototype_SenderReceiverInterface();
        public static final EAttribute DATA_ELEMENT_PROTOTYPE__IS_QUEUED = eINSTANCE.getDataElementPrototype_IsQueued();
        public static final EEnum DIRECTION_KIND = eINSTANCE.getDirectionKind();
    }
}

