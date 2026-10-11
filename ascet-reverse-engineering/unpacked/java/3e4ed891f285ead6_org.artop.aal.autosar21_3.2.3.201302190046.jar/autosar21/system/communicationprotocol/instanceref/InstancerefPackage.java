/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.communicationprotocol.instanceref;

import autosar21.system.communicationprotocol.instanceref.InstancerefFactory;
import autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/cp/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE = 0;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__COMM_PROTOCOL_FRAME_ROLE = 4;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__COMMUNICATION_MATRIX = 5;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__FRAME_INSTANCE = 6;
    public static final int COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE_FEATURE_COUNT = 7;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT = 1;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_FRAME_ROLE = 4;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_INSTANCE = 5;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__PROTOCOL_ELEMENT = 6;
    public static final int COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT_FEATURE_COUNT = 7;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT = 2;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_SIGNAL_GROUP_ROLE = 4;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_INSTANCE = 5;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_ELEMENT = 6;
    public static final int COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT_FEATURE_COUNT = 7;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT = 3;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__GCHECKSUM = 0;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__GTIMESTAMP = 1;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__CHECKSUM = 2;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__TIMESTAMP = 3;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_SIGNAL_ROLE = 4;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_INSTANCE = 5;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__PROTOCOL_ELEMENT = 6;
    public static final int COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT_FEATURE_COUNT = 7;

    public EClass getCommProtocolFrameRoleFrameInstance();

    public EReference getCommProtocolFrameRoleFrameInstance_CommProtocolFrameRole();

    public EReference getCommProtocolFrameRoleFrameInstance_CommunicationMatrix();

    public EReference getCommProtocolFrameRoleFrameInstance_FrameInstance();

    public EClass getCommProtocolFrameRoleProtocolElement();

    public EReference getCommProtocolFrameRoleProtocolElement_CommProtocolFrameRole();

    public EReference getCommProtocolFrameRoleProtocolElement_CommProtocolInstance();

    public EReference getCommProtocolFrameRoleProtocolElement_ProtocolElement();

    public EClass getCommProtocolSignalGroupRoleProtocolElement();

    public EReference getCommProtocolSignalGroupRoleProtocolElement_CommProtocolSignalGroupRole();

    public EReference getCommProtocolSignalGroupRoleProtocolElement_CommProtocolInstance();

    public EReference getCommProtocolSignalGroupRoleProtocolElement_CommProtocolElement();

    public EClass getCommProtocolSignalRoleProtocolElement();

    public EReference getCommProtocolSignalRoleProtocolElement_CommProtocolSignalRole();

    public EReference getCommProtocolSignalRoleProtocolElement_CommProtocolInstance();

    public EReference getCommProtocolSignalRoleProtocolElement_ProtocolElement();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE = eINSTANCE.getCommProtocolFrameRoleFrameInstance();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__COMM_PROTOCOL_FRAME_ROLE = eINSTANCE.getCommProtocolFrameRoleFrameInstance_CommProtocolFrameRole();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__COMMUNICATION_MATRIX = eINSTANCE.getCommProtocolFrameRoleFrameInstance_CommunicationMatrix();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE__FRAME_INSTANCE = eINSTANCE.getCommProtocolFrameRoleFrameInstance_FrameInstance();
        public static final EClass COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolFrameRoleProtocolElement();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_FRAME_ROLE = eINSTANCE.getCommProtocolFrameRoleProtocolElement_CommProtocolFrameRole();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolFrameRoleProtocolElement_CommProtocolInstance();
        public static final EReference COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT__PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolFrameRoleProtocolElement_ProtocolElement();
        public static final EClass COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolSignalGroupRoleProtocolElement();
        public static final EReference COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_SIGNAL_GROUP_ROLE = eINSTANCE.getCommProtocolSignalGroupRoleProtocolElement_CommProtocolSignalGroupRole();
        public static final EReference COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolSignalGroupRoleProtocolElement_CommProtocolInstance();
        public static final EReference COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolSignalGroupRoleProtocolElement_CommProtocolElement();
        public static final EClass COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolSignalRoleProtocolElement();
        public static final EReference COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_SIGNAL_ROLE = eINSTANCE.getCommProtocolSignalRoleProtocolElement_CommProtocolSignalRole();
        public static final EReference COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__COMM_PROTOCOL_INSTANCE = eINSTANCE.getCommProtocolSignalRoleProtocolElement_CommProtocolInstance();
        public static final EReference COMM_PROTOCOL_SIGNAL_ROLE_PROTOCOL_ELEMENT__PROTOCOL_ELEMENT = eINSTANCE.getCommProtocolSignalRoleProtocolElement_ProtocolElement();
    }
}

