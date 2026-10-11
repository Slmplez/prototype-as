/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsFactory;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.impl.GrteeventsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GrteeventsPackage
extends EPackage {
    public static final String eNAME = "grteevents";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/sib/rtee";
    public static final String eNS_PREFIX = "";
    public static final GrteeventsPackage eINSTANCE = GrteeventsPackageImpl.init();
    public static final int GRTE_EVENT = 0;
    public static final int GRTE_EVENT__GCHECKSUM = 0;
    public static final int GRTE_EVENT__GTIMESTAMP = 1;
    public static final int GRTE_EVENT__GSHORT_NAME = 2;
    public static final int GRTE_EVENT__GUUID = 3;
    public static final int GRTE_EVENT__GCATEGORY = 4;
    public static final int GRTE_EVENT__GDESC = 5;
    public static final int GRTE_EVENT__GSTART_ON_EVENT = 6;
    public static final int GRTE_EVENT_FEATURE_COUNT = 7;
    public static final int GDATA_RECEIVED_EVENT = 1;
    public static final int GDATA_RECEIVED_EVENT__GCHECKSUM = 0;
    public static final int GDATA_RECEIVED_EVENT__GTIMESTAMP = 1;
    public static final int GDATA_RECEIVED_EVENT__GSHORT_NAME = 2;
    public static final int GDATA_RECEIVED_EVENT__GUUID = 3;
    public static final int GDATA_RECEIVED_EVENT__GCATEGORY = 4;
    public static final int GDATA_RECEIVED_EVENT__GDESC = 5;
    public static final int GDATA_RECEIVED_EVENT__GSTART_ON_EVENT = 6;
    public static final int GDATA_RECEIVED_EVENT__GDATA = 7;
    public static final int GDATA_RECEIVED_EVENT_FEATURE_COUNT = 8;
    public static final int GSWC_MODE_SWITCH_EVENT = 2;
    public static final int GSWC_MODE_SWITCH_EVENT__GCHECKSUM = 0;
    public static final int GSWC_MODE_SWITCH_EVENT__GTIMESTAMP = 1;
    public static final int GSWC_MODE_SWITCH_EVENT__GSHORT_NAME = 2;
    public static final int GSWC_MODE_SWITCH_EVENT__GUUID = 3;
    public static final int GSWC_MODE_SWITCH_EVENT__GCATEGORY = 4;
    public static final int GSWC_MODE_SWITCH_EVENT__GDESC = 5;
    public static final int GSWC_MODE_SWITCH_EVENT__GSTART_ON_EVENT = 6;
    public static final int GSWC_MODE_SWITCH_EVENT_FEATURE_COUNT = 7;
    public static final int GTIMING_EVENT = 3;
    public static final int GTIMING_EVENT__GCHECKSUM = 0;
    public static final int GTIMING_EVENT__GTIMESTAMP = 1;
    public static final int GTIMING_EVENT__GSHORT_NAME = 2;
    public static final int GTIMING_EVENT__GUUID = 3;
    public static final int GTIMING_EVENT__GCATEGORY = 4;
    public static final int GTIMING_EVENT__GDESC = 5;
    public static final int GTIMING_EVENT__GSTART_ON_EVENT = 6;
    public static final int GTIMING_EVENT__GPERIOD = 7;
    public static final int GTIMING_EVENT_FEATURE_COUNT = 8;
    public static final int GWAIT_POINT = 4;
    public static final int GWAIT_POINT__GCHECKSUM = 0;
    public static final int GWAIT_POINT__GTIMESTAMP = 1;
    public static final int GWAIT_POINT__GSHORT_NAME = 2;
    public static final int GWAIT_POINT__GUUID = 3;
    public static final int GWAIT_POINT__GCATEGORY = 4;
    public static final int GWAIT_POINT__GDESC = 5;
    public static final int GWAIT_POINT__GTIMEOUT = 6;
    public static final int GWAIT_POINT__GTRIGGERS = 7;
    public static final int GWAIT_POINT_FEATURE_COUNT = 8;
    public static final int GDATA_RECEIVE_ERROR_EVENT = 5;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GCHECKSUM = 0;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GTIMESTAMP = 1;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GSHORT_NAME = 2;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GUUID = 3;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GCATEGORY = 4;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GDESC = 5;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GSTART_ON_EVENT = 6;
    public static final int GDATA_RECEIVE_ERROR_EVENT__GDATA = 7;
    public static final int GDATA_RECEIVE_ERROR_EVENT_FEATURE_COUNT = 8;
    public static final int GOPERATION_INVOKED_EVENT = 6;
    public static final int GOPERATION_INVOKED_EVENT__GCHECKSUM = 0;
    public static final int GOPERATION_INVOKED_EVENT__GTIMESTAMP = 1;
    public static final int GOPERATION_INVOKED_EVENT__GSHORT_NAME = 2;
    public static final int GOPERATION_INVOKED_EVENT__GUUID = 3;
    public static final int GOPERATION_INVOKED_EVENT__GCATEGORY = 4;
    public static final int GOPERATION_INVOKED_EVENT__GDESC = 5;
    public static final int GOPERATION_INVOKED_EVENT__GSTART_ON_EVENT = 6;
    public static final int GOPERATION_INVOKED_EVENT__GOPERATION = 7;
    public static final int GOPERATION_INVOKED_EVENT_FEATURE_COUNT = 8;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT = 7;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GCHECKSUM = 0;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GTIMESTAMP = 1;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GSHORT_NAME = 2;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GUUID = 3;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GCATEGORY = 4;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GDESC = 5;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GSTART_ON_EVENT = 6;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GEVENT_SOURCE = 7;
    public static final int GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT_FEATURE_COUNT = 8;
    public static final int GDATA_SEND_COMPLETED_EVENT = 8;
    public static final int GDATA_SEND_COMPLETED_EVENT__GCHECKSUM = 0;
    public static final int GDATA_SEND_COMPLETED_EVENT__GTIMESTAMP = 1;
    public static final int GDATA_SEND_COMPLETED_EVENT__GSHORT_NAME = 2;
    public static final int GDATA_SEND_COMPLETED_EVENT__GUUID = 3;
    public static final int GDATA_SEND_COMPLETED_EVENT__GCATEGORY = 4;
    public static final int GDATA_SEND_COMPLETED_EVENT__GDESC = 5;
    public static final int GDATA_SEND_COMPLETED_EVENT__GSTART_ON_EVENT = 6;
    public static final int GDATA_SEND_COMPLETED_EVENT__GEVENT_SOURCE = 7;
    public static final int GDATA_SEND_COMPLETED_EVENT_FEATURE_COUNT = 8;

    public EClass getGRTEEvent();

    public EReference getGRTEEvent_GStartOnEvent();

    public EClass getGDataReceivedEvent();

    public EReference getGDataReceivedEvent_GData();

    public EClass getGSwcModeSwitchEvent();

    public EClass getGTimingEvent();

    public EAttribute getGTimingEvent_GPeriod();

    public EClass getGWaitPoint();

    public EAttribute getGWaitPoint_GTimeout();

    public EReference getGWaitPoint_GTriggers();

    public EClass getGDataReceiveErrorEvent();

    public EReference getGDataReceiveErrorEvent_GData();

    public EClass getGOperationInvokedEvent();

    public EReference getGOperationInvokedEvent_GOperation();

    public EClass getGAsynchronousServerCallReturnsEvent();

    public EReference getGAsynchronousServerCallReturnsEvent_GEventSource();

    public EClass getGDataSendCompletedEvent();

    public EReference getGDataSendCompletedEvent_GEventSource();

    public GrteeventsFactory getGrteeventsFactory();

    public static interface Literals {
        public static final EClass GRTE_EVENT = eINSTANCE.getGRTEEvent();
        public static final EReference GRTE_EVENT__GSTART_ON_EVENT = eINSTANCE.getGRTEEvent_GStartOnEvent();
        public static final EClass GDATA_RECEIVED_EVENT = eINSTANCE.getGDataReceivedEvent();
        public static final EReference GDATA_RECEIVED_EVENT__GDATA = eINSTANCE.getGDataReceivedEvent_GData();
        public static final EClass GSWC_MODE_SWITCH_EVENT = eINSTANCE.getGSwcModeSwitchEvent();
        public static final EClass GTIMING_EVENT = eINSTANCE.getGTimingEvent();
        public static final EAttribute GTIMING_EVENT__GPERIOD = eINSTANCE.getGTimingEvent_GPeriod();
        public static final EClass GWAIT_POINT = eINSTANCE.getGWaitPoint();
        public static final EAttribute GWAIT_POINT__GTIMEOUT = eINSTANCE.getGWaitPoint_GTimeout();
        public static final EReference GWAIT_POINT__GTRIGGERS = eINSTANCE.getGWaitPoint_GTriggers();
        public static final EClass GDATA_RECEIVE_ERROR_EVENT = eINSTANCE.getGDataReceiveErrorEvent();
        public static final EReference GDATA_RECEIVE_ERROR_EVENT__GDATA = eINSTANCE.getGDataReceiveErrorEvent_GData();
        public static final EClass GOPERATION_INVOKED_EVENT = eINSTANCE.getGOperationInvokedEvent();
        public static final EReference GOPERATION_INVOKED_EVENT__GOPERATION = eINSTANCE.getGOperationInvokedEvent_GOperation();
        public static final EClass GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT = eINSTANCE.getGAsynchronousServerCallReturnsEvent();
        public static final EReference GASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GEVENT_SOURCE = eINSTANCE.getGAsynchronousServerCallReturnsEvent_GEventSource();
        public static final EClass GDATA_SEND_COMPLETED_EVENT = eINSTANCE.getGDataSendCompletedEvent();
        public static final EReference GDATA_SEND_COMPLETED_EVENT__GEVENT_SOURCE = eINSTANCE.getGDataSendCompletedEvent_GEventSource();
    }
}

