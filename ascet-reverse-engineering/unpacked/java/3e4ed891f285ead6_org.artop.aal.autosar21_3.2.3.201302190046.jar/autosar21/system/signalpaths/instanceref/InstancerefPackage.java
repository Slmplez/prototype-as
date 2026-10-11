/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.signalpaths.instanceref;

import autosar21.system.signalpaths.instanceref.InstancerefFactory;
import autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/sp/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT = 0;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__GCHECKSUM = 0;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__GTIMESTAMP = 1;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__CHECKSUM = 2;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__TIMESTAMP = 3;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__FORBIDDEN_SIGNAL_PATH = 4;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT = 6;
    public static final int FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT_FEATURE_COUNT = 7;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT = 1;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__GCHECKSUM = 0;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__GTIMESTAMP = 1;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__CHECKSUM = 2;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__TIMESTAMP = 3;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__PERMISSIBLE_SIGNAL_PATH = 4;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT = 6;
    public static final int PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT_FEATURE_COUNT = 7;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION = 2;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__GCHECKSUM = 0;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__GTIMESTAMP = 1;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__CHECKSUM = 2;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__TIMESTAMP = 3;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__SWC_TO_SWC_OPERATION_ARGUMENTS = 4;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__SOFTWARE_COMPOSITION = 5;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__COMPONENT_PROTOTYPES = 6;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__PORT_PROTOTYPE = 7;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__OPERATION_PROTOTYPE = 8;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION_FEATURE_COUNT = 9;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT = 3;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__CHECKSUM = 2;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__SWC_TO_SWC_SIGNAL = 4;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__SOFTWARE_COMPOSITION = 5;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__COMPONENT_PROTOTYPES = 6;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__PORT_PROTOTYPE = 7;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int SWC_TO_SWC_SIGNAL_DATA_ELEMENT_FEATURE_COUNT = 9;

    public EClass getForbiddenSignalPathEcuCommunicationPort();

    public EReference getForbiddenSignalPathEcuCommunicationPort_ForbiddenSignalPath();

    public EReference getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance();

    public EReference getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort();

    public EClass getPermissibleSignalPathEcuCommunicationPort();

    public EReference getPermissibleSignalPathEcuCommunicationPort_PermissibleSignalPath();

    public EReference getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance();

    public EReference getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort();

    public EClass getSwcToSwcOperationArgumentsOperation();

    public EReference getSwcToSwcOperationArgumentsOperation_SwcToSwcOperationArguments();

    public EReference getSwcToSwcOperationArgumentsOperation_SoftwareComposition();

    public EReference getSwcToSwcOperationArgumentsOperation_ComponentPrototypes();

    public EReference getSwcToSwcOperationArgumentsOperation_PortPrototype();

    public EReference getSwcToSwcOperationArgumentsOperation_OperationPrototype();

    public EClass getSwcToSwcSignalDataElement();

    public EReference getSwcToSwcSignalDataElement_SwcToSwcSignal();

    public EReference getSwcToSwcSignalDataElement_SoftwareComposition();

    public EReference getSwcToSwcSignalDataElement_ComponentPrototypes();

    public EReference getSwcToSwcSignalDataElement_PortPrototype();

    public EReference getSwcToSwcSignalDataElement_DataElementPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT = eINSTANCE.getForbiddenSignalPathEcuCommunicationPort();
        public static final EReference FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__FORBIDDEN_SIGNAL_PATH = eINSTANCE.getForbiddenSignalPathEcuCommunicationPort_ForbiddenSignalPath();
        public static final EReference FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance();
        public static final EReference FORBIDDEN_SIGNAL_PATH_ECU_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT = eINSTANCE.getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort();
        public static final EClass PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT = eINSTANCE.getPermissibleSignalPathEcuCommunicationPort();
        public static final EReference PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__PERMISSIBLE_SIGNAL_PATH = eINSTANCE.getPermissibleSignalPathEcuCommunicationPort_PermissibleSignalPath();
        public static final EReference PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance();
        public static final EReference PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT = eINSTANCE.getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort();
        public static final EClass SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION = eINSTANCE.getSwcToSwcOperationArgumentsOperation();
        public static final EReference SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__SWC_TO_SWC_OPERATION_ARGUMENTS = eINSTANCE.getSwcToSwcOperationArgumentsOperation_SwcToSwcOperationArguments();
        public static final EReference SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__SOFTWARE_COMPOSITION = eINSTANCE.getSwcToSwcOperationArgumentsOperation_SoftwareComposition();
        public static final EReference SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__COMPONENT_PROTOTYPES = eINSTANCE.getSwcToSwcOperationArgumentsOperation_ComponentPrototypes();
        public static final EReference SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__PORT_PROTOTYPE = eINSTANCE.getSwcToSwcOperationArgumentsOperation_PortPrototype();
        public static final EReference SWC_TO_SWC_OPERATION_ARGUMENTS_OPERATION__OPERATION_PROTOTYPE = eINSTANCE.getSwcToSwcOperationArgumentsOperation_OperationPrototype();
        public static final EClass SWC_TO_SWC_SIGNAL_DATA_ELEMENT = eINSTANCE.getSwcToSwcSignalDataElement();
        public static final EReference SWC_TO_SWC_SIGNAL_DATA_ELEMENT__SWC_TO_SWC_SIGNAL = eINSTANCE.getSwcToSwcSignalDataElement_SwcToSwcSignal();
        public static final EReference SWC_TO_SWC_SIGNAL_DATA_ELEMENT__SOFTWARE_COMPOSITION = eINSTANCE.getSwcToSwcSignalDataElement_SoftwareComposition();
        public static final EReference SWC_TO_SWC_SIGNAL_DATA_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getSwcToSwcSignalDataElement_ComponentPrototypes();
        public static final EReference SWC_TO_SWC_SIGNAL_DATA_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getSwcToSwcSignalDataElement_PortPrototype();
        public static final EReference SWC_TO_SWC_SIGNAL_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getSwcToSwcSignalDataElement_DataElementPrototype();
    }
}

