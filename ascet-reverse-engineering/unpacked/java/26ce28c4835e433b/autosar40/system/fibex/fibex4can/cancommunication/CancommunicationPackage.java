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
package autosar40.system.fibex.fibex4can.cancommunication;

import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationFactory;
import autosar40.system.fibex.fibex4can.cancommunication.impl.CancommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CancommunicationPackage
extends EPackage {
    public static final String eNAME = "cancommunication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fcan/cc";
    public static final String eNS_PREFIX = "";
    public static final CancommunicationPackage eINSTANCE = CancommunicationPackageImpl.init();
    public static final int CAN_FRAME = 0;
    public static final int CAN_FRAME__GCHECKSUM = 0;
    public static final int CAN_FRAME__GTIMESTAMP = 1;
    public static final int CAN_FRAME__CHECKSUM = 2;
    public static final int CAN_FRAME__TIMESTAMP = 3;
    public static final int CAN_FRAME__GSHORT_NAME = 4;
    public static final int CAN_FRAME__SHORT_NAME = 5;
    public static final int CAN_FRAME__LONG_NAME = 6;
    public static final int CAN_FRAME__GUUID = 7;
    public static final int CAN_FRAME__GCATEGORY = 8;
    public static final int CAN_FRAME__GDESC = 9;
    public static final int CAN_FRAME__DESC = 10;
    public static final int CAN_FRAME__CATEGORY = 11;
    public static final int CAN_FRAME__ADMIN_DATA = 12;
    public static final int CAN_FRAME__INTRODUCTION = 13;
    public static final int CAN_FRAME__ANNOTATIONS = 14;
    public static final int CAN_FRAME__UUID = 15;
    public static final int CAN_FRAME__ALL_EXTENSIONS = 16;
    public static final int CAN_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_FRAME__GAR_PACKAGE = 18;
    public static final int CAN_FRAME__AR_PACKAGE = 19;
    public static final int CAN_FRAME__VARIATION_POINT = 20;
    public static final int CAN_FRAME__FRAME_LENGTH = 21;
    public static final int CAN_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int CAN_FRAME_FEATURE_COUNT = 23;
    public static final int CAN_FRAME_TRIGGERING = 1;
    public static final int CAN_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int CAN_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int CAN_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int CAN_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int CAN_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int CAN_FRAME_TRIGGERING__SHORT_NAME = 5;
    public static final int CAN_FRAME_TRIGGERING__LONG_NAME = 6;
    public static final int CAN_FRAME_TRIGGERING__GUUID = 7;
    public static final int CAN_FRAME_TRIGGERING__GCATEGORY = 8;
    public static final int CAN_FRAME_TRIGGERING__GDESC = 9;
    public static final int CAN_FRAME_TRIGGERING__DESC = 10;
    public static final int CAN_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int CAN_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int CAN_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int CAN_FRAME_TRIGGERING__ANNOTATIONS = 14;
    public static final int CAN_FRAME_TRIGGERING__UUID = 15;
    public static final int CAN_FRAME_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int CAN_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int CAN_FRAME_TRIGGERING__FRAME_PORTS = 19;
    public static final int CAN_FRAME_TRIGGERING__FRAME = 20;
    public static final int CAN_FRAME_TRIGGERING__PDU_TRIGGERINGS = 21;
    public static final int CAN_FRAME_TRIGGERING__VARIATION_POINT = 22;
    public static final int CAN_FRAME_TRIGGERING__ABSOLUTELY_SCHEDULED_TIMINGS = 23;
    public static final int CAN_FRAME_TRIGGERING__CAN_ADDRESSING_MODE = 24;
    public static final int CAN_FRAME_TRIGGERING__IDENTIFIER = 25;
    public static final int CAN_FRAME_TRIGGERING__RX_IDENTIFIER_RANGE = 26;
    public static final int CAN_FRAME_TRIGGERING_FEATURE_COUNT = 27;
    public static final int RX_IDENTIFIER_RANGE = 2;
    public static final int RX_IDENTIFIER_RANGE__GCHECKSUM = 0;
    public static final int RX_IDENTIFIER_RANGE__GTIMESTAMP = 1;
    public static final int RX_IDENTIFIER_RANGE__CHECKSUM = 2;
    public static final int RX_IDENTIFIER_RANGE__TIMESTAMP = 3;
    public static final int RX_IDENTIFIER_RANGE__CAN_FRAME_TRIGGERING = 4;
    public static final int RX_IDENTIFIER_RANGE__LOWER_CAN_ID = 5;
    public static final int RX_IDENTIFIER_RANGE__UPPER_CAN_ID = 6;
    public static final int RX_IDENTIFIER_RANGE_FEATURE_COUNT = 7;
    public static final int CAN_ADDRESSING_MODE_TYPE = 3;

    public EClass getCanFrame();

    public EClass getCanFrameTriggering();

    public EReference getCanFrameTriggering_AbsolutelyScheduledTimings();

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
        public static final EClass CAN_FRAME = eINSTANCE.getCanFrame();
        public static final EClass CAN_FRAME_TRIGGERING = eINSTANCE.getCanFrameTriggering();
        public static final EReference CAN_FRAME_TRIGGERING__ABSOLUTELY_SCHEDULED_TIMINGS = eINSTANCE.getCanFrameTriggering_AbsolutelyScheduledTimings();
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

