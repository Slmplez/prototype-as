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
package autosar3x.system.fibex.fibex4can.cancommunication;

import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationFactory;
import autosar3x.system.fibex.fibex4can.cancommunication.impl.CancommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CancommunicationPackage
extends EPackage {
    public static final String eNAME = "cancommunication";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fcan/cc";
    public static final String eNS_PREFIX = "";
    public static final CancommunicationPackage eINSTANCE = CancommunicationPackageImpl.init();
    public static final int CAN_FRAME_TRIGGERING = 0;
    public static final int CAN_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int CAN_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int CAN_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int CAN_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int CAN_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int CAN_FRAME_TRIGGERING__GUUID = 5;
    public static final int CAN_FRAME_TRIGGERING__GCATEGORY = 6;
    public static final int CAN_FRAME_TRIGGERING__GDESC = 7;
    public static final int CAN_FRAME_TRIGGERING__SHORT_NAME = 8;
    public static final int CAN_FRAME_TRIGGERING__LONG_NAME = 9;
    public static final int CAN_FRAME_TRIGGERING__DESC = 10;
    public static final int CAN_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int CAN_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int CAN_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int CAN_FRAME_TRIGGERING__UUID = 14;
    public static final int CAN_FRAME_TRIGGERING__ALL_EXTENSIONS = 15;
    public static final int CAN_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 16;
    public static final int CAN_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 17;
    public static final int CAN_FRAME_TRIGGERING__FRAME_PORTS = 18;
    public static final int CAN_FRAME_TRIGGERING__FRAME = 19;
    public static final int CAN_FRAME_TRIGGERING__IPDU_TRIGGERINGS = 20;
    public static final int CAN_FRAME_TRIGGERING__CAN_ADDRESSING_MODE = 21;
    public static final int CAN_FRAME_TRIGGERING__IDENTIFIER = 22;
    public static final int CAN_FRAME_TRIGGERING__RX_IDENTIFIER_RANGE = 23;
    public static final int CAN_FRAME_TRIGGERING_FEATURE_COUNT = 24;
    public static final int RX_IDENTIFIER_RANGE = 1;
    public static final int RX_IDENTIFIER_RANGE__GCHECKSUM = 0;
    public static final int RX_IDENTIFIER_RANGE__GTIMESTAMP = 1;
    public static final int RX_IDENTIFIER_RANGE__CHECKSUM = 2;
    public static final int RX_IDENTIFIER_RANGE__TIMESTAMP = 3;
    public static final int RX_IDENTIFIER_RANGE__CAN_FRAME_TRIGGERING = 4;
    public static final int RX_IDENTIFIER_RANGE__LOWER_CAN_ID = 5;
    public static final int RX_IDENTIFIER_RANGE__UPPER_CAN_ID = 6;
    public static final int RX_IDENTIFIER_RANGE_FEATURE_COUNT = 7;
    public static final int CAN_ADDRESSING_MODE_TYPE = 2;

    public EClass getCanFrameTriggering();

    public EAttribute getCanFrameTriggering_CanAddressingMode();

    public EAttribute getCanFrameTriggering_Identifier();

    public EReference getCanFrameTriggering_RxIdentifierRange();

    public EClass getRxIdentifierRange();

    public EReference getRxIdentifierRange_CanFrameTriggering();

    public EAttribute getRxIdentifierRange_LowerCanId();

    public EAttribute getRxIdentifierRange_UpperCanId();

    public EEnum getCanAddressingModeType();

    public CancommunicationFactory getCancommunicationFactory();

    public static interface Literals {
        public static final EClass CAN_FRAME_TRIGGERING = eINSTANCE.getCanFrameTriggering();
        public static final EAttribute CAN_FRAME_TRIGGERING__CAN_ADDRESSING_MODE = eINSTANCE.getCanFrameTriggering_CanAddressingMode();
        public static final EAttribute CAN_FRAME_TRIGGERING__IDENTIFIER = eINSTANCE.getCanFrameTriggering_Identifier();
        public static final EReference CAN_FRAME_TRIGGERING__RX_IDENTIFIER_RANGE = eINSTANCE.getCanFrameTriggering_RxIdentifierRange();
        public static final EClass RX_IDENTIFIER_RANGE = eINSTANCE.getRxIdentifierRange();
        public static final EReference RX_IDENTIFIER_RANGE__CAN_FRAME_TRIGGERING = eINSTANCE.getRxIdentifierRange_CanFrameTriggering();
        public static final EAttribute RX_IDENTIFIER_RANGE__LOWER_CAN_ID = eINSTANCE.getRxIdentifierRange_LowerCanId();
        public static final EAttribute RX_IDENTIFIER_RANGE__UPPER_CAN_ID = eINSTANCE.getRxIdentifierRange_UpperCanId();
        public static final EEnum CAN_ADDRESSING_MODE_TYPE = eINSTANCE.getCanAddressingModeType();
    }
}

