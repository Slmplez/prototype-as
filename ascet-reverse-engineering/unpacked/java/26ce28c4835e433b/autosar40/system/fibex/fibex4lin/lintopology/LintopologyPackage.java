/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.system.fibex.fibex4lin.lintopology.LintopologyFactory;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LintopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LintopologyPackage
extends EPackage {
    public static final String eNAME = "lintopology";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fl/lt";
    public static final String eNS_PREFIX = "";
    public static final LintopologyPackage eINSTANCE = LintopologyPackageImpl.init();
    public static final int LIN_CLUSTER = 0;
    public static final int LIN_CLUSTER__GCHECKSUM = 0;
    public static final int LIN_CLUSTER__GTIMESTAMP = 1;
    public static final int LIN_CLUSTER__CHECKSUM = 2;
    public static final int LIN_CLUSTER__TIMESTAMP = 3;
    public static final int LIN_CLUSTER__GSHORT_NAME = 4;
    public static final int LIN_CLUSTER__SHORT_NAME = 5;
    public static final int LIN_CLUSTER__LONG_NAME = 6;
    public static final int LIN_CLUSTER__GUUID = 7;
    public static final int LIN_CLUSTER__GCATEGORY = 8;
    public static final int LIN_CLUSTER__GDESC = 9;
    public static final int LIN_CLUSTER__DESC = 10;
    public static final int LIN_CLUSTER__CATEGORY = 11;
    public static final int LIN_CLUSTER__ADMIN_DATA = 12;
    public static final int LIN_CLUSTER__INTRODUCTION = 13;
    public static final int LIN_CLUSTER__ANNOTATIONS = 14;
    public static final int LIN_CLUSTER__UUID = 15;
    public static final int LIN_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int LIN_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_CLUSTER__GAR_PACKAGE = 18;
    public static final int LIN_CLUSTER__AR_PACKAGE = 19;
    public static final int LIN_CLUSTER__VARIATION_POINT = 20;
    public static final int LIN_CLUSTER__LIN_CLUSTER_VARIANTS = 21;
    public static final int LIN_CLUSTER_FEATURE_COUNT = 22;
    public static final int LIN_CLUSTER_CONTENT = 2;
    public static final int LIN_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int LIN_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int LIN_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int LIN_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int LIN_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int LIN_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int LIN_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int LIN_CLUSTER_CONTENT__SPEED = 7;
    public static final int LIN_CLUSTER_CONTENT_FEATURE_COUNT = 8;
    public static final int LIN_CLUSTER_CONDITIONAL = 1;
    public static final int LIN_CLUSTER_CONDITIONAL__GCHECKSUM = 0;
    public static final int LIN_CLUSTER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int LIN_CLUSTER_CONDITIONAL__CHECKSUM = 2;
    public static final int LIN_CLUSTER_CONDITIONAL__TIMESTAMP = 3;
    public static final int LIN_CLUSTER_CONDITIONAL__PHYSICAL_CHANNELS = 4;
    public static final int LIN_CLUSTER_CONDITIONAL__PROTOCOL_NAME = 5;
    public static final int LIN_CLUSTER_CONDITIONAL__PROTOCOL_VERSION = 6;
    public static final int LIN_CLUSTER_CONDITIONAL__SPEED = 7;
    public static final int LIN_CLUSTER_CONDITIONAL__LIN_CLUSTER = 8;
    public static final int LIN_CLUSTER_CONDITIONAL__VARIATION_POINT = 9;
    public static final int LIN_CLUSTER_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int LIN_COMMUNICATION_CONNECTOR = 3;
    public static final int LIN_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int LIN_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int LIN_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int LIN_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int LIN_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int LIN_COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int LIN_COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int LIN_COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int LIN_COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int LIN_COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int LIN_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int LIN_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int LIN_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int LIN_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int LIN_COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int LIN_COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int LIN_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int LIN_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int LIN_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int LIN_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int LIN_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int LIN_COMMUNICATION_CONNECTOR__INITIAL_NAD = 22;
    public static final int LIN_COMMUNICATION_CONNECTOR__LIN_CONFIGURABLE_FRAMES = 23;
    public static final int LIN_COMMUNICATION_CONNECTOR__LIN_ORDERED_CONFIGURABLE_FRAMES = 24;
    public static final int LIN_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 25;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME = 4;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__GCHECKSUM = 0;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__GTIMESTAMP = 1;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__CHECKSUM = 2;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__TIMESTAMP = 3;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__LIN_COMMUNICATION_CONNECTOR = 4;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__FRAME = 5;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME__INDEX = 6;
    public static final int LIN_ORDERED_CONFIGURABLE_FRAME_FEATURE_COUNT = 7;
    public static final int LIN_CONFIGURABLE_FRAME = 5;
    public static final int LIN_CONFIGURABLE_FRAME__GCHECKSUM = 0;
    public static final int LIN_CONFIGURABLE_FRAME__GTIMESTAMP = 1;
    public static final int LIN_CONFIGURABLE_FRAME__CHECKSUM = 2;
    public static final int LIN_CONFIGURABLE_FRAME__TIMESTAMP = 3;
    public static final int LIN_CONFIGURABLE_FRAME__LIN_COMMUNICATION_CONNECTOR = 4;
    public static final int LIN_CONFIGURABLE_FRAME__FRAME = 5;
    public static final int LIN_CONFIGURABLE_FRAME__MESSAGE_ID = 6;
    public static final int LIN_CONFIGURABLE_FRAME_FEATURE_COUNT = 7;
    public static final int LIN_COMMUNICATION_CONTROLLER = 6;
    public static final int LIN_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int LIN_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int LIN_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int LIN_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int LIN_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int LIN_COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int LIN_COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int LIN_COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int LIN_COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int LIN_COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int LIN_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int LIN_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int LIN_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int LIN_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int LIN_COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int LIN_COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int LIN_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int LIN_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int LIN_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 19;
    public static final int LIN_MASTER = 7;
    public static final int LIN_MASTER__GCHECKSUM = 0;
    public static final int LIN_MASTER__GTIMESTAMP = 1;
    public static final int LIN_MASTER__CHECKSUM = 2;
    public static final int LIN_MASTER__TIMESTAMP = 3;
    public static final int LIN_MASTER__GSHORT_NAME = 4;
    public static final int LIN_MASTER__SHORT_NAME = 5;
    public static final int LIN_MASTER__LONG_NAME = 6;
    public static final int LIN_MASTER__GUUID = 7;
    public static final int LIN_MASTER__GCATEGORY = 8;
    public static final int LIN_MASTER__GDESC = 9;
    public static final int LIN_MASTER__DESC = 10;
    public static final int LIN_MASTER__CATEGORY = 11;
    public static final int LIN_MASTER__ADMIN_DATA = 12;
    public static final int LIN_MASTER__INTRODUCTION = 13;
    public static final int LIN_MASTER__ANNOTATIONS = 14;
    public static final int LIN_MASTER__UUID = 15;
    public static final int LIN_MASTER__ALL_EXTENSIONS = 16;
    public static final int LIN_MASTER__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_MASTER__ECU_INSTANCE = 18;
    public static final int LIN_MASTER__LIN_MASTER_VARIANTS = 19;
    public static final int LIN_MASTER_FEATURE_COUNT = 20;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT = 10;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT__PROTOCOL_VERSION = 4;
    public static final int LIN_COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 5;
    public static final int LIN_MASTER_CONTENT = 9;
    public static final int LIN_MASTER_CONTENT__GCHECKSUM = 0;
    public static final int LIN_MASTER_CONTENT__GTIMESTAMP = 1;
    public static final int LIN_MASTER_CONTENT__CHECKSUM = 2;
    public static final int LIN_MASTER_CONTENT__TIMESTAMP = 3;
    public static final int LIN_MASTER_CONTENT__PROTOCOL_VERSION = 4;
    public static final int LIN_MASTER_CONTENT__TIME_BASE = 5;
    public static final int LIN_MASTER_CONTENT__TIME_BASE_JITTER = 6;
    public static final int LIN_MASTER_CONTENT_FEATURE_COUNT = 7;
    public static final int LIN_MASTER_CONDITIONAL = 8;
    public static final int LIN_MASTER_CONDITIONAL__GCHECKSUM = 0;
    public static final int LIN_MASTER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int LIN_MASTER_CONDITIONAL__CHECKSUM = 2;
    public static final int LIN_MASTER_CONDITIONAL__TIMESTAMP = 3;
    public static final int LIN_MASTER_CONDITIONAL__PROTOCOL_VERSION = 4;
    public static final int LIN_MASTER_CONDITIONAL__TIME_BASE = 5;
    public static final int LIN_MASTER_CONDITIONAL__TIME_BASE_JITTER = 6;
    public static final int LIN_MASTER_CONDITIONAL__LIN_MASTER = 7;
    public static final int LIN_MASTER_CONDITIONAL__VARIATION_POINT = 8;
    public static final int LIN_MASTER_CONDITIONAL_FEATURE_COUNT = 9;
    public static final int LIN_PHYSICAL_CHANNEL = 11;
    public static final int LIN_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int LIN_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int LIN_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int LIN_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int LIN_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int LIN_PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int LIN_PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int LIN_PHYSICAL_CHANNEL__GUUID = 7;
    public static final int LIN_PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int LIN_PHYSICAL_CHANNEL__GDESC = 9;
    public static final int LIN_PHYSICAL_CHANNEL__DESC = 10;
    public static final int LIN_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int LIN_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int LIN_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int LIN_PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int LIN_PHYSICAL_CHANNEL__UUID = 15;
    public static final int LIN_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int LIN_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int LIN_PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int LIN_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int LIN_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int LIN_PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int LIN_PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int LIN_PHYSICAL_CHANNEL__SCHEDULE_TABLES = 24;
    public static final int LIN_PHYSICAL_CHANNEL_FEATURE_COUNT = 25;
    public static final int LIN_SLAVE_CONTENT = 12;
    public static final int LIN_SLAVE_CONTENT__GCHECKSUM = 0;
    public static final int LIN_SLAVE_CONTENT__GTIMESTAMP = 1;
    public static final int LIN_SLAVE_CONTENT__CHECKSUM = 2;
    public static final int LIN_SLAVE_CONTENT__TIMESTAMP = 3;
    public static final int LIN_SLAVE_CONTENT__PROTOCOL_VERSION = 4;
    public static final int LIN_SLAVE_CONTENT__CONFIGURED_NAD = 5;
    public static final int LIN_SLAVE_CONTENT__FUNCTION_ID = 6;
    public static final int LIN_SLAVE_CONTENT__LIN_ERROR_RESPONSE = 7;
    public static final int LIN_SLAVE_CONTENT__SUPPLIER_ID = 8;
    public static final int LIN_SLAVE_CONTENT__VARIANT_ID = 9;
    public static final int LIN_SLAVE_CONTENT_FEATURE_COUNT = 10;
    public static final int LIN_SLAVE_CONDITIONAL = 13;
    public static final int LIN_SLAVE_CONDITIONAL__GCHECKSUM = 0;
    public static final int LIN_SLAVE_CONDITIONAL__GTIMESTAMP = 1;
    public static final int LIN_SLAVE_CONDITIONAL__CHECKSUM = 2;
    public static final int LIN_SLAVE_CONDITIONAL__TIMESTAMP = 3;
    public static final int LIN_SLAVE_CONDITIONAL__PROTOCOL_VERSION = 4;
    public static final int LIN_SLAVE_CONDITIONAL__CONFIGURED_NAD = 5;
    public static final int LIN_SLAVE_CONDITIONAL__FUNCTION_ID = 6;
    public static final int LIN_SLAVE_CONDITIONAL__LIN_ERROR_RESPONSE = 7;
    public static final int LIN_SLAVE_CONDITIONAL__SUPPLIER_ID = 8;
    public static final int LIN_SLAVE_CONDITIONAL__VARIANT_ID = 9;
    public static final int LIN_SLAVE_CONDITIONAL__LIN_SLAVE = 10;
    public static final int LIN_SLAVE_CONDITIONAL__VARIATION_POINT = 11;
    public static final int LIN_SLAVE_CONDITIONAL_FEATURE_COUNT = 12;
    public static final int LIN_SLAVE = 14;
    public static final int LIN_SLAVE__GCHECKSUM = 0;
    public static final int LIN_SLAVE__GTIMESTAMP = 1;
    public static final int LIN_SLAVE__CHECKSUM = 2;
    public static final int LIN_SLAVE__TIMESTAMP = 3;
    public static final int LIN_SLAVE__GSHORT_NAME = 4;
    public static final int LIN_SLAVE__SHORT_NAME = 5;
    public static final int LIN_SLAVE__LONG_NAME = 6;
    public static final int LIN_SLAVE__GUUID = 7;
    public static final int LIN_SLAVE__GCATEGORY = 8;
    public static final int LIN_SLAVE__GDESC = 9;
    public static final int LIN_SLAVE__DESC = 10;
    public static final int LIN_SLAVE__CATEGORY = 11;
    public static final int LIN_SLAVE__ADMIN_DATA = 12;
    public static final int LIN_SLAVE__INTRODUCTION = 13;
    public static final int LIN_SLAVE__ANNOTATIONS = 14;
    public static final int LIN_SLAVE__UUID = 15;
    public static final int LIN_SLAVE__ALL_EXTENSIONS = 16;
    public static final int LIN_SLAVE__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_SLAVE__ECU_INSTANCE = 18;
    public static final int LIN_SLAVE__LIN_SLAVE_VARIANTS = 19;
    public static final int LIN_SLAVE_FEATURE_COUNT = 20;

    public EClass getLinCluster();

    public EReference getLinCluster_LinClusterVariants();

    public EClass getLinClusterConditional();

    public EReference getLinClusterConditional_LinCluster();

    public EReference getLinClusterConditional_VariationPoint();

    public EClass getLinClusterContent();

    public EClass getLinCommunicationConnector();

    public EAttribute getLinCommunicationConnector_InitialNad();

    public EReference getLinCommunicationConnector_LinConfigurableFrames();

    public EReference getLinCommunicationConnector_LinOrderedConfigurableFrames();

    public EClass getLinOrderedConfigurableFrame();

    public EReference getLinOrderedConfigurableFrame_LinCommunicationConnector();

    public EReference getLinOrderedConfigurableFrame_Frame();

    public EAttribute getLinOrderedConfigurableFrame_Index();

    public EClass getLinConfigurableFrame();

    public EReference getLinConfigurableFrame_LinCommunicationConnector();

    public EReference getLinConfigurableFrame_Frame();

    public EAttribute getLinConfigurableFrame_MessageId();

    public EClass getLinCommunicationController();

    public EClass getLinMaster();

    public EReference getLinMaster_LinMasterVariants();

    public EClass getLinMasterConditional();

    public EReference getLinMasterConditional_LinMaster();

    public EReference getLinMasterConditional_VariationPoint();

    public EClass getLinMasterContent();

    public EAttribute getLinMasterContent_TimeBase();

    public EAttribute getLinMasterContent_TimeBaseJitter();

    public EClass getLinCommunicationControllerContent();

    public EAttribute getLinCommunicationControllerContent_ProtocolVersion();

    public EClass getLinPhysicalChannel();

    public EReference getLinPhysicalChannel_ScheduleTables();

    public EClass getLinSlaveContent();

    public EAttribute getLinSlaveContent_ConfiguredNad();

    public EAttribute getLinSlaveContent_FunctionId();

    public EReference getLinSlaveContent_LinErrorResponse();

    public EAttribute getLinSlaveContent_SupplierId();

    public EAttribute getLinSlaveContent_VariantId();

    public EClass getLinSlaveConditional();

    public EReference getLinSlaveConditional_LinSlave();

    public EReference getLinSlaveConditional_VariationPoint();

    public EClass getLinSlave();

    public EReference getLinSlave_LinSlaveVariants();

    public LintopologyFactory getLintopologyFactory();

    public static interface Literals {
        public static final EClass LIN_CLUSTER = eINSTANCE.getLinCluster();
        public static final EReference LIN_CLUSTER__LIN_CLUSTER_VARIANTS = eINSTANCE.getLinCluster_LinClusterVariants();
        public static final EClass LIN_CLUSTER_CONDITIONAL = eINSTANCE.getLinClusterConditional();
        public static final EReference LIN_CLUSTER_CONDITIONAL__LIN_CLUSTER = eINSTANCE.getLinClusterConditional_LinCluster();
        public static final EReference LIN_CLUSTER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getLinClusterConditional_VariationPoint();
        public static final EClass LIN_CLUSTER_CONTENT = eINSTANCE.getLinClusterContent();
        public static final EClass LIN_COMMUNICATION_CONNECTOR = eINSTANCE.getLinCommunicationConnector();
        public static final EAttribute LIN_COMMUNICATION_CONNECTOR__INITIAL_NAD = eINSTANCE.getLinCommunicationConnector_InitialNad();
        public static final EReference LIN_COMMUNICATION_CONNECTOR__LIN_CONFIGURABLE_FRAMES = eINSTANCE.getLinCommunicationConnector_LinConfigurableFrames();
        public static final EReference LIN_COMMUNICATION_CONNECTOR__LIN_ORDERED_CONFIGURABLE_FRAMES = eINSTANCE.getLinCommunicationConnector_LinOrderedConfigurableFrames();
        public static final EClass LIN_ORDERED_CONFIGURABLE_FRAME = eINSTANCE.getLinOrderedConfigurableFrame();
        public static final EReference LIN_ORDERED_CONFIGURABLE_FRAME__LIN_COMMUNICATION_CONNECTOR = eINSTANCE.getLinOrderedConfigurableFrame_LinCommunicationConnector();
        public static final EReference LIN_ORDERED_CONFIGURABLE_FRAME__FRAME = eINSTANCE.getLinOrderedConfigurableFrame_Frame();
        public static final EAttribute LIN_ORDERED_CONFIGURABLE_FRAME__INDEX = eINSTANCE.getLinOrderedConfigurableFrame_Index();
        public static final EClass LIN_CONFIGURABLE_FRAME = eINSTANCE.getLinConfigurableFrame();
        public static final EReference LIN_CONFIGURABLE_FRAME__LIN_COMMUNICATION_CONNECTOR = eINSTANCE.getLinConfigurableFrame_LinCommunicationConnector();
        public static final EReference LIN_CONFIGURABLE_FRAME__FRAME = eINSTANCE.getLinConfigurableFrame_Frame();
        public static final EAttribute LIN_CONFIGURABLE_FRAME__MESSAGE_ID = eINSTANCE.getLinConfigurableFrame_MessageId();
        public static final EClass LIN_COMMUNICATION_CONTROLLER = eINSTANCE.getLinCommunicationController();
        public static final EClass LIN_MASTER = eINSTANCE.getLinMaster();
        public static final EReference LIN_MASTER__LIN_MASTER_VARIANTS = eINSTANCE.getLinMaster_LinMasterVariants();
        public static final EClass LIN_MASTER_CONDITIONAL = eINSTANCE.getLinMasterConditional();
        public static final EReference LIN_MASTER_CONDITIONAL__LIN_MASTER = eINSTANCE.getLinMasterConditional_LinMaster();
        public static final EReference LIN_MASTER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getLinMasterConditional_VariationPoint();
        public static final EClass LIN_MASTER_CONTENT = eINSTANCE.getLinMasterContent();
        public static final EAttribute LIN_MASTER_CONTENT__TIME_BASE = eINSTANCE.getLinMasterContent_TimeBase();
        public static final EAttribute LIN_MASTER_CONTENT__TIME_BASE_JITTER = eINSTANCE.getLinMasterContent_TimeBaseJitter();
        public static final EClass LIN_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getLinCommunicationControllerContent();
        public static final EAttribute LIN_COMMUNICATION_CONTROLLER_CONTENT__PROTOCOL_VERSION = eINSTANCE.getLinCommunicationControllerContent_ProtocolVersion();
        public static final EClass LIN_PHYSICAL_CHANNEL = eINSTANCE.getLinPhysicalChannel();
        public static final EReference LIN_PHYSICAL_CHANNEL__SCHEDULE_TABLES = eINSTANCE.getLinPhysicalChannel_ScheduleTables();
        public static final EClass LIN_SLAVE_CONTENT = eINSTANCE.getLinSlaveContent();
        public static final EAttribute LIN_SLAVE_CONTENT__CONFIGURED_NAD = eINSTANCE.getLinSlaveContent_ConfiguredNad();
        public static final EAttribute LIN_SLAVE_CONTENT__FUNCTION_ID = eINSTANCE.getLinSlaveContent_FunctionId();
        public static final EReference LIN_SLAVE_CONTENT__LIN_ERROR_RESPONSE = eINSTANCE.getLinSlaveContent_LinErrorResponse();
        public static final EAttribute LIN_SLAVE_CONTENT__SUPPLIER_ID = eINSTANCE.getLinSlaveContent_SupplierId();
        public static final EAttribute LIN_SLAVE_CONTENT__VARIANT_ID = eINSTANCE.getLinSlaveContent_VariantId();
        public static final EClass LIN_SLAVE_CONDITIONAL = eINSTANCE.getLinSlaveConditional();
        public static final EReference LIN_SLAVE_CONDITIONAL__LIN_SLAVE = eINSTANCE.getLinSlaveConditional_LinSlave();
        public static final EReference LIN_SLAVE_CONDITIONAL__VARIATION_POINT = eINSTANCE.getLinSlaveConditional_VariationPoint();
        public static final EClass LIN_SLAVE = eINSTANCE.getLinSlave();
        public static final EReference LIN_SLAVE__LIN_SLAVE_VARIANTS = eINSTANCE.getLinSlave_LinSlaveVariants();
    }
}

