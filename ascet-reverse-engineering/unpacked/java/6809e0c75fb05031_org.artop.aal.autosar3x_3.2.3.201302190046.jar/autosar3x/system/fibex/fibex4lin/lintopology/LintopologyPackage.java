/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.fibex.fibex4lin.lintopology;

import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyFactory;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LintopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LintopologyPackage
extends EPackage {
    public static final String eNAME = "lintopology";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fl/lt";
    public static final String eNS_PREFIX = "";
    public static final LintopologyPackage eINSTANCE = LintopologyPackageImpl.init();
    public static final int LIN_CLUSTER = 0;
    public static final int LIN_CLUSTER__GCHECKSUM = 0;
    public static final int LIN_CLUSTER__GTIMESTAMP = 1;
    public static final int LIN_CLUSTER__CHECKSUM = 2;
    public static final int LIN_CLUSTER__TIMESTAMP = 3;
    public static final int LIN_CLUSTER__GSHORT_NAME = 4;
    public static final int LIN_CLUSTER__GUUID = 5;
    public static final int LIN_CLUSTER__GCATEGORY = 6;
    public static final int LIN_CLUSTER__GDESC = 7;
    public static final int LIN_CLUSTER__SHORT_NAME = 8;
    public static final int LIN_CLUSTER__LONG_NAME = 9;
    public static final int LIN_CLUSTER__DESC = 10;
    public static final int LIN_CLUSTER__CATEGORY = 11;
    public static final int LIN_CLUSTER__ADMIN_DATA = 12;
    public static final int LIN_CLUSTER__INTRODUCTION = 13;
    public static final int LIN_CLUSTER__UUID = 14;
    public static final int LIN_CLUSTER__ALL_EXTENSIONS = 15;
    public static final int LIN_CLUSTER__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_CLUSTER__GAR_PACKAGE = 17;
    public static final int LIN_CLUSTER__AR_PACKAGE = 18;
    public static final int LIN_CLUSTER__MAX_FRAME_LENGTH = 19;
    public static final int LIN_CLUSTER__NM_NODE_DETECTION_ENABLED = 20;
    public static final int LIN_CLUSTER__NM_NODE_ID_ENABLED = 21;
    public static final int LIN_CLUSTER__NM_REPEAT_MESSAGE_SUPPORT = 22;
    public static final int LIN_CLUSTER__PHYSICAL_CHANNELS = 23;
    public static final int LIN_CLUSTER__PROTOCOL_NAME = 24;
    public static final int LIN_CLUSTER__PROTOCOL_VERSION = 25;
    public static final int LIN_CLUSTER__SPEED = 26;
    public static final int LIN_CLUSTER__SCHEDULE_TABLES = 27;
    public static final int LIN_CLUSTER_FEATURE_COUNT = 28;
    public static final int LIN_COMMUNICATION_CONTROLLER = 3;
    public static final int LIN_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int LIN_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int LIN_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int LIN_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int LIN_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int LIN_COMMUNICATION_CONTROLLER__GUUID = 5;
    public static final int LIN_COMMUNICATION_CONTROLLER__GCATEGORY = 6;
    public static final int LIN_COMMUNICATION_CONTROLLER__GDESC = 7;
    public static final int LIN_COMMUNICATION_CONTROLLER__SHORT_NAME = 8;
    public static final int LIN_COMMUNICATION_CONTROLLER__LONG_NAME = 9;
    public static final int LIN_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int LIN_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int LIN_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int LIN_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int LIN_COMMUNICATION_CONTROLLER__UUID = 14;
    public static final int LIN_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 15;
    public static final int LIN_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 17;
    public static final int LIN_COMMUNICATION_CONTROLLER__WAKE_UP_BY_CONTROLLER_SUPPORTED = 18;
    public static final int LIN_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 19;
    public static final int LIN_MASTER = 1;
    public static final int LIN_MASTER__GCHECKSUM = 0;
    public static final int LIN_MASTER__GTIMESTAMP = 1;
    public static final int LIN_MASTER__CHECKSUM = 2;
    public static final int LIN_MASTER__TIMESTAMP = 3;
    public static final int LIN_MASTER__GSHORT_NAME = 4;
    public static final int LIN_MASTER__GUUID = 5;
    public static final int LIN_MASTER__GCATEGORY = 6;
    public static final int LIN_MASTER__GDESC = 7;
    public static final int LIN_MASTER__SHORT_NAME = 8;
    public static final int LIN_MASTER__LONG_NAME = 9;
    public static final int LIN_MASTER__DESC = 10;
    public static final int LIN_MASTER__CATEGORY = 11;
    public static final int LIN_MASTER__ADMIN_DATA = 12;
    public static final int LIN_MASTER__INTRODUCTION = 13;
    public static final int LIN_MASTER__UUID = 14;
    public static final int LIN_MASTER__ALL_EXTENSIONS = 15;
    public static final int LIN_MASTER__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_MASTER__ECU_INSTANCE = 17;
    public static final int LIN_MASTER__WAKE_UP_BY_CONTROLLER_SUPPORTED = 18;
    public static final int LIN_MASTER__TIME_BASE = 19;
    public static final int LIN_MASTER__TIME_BASE_JITTER = 20;
    public static final int LIN_MASTER_FEATURE_COUNT = 21;
    public static final int LIN_SLAVE = 2;
    public static final int LIN_SLAVE__GCHECKSUM = 0;
    public static final int LIN_SLAVE__GTIMESTAMP = 1;
    public static final int LIN_SLAVE__CHECKSUM = 2;
    public static final int LIN_SLAVE__TIMESTAMP = 3;
    public static final int LIN_SLAVE__GSHORT_NAME = 4;
    public static final int LIN_SLAVE__GUUID = 5;
    public static final int LIN_SLAVE__GCATEGORY = 6;
    public static final int LIN_SLAVE__GDESC = 7;
    public static final int LIN_SLAVE__SHORT_NAME = 8;
    public static final int LIN_SLAVE__LONG_NAME = 9;
    public static final int LIN_SLAVE__DESC = 10;
    public static final int LIN_SLAVE__CATEGORY = 11;
    public static final int LIN_SLAVE__ADMIN_DATA = 12;
    public static final int LIN_SLAVE__INTRODUCTION = 13;
    public static final int LIN_SLAVE__UUID = 14;
    public static final int LIN_SLAVE__ALL_EXTENSIONS = 15;
    public static final int LIN_SLAVE__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_SLAVE__ECU_INSTANCE = 17;
    public static final int LIN_SLAVE__WAKE_UP_BY_CONTROLLER_SUPPORTED = 18;
    public static final int LIN_SLAVE__CONFIGURED_NAD = 19;
    public static final int LIN_SLAVE__LIN_ERROR_RESPONSE = 20;
    public static final int LIN_SLAVE__PROTOCOL_VERSION = 21;
    public static final int LIN_SLAVE_FEATURE_COUNT = 22;

    public EClass getLinCluster();

    public EReference getLinCluster_ScheduleTables();

    public EClass getLinMaster();

    public EAttribute getLinMaster_TimeBase();

    public EAttribute getLinMaster_TimeBaseJitter();

    public EClass getLinSlave();

    public EAttribute getLinSlave_ConfiguredNad();

    public EReference getLinSlave_LinErrorResponse();

    public EAttribute getLinSlave_ProtocolVersion();

    public EClass getLinCommunicationController();

    public LintopologyFactory getLintopologyFactory();

    public static interface Literals {
        public static final EClass LIN_CLUSTER = eINSTANCE.getLinCluster();
        public static final EReference LIN_CLUSTER__SCHEDULE_TABLES = eINSTANCE.getLinCluster_ScheduleTables();
        public static final EClass LIN_MASTER = eINSTANCE.getLinMaster();
        public static final EAttribute LIN_MASTER__TIME_BASE = eINSTANCE.getLinMaster_TimeBase();
        public static final EAttribute LIN_MASTER__TIME_BASE_JITTER = eINSTANCE.getLinMaster_TimeBaseJitter();
        public static final EClass LIN_SLAVE = eINSTANCE.getLinSlave();
        public static final EAttribute LIN_SLAVE__CONFIGURED_NAD = eINSTANCE.getLinSlave_ConfiguredNad();
        public static final EReference LIN_SLAVE__LIN_ERROR_RESPONSE = eINSTANCE.getLinSlave_LinErrorResponse();
        public static final EAttribute LIN_SLAVE__PROTOCOL_VERSION = eINSTANCE.getLinSlave_ProtocolVersion();
        public static final EClass LIN_COMMUNICATION_CONTROLLER = eINSTANCE.getLinCommunicationController();
    }
}

