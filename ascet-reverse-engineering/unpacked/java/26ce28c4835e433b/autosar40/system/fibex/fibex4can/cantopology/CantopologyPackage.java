/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.system.fibex.fibex4can.cantopology.CantopologyFactory;
import autosar40.system.fibex.fibex4can.cantopology.impl.CantopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CantopologyPackage
extends EPackage {
    public static final String eNAME = "cantopology";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fcan/ct";
    public static final String eNS_PREFIX = "";
    public static final CantopologyPackage eINSTANCE = CantopologyPackageImpl.init();
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 22;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER = 1;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 19;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES = 2;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT = 4;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES_FEATURE_COUNT = 5;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL = 3;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__GUUID = 7;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__GDESC = 9;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__DESC = 10;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__UUID = 15;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int ABSTRACT_CAN_PHYSICAL_CHANNEL_FEATURE_COUNT = 24;
    public static final int ABSTRACT_CAN_CLUSTER = 16;
    public static final int ABSTRACT_CAN_CLUSTER__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_CLUSTER__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_CLUSTER__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_CLUSTER__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_CLUSTER__GSHORT_NAME = 4;
    public static final int ABSTRACT_CAN_CLUSTER__SHORT_NAME = 5;
    public static final int ABSTRACT_CAN_CLUSTER__LONG_NAME = 6;
    public static final int ABSTRACT_CAN_CLUSTER__GUUID = 7;
    public static final int ABSTRACT_CAN_CLUSTER__GCATEGORY = 8;
    public static final int ABSTRACT_CAN_CLUSTER__GDESC = 9;
    public static final int ABSTRACT_CAN_CLUSTER__DESC = 10;
    public static final int ABSTRACT_CAN_CLUSTER__CATEGORY = 11;
    public static final int ABSTRACT_CAN_CLUSTER__ADMIN_DATA = 12;
    public static final int ABSTRACT_CAN_CLUSTER__INTRODUCTION = 13;
    public static final int ABSTRACT_CAN_CLUSTER__ANNOTATIONS = 14;
    public static final int ABSTRACT_CAN_CLUSTER__UUID = 15;
    public static final int ABSTRACT_CAN_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int ABSTRACT_CAN_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int ABSTRACT_CAN_CLUSTER__GAR_PACKAGE = 18;
    public static final int ABSTRACT_CAN_CLUSTER__AR_PACKAGE = 19;
    public static final int ABSTRACT_CAN_CLUSTER__VARIATION_POINT = 20;
    public static final int ABSTRACT_CAN_CLUSTER_FEATURE_COUNT = 21;
    public static final int CAN_CLUSTER = 4;
    public static final int CAN_CLUSTER__GCHECKSUM = 0;
    public static final int CAN_CLUSTER__GTIMESTAMP = 1;
    public static final int CAN_CLUSTER__CHECKSUM = 2;
    public static final int CAN_CLUSTER__TIMESTAMP = 3;
    public static final int CAN_CLUSTER__GSHORT_NAME = 4;
    public static final int CAN_CLUSTER__SHORT_NAME = 5;
    public static final int CAN_CLUSTER__LONG_NAME = 6;
    public static final int CAN_CLUSTER__GUUID = 7;
    public static final int CAN_CLUSTER__GCATEGORY = 8;
    public static final int CAN_CLUSTER__GDESC = 9;
    public static final int CAN_CLUSTER__DESC = 10;
    public static final int CAN_CLUSTER__CATEGORY = 11;
    public static final int CAN_CLUSTER__ADMIN_DATA = 12;
    public static final int CAN_CLUSTER__INTRODUCTION = 13;
    public static final int CAN_CLUSTER__ANNOTATIONS = 14;
    public static final int CAN_CLUSTER__UUID = 15;
    public static final int CAN_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int CAN_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_CLUSTER__GAR_PACKAGE = 18;
    public static final int CAN_CLUSTER__AR_PACKAGE = 19;
    public static final int CAN_CLUSTER__VARIATION_POINT = 20;
    public static final int CAN_CLUSTER__CAN_CLUSTER_VARIANTS = 21;
    public static final int CAN_CLUSTER_FEATURE_COUNT = 22;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT = 7;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT__SPEED = 7;
    public static final int ABSTRACT_CAN_CLUSTER_CONTENT_FEATURE_COUNT = 8;
    public static final int CAN_CLUSTER_CONTENT = 6;
    public static final int CAN_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int CAN_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int CAN_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int CAN_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int CAN_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int CAN_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int CAN_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int CAN_CLUSTER_CONTENT__SPEED = 7;
    public static final int CAN_CLUSTER_CONTENT_FEATURE_COUNT = 8;
    public static final int CAN_CLUSTER_CONDITIONAL = 5;
    public static final int CAN_CLUSTER_CONDITIONAL__GCHECKSUM = 0;
    public static final int CAN_CLUSTER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int CAN_CLUSTER_CONDITIONAL__CHECKSUM = 2;
    public static final int CAN_CLUSTER_CONDITIONAL__TIMESTAMP = 3;
    public static final int CAN_CLUSTER_CONDITIONAL__PHYSICAL_CHANNELS = 4;
    public static final int CAN_CLUSTER_CONDITIONAL__PROTOCOL_NAME = 5;
    public static final int CAN_CLUSTER_CONDITIONAL__PROTOCOL_VERSION = 6;
    public static final int CAN_CLUSTER_CONDITIONAL__SPEED = 7;
    public static final int CAN_CLUSTER_CONDITIONAL__CAN_CLUSTER = 8;
    public static final int CAN_CLUSTER_CONDITIONAL__VARIATION_POINT = 9;
    public static final int CAN_CLUSTER_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int CAN_COMMUNICATION_CONNECTOR = 8;
    public static final int CAN_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int CAN_COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int CAN_COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int CAN_COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int CAN_COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int CAN_COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int CAN_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int CAN_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int CAN_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int CAN_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int CAN_COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int CAN_COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int CAN_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int CAN_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int CAN_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int CAN_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID = 22;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_EXTENDED = 23;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_MASK = 24;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DATA_MASK = 25;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DLC = 26;
    public static final int CAN_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 27;
    public static final int CAN_COMMUNICATION_CONTROLLER = 9;
    public static final int CAN_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int CAN_COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int CAN_COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int CAN_COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int CAN_COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int CAN_COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int CAN_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int CAN_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int CAN_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int CAN_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int CAN_COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int CAN_COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int CAN_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int CAN_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int CAN_COMMUNICATION_CONTROLLER__CAN_COMMUNICATION_CONTROLLER_VARIANTS = 19;
    public static final int CAN_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 20;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT = 12;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT__CAN_CONTROLLER_ATTRIBUTES = 4;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 5;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT = 11;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT__CAN_CONTROLLER_ATTRIBUTES = 4;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 5;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL = 10;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__CAN_CONTROLLER_ATTRIBUTES = 4;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__CAN_COMMUNICATION_CONTROLLER = 5;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = 6;
    public static final int CAN_COMMUNICATION_CONTROLLER_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int CAN_CONTROLLER_CONFIGURATION = 13;
    public static final int CAN_CONTROLLER_CONFIGURATION__GCHECKSUM = 0;
    public static final int CAN_CONTROLLER_CONFIGURATION__GTIMESTAMP = 1;
    public static final int CAN_CONTROLLER_CONFIGURATION__CHECKSUM = 2;
    public static final int CAN_CONTROLLER_CONFIGURATION__TIMESTAMP = 3;
    public static final int CAN_CONTROLLER_CONFIGURATION__ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT = 4;
    public static final int CAN_CONTROLLER_CONFIGURATION__SYNC_JUMP_WIDTH = 5;
    public static final int CAN_CONTROLLER_CONFIGURATION__TIME_SEG1 = 6;
    public static final int CAN_CONTROLLER_CONFIGURATION__TIME_SEG2 = 7;
    public static final int CAN_CONTROLLER_CONFIGURATION_FEATURE_COUNT = 8;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS = 14;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__GCHECKSUM = 0;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__GTIMESTAMP = 1;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__CHECKSUM = 2;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__TIMESTAMP = 3;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT = 4;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_NUMBER_OF_TIME_QUANTA_PER_BIT = 5;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SAMPLE_POINT = 6;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SYNC_JUMP_WIDTH = 7;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_NUMBER_OF_TIME_QUANTA_PER_BIT = 8;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SAMPLE_POINT = 9;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SYNC_JUMP_WIDTH = 10;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS_FEATURE_COUNT = 11;
    public static final int CAN_PHYSICAL_CHANNEL = 15;
    public static final int CAN_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int CAN_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int CAN_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int CAN_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int CAN_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int CAN_PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int CAN_PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int CAN_PHYSICAL_CHANNEL__GUUID = 7;
    public static final int CAN_PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int CAN_PHYSICAL_CHANNEL__GDESC = 9;
    public static final int CAN_PHYSICAL_CHANNEL__DESC = 10;
    public static final int CAN_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int CAN_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int CAN_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int CAN_PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int CAN_PHYSICAL_CHANNEL__UUID = 15;
    public static final int CAN_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int CAN_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int CAN_PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int CAN_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int CAN_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int CAN_PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int CAN_PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int CAN_PHYSICAL_CHANNEL_FEATURE_COUNT = 24;

    public EClass getAbstractCanCommunicationConnector();

    public EClass getAbstractCanCommunicationController();

    public EClass getAbstractCanCommunicationControllerAttributes();

    public EReference getAbstractCanCommunicationControllerAttributes_AbstractCanCommunicationControllerContent();

    public EClass getAbstractCanPhysicalChannel();

    public EClass getCanCluster();

    public EReference getCanCluster_CanClusterVariants();

    public EClass getCanClusterConditional();

    public EReference getCanClusterConditional_CanCluster();

    public EReference getCanClusterConditional_VariationPoint();

    public EClass getCanClusterContent();

    public EClass getAbstractCanClusterContent();

    public EClass getCanCommunicationConnector();

    public EAttribute getCanCommunicationConnector_PncWakeupCanId();

    public EAttribute getCanCommunicationConnector_PncWakeupCanIdExtended();

    public EAttribute getCanCommunicationConnector_PncWakeupCanIdMask();

    public EAttribute getCanCommunicationConnector_PncWakeupDataMask();

    public EAttribute getCanCommunicationConnector_PncWakeupDlc();

    public EClass getCanCommunicationController();

    public EReference getCanCommunicationController_CanCommunicationControllerVariants();

    public EClass getCanCommunicationControllerConditional();

    public EReference getCanCommunicationControllerConditional_CanCommunicationController();

    public EReference getCanCommunicationControllerConditional_VariationPoint();

    public EClass getCanCommunicationControllerContent();

    public EClass getAbstractCanCommunicationControllerContent();

    public EReference getAbstractCanCommunicationControllerContent_CanControllerAttributes();

    public EClass getCanControllerConfiguration();

    public EAttribute getCanControllerConfiguration_SyncJumpWidth();

    public EAttribute getCanControllerConfiguration_TimeSeg1();

    public EAttribute getCanControllerConfiguration_TimeSeg2();

    public EClass getCanControllerConfigurationRequirements();

    public EAttribute getCanControllerConfigurationRequirements_MaxNumberOfTimeQuantaPerBit();

    public EAttribute getCanControllerConfigurationRequirements_MaxSamplePoint();

    public EAttribute getCanControllerConfigurationRequirements_MaxSyncJumpWidth();

    public EAttribute getCanControllerConfigurationRequirements_MinNumberOfTimeQuantaPerBit();

    public EAttribute getCanControllerConfigurationRequirements_MinSamplePoint();

    public EAttribute getCanControllerConfigurationRequirements_MinSyncJumpWidth();

    public EClass getCanPhysicalChannel();

    public EClass getAbstractCanCluster();

    public CantopologyFactory getCantopologyFactory();

    public static interface Literals {
        public static final EClass ABSTRACT_CAN_COMMUNICATION_CONNECTOR = eINSTANCE.getAbstractCanCommunicationConnector();
        public static final EClass ABSTRACT_CAN_COMMUNICATION_CONTROLLER = eINSTANCE.getAbstractCanCommunicationController();
        public static final EClass ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES = eINSTANCE.getAbstractCanCommunicationControllerAttributes();
        public static final EReference ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getAbstractCanCommunicationControllerAttributes_AbstractCanCommunicationControllerContent();
        public static final EClass ABSTRACT_CAN_PHYSICAL_CHANNEL = eINSTANCE.getAbstractCanPhysicalChannel();
        public static final EClass CAN_CLUSTER = eINSTANCE.getCanCluster();
        public static final EReference CAN_CLUSTER__CAN_CLUSTER_VARIANTS = eINSTANCE.getCanCluster_CanClusterVariants();
        public static final EClass CAN_CLUSTER_CONDITIONAL = eINSTANCE.getCanClusterConditional();
        public static final EReference CAN_CLUSTER_CONDITIONAL__CAN_CLUSTER = eINSTANCE.getCanClusterConditional_CanCluster();
        public static final EReference CAN_CLUSTER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getCanClusterConditional_VariationPoint();
        public static final EClass CAN_CLUSTER_CONTENT = eINSTANCE.getCanClusterContent();
        public static final EClass ABSTRACT_CAN_CLUSTER_CONTENT = eINSTANCE.getAbstractCanClusterContent();
        public static final EClass CAN_COMMUNICATION_CONNECTOR = eINSTANCE.getCanCommunicationConnector();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID = eINSTANCE.getCanCommunicationConnector_PncWakeupCanId();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_EXTENDED = eINSTANCE.getCanCommunicationConnector_PncWakeupCanIdExtended();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_MASK = eINSTANCE.getCanCommunicationConnector_PncWakeupCanIdMask();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DATA_MASK = eINSTANCE.getCanCommunicationConnector_PncWakeupDataMask();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DLC = eINSTANCE.getCanCommunicationConnector_PncWakeupDlc();
        public static final EClass CAN_COMMUNICATION_CONTROLLER = eINSTANCE.getCanCommunicationController();
        public static final EReference CAN_COMMUNICATION_CONTROLLER__CAN_COMMUNICATION_CONTROLLER_VARIANTS = eINSTANCE.getCanCommunicationController_CanCommunicationControllerVariants();
        public static final EClass CAN_COMMUNICATION_CONTROLLER_CONDITIONAL = eINSTANCE.getCanCommunicationControllerConditional();
        public static final EReference CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__CAN_COMMUNICATION_CONTROLLER = eINSTANCE.getCanCommunicationControllerConditional_CanCommunicationController();
        public static final EReference CAN_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getCanCommunicationControllerConditional_VariationPoint();
        public static final EClass CAN_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getCanCommunicationControllerContent();
        public static final EClass ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getAbstractCanCommunicationControllerContent();
        public static final EReference ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT__CAN_CONTROLLER_ATTRIBUTES = eINSTANCE.getAbstractCanCommunicationControllerContent_CanControllerAttributes();
        public static final EClass CAN_CONTROLLER_CONFIGURATION = eINSTANCE.getCanControllerConfiguration();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__SYNC_JUMP_WIDTH = eINSTANCE.getCanControllerConfiguration_SyncJumpWidth();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__TIME_SEG1 = eINSTANCE.getCanControllerConfiguration_TimeSeg1();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__TIME_SEG2 = eINSTANCE.getCanControllerConfiguration_TimeSeg2();
        public static final EClass CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS = eINSTANCE.getCanControllerConfigurationRequirements();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_NUMBER_OF_TIME_QUANTA_PER_BIT = eINSTANCE.getCanControllerConfigurationRequirements_MaxNumberOfTimeQuantaPerBit();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SAMPLE_POINT = eINSTANCE.getCanControllerConfigurationRequirements_MaxSamplePoint();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SYNC_JUMP_WIDTH = eINSTANCE.getCanControllerConfigurationRequirements_MaxSyncJumpWidth();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_NUMBER_OF_TIME_QUANTA_PER_BIT = eINSTANCE.getCanControllerConfigurationRequirements_MinNumberOfTimeQuantaPerBit();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SAMPLE_POINT = eINSTANCE.getCanControllerConfigurationRequirements_MinSamplePoint();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SYNC_JUMP_WIDTH = eINSTANCE.getCanControllerConfigurationRequirements_MinSyncJumpWidth();
        public static final EClass CAN_PHYSICAL_CHANNEL = eINSTANCE.getCanPhysicalChannel();
        public static final EClass ABSTRACT_CAN_CLUSTER = eINSTANCE.getAbstractCanCluster();
    }
}

