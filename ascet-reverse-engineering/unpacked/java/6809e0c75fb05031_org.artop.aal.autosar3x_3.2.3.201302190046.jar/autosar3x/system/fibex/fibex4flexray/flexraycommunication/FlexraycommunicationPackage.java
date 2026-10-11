/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.fibex.fibex4flexray.flexraycommunication;

import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationFactory;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FlexraycommunicationPackage
extends EPackage {
    public static final String eNAME = "flexraycommunication";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/ff/fc";
    public static final String eNS_PREFIX = "";
    public static final FlexraycommunicationPackage eINSTANCE = FlexraycommunicationPackageImpl.init();
    public static final int ABSOLUTELY_SCHEDULED_TIMING = 0;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__GCHECKSUM = 0;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__GTIMESTAMP = 1;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__CHECKSUM = 2;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__TIMESTAMP = 3;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__FLEXRAY_FRAME_TRIGGERING = 4;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__COMMUNICATION_CYCLE = 5;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__SLOT_ID = 6;
    public static final int ABSOLUTELY_SCHEDULED_TIMING_FEATURE_COUNT = 7;
    public static final int FLEXRAY_FRAME_TRIGGERING = 1;
    public static final int FLEXRAY_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int FLEXRAY_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int FLEXRAY_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int FLEXRAY_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int FLEXRAY_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int FLEXRAY_FRAME_TRIGGERING__GUUID = 5;
    public static final int FLEXRAY_FRAME_TRIGGERING__GCATEGORY = 6;
    public static final int FLEXRAY_FRAME_TRIGGERING__GDESC = 7;
    public static final int FLEXRAY_FRAME_TRIGGERING__SHORT_NAME = 8;
    public static final int FLEXRAY_FRAME_TRIGGERING__LONG_NAME = 9;
    public static final int FLEXRAY_FRAME_TRIGGERING__DESC = 10;
    public static final int FLEXRAY_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int FLEXRAY_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int FLEXRAY_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int FLEXRAY_FRAME_TRIGGERING__UUID = 14;
    public static final int FLEXRAY_FRAME_TRIGGERING__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 17;
    public static final int FLEXRAY_FRAME_TRIGGERING__FRAME_PORTS = 18;
    public static final int FLEXRAY_FRAME_TRIGGERING__FRAME = 19;
    public static final int FLEXRAY_FRAME_TRIGGERING__IPDU_TRIGGERINGS = 20;
    public static final int FLEXRAY_FRAME_TRIGGERING__ABSOLUTELY_SCHEDULED_TIMINGS = 21;
    public static final int FLEXRAY_FRAME_TRIGGERING__PAYLOAD_PREAMBLE_INDICATOR = 22;
    public static final int FLEXRAY_FRAME_TRIGGERING_FEATURE_COUNT = 23;

    public EClass getAbsolutelyScheduledTiming();

    public EReference getAbsolutelyScheduledTiming_FlexrayFrameTriggering();

    public EReference getAbsolutelyScheduledTiming_CommunicationCycle();

    public EAttribute getAbsolutelyScheduledTiming_SlotID();

    public EClass getFlexrayFrameTriggering();

    public EReference getFlexrayFrameTriggering_AbsolutelyScheduledTimings();

    public EAttribute getFlexrayFrameTriggering_PayloadPreambleIndicator();

    public FlexraycommunicationFactory getFlexraycommunicationFactory();

    public static interface Literals {
        public static final EClass ABSOLUTELY_SCHEDULED_TIMING = eINSTANCE.getAbsolutelyScheduledTiming();
        public static final EReference ABSOLUTELY_SCHEDULED_TIMING__FLEXRAY_FRAME_TRIGGERING = eINSTANCE.getAbsolutelyScheduledTiming_FlexrayFrameTriggering();
        public static final EReference ABSOLUTELY_SCHEDULED_TIMING__COMMUNICATION_CYCLE = eINSTANCE.getAbsolutelyScheduledTiming_CommunicationCycle();
        public static final EAttribute ABSOLUTELY_SCHEDULED_TIMING__SLOT_ID = eINSTANCE.getAbsolutelyScheduledTiming_SlotID();
        public static final EClass FLEXRAY_FRAME_TRIGGERING = eINSTANCE.getFlexrayFrameTriggering();
        public static final EReference FLEXRAY_FRAME_TRIGGERING__ABSOLUTELY_SCHEDULED_TIMINGS = eINSTANCE.getFlexrayFrameTriggering_AbsolutelyScheduledTimings();
        public static final EAttribute FLEXRAY_FRAME_TRIGGERING__PAYLOAD_PREAMBLE_INDICATOR = eINSTANCE.getFlexrayFrameTriggering_PayloadPreambleIndicator();
    }
}

