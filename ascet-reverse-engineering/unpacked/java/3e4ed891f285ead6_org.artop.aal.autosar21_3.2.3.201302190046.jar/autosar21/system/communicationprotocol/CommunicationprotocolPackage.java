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
package autosar21.system.communicationprotocol;

import autosar21.system.communicationprotocol.CommunicationprotocolFactory;
import autosar21.system.communicationprotocol.impl.CommunicationprotocolPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CommunicationprotocolPackage
extends EPackage {
    public static final String eNAME = "communicationprotocol";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/cp";
    public static final String eNS_PREFIX = "";
    public static final CommunicationprotocolPackage eINSTANCE = CommunicationprotocolPackageImpl.init();
    public static final int COMM_PROTOCOL_ELEMENT = 0;
    public static final int COMM_PROTOCOL_ELEMENT__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_ELEMENT__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_ELEMENT__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_ELEMENT__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_ELEMENT__GSHORT_NAME = 4;
    public static final int COMM_PROTOCOL_ELEMENT__GUUID = 5;
    public static final int COMM_PROTOCOL_ELEMENT__GCATEGORY = 6;
    public static final int COMM_PROTOCOL_ELEMENT__GDESC = 7;
    public static final int COMM_PROTOCOL_ELEMENT__SHORT_NAME = 8;
    public static final int COMM_PROTOCOL_ELEMENT__LONG_NAME = 9;
    public static final int COMM_PROTOCOL_ELEMENT__DESC = 10;
    public static final int COMM_PROTOCOL_ELEMENT__CATEGORY = 11;
    public static final int COMM_PROTOCOL_ELEMENT__ADMIN_DATA = 12;
    public static final int COMM_PROTOCOL_ELEMENT__UUID = 13;
    public static final int COMM_PROTOCOL_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int COMM_PROTOCOL_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int COMM_PROTOCOL_ELEMENT__COMM_PROTOCOL_TYPE = 16;
    public static final int COMM_PROTOCOL_ELEMENT__DIRECTION = 17;
    public static final int COMM_PROTOCOL_ELEMENT_FEATURE_COUNT = 18;
    public static final int COMM_PROTOCOL_FRAME_ROLE = 1;
    public static final int COMM_PROTOCOL_FRAME_ROLE__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_FRAME_ROLE__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_FRAME_ROLE__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_FRAME_ROLE__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_FRAME_ROLE__GSHORT_NAME = 4;
    public static final int COMM_PROTOCOL_FRAME_ROLE__GUUID = 5;
    public static final int COMM_PROTOCOL_FRAME_ROLE__GCATEGORY = 6;
    public static final int COMM_PROTOCOL_FRAME_ROLE__GDESC = 7;
    public static final int COMM_PROTOCOL_FRAME_ROLE__SHORT_NAME = 8;
    public static final int COMM_PROTOCOL_FRAME_ROLE__LONG_NAME = 9;
    public static final int COMM_PROTOCOL_FRAME_ROLE__DESC = 10;
    public static final int COMM_PROTOCOL_FRAME_ROLE__CATEGORY = 11;
    public static final int COMM_PROTOCOL_FRAME_ROLE__ADMIN_DATA = 12;
    public static final int COMM_PROTOCOL_FRAME_ROLE__UUID = 13;
    public static final int COMM_PROTOCOL_FRAME_ROLE__ALL_EXTENSIONS = 14;
    public static final int COMM_PROTOCOL_FRAME_ROLE__CONTAINED_EXTENSIONS = 15;
    public static final int COMM_PROTOCOL_FRAME_ROLE__COMM_PROTOCOL_INSTANCE = 16;
    public static final int COMM_PROTOCOL_FRAME_ROLE__FRAME_INSTANCE = 17;
    public static final int COMM_PROTOCOL_FRAME_ROLE__PROTOCOL_ELEMENT = 18;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FEATURE_COUNT = 19;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE = 2;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__GSHORT_NAME = 4;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__GUUID = 5;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__GCATEGORY = 6;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__GDESC = 7;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__SHORT_NAME = 8;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__LONG_NAME = 9;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__DESC = 10;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__CATEGORY = 11;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__ADMIN_DATA = 12;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__UUID = 13;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__ALL_EXTENSIONS = 14;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__CONTAINED_EXTENSIONS = 15;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__COMM_PROTOCOL_INSTANCE = 16;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__PROTOCOL_ELEMENT = 17;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE__SIGNAL_GROUP_INSTANCE = 18;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_FEATURE_COUNT = 19;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE = 3;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__GSHORT_NAME = 4;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__GUUID = 5;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__GCATEGORY = 6;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__GDESC = 7;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__SHORT_NAME = 8;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__LONG_NAME = 9;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__DESC = 10;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__CATEGORY = 11;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__ADMIN_DATA = 12;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__UUID = 13;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__ALL_EXTENSIONS = 14;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__CONTAINED_EXTENSIONS = 15;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__COMM_PROTOCOL_INSTANCE = 16;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__PROTOCOL_ELEMENT = 17;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE__SIGNAL_INSTANCE = 18;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_FEATURE_COUNT = 19;
    public static final int COMM_PROTOCOL_TYPE = 4;
    public static final int COMM_PROTOCOL_TYPE__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_TYPE__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_TYPE__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_TYPE__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_TYPE__GSHORT_NAME = 4;
    public static final int COMM_PROTOCOL_TYPE__GUUID = 5;
    public static final int COMM_PROTOCOL_TYPE__GCATEGORY = 6;
    public static final int COMM_PROTOCOL_TYPE__GDESC = 7;
    public static final int COMM_PROTOCOL_TYPE__SHORT_NAME = 8;
    public static final int COMM_PROTOCOL_TYPE__LONG_NAME = 9;
    public static final int COMM_PROTOCOL_TYPE__DESC = 10;
    public static final int COMM_PROTOCOL_TYPE__CATEGORY = 11;
    public static final int COMM_PROTOCOL_TYPE__ADMIN_DATA = 12;
    public static final int COMM_PROTOCOL_TYPE__UUID = 13;
    public static final int COMM_PROTOCOL_TYPE__ALL_EXTENSIONS = 14;
    public static final int COMM_PROTOCOL_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int COMM_PROTOCOL_TYPE__GAR_PACKAGE = 16;
    public static final int COMM_PROTOCOL_TYPE__AR_PACKAGE = 17;
    public static final int COMM_PROTOCOL_TYPE__PROTOCOL_ELEMENTS = 18;
    public static final int COMM_PROTOCOL_TYPE_FEATURE_COUNT = 19;
    public static final int COMM_PROTOCOL_INSTANCE = 5;
    public static final int COMM_PROTOCOL_INSTANCE__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_INSTANCE__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_INSTANCE__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_INSTANCE__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_INSTANCE__GSHORT_NAME = 4;
    public static final int COMM_PROTOCOL_INSTANCE__GUUID = 5;
    public static final int COMM_PROTOCOL_INSTANCE__GCATEGORY = 6;
    public static final int COMM_PROTOCOL_INSTANCE__GDESC = 7;
    public static final int COMM_PROTOCOL_INSTANCE__SHORT_NAME = 8;
    public static final int COMM_PROTOCOL_INSTANCE__LONG_NAME = 9;
    public static final int COMM_PROTOCOL_INSTANCE__DESC = 10;
    public static final int COMM_PROTOCOL_INSTANCE__CATEGORY = 11;
    public static final int COMM_PROTOCOL_INSTANCE__ADMIN_DATA = 12;
    public static final int COMM_PROTOCOL_INSTANCE__UUID = 13;
    public static final int COMM_PROTOCOL_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int COMM_PROTOCOL_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int COMM_PROTOCOL_INSTANCE__SYSTEM_COMMUNICATION = 16;
    public static final int COMM_PROTOCOL_INSTANCE__PROTOCOL_FRAMES = 17;
    public static final int COMM_PROTOCOL_INSTANCE__PROTOCOL_SIGNALS = 18;
    public static final int COMM_PROTOCOL_INSTANCE__PROTOCOL_SIGNAL_GROUPS = 19;
    public static final int COMM_PROTOCOL_INSTANCE__PROTOCOL_TYPE = 20;
    public static final int COMM_PROTOCOL_INSTANCE_FEATURE_COUNT = 21;
    public static final int COMM_PROTOCOL_ELEMENT_DIRECTION_ENUM = 6;

    public EClass getCommProtocolElement();

    public EReference getCommProtocolElement_CommProtocolType();

    public EAttribute getCommProtocolElement_Direction();

    public EClass getCommProtocolFrameRole();

    public EReference getCommProtocolFrameRole_CommProtocolInstance();

    public EReference getCommProtocolFrameRole_FrameInstance();

    public EReference getCommProtocolFrameRole_ProtocolElement();

    public EClass getCommProtocolSignalGroupRole();

    public EReference getCommProtocolSignalGroupRole_CommProtocolInstance();

    public EReference getCommProtocolSignalGroupRole_ProtocolElement();

    public EReference getCommProtocolSignalGroupRole_SignalGroupInstance();

    public EClass getCommProtocolSignalRole();

    public EReference getCommProtocolSignalRole_CommProtocolInstance();

    public EReference getCommProtocolSignalRole_ProtocolElement();

    public EReference getCommProtocolSignalRole_SignalInstance();

    public EClass getCommProtocolType();

    public EReference getCommProtocolType_ProtocolElements();

    public EClass getCommProtocolInstance();

    public EReference getCommProtocolInstance_SystemCommunication();

    public EReference getCommProtocolInstance_ProtocolFrames();

    public EReference getCommProtocolInstance_ProtocolSignals();

    public EReference getCommProtocolInstance_ProtocolSignalGroups();

    public EReference getCommProtocolInstance_ProtocolType();

    public EEnum getCommProtocolElementDirectionEnum();

    public CommunicationprotocolFactory getCommunicationprotocolFactory();

    public static interface Literals {
        public static final EClass COMM_PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolElement();
        public static final EReference COMM_PROTOCOL_ELEMENT__COMM_PROTOCOL_TYPE = eINSTANCE.getCommProtocolElement_CommProtocolType();
        public static final EAttribute COMM_PROTOCOL_ELEMENT__DIRECTION = eINSTANCE.getCommProtocolElement_Direction();
        public static final EClass COMM_PROTOCOL_FRAME_ROLE = eINSTANCE.getCommProtocolFrameRole();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE__COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolFrameRole_CommProtocolInstance();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE__FRAME_INSTANCE = eINSTANCE.getCommProtocolFrameRole_FrameInstance();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE__PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolFrameRole_ProtocolElement();
        public static final EClass COMM_PROTOCOL_SIGNAL_GROUP_ROLE = eINSTANCE.getCommProtocolSignalGroupRole();
        public static final EReference COMM_PROTOCOL_SIGNAL_GROUP_ROLE__COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolSignalGroupRole_CommProtocolInstance();
        public static final EReference COMM_PROTOCOL_SIGNAL_GROUP_ROLE__PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolSignalGroupRole_ProtocolElement();
        public static final EReference COMM_PROTOCOL_SIGNAL_GROUP_ROLE__SIGNAL_GROUP_INSTANCE = eINSTANCE.getCommProtocolSignalGroupRole_SignalGroupInstance();
        public static final EClass COMM_PROTOCOL_SIGNAL_ROLE = eINSTANCE.getCommProtocolSignalRole();
        public static final EReference COMM_PROTOCOL_SIGNAL_ROLE__COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolSignalRole_CommProtocolInstance();
        public static final EReference COMM_PROTOCOL_SIGNAL_ROLE__PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolSignalRole_ProtocolElement();
        public static final EReference COMM_PROTOCOL_SIGNAL_ROLE__SIGNAL_INSTANCE = eINSTANCE.getCommProtocolSignalRole_SignalInstance();
        public static final EClass COMM_PROTOCOL_TYPE = eINSTANCE.getCommProtocolType();
        public static final EReference COMM_PROTOCOL_TYPE__PROTOCOL_ELEMENTS = eINSTANCE.getCommProtocolType_ProtocolElements();
        public static final EClass COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolInstance();
        public static final EReference COMM_PROTOCOL_INSTANCE__SYSTEM_COMMUNICATION = eINSTANCE.getCommProtocolInstance_SystemCommunication();
        public static final EReference COMM_PROTOCOL_INSTANCE__PROTOCOL_FRAMES = eINSTANCE.getCommProtocolInstance_ProtocolFrames();
        public static final EReference COMM_PROTOCOL_INSTANCE__PROTOCOL_SIGNALS = eINSTANCE.getCommProtocolInstance_ProtocolSignals();
        public static final EReference COMM_PROTOCOL_INSTANCE__PROTOCOL_SIGNAL_GROUPS = eINSTANCE.getCommProtocolInstance_ProtocolSignalGroups();
        public static final EReference COMM_PROTOCOL_INSTANCE__PROTOCOL_TYPE = eINSTANCE.getCommProtocolInstance_ProtocolType();
        public static final EEnum COMM_PROTOCOL_ELEMENT_DIRECTION_ENUM = eINSTANCE.getCommProtocolElementDirectionEnum();
    }
}

