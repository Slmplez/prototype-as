/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyFactory;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcantopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TtcantopologyPackage
extends EPackage {
    public static final String eNAME = "ttcantopology";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/ft/tt";
    public static final String eNS_PREFIX = "";
    public static final TtcantopologyPackage eINSTANCE = TtcantopologyPackageImpl.init();
    public static final int TTCAN_CLUSTER = 0;
    public static final int TTCAN_CLUSTER__GCHECKSUM = 0;
    public static final int TTCAN_CLUSTER__GTIMESTAMP = 1;
    public static final int TTCAN_CLUSTER__CHECKSUM = 2;
    public static final int TTCAN_CLUSTER__TIMESTAMP = 3;
    public static final int TTCAN_CLUSTER__GSHORT_NAME = 4;
    public static final int TTCAN_CLUSTER__SHORT_NAME = 5;
    public static final int TTCAN_CLUSTER__LONG_NAME = 6;
    public static final int TTCAN_CLUSTER__GUUID = 7;
    public static final int TTCAN_CLUSTER__GCATEGORY = 8;
    public static final int TTCAN_CLUSTER__GDESC = 9;
    public static final int TTCAN_CLUSTER__DESC = 10;
    public static final int TTCAN_CLUSTER__CATEGORY = 11;
    public static final int TTCAN_CLUSTER__ADMIN_DATA = 12;
    public static final int TTCAN_CLUSTER__INTRODUCTION = 13;
    public static final int TTCAN_CLUSTER__ANNOTATIONS = 14;
    public static final int TTCAN_CLUSTER__UUID = 15;
    public static final int TTCAN_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int TTCAN_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int TTCAN_CLUSTER__GAR_PACKAGE = 18;
    public static final int TTCAN_CLUSTER__AR_PACKAGE = 19;
    public static final int TTCAN_CLUSTER__VARIATION_POINT = 20;
    public static final int TTCAN_CLUSTER__TTCAN_CLUSTER_VARIANTS = 21;
    public static final int TTCAN_CLUSTER_FEATURE_COUNT = 22;
    public static final int TTCAN_CLUSTER_CONTENT = 2;
    public static final int TTCAN_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int TTCAN_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int TTCAN_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int TTCAN_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int TTCAN_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int TTCAN_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int TTCAN_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int TTCAN_CLUSTER_CONTENT__SPEED = 7;
    public static final int TTCAN_CLUSTER_CONTENT__BASIC_CYCLE_LENGTH = 8;
    public static final int TTCAN_CLUSTER_CONTENT__NTU = 9;
    public static final int TTCAN_CLUSTER_CONTENT__OPERATION_MODE = 10;
    public static final int TTCAN_CLUSTER_CONTENT_FEATURE_COUNT = 11;
    public static final int TTCAN_CLUSTER_CONDITIONAL = 1;
    public static final int TTCAN_CLUSTER_CONDITIONAL__GCHECKSUM = 0;
    public static final int TTCAN_CLUSTER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int TTCAN_CLUSTER_CONDITIONAL__CHECKSUM = 2;
    public static final int TTCAN_CLUSTER_CONDITIONAL__TIMESTAMP = 3;
    public static final int TTCAN_CLUSTER_CONDITIONAL__PHYSICAL_CHANNELS = 4;
    public static final int TTCAN_CLUSTER_CONDITIONAL__PROTOCOL_NAME = 5;
    public static final int TTCAN_CLUSTER_CONDITIONAL__PROTOCOL_VERSION = 6;
    public static final int TTCAN_CLUSTER_CONDITIONAL__SPEED = 7;
    public static final int TTCAN_CLUSTER_CONDITIONAL__BASIC_CYCLE_LENGTH = 8;
    public static final int TTCAN_CLUSTER_CONDITIONAL__NTU = 9;
    public static final int TTCAN_CLUSTER_CONDITIONAL__OPERATION_MODE = 10;
    public static final int TTCAN_CLUSTER_CONDITIONAL__TTCAN_CLUSTER = 11;
    public static final int TTCAN_CLUSTER_CONDITIONAL__VARIATION_POINT = 12;
    public static final int TTCAN_CLUSTER_CONDITIONAL_FEATURE_COUNT = 13;
    public static final int TTCAN_COMMUNICATION_CONNECTOR = 3;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int TTCAN_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int TTCAN_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 22;
    public static final int TTCAN_COMMUNICATION_CONTROLLER = 4;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int TTCAN_COMMUNICATION_CONTROLLER__TTCAN_COMMUNICATION_CONTROLLER_VARIANTS = 19;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 20;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT = 6;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__CAN_CONTROLLER_ATTRIBUTES = 4;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__APPL_WATCHDOG_LIMIT = 5;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__EXPECTED_TX_TRIGGER = 6;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__EXTERNAL_CLOCK_SYNCHRONISATION = 7;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__INITIAL_REF_OFFSET = 8;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__MASTER = 9;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TIME_MASTER_PRIORITY = 10;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TIME_TRIGGERED_CAN_LEVEL = 11;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TX_ENABLE_WINDOW_LENGTH = 12;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 13;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL = 5;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__GCHECKSUM = 0;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__CHECKSUM = 2;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TIMESTAMP = 3;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__CAN_CONTROLLER_ATTRIBUTES = 4;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__APPL_WATCHDOG_LIMIT = 5;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__EXPECTED_TX_TRIGGER = 6;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__EXTERNAL_CLOCK_SYNCHRONISATION = 7;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__INITIAL_REF_OFFSET = 8;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__MASTER = 9;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TIME_MASTER_PRIORITY = 10;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TIME_TRIGGERED_CAN_LEVEL = 11;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TX_ENABLE_WINDOW_LENGTH = 12;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TTCAN_COMMUNICATION_CONTROLLER = 13;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = 14;
    public static final int TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL_FEATURE_COUNT = 15;
    public static final int TTCAN_PHYSICAL_CHANNEL = 7;
    public static final int TTCAN_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int TTCAN_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int TTCAN_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int TTCAN_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int TTCAN_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int TTCAN_PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int TTCAN_PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int TTCAN_PHYSICAL_CHANNEL__GUUID = 7;
    public static final int TTCAN_PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int TTCAN_PHYSICAL_CHANNEL__GDESC = 9;
    public static final int TTCAN_PHYSICAL_CHANNEL__DESC = 10;
    public static final int TTCAN_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int TTCAN_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int TTCAN_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int TTCAN_PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int TTCAN_PHYSICAL_CHANNEL__UUID = 15;
    public static final int TTCAN_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int TTCAN_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int TTCAN_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int TTCAN_PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int TTCAN_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int TTCAN_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int TTCAN_PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int TTCAN_PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int TTCAN_PHYSICAL_CHANNEL_FEATURE_COUNT = 24;

    public EClass getTtcanCluster();

    public EReference getTtcanCluster_TtcanClusterVariants();

    public EClass getTtcanClusterConditional();

    public EReference getTtcanClusterConditional_TtcanCluster();

    public EReference getTtcanClusterConditional_VariationPoint();

    public EClass getTtcanClusterContent();

    public EAttribute getTtcanClusterContent_BasicCycleLength();

    public EAttribute getTtcanClusterContent_Ntu();

    public EAttribute getTtcanClusterContent_OperationMode();

    public EClass getTtcanCommunicationConnector();

    public EClass getTtcanCommunicationController();

    public EReference getTtcanCommunicationController_TtcanCommunicationControllerVariants();

    public EClass getTtcanCommunicationControllerConditional();

    public EReference getTtcanCommunicationControllerConditional_TtcanCommunicationController();

    public EReference getTtcanCommunicationControllerConditional_VariationPoint();

    public EClass getTtcanCommunicationControllerContent();

    public EAttribute getTtcanCommunicationControllerContent_ApplWatchdogLimit();

    public EAttribute getTtcanCommunicationControllerContent_ExpectedTxTrigger();

    public EAttribute getTtcanCommunicationControllerContent_ExternalClockSynchronisation();

    public EAttribute getTtcanCommunicationControllerContent_InitialRefOffset();

    public EAttribute getTtcanCommunicationControllerContent_Master();

    public EAttribute getTtcanCommunicationControllerContent_TimeMasterPriority();

    public EAttribute getTtcanCommunicationControllerContent_TimeTriggeredCanLevel();

    public EAttribute getTtcanCommunicationControllerContent_TxEnableWindowLength();

    public EClass getTtcanPhysicalChannel();

    public TtcantopologyFactory getTtcantopologyFactory();

    public static interface Literals {
        public static final EClass TTCAN_CLUSTER = eINSTANCE.getTtcanCluster();
        public static final EReference TTCAN_CLUSTER__TTCAN_CLUSTER_VARIANTS = eINSTANCE.getTtcanCluster_TtcanClusterVariants();
        public static final EClass TTCAN_CLUSTER_CONDITIONAL = eINSTANCE.getTtcanClusterConditional();
        public static final EReference TTCAN_CLUSTER_CONDITIONAL__TTCAN_CLUSTER = eINSTANCE.getTtcanClusterConditional_TtcanCluster();
        public static final EReference TTCAN_CLUSTER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getTtcanClusterConditional_VariationPoint();
        public static final EClass TTCAN_CLUSTER_CONTENT = eINSTANCE.getTtcanClusterContent();
        public static final EAttribute TTCAN_CLUSTER_CONTENT__BASIC_CYCLE_LENGTH = eINSTANCE.getTtcanClusterContent_BasicCycleLength();
        public static final EAttribute TTCAN_CLUSTER_CONTENT__NTU = eINSTANCE.getTtcanClusterContent_Ntu();
        public static final EAttribute TTCAN_CLUSTER_CONTENT__OPERATION_MODE = eINSTANCE.getTtcanClusterContent_OperationMode();
        public static final EClass TTCAN_COMMUNICATION_CONNECTOR = eINSTANCE.getTtcanCommunicationConnector();
        public static final EClass TTCAN_COMMUNICATION_CONTROLLER = eINSTANCE.getTtcanCommunicationController();
        public static final EReference TTCAN_COMMUNICATION_CONTROLLER__TTCAN_COMMUNICATION_CONTROLLER_VARIANTS = eINSTANCE.getTtcanCommunicationController_TtcanCommunicationControllerVariants();
        public static final EClass TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL = eINSTANCE.getTtcanCommunicationControllerConditional();
        public static final EReference TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TTCAN_COMMUNICATION_CONTROLLER = eINSTANCE.getTtcanCommunicationControllerConditional_TtcanCommunicationController();
        public static final EReference TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getTtcanCommunicationControllerConditional_VariationPoint();
        public static final EClass TTCAN_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getTtcanCommunicationControllerContent();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__APPL_WATCHDOG_LIMIT = eINSTANCE.getTtcanCommunicationControllerContent_ApplWatchdogLimit();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__EXPECTED_TX_TRIGGER = eINSTANCE.getTtcanCommunicationControllerContent_ExpectedTxTrigger();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__EXTERNAL_CLOCK_SYNCHRONISATION = eINSTANCE.getTtcanCommunicationControllerContent_ExternalClockSynchronisation();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__INITIAL_REF_OFFSET = eINSTANCE.getTtcanCommunicationControllerContent_InitialRefOffset();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__MASTER = eINSTANCE.getTtcanCommunicationControllerContent_Master();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TIME_MASTER_PRIORITY = eINSTANCE.getTtcanCommunicationControllerContent_TimeMasterPriority();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TIME_TRIGGERED_CAN_LEVEL = eINSTANCE.getTtcanCommunicationControllerContent_TimeTriggeredCanLevel();
        public static final EAttribute TTCAN_COMMUNICATION_CONTROLLER_CONTENT__TX_ENABLE_WINDOW_LENGTH = eINSTANCE.getTtcanCommunicationControllerContent_TxEnableWindowLength();
        public static final EClass TTCAN_PHYSICAL_CHANNEL = eINSTANCE.getTtcanPhysicalChannel();
    }
}

