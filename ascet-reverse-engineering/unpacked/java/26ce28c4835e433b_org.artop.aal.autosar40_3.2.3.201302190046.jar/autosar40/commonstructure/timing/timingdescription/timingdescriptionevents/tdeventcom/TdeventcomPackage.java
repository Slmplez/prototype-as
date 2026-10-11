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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TdeventcomPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TdeventcomPackage
extends EPackage {
    public static final String eNAME = "tdeventcom";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecom";
    public static final String eNS_PREFIX = "";
    public static final TdeventcomPackage eINSTANCE = TdeventcomPackageImpl.init();
    public static final int TD_EVENT_COM = 0;
    public static final int TD_EVENT_COM__GCHECKSUM = 0;
    public static final int TD_EVENT_COM__GTIMESTAMP = 1;
    public static final int TD_EVENT_COM__CHECKSUM = 2;
    public static final int TD_EVENT_COM__TIMESTAMP = 3;
    public static final int TD_EVENT_COM__GSHORT_NAME = 4;
    public static final int TD_EVENT_COM__SHORT_NAME = 5;
    public static final int TD_EVENT_COM__LONG_NAME = 6;
    public static final int TD_EVENT_COM__GUUID = 7;
    public static final int TD_EVENT_COM__GCATEGORY = 8;
    public static final int TD_EVENT_COM__GDESC = 9;
    public static final int TD_EVENT_COM__DESC = 10;
    public static final int TD_EVENT_COM__CATEGORY = 11;
    public static final int TD_EVENT_COM__ADMIN_DATA = 12;
    public static final int TD_EVENT_COM__INTRODUCTION = 13;
    public static final int TD_EVENT_COM__ANNOTATIONS = 14;
    public static final int TD_EVENT_COM__UUID = 15;
    public static final int TD_EVENT_COM__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_COM__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_COM__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_COM__VARIATION_POINT = 19;
    public static final int TD_EVENT_COM__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_COM__ECU_INSTANCE = 21;
    public static final int TD_EVENT_COM_FEATURE_COUNT = 22;
    public static final int TD_EVENT_CYCLE_START = 1;
    public static final int TD_EVENT_CYCLE_START__GCHECKSUM = 0;
    public static final int TD_EVENT_CYCLE_START__GTIMESTAMP = 1;
    public static final int TD_EVENT_CYCLE_START__CHECKSUM = 2;
    public static final int TD_EVENT_CYCLE_START__TIMESTAMP = 3;
    public static final int TD_EVENT_CYCLE_START__GSHORT_NAME = 4;
    public static final int TD_EVENT_CYCLE_START__SHORT_NAME = 5;
    public static final int TD_EVENT_CYCLE_START__LONG_NAME = 6;
    public static final int TD_EVENT_CYCLE_START__GUUID = 7;
    public static final int TD_EVENT_CYCLE_START__GCATEGORY = 8;
    public static final int TD_EVENT_CYCLE_START__GDESC = 9;
    public static final int TD_EVENT_CYCLE_START__DESC = 10;
    public static final int TD_EVENT_CYCLE_START__CATEGORY = 11;
    public static final int TD_EVENT_CYCLE_START__ADMIN_DATA = 12;
    public static final int TD_EVENT_CYCLE_START__INTRODUCTION = 13;
    public static final int TD_EVENT_CYCLE_START__ANNOTATIONS = 14;
    public static final int TD_EVENT_CYCLE_START__UUID = 15;
    public static final int TD_EVENT_CYCLE_START__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_CYCLE_START__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_CYCLE_START__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_CYCLE_START__VARIATION_POINT = 19;
    public static final int TD_EVENT_CYCLE_START__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_CYCLE_START__ECU_INSTANCE = 21;
    public static final int TD_EVENT_CYCLE_START__CYCLE_REPETITION = 22;
    public static final int TD_EVENT_CYCLE_START_FEATURE_COUNT = 23;
    public static final int TD_EVENT_FRAME = 2;
    public static final int TD_EVENT_FRAME__GCHECKSUM = 0;
    public static final int TD_EVENT_FRAME__GTIMESTAMP = 1;
    public static final int TD_EVENT_FRAME__CHECKSUM = 2;
    public static final int TD_EVENT_FRAME__TIMESTAMP = 3;
    public static final int TD_EVENT_FRAME__GSHORT_NAME = 4;
    public static final int TD_EVENT_FRAME__SHORT_NAME = 5;
    public static final int TD_EVENT_FRAME__LONG_NAME = 6;
    public static final int TD_EVENT_FRAME__GUUID = 7;
    public static final int TD_EVENT_FRAME__GCATEGORY = 8;
    public static final int TD_EVENT_FRAME__GDESC = 9;
    public static final int TD_EVENT_FRAME__DESC = 10;
    public static final int TD_EVENT_FRAME__CATEGORY = 11;
    public static final int TD_EVENT_FRAME__ADMIN_DATA = 12;
    public static final int TD_EVENT_FRAME__INTRODUCTION = 13;
    public static final int TD_EVENT_FRAME__ANNOTATIONS = 14;
    public static final int TD_EVENT_FRAME__UUID = 15;
    public static final int TD_EVENT_FRAME__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_FRAME__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_FRAME__VARIATION_POINT = 19;
    public static final int TD_EVENT_FRAME__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_FRAME__ECU_INSTANCE = 21;
    public static final int TD_EVENT_FRAME__FRAME = 22;
    public static final int TD_EVENT_FRAME__PHYSICAL_CHANNEL = 23;
    public static final int TD_EVENT_FRAME__TD_EVENT_TYPE = 24;
    public static final int TD_EVENT_FRAME_FEATURE_COUNT = 25;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START = 3;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__GCHECKSUM = 0;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__GTIMESTAMP = 1;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__CHECKSUM = 2;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__TIMESTAMP = 3;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__GSHORT_NAME = 4;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__SHORT_NAME = 5;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__LONG_NAME = 6;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__GUUID = 7;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__GCATEGORY = 8;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__GDESC = 9;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__DESC = 10;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__CATEGORY = 11;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__ADMIN_DATA = 12;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__INTRODUCTION = 13;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__ANNOTATIONS = 14;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__UUID = 15;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__VARIATION_POINT = 19;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__ECU_INSTANCE = 21;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__CYCLE_REPETITION = 22;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START__FR_CLUSTER = 23;
    public static final int TD_EVENT_FR_CLUSTER_CYCLE_START_FEATURE_COUNT = 24;
    public static final int TD_EVENT_IPDU = 4;
    public static final int TD_EVENT_IPDU__GCHECKSUM = 0;
    public static final int TD_EVENT_IPDU__GTIMESTAMP = 1;
    public static final int TD_EVENT_IPDU__CHECKSUM = 2;
    public static final int TD_EVENT_IPDU__TIMESTAMP = 3;
    public static final int TD_EVENT_IPDU__GSHORT_NAME = 4;
    public static final int TD_EVENT_IPDU__SHORT_NAME = 5;
    public static final int TD_EVENT_IPDU__LONG_NAME = 6;
    public static final int TD_EVENT_IPDU__GUUID = 7;
    public static final int TD_EVENT_IPDU__GCATEGORY = 8;
    public static final int TD_EVENT_IPDU__GDESC = 9;
    public static final int TD_EVENT_IPDU__DESC = 10;
    public static final int TD_EVENT_IPDU__CATEGORY = 11;
    public static final int TD_EVENT_IPDU__ADMIN_DATA = 12;
    public static final int TD_EVENT_IPDU__INTRODUCTION = 13;
    public static final int TD_EVENT_IPDU__ANNOTATIONS = 14;
    public static final int TD_EVENT_IPDU__UUID = 15;
    public static final int TD_EVENT_IPDU__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_IPDU__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_IPDU__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_IPDU__VARIATION_POINT = 19;
    public static final int TD_EVENT_IPDU__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_IPDU__ECU_INSTANCE = 21;
    public static final int TD_EVENT_IPDU__IPDU = 22;
    public static final int TD_EVENT_IPDU__PHYSICAL_CHANNEL = 23;
    public static final int TD_EVENT_IPDU__TD_EVENT_TYPE = 24;
    public static final int TD_EVENT_IPDU_FEATURE_COUNT = 25;
    public static final int TD_EVENT_ISIGNAL = 5;
    public static final int TD_EVENT_ISIGNAL__GCHECKSUM = 0;
    public static final int TD_EVENT_ISIGNAL__GTIMESTAMP = 1;
    public static final int TD_EVENT_ISIGNAL__CHECKSUM = 2;
    public static final int TD_EVENT_ISIGNAL__TIMESTAMP = 3;
    public static final int TD_EVENT_ISIGNAL__GSHORT_NAME = 4;
    public static final int TD_EVENT_ISIGNAL__SHORT_NAME = 5;
    public static final int TD_EVENT_ISIGNAL__LONG_NAME = 6;
    public static final int TD_EVENT_ISIGNAL__GUUID = 7;
    public static final int TD_EVENT_ISIGNAL__GCATEGORY = 8;
    public static final int TD_EVENT_ISIGNAL__GDESC = 9;
    public static final int TD_EVENT_ISIGNAL__DESC = 10;
    public static final int TD_EVENT_ISIGNAL__CATEGORY = 11;
    public static final int TD_EVENT_ISIGNAL__ADMIN_DATA = 12;
    public static final int TD_EVENT_ISIGNAL__INTRODUCTION = 13;
    public static final int TD_EVENT_ISIGNAL__ANNOTATIONS = 14;
    public static final int TD_EVENT_ISIGNAL__UUID = 15;
    public static final int TD_EVENT_ISIGNAL__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_ISIGNAL__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_ISIGNAL__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_ISIGNAL__VARIATION_POINT = 19;
    public static final int TD_EVENT_ISIGNAL__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_ISIGNAL__ECU_INSTANCE = 21;
    public static final int TD_EVENT_ISIGNAL__ISIGNAL = 22;
    public static final int TD_EVENT_ISIGNAL__PHYSICAL_CHANNEL = 23;
    public static final int TD_EVENT_ISIGNAL__TD_EVENT_TYPE = 24;
    public static final int TD_EVENT_ISIGNAL_FEATURE_COUNT = 25;
    public static final int TD_EVENT_TT_CAN_CYCLE_START = 6;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__GCHECKSUM = 0;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__GTIMESTAMP = 1;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__CHECKSUM = 2;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__TIMESTAMP = 3;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__GSHORT_NAME = 4;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__SHORT_NAME = 5;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__LONG_NAME = 6;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__GUUID = 7;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__GCATEGORY = 8;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__GDESC = 9;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__DESC = 10;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__CATEGORY = 11;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__ADMIN_DATA = 12;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__INTRODUCTION = 13;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__ANNOTATIONS = 14;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__UUID = 15;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__VARIATION_POINT = 19;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__ECU_INSTANCE = 21;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__CYCLE_REPETITION = 22;
    public static final int TD_EVENT_TT_CAN_CYCLE_START__TT_CAN_CLUSTER = 23;
    public static final int TD_EVENT_TT_CAN_CYCLE_START_FEATURE_COUNT = 24;
    public static final int TD_EVENT_FRAME_TYPE_ENUM = 7;
    public static final int TD_EVENT_IPDU_TYPE_ENUM = 8;
    public static final int TD_EVENT_ISIGNAL_TYPE_ENUM = 9;

    public EClass getTDEventCom();

    public EReference getTDEventCom_EcuInstance();

    public EClass getTDEventCycleStart();

    public EAttribute getTDEventCycleStart_CycleRepetition();

    public EClass getTDEventFrame();

    public EReference getTDEventFrame_Frame();

    public EReference getTDEventFrame_PhysicalChannel();

    public EAttribute getTDEventFrame_TdEventType();

    public EClass getTDEventFrClusterCycleStart();

    public EReference getTDEventFrClusterCycleStart_FrCluster();

    public EClass getTDEventIPdu();

    public EReference getTDEventIPdu_IPdu();

    public EReference getTDEventIPdu_PhysicalChannel();

    public EAttribute getTDEventIPdu_TdEventType();

    public EClass getTDEventISignal();

    public EReference getTDEventISignal_ISignal();

    public EReference getTDEventISignal_PhysicalChannel();

    public EAttribute getTDEventISignal_TdEventType();

    public EClass getTDEventTTCanCycleStart();

    public EReference getTDEventTTCanCycleStart_TtCanCluster();

    public EEnum getTDEventFrameTypeEnum();

    public EEnum getTDEventIPduTypeEnum();

    public EEnum getTDEventISignalTypeEnum();

    public TdeventcomFactory getTdeventcomFactory();

    public static interface Literals {
        public static final EClass TD_EVENT_COM = eINSTANCE.getTDEventCom();
        public static final EReference TD_EVENT_COM__ECU_INSTANCE = eINSTANCE.getTDEventCom_EcuInstance();
        public static final EClass TD_EVENT_CYCLE_START = eINSTANCE.getTDEventCycleStart();
        public static final EAttribute TD_EVENT_CYCLE_START__CYCLE_REPETITION = eINSTANCE.getTDEventCycleStart_CycleRepetition();
        public static final EClass TD_EVENT_FRAME = eINSTANCE.getTDEventFrame();
        public static final EReference TD_EVENT_FRAME__FRAME = eINSTANCE.getTDEventFrame_Frame();
        public static final EReference TD_EVENT_FRAME__PHYSICAL_CHANNEL = eINSTANCE.getTDEventFrame_PhysicalChannel();
        public static final EAttribute TD_EVENT_FRAME__TD_EVENT_TYPE = eINSTANCE.getTDEventFrame_TdEventType();
        public static final EClass TD_EVENT_FR_CLUSTER_CYCLE_START = eINSTANCE.getTDEventFrClusterCycleStart();
        public static final EReference TD_EVENT_FR_CLUSTER_CYCLE_START__FR_CLUSTER = eINSTANCE.getTDEventFrClusterCycleStart_FrCluster();
        public static final EClass TD_EVENT_IPDU = eINSTANCE.getTDEventIPdu();
        public static final EReference TD_EVENT_IPDU__IPDU = eINSTANCE.getTDEventIPdu_IPdu();
        public static final EReference TD_EVENT_IPDU__PHYSICAL_CHANNEL = eINSTANCE.getTDEventIPdu_PhysicalChannel();
        public static final EAttribute TD_EVENT_IPDU__TD_EVENT_TYPE = eINSTANCE.getTDEventIPdu_TdEventType();
        public static final EClass TD_EVENT_ISIGNAL = eINSTANCE.getTDEventISignal();
        public static final EReference TD_EVENT_ISIGNAL__ISIGNAL = eINSTANCE.getTDEventISignal_ISignal();
        public static final EReference TD_EVENT_ISIGNAL__PHYSICAL_CHANNEL = eINSTANCE.getTDEventISignal_PhysicalChannel();
        public static final EAttribute TD_EVENT_ISIGNAL__TD_EVENT_TYPE = eINSTANCE.getTDEventISignal_TdEventType();
        public static final EClass TD_EVENT_TT_CAN_CYCLE_START = eINSTANCE.getTDEventTTCanCycleStart();
        public static final EReference TD_EVENT_TT_CAN_CYCLE_START__TT_CAN_CLUSTER = eINSTANCE.getTDEventTTCanCycleStart_TtCanCluster();
        public static final EEnum TD_EVENT_FRAME_TYPE_ENUM = eINSTANCE.getTDEventFrameTypeEnum();
        public static final EEnum TD_EVENT_IPDU_TYPE_ENUM = eINSTANCE.getTDEventIPduTypeEnum();
        public static final EEnum TD_EVENT_ISIGNAL_TYPE_ENUM = eINSTANCE.getTDEventISignalTypeEnum();
    }
}

