/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationFactory;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FlexraycommunicationPackage
extends EPackage {
    public static final String eNAME = "flexraycommunication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/ff/fc";
    public static final String eNS_PREFIX = "";
    public static final FlexraycommunicationPackage eINSTANCE = FlexraycommunicationPackageImpl.init();
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING = 0;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__GCHECKSUM = 0;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__GTIMESTAMP = 1;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__CHECKSUM = 2;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__TIMESTAMP = 3;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__FLEXRAY_FRAME_TRIGGERING = 4;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__COMMUNICATION_CYCLE = 5;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__SLOT_ID = 6;
    public static final int FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING_FEATURE_COUNT = 7;
    public static final int FLEXRAY_FRAME = 1;
    public static final int FLEXRAY_FRAME__GCHECKSUM = 0;
    public static final int FLEXRAY_FRAME__GTIMESTAMP = 1;
    public static final int FLEXRAY_FRAME__CHECKSUM = 2;
    public static final int FLEXRAY_FRAME__TIMESTAMP = 3;
    public static final int FLEXRAY_FRAME__GSHORT_NAME = 4;
    public static final int FLEXRAY_FRAME__SHORT_NAME = 5;
    public static final int FLEXRAY_FRAME__LONG_NAME = 6;
    public static final int FLEXRAY_FRAME__GUUID = 7;
    public static final int FLEXRAY_FRAME__GCATEGORY = 8;
    public static final int FLEXRAY_FRAME__GDESC = 9;
    public static final int FLEXRAY_FRAME__DESC = 10;
    public static final int FLEXRAY_FRAME__CATEGORY = 11;
    public static final int FLEXRAY_FRAME__ADMIN_DATA = 12;
    public static final int FLEXRAY_FRAME__INTRODUCTION = 13;
    public static final int FLEXRAY_FRAME__ANNOTATIONS = 14;
    public static final int FLEXRAY_FRAME__UUID = 15;
    public static final int FLEXRAY_FRAME__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_FRAME__GAR_PACKAGE = 18;
    public static final int FLEXRAY_FRAME__AR_PACKAGE = 19;
    public static final int FLEXRAY_FRAME__VARIATION_POINT = 20;
    public static final int FLEXRAY_FRAME__FRAME_LENGTH = 21;
    public static final int FLEXRAY_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int FLEXRAY_FRAME_FEATURE_COUNT = 23;
    public static final int FLEXRAY_FRAME_TRIGGERING = 2;
    public static final int FLEXRAY_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int FLEXRAY_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int FLEXRAY_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int FLEXRAY_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int FLEXRAY_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int FLEXRAY_FRAME_TRIGGERING__SHORT_NAME = 5;
    public static final int FLEXRAY_FRAME_TRIGGERING__LONG_NAME = 6;
    public static final int FLEXRAY_FRAME_TRIGGERING__GUUID = 7;
    public static final int FLEXRAY_FRAME_TRIGGERING__GCATEGORY = 8;
    public static final int FLEXRAY_FRAME_TRIGGERING__GDESC = 9;
    public static final int FLEXRAY_FRAME_TRIGGERING__DESC = 10;
    public static final int FLEXRAY_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int FLEXRAY_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int FLEXRAY_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int FLEXRAY_FRAME_TRIGGERING__ANNOTATIONS = 14;
    public static final int FLEXRAY_FRAME_TRIGGERING__UUID = 15;
    public static final int FLEXRAY_FRAME_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int FLEXRAY_FRAME_TRIGGERING__FRAME_PORTS = 19;
    public static final int FLEXRAY_FRAME_TRIGGERING__FRAME = 20;
    public static final int FLEXRAY_FRAME_TRIGGERING__PDU_TRIGGERINGS = 21;
    public static final int FLEXRAY_FRAME_TRIGGERING__VARIATION_POINT = 22;
    public static final int FLEXRAY_FRAME_TRIGGERING__ABSOLUTELY_SCHEDULED_TIMINGS = 23;
    public static final int FLEXRAY_FRAME_TRIGGERING__ALLOW_DYNAMIC_LSDU_LENGTH = 24;
    public static final int FLEXRAY_FRAME_TRIGGERING__MESSAGE_ID = 25;
    public static final int FLEXRAY_FRAME_TRIGGERING__PAYLOAD_PREAMBLE_INDICATOR = 26;
    public static final int FLEXRAY_FRAME_TRIGGERING_FEATURE_COUNT = 27;

    public EClass getFlexrayAbsolutelyScheduledTiming();

    public EReference getFlexrayAbsolutelyScheduledTiming_FlexrayFrameTriggering();

    public EReference getFlexrayAbsolutelyScheduledTiming_CommunicationCycle();

    public EAttribute getFlexrayAbsolutelyScheduledTiming_SlotID();

    public EClass getFlexrayFrame();

    public EClass getFlexrayFrameTriggering();

    public EReference getFlexrayFrameTriggering_AbsolutelyScheduledTimings();

    public EAttribute getFlexrayFrameTriggering_AllowDynamicLSduLength();

    public EAttribute getFlexrayFrameTriggering_MessageId();

    public EAttribute getFlexrayFrameTriggering_PayloadPreambleIndicator();

    public FlexraycommunicationFactory getFlexraycommunicationFactory();

    public static interface Literals {
        public static final EClass FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING = eINSTANCE.getFlexrayAbsolutelyScheduledTiming();
        public static final EReference FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__FLEXRAY_FRAME_TRIGGERING = eINSTANCE.getFlexrayAbsolutelyScheduledTiming_FlexrayFrameTriggering();
        public static final EReference FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__COMMUNICATION_CYCLE = eINSTANCE.getFlexrayAbsolutelyScheduledTiming_CommunicationCycle();
        public static final EAttribute FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING__SLOT_ID = eINSTANCE.getFlexrayAbsolutelyScheduledTiming_SlotID();
        public static final EClass FLEXRAY_FRAME = eINSTANCE.getFlexrayFrame();
        public static final EClass FLEXRAY_FRAME_TRIGGERING = eINSTANCE.getFlexrayFrameTriggering();
        public static final EReference FLEXRAY_FRAME_TRIGGERING__ABSOLUTELY_SCHEDULED_TIMINGS = eINSTANCE.getFlexrayFrameTriggering_AbsolutelyScheduledTimings();
        public static final EAttribute FLEXRAY_FRAME_TRIGGERING__ALLOW_DYNAMIC_LSDU_LENGTH = eINSTANCE.getFlexrayFrameTriggering_AllowDynamicLSduLength();
        public static final EAttribute FLEXRAY_FRAME_TRIGGERING__MESSAGE_ID = eINSTANCE.getFlexrayFrameTriggering_MessageId();
        public static final EAttribute FLEXRAY_FRAME_TRIGGERING__PAYLOAD_PREAMBLE_INDICATOR = eINSTANCE.getFlexrayFrameTriggering_PayloadPreambleIndicator();
    }
}

