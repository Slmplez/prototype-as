/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.systemsignal;

import autosar21.system.systemsignal.SystemsignalFactory;
import autosar21.system.systemsignal.impl.SystemsignalPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SystemsignalPackage
extends EPackage {
    public static final String eNAME = "systemsignal";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/ss";
    public static final String eNS_PREFIX = "";
    public static final SystemsignalPackage eINSTANCE = SystemsignalPackageImpl.init();
    public static final int CLUSTER_SIGNAL = 0;
    public static final int CLUSTER_SIGNAL__GCHECKSUM = 0;
    public static final int CLUSTER_SIGNAL__GTIMESTAMP = 1;
    public static final int CLUSTER_SIGNAL__CHECKSUM = 2;
    public static final int CLUSTER_SIGNAL__TIMESTAMP = 3;
    public static final int CLUSTER_SIGNAL__GSHORT_NAME = 4;
    public static final int CLUSTER_SIGNAL__GUUID = 5;
    public static final int CLUSTER_SIGNAL__GCATEGORY = 6;
    public static final int CLUSTER_SIGNAL__GDESC = 7;
    public static final int CLUSTER_SIGNAL__SHORT_NAME = 8;
    public static final int CLUSTER_SIGNAL__LONG_NAME = 9;
    public static final int CLUSTER_SIGNAL__DESC = 10;
    public static final int CLUSTER_SIGNAL__CATEGORY = 11;
    public static final int CLUSTER_SIGNAL__ADMIN_DATA = 12;
    public static final int CLUSTER_SIGNAL__UUID = 13;
    public static final int CLUSTER_SIGNAL__ALL_EXTENSIONS = 14;
    public static final int CLUSTER_SIGNAL__CONTAINED_EXTENSIONS = 15;
    public static final int CLUSTER_SIGNAL__PDU_PROTOTYPE = 16;
    public static final int CLUSTER_SIGNAL__RECEIVERS = 17;
    public static final int CLUSTER_SIGNAL__SIGNAL_POSITION = 18;
    public static final int CLUSTER_SIGNAL__TRANSMITTER = 19;
    public static final int CLUSTER_SIGNAL__UPDATE_INDICATION_BIT_POSITION = 20;
    public static final int CLUSTER_SIGNAL_FEATURE_COUNT = 21;
    public static final int CLUSTER_SIGNAL_TRANSMITTER = 1;
    public static final int CLUSTER_SIGNAL_TRANSMITTER__GCHECKSUM = 0;
    public static final int CLUSTER_SIGNAL_TRANSMITTER__GTIMESTAMP = 1;
    public static final int CLUSTER_SIGNAL_TRANSMITTER__CHECKSUM = 2;
    public static final int CLUSTER_SIGNAL_TRANSMITTER__TIMESTAMP = 3;
    public static final int CLUSTER_SIGNAL_TRANSMITTER__CLUSTER_SIGNAL = 4;
    public static final int CLUSTER_SIGNAL_TRANSMITTER__COMMUNICATION_PORT = 5;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_FEATURE_COUNT = 6;
    public static final int CLUSTER_SIGNAL_RECEIVER = 2;
    public static final int CLUSTER_SIGNAL_RECEIVER__GCHECKSUM = 0;
    public static final int CLUSTER_SIGNAL_RECEIVER__GTIMESTAMP = 1;
    public static final int CLUSTER_SIGNAL_RECEIVER__CHECKSUM = 2;
    public static final int CLUSTER_SIGNAL_RECEIVER__TIMESTAMP = 3;
    public static final int CLUSTER_SIGNAL_RECEIVER__CLUSTER_SIGNAL = 4;
    public static final int CLUSTER_SIGNAL_RECEIVER__COMMUNICATION_PORTS = 5;
    public static final int CLUSTER_SIGNAL_RECEIVER__TIMEOUT = 6;
    public static final int CLUSTER_SIGNAL_RECEIVER_FEATURE_COUNT = 7;
    public static final int SYSTEM_SIGNAL_GROUP = 3;
    public static final int SYSTEM_SIGNAL_GROUP__GCHECKSUM = 0;
    public static final int SYSTEM_SIGNAL_GROUP__GTIMESTAMP = 1;
    public static final int SYSTEM_SIGNAL_GROUP__CHECKSUM = 2;
    public static final int SYSTEM_SIGNAL_GROUP__TIMESTAMP = 3;
    public static final int SYSTEM_SIGNAL_GROUP__GSHORT_NAME = 4;
    public static final int SYSTEM_SIGNAL_GROUP__GUUID = 5;
    public static final int SYSTEM_SIGNAL_GROUP__GCATEGORY = 6;
    public static final int SYSTEM_SIGNAL_GROUP__GDESC = 7;
    public static final int SYSTEM_SIGNAL_GROUP__SHORT_NAME = 8;
    public static final int SYSTEM_SIGNAL_GROUP__LONG_NAME = 9;
    public static final int SYSTEM_SIGNAL_GROUP__DESC = 10;
    public static final int SYSTEM_SIGNAL_GROUP__CATEGORY = 11;
    public static final int SYSTEM_SIGNAL_GROUP__ADMIN_DATA = 12;
    public static final int SYSTEM_SIGNAL_GROUP__UUID = 13;
    public static final int SYSTEM_SIGNAL_GROUP__ALL_EXTENSIONS = 14;
    public static final int SYSTEM_SIGNAL_GROUP__CONTAINED_EXTENSIONS = 15;
    public static final int SYSTEM_SIGNAL_GROUP__GAR_PACKAGE = 16;
    public static final int SYSTEM_SIGNAL_GROUP__AR_PACKAGE = 17;
    public static final int SYSTEM_SIGNAL_GROUP__CONTAINED_SIGNALS = 18;
    public static final int SYSTEM_SIGNAL_GROUP_FEATURE_COUNT = 19;
    public static final int SYSTEM_SIGNAL = 4;
    public static final int SYSTEM_SIGNAL__GCHECKSUM = 0;
    public static final int SYSTEM_SIGNAL__GTIMESTAMP = 1;
    public static final int SYSTEM_SIGNAL__CHECKSUM = 2;
    public static final int SYSTEM_SIGNAL__TIMESTAMP = 3;
    public static final int SYSTEM_SIGNAL__GSHORT_NAME = 4;
    public static final int SYSTEM_SIGNAL__GUUID = 5;
    public static final int SYSTEM_SIGNAL__GCATEGORY = 6;
    public static final int SYSTEM_SIGNAL__GDESC = 7;
    public static final int SYSTEM_SIGNAL__SHORT_NAME = 8;
    public static final int SYSTEM_SIGNAL__LONG_NAME = 9;
    public static final int SYSTEM_SIGNAL__DESC = 10;
    public static final int SYSTEM_SIGNAL__CATEGORY = 11;
    public static final int SYSTEM_SIGNAL__ADMIN_DATA = 12;
    public static final int SYSTEM_SIGNAL__UUID = 13;
    public static final int SYSTEM_SIGNAL__ALL_EXTENSIONS = 14;
    public static final int SYSTEM_SIGNAL__CONTAINED_EXTENSIONS = 15;
    public static final int SYSTEM_SIGNAL__GAR_PACKAGE = 16;
    public static final int SYSTEM_SIGNAL__AR_PACKAGE = 17;
    public static final int SYSTEM_SIGNAL__NEEDS_UPDATE_INDICATION = 18;
    public static final int SYSTEM_SIGNAL__SIGNAL_LENGTH = 19;
    public static final int SYSTEM_SIGNAL__SIGNAL_TIMING_REQUIREMENTS = 20;
    public static final int SYSTEM_SIGNAL_FEATURE_COUNT = 21;

    public EClass getClusterSignal();

    public EReference getClusterSignal_PDUPrototype();

    public EReference getClusterSignal_Receivers();

    public EReference getClusterSignal_SignalPosition();

    public EReference getClusterSignal_Transmitter();

    public EAttribute getClusterSignal_UpdateIndicationBitPosition();

    public EClass getClusterSignalTransmitter();

    public EReference getClusterSignalTransmitter_ClusterSignal();

    public EReference getClusterSignalTransmitter_CommunicationPort();

    public EClass getClusterSignalReceiver();

    public EReference getClusterSignalReceiver_ClusterSignal();

    public EReference getClusterSignalReceiver_CommunicationPorts();

    public EAttribute getClusterSignalReceiver_Timeout();

    public EClass getSystemSignalGroup();

    public EReference getSystemSignalGroup_ContainedSignals();

    public EClass getSystemSignal();

    public EAttribute getSystemSignal_NeedsUpdateIndication();

    public EAttribute getSystemSignal_SignalLength();

    public EReference getSystemSignal_SignalTimingRequirements();

    public SystemsignalFactory getSystemsignalFactory();

    public static interface Literals {
        public static final EClass CLUSTER_SIGNAL = eINSTANCE.getClusterSignal();
        public static final EReference CLUSTER_SIGNAL__PDU_PROTOTYPE = eINSTANCE.getClusterSignal_PDUPrototype();
        public static final EReference CLUSTER_SIGNAL__RECEIVERS = eINSTANCE.getClusterSignal_Receivers();
        public static final EReference CLUSTER_SIGNAL__SIGNAL_POSITION = eINSTANCE.getClusterSignal_SignalPosition();
        public static final EReference CLUSTER_SIGNAL__TRANSMITTER = eINSTANCE.getClusterSignal_Transmitter();
        public static final EAttribute CLUSTER_SIGNAL__UPDATE_INDICATION_BIT_POSITION = eINSTANCE.getClusterSignal_UpdateIndicationBitPosition();
        public static final EClass CLUSTER_SIGNAL_TRANSMITTER = eINSTANCE.getClusterSignalTransmitter();
        public static final EReference CLUSTER_SIGNAL_TRANSMITTER__CLUSTER_SIGNAL = eINSTANCE.getClusterSignalTransmitter_ClusterSignal();
        public static final EReference CLUSTER_SIGNAL_TRANSMITTER__COMMUNICATION_PORT = eINSTANCE.getClusterSignalTransmitter_CommunicationPort();
        public static final EClass CLUSTER_SIGNAL_RECEIVER = eINSTANCE.getClusterSignalReceiver();
        public static final EReference CLUSTER_SIGNAL_RECEIVER__CLUSTER_SIGNAL = eINSTANCE.getClusterSignalReceiver_ClusterSignal();
        public static final EReference CLUSTER_SIGNAL_RECEIVER__COMMUNICATION_PORTS = eINSTANCE.getClusterSignalReceiver_CommunicationPorts();
        public static final EAttribute CLUSTER_SIGNAL_RECEIVER__TIMEOUT = eINSTANCE.getClusterSignalReceiver_Timeout();
        public static final EClass SYSTEM_SIGNAL_GROUP = eINSTANCE.getSystemSignalGroup();
        public static final EReference SYSTEM_SIGNAL_GROUP__CONTAINED_SIGNALS = eINSTANCE.getSystemSignalGroup_ContainedSignals();
        public static final EClass SYSTEM_SIGNAL = eINSTANCE.getSystemSignal();
        public static final EAttribute SYSTEM_SIGNAL__NEEDS_UPDATE_INDICATION = eINSTANCE.getSystemSignal_NeedsUpdateIndication();
        public static final EAttribute SYSTEM_SIGNAL__SIGNAL_LENGTH = eINSTANCE.getSystemSignal_SignalLength();
        public static final EReference SYSTEM_SIGNAL__SIGNAL_TIMING_REQUIREMENTS = eINSTANCE.getSystemSignal_SignalTimingRequirements();
    }
}

