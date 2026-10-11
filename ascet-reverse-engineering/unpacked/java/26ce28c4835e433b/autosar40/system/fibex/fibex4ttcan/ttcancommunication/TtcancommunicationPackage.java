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
package autosar40.system.fibex.fibex4ttcan.ttcancommunication;

import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationFactory;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl.TtcancommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TtcancommunicationPackage
extends EPackage {
    public static final String eNAME = "ttcancommunication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/ft/tc";
    public static final String eNS_PREFIX = "";
    public static final TtcancommunicationPackage eINSTANCE = TtcancommunicationPackageImpl.init();
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING = 0;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__GCHECKSUM = 0;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__GTIMESTAMP = 1;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__CHECKSUM = 2;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__TIMESTAMP = 3;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__CAN_FRAME_TRIGGERING = 4;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__COMMUNICATION_CYCLE = 5;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__TIME_MARK = 6;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING__TRIGGER = 7;
    public static final int TTCAN_ABSOLUTELY_SCHEDULED_TIMING_FEATURE_COUNT = 8;
    public static final int TTCAN_TRIGGER_TYPE = 1;

    public EClass getTtcanAbsolutelyScheduledTiming();

    public EReference getTtcanAbsolutelyScheduledTiming_CanFrameTriggering();

    public EReference getTtcanAbsolutelyScheduledTiming_CommunicationCycle();

    public EAttribute getTtcanAbsolutelyScheduledTiming_TimeMark();

    public EAttribute getTtcanAbsolutelyScheduledTiming_Trigger();

    public EEnum getTtcanTriggerType();

    public TtcancommunicationFactory getTtcancommunicationFactory();

    public static interface Literals {
        public static final EClass TTCAN_ABSOLUTELY_SCHEDULED_TIMING = eINSTANCE.getTtcanAbsolutelyScheduledTiming();
        public static final EReference TTCAN_ABSOLUTELY_SCHEDULED_TIMING__CAN_FRAME_TRIGGERING = eINSTANCE.getTtcanAbsolutelyScheduledTiming_CanFrameTriggering();
        public static final EReference TTCAN_ABSOLUTELY_SCHEDULED_TIMING__COMMUNICATION_CYCLE = eINSTANCE.getTtcanAbsolutelyScheduledTiming_CommunicationCycle();
        public static final EAttribute TTCAN_ABSOLUTELY_SCHEDULED_TIMING__TIME_MARK = eINSTANCE.getTtcanAbsolutelyScheduledTiming_TimeMark();
        public static final EAttribute TTCAN_ABSOLUTELY_SCHEDULED_TIMING__TRIGGER = eINSTANCE.getTtcanAbsolutelyScheduledTiming_Trigger();
        public static final EEnum TTCAN_TRIGGER_TYPE = eINSTANCE.getTtcanTriggerType();
    }
}

