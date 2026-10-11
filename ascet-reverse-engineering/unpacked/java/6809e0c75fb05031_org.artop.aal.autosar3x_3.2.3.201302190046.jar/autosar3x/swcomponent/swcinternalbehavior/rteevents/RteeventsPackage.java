/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsFactory;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface RteeventsPackage
extends EPackage {
    public static final String eNAME = "rteevents";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/rtee";
    public static final String eNS_PREFIX = "";
    public static final RteeventsPackage eINSTANCE = RteeventsPackageImpl.init();
    public static final int RTE_EVENT = 1;
    public static final int RTE_EVENT__GCHECKSUM = 0;
    public static final int RTE_EVENT__GTIMESTAMP = 1;
    public static final int RTE_EVENT__CHECKSUM = 2;
    public static final int RTE_EVENT__TIMESTAMP = 3;
    public static final int RTE_EVENT__GSHORT_NAME = 4;
    public static final int RTE_EVENT__GUUID = 5;
    public static final int RTE_EVENT__GCATEGORY = 6;
    public static final int RTE_EVENT__GDESC = 7;
    public static final int RTE_EVENT__SHORT_NAME = 8;
    public static final int RTE_EVENT__LONG_NAME = 9;
    public static final int RTE_EVENT__DESC = 10;
    public static final int RTE_EVENT__CATEGORY = 11;
    public static final int RTE_EVENT__ADMIN_DATA = 12;
    public static final int RTE_EVENT__INTRODUCTION = 13;
    public static final int RTE_EVENT__UUID = 14;
    public static final int RTE_EVENT__ALL_EXTENSIONS = 15;
    public static final int RTE_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int RTE_EVENT__GSTART_ON_EVENT = 17;
    public static final int RTE_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int RTE_EVENT__MODE_DEPENDENCY = 19;
    public static final int RTE_EVENT__START_ON_EVENT = 20;
    public static final int RTE_EVENT_FEATURE_COUNT = 21;
    public static final int MODE_SWITCHED_ACK_EVENT = 0;
    public static final int MODE_SWITCHED_ACK_EVENT__GCHECKSUM = 0;
    public static final int MODE_SWITCHED_ACK_EVENT__GTIMESTAMP = 1;
    public static final int MODE_SWITCHED_ACK_EVENT__CHECKSUM = 2;
    public static final int MODE_SWITCHED_ACK_EVENT__TIMESTAMP = 3;
    public static final int MODE_SWITCHED_ACK_EVENT__GSHORT_NAME = 4;
    public static final int MODE_SWITCHED_ACK_EVENT__GUUID = 5;
    public static final int MODE_SWITCHED_ACK_EVENT__GCATEGORY = 6;
    public static final int MODE_SWITCHED_ACK_EVENT__GDESC = 7;
    public static final int MODE_SWITCHED_ACK_EVENT__SHORT_NAME = 8;
    public static final int MODE_SWITCHED_ACK_EVENT__LONG_NAME = 9;
    public static final int MODE_SWITCHED_ACK_EVENT__DESC = 10;
    public static final int MODE_SWITCHED_ACK_EVENT__CATEGORY = 11;
    public static final int MODE_SWITCHED_ACK_EVENT__ADMIN_DATA = 12;
    public static final int MODE_SWITCHED_ACK_EVENT__INTRODUCTION = 13;
    public static final int MODE_SWITCHED_ACK_EVENT__UUID = 14;
    public static final int MODE_SWITCHED_ACK_EVENT__ALL_EXTENSIONS = 15;
    public static final int MODE_SWITCHED_ACK_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int MODE_SWITCHED_ACK_EVENT__GSTART_ON_EVENT = 17;
    public static final int MODE_SWITCHED_ACK_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int MODE_SWITCHED_ACK_EVENT__MODE_DEPENDENCY = 19;
    public static final int MODE_SWITCHED_ACK_EVENT__START_ON_EVENT = 20;
    public static final int MODE_SWITCHED_ACK_EVENT__EVENT_SOURCE = 21;
    public static final int MODE_SWITCHED_ACK_EVENT_FEATURE_COUNT = 22;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GCHECKSUM = 0;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GTIMESTAMP = 1;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__CHECKSUM = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__TIMESTAMP = 3;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GSHORT_NAME = 4;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GUUID = 5;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GCATEGORY = 6;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GDESC = 7;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__SHORT_NAME = 8;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__LONG_NAME = 9;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__DESC = 10;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__CATEGORY = 11;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__ADMIN_DATA = 12;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__INTRODUCTION = 13;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__UUID = 14;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__ALL_EXTENSIONS = 15;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GSTART_ON_EVENT = 17;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__MODE_DEPENDENCY = 19;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__START_ON_EVENT = 20;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__GEVENT_SOURCE = 21;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__EVENT_SOURCE = 22;
    public static final int ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT_FEATURE_COUNT = 23;
    public static final int DATA_SEND_COMPLETED_EVENT = 3;
    public static final int DATA_SEND_COMPLETED_EVENT__GCHECKSUM = 0;
    public static final int DATA_SEND_COMPLETED_EVENT__GTIMESTAMP = 1;
    public static final int DATA_SEND_COMPLETED_EVENT__CHECKSUM = 2;
    public static final int DATA_SEND_COMPLETED_EVENT__TIMESTAMP = 3;
    public static final int DATA_SEND_COMPLETED_EVENT__GSHORT_NAME = 4;
    public static final int DATA_SEND_COMPLETED_EVENT__GUUID = 5;
    public static final int DATA_SEND_COMPLETED_EVENT__GCATEGORY = 6;
    public static final int DATA_SEND_COMPLETED_EVENT__GDESC = 7;
    public static final int DATA_SEND_COMPLETED_EVENT__SHORT_NAME = 8;
    public static final int DATA_SEND_COMPLETED_EVENT__LONG_NAME = 9;
    public static final int DATA_SEND_COMPLETED_EVENT__DESC = 10;
    public static final int DATA_SEND_COMPLETED_EVENT__CATEGORY = 11;
    public static final int DATA_SEND_COMPLETED_EVENT__ADMIN_DATA = 12;
    public static final int DATA_SEND_COMPLETED_EVENT__INTRODUCTION = 13;
    public static final int DATA_SEND_COMPLETED_EVENT__UUID = 14;
    public static final int DATA_SEND_COMPLETED_EVENT__ALL_EXTENSIONS = 15;
    public static final int DATA_SEND_COMPLETED_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int DATA_SEND_COMPLETED_EVENT__GSTART_ON_EVENT = 17;
    public static final int DATA_SEND_COMPLETED_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int DATA_SEND_COMPLETED_EVENT__MODE_DEPENDENCY = 19;
    public static final int DATA_SEND_COMPLETED_EVENT__START_ON_EVENT = 20;
    public static final int DATA_SEND_COMPLETED_EVENT__GEVENT_SOURCE = 21;
    public static final int DATA_SEND_COMPLETED_EVENT__EVENT_SOURCE = 22;
    public static final int DATA_SEND_COMPLETED_EVENT_FEATURE_COUNT = 23;
    public static final int DATA_RECEIVED_EVENT = 4;
    public static final int DATA_RECEIVED_EVENT__GCHECKSUM = 0;
    public static final int DATA_RECEIVED_EVENT__GTIMESTAMP = 1;
    public static final int DATA_RECEIVED_EVENT__CHECKSUM = 2;
    public static final int DATA_RECEIVED_EVENT__TIMESTAMP = 3;
    public static final int DATA_RECEIVED_EVENT__GSHORT_NAME = 4;
    public static final int DATA_RECEIVED_EVENT__GUUID = 5;
    public static final int DATA_RECEIVED_EVENT__GCATEGORY = 6;
    public static final int DATA_RECEIVED_EVENT__GDESC = 7;
    public static final int DATA_RECEIVED_EVENT__SHORT_NAME = 8;
    public static final int DATA_RECEIVED_EVENT__LONG_NAME = 9;
    public static final int DATA_RECEIVED_EVENT__DESC = 10;
    public static final int DATA_RECEIVED_EVENT__CATEGORY = 11;
    public static final int DATA_RECEIVED_EVENT__ADMIN_DATA = 12;
    public static final int DATA_RECEIVED_EVENT__INTRODUCTION = 13;
    public static final int DATA_RECEIVED_EVENT__UUID = 14;
    public static final int DATA_RECEIVED_EVENT__ALL_EXTENSIONS = 15;
    public static final int DATA_RECEIVED_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int DATA_RECEIVED_EVENT__GSTART_ON_EVENT = 17;
    public static final int DATA_RECEIVED_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int DATA_RECEIVED_EVENT__MODE_DEPENDENCY = 19;
    public static final int DATA_RECEIVED_EVENT__START_ON_EVENT = 20;
    public static final int DATA_RECEIVED_EVENT__GDATA = 21;
    public static final int DATA_RECEIVED_EVENT__DATA = 22;
    public static final int DATA_RECEIVED_EVENT_FEATURE_COUNT = 23;
    public static final int DATA_RECEIVE_ERROR_EVENT = 5;
    public static final int DATA_RECEIVE_ERROR_EVENT__GCHECKSUM = 0;
    public static final int DATA_RECEIVE_ERROR_EVENT__GTIMESTAMP = 1;
    public static final int DATA_RECEIVE_ERROR_EVENT__CHECKSUM = 2;
    public static final int DATA_RECEIVE_ERROR_EVENT__TIMESTAMP = 3;
    public static final int DATA_RECEIVE_ERROR_EVENT__GSHORT_NAME = 4;
    public static final int DATA_RECEIVE_ERROR_EVENT__GUUID = 5;
    public static final int DATA_RECEIVE_ERROR_EVENT__GCATEGORY = 6;
    public static final int DATA_RECEIVE_ERROR_EVENT__GDESC = 7;
    public static final int DATA_RECEIVE_ERROR_EVENT__SHORT_NAME = 8;
    public static final int DATA_RECEIVE_ERROR_EVENT__LONG_NAME = 9;
    public static final int DATA_RECEIVE_ERROR_EVENT__DESC = 10;
    public static final int DATA_RECEIVE_ERROR_EVENT__CATEGORY = 11;
    public static final int DATA_RECEIVE_ERROR_EVENT__ADMIN_DATA = 12;
    public static final int DATA_RECEIVE_ERROR_EVENT__INTRODUCTION = 13;
    public static final int DATA_RECEIVE_ERROR_EVENT__UUID = 14;
    public static final int DATA_RECEIVE_ERROR_EVENT__ALL_EXTENSIONS = 15;
    public static final int DATA_RECEIVE_ERROR_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int DATA_RECEIVE_ERROR_EVENT__GSTART_ON_EVENT = 17;
    public static final int DATA_RECEIVE_ERROR_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int DATA_RECEIVE_ERROR_EVENT__MODE_DEPENDENCY = 19;
    public static final int DATA_RECEIVE_ERROR_EVENT__START_ON_EVENT = 20;
    public static final int DATA_RECEIVE_ERROR_EVENT__GDATA = 21;
    public static final int DATA_RECEIVE_ERROR_EVENT__DATA = 22;
    public static final int DATA_RECEIVE_ERROR_EVENT_FEATURE_COUNT = 23;
    public static final int TIMING_EVENT = 6;
    public static final int TIMING_EVENT__GCHECKSUM = 0;
    public static final int TIMING_EVENT__GTIMESTAMP = 1;
    public static final int TIMING_EVENT__CHECKSUM = 2;
    public static final int TIMING_EVENT__TIMESTAMP = 3;
    public static final int TIMING_EVENT__GSHORT_NAME = 4;
    public static final int TIMING_EVENT__GUUID = 5;
    public static final int TIMING_EVENT__GCATEGORY = 6;
    public static final int TIMING_EVENT__GDESC = 7;
    public static final int TIMING_EVENT__SHORT_NAME = 8;
    public static final int TIMING_EVENT__LONG_NAME = 9;
    public static final int TIMING_EVENT__DESC = 10;
    public static final int TIMING_EVENT__CATEGORY = 11;
    public static final int TIMING_EVENT__ADMIN_DATA = 12;
    public static final int TIMING_EVENT__INTRODUCTION = 13;
    public static final int TIMING_EVENT__UUID = 14;
    public static final int TIMING_EVENT__ALL_EXTENSIONS = 15;
    public static final int TIMING_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int TIMING_EVENT__GSTART_ON_EVENT = 17;
    public static final int TIMING_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int TIMING_EVENT__MODE_DEPENDENCY = 19;
    public static final int TIMING_EVENT__START_ON_EVENT = 20;
    public static final int TIMING_EVENT__GPERIOD = 21;
    public static final int TIMING_EVENT__PERIOD = 22;
    public static final int TIMING_EVENT_FEATURE_COUNT = 23;
    public static final int OPERATION_INVOKED_EVENT = 7;
    public static final int OPERATION_INVOKED_EVENT__GCHECKSUM = 0;
    public static final int OPERATION_INVOKED_EVENT__GTIMESTAMP = 1;
    public static final int OPERATION_INVOKED_EVENT__CHECKSUM = 2;
    public static final int OPERATION_INVOKED_EVENT__TIMESTAMP = 3;
    public static final int OPERATION_INVOKED_EVENT__GSHORT_NAME = 4;
    public static final int OPERATION_INVOKED_EVENT__GUUID = 5;
    public static final int OPERATION_INVOKED_EVENT__GCATEGORY = 6;
    public static final int OPERATION_INVOKED_EVENT__GDESC = 7;
    public static final int OPERATION_INVOKED_EVENT__SHORT_NAME = 8;
    public static final int OPERATION_INVOKED_EVENT__LONG_NAME = 9;
    public static final int OPERATION_INVOKED_EVENT__DESC = 10;
    public static final int OPERATION_INVOKED_EVENT__CATEGORY = 11;
    public static final int OPERATION_INVOKED_EVENT__ADMIN_DATA = 12;
    public static final int OPERATION_INVOKED_EVENT__INTRODUCTION = 13;
    public static final int OPERATION_INVOKED_EVENT__UUID = 14;
    public static final int OPERATION_INVOKED_EVENT__ALL_EXTENSIONS = 15;
    public static final int OPERATION_INVOKED_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int OPERATION_INVOKED_EVENT__GSTART_ON_EVENT = 17;
    public static final int OPERATION_INVOKED_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int OPERATION_INVOKED_EVENT__MODE_DEPENDENCY = 19;
    public static final int OPERATION_INVOKED_EVENT__START_ON_EVENT = 20;
    public static final int OPERATION_INVOKED_EVENT__GOPERATION = 21;
    public static final int OPERATION_INVOKED_EVENT__OPERATION = 22;
    public static final int OPERATION_INVOKED_EVENT_FEATURE_COUNT = 23;
    public static final int MODE_SWITCH_EVENT = 8;
    public static final int MODE_SWITCH_EVENT__GCHECKSUM = 0;
    public static final int MODE_SWITCH_EVENT__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_EVENT__CHECKSUM = 2;
    public static final int MODE_SWITCH_EVENT__TIMESTAMP = 3;
    public static final int MODE_SWITCH_EVENT__GSHORT_NAME = 4;
    public static final int MODE_SWITCH_EVENT__GUUID = 5;
    public static final int MODE_SWITCH_EVENT__GCATEGORY = 6;
    public static final int MODE_SWITCH_EVENT__GDESC = 7;
    public static final int MODE_SWITCH_EVENT__SHORT_NAME = 8;
    public static final int MODE_SWITCH_EVENT__LONG_NAME = 9;
    public static final int MODE_SWITCH_EVENT__DESC = 10;
    public static final int MODE_SWITCH_EVENT__CATEGORY = 11;
    public static final int MODE_SWITCH_EVENT__ADMIN_DATA = 12;
    public static final int MODE_SWITCH_EVENT__INTRODUCTION = 13;
    public static final int MODE_SWITCH_EVENT__UUID = 14;
    public static final int MODE_SWITCH_EVENT__ALL_EXTENSIONS = 15;
    public static final int MODE_SWITCH_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int MODE_SWITCH_EVENT__GSTART_ON_EVENT = 17;
    public static final int MODE_SWITCH_EVENT__INTERNAL_BEHAVIOR = 18;
    public static final int MODE_SWITCH_EVENT__MODE_DEPENDENCY = 19;
    public static final int MODE_SWITCH_EVENT__START_ON_EVENT = 20;
    public static final int MODE_SWITCH_EVENT__ACTIVATION = 21;
    public static final int MODE_SWITCH_EVENT__MODE = 22;
    public static final int MODE_SWITCH_EVENT_FEATURE_COUNT = 23;
    public static final int WAIT_POINT = 9;
    public static final int WAIT_POINT__GCHECKSUM = 0;
    public static final int WAIT_POINT__GTIMESTAMP = 1;
    public static final int WAIT_POINT__CHECKSUM = 2;
    public static final int WAIT_POINT__TIMESTAMP = 3;
    public static final int WAIT_POINT__GSHORT_NAME = 4;
    public static final int WAIT_POINT__GUUID = 5;
    public static final int WAIT_POINT__GCATEGORY = 6;
    public static final int WAIT_POINT__GDESC = 7;
    public static final int WAIT_POINT__SHORT_NAME = 8;
    public static final int WAIT_POINT__LONG_NAME = 9;
    public static final int WAIT_POINT__DESC = 10;
    public static final int WAIT_POINT__CATEGORY = 11;
    public static final int WAIT_POINT__ADMIN_DATA = 12;
    public static final int WAIT_POINT__INTRODUCTION = 13;
    public static final int WAIT_POINT__UUID = 14;
    public static final int WAIT_POINT__ALL_EXTENSIONS = 15;
    public static final int WAIT_POINT__CONTAINED_EXTENSIONS = 16;
    public static final int WAIT_POINT__GTIMEOUT = 17;
    public static final int WAIT_POINT__GTRIGGERS = 18;
    public static final int WAIT_POINT__RUNNABLE_ENTITY = 19;
    public static final int WAIT_POINT__TIMEOUT = 20;
    public static final int WAIT_POINT__TRIGGER = 21;
    public static final int WAIT_POINT_FEATURE_COUNT = 22;

    public EClass getModeSwitchedAckEvent();

    public EReference getModeSwitchedAckEvent_EventSource();

    public EClass getRTEEvent();

    public EReference getRTEEvent_InternalBehavior();

    public EReference getRTEEvent_ModeDependency();

    public EReference getRTEEvent_StartOnEvent();

    public EClass getAsynchronousServerCallReturnsEvent();

    public EReference getAsynchronousServerCallReturnsEvent_EventSource();

    public EClass getDataSendCompletedEvent();

    public EReference getDataSendCompletedEvent_EventSource();

    public EClass getDataReceivedEvent();

    public EReference getDataReceivedEvent_Data();

    public EClass getDataReceiveErrorEvent();

    public EReference getDataReceiveErrorEvent_Data();

    public EClass getTimingEvent();

    public EAttribute getTimingEvent_Period();

    public EClass getOperationInvokedEvent();

    public EReference getOperationInvokedEvent_Operation();

    public EClass getModeSwitchEvent();

    public EAttribute getModeSwitchEvent_Activation();

    public EReference getModeSwitchEvent_Mode();

    public EClass getWaitPoint();

    public EReference getWaitPoint_RunnableEntity();

    public EAttribute getWaitPoint_Timeout();

    public EReference getWaitPoint_Trigger();

    public RteeventsFactory getRteeventsFactory();

    public static interface Literals {
        public static final EClass MODE_SWITCHED_ACK_EVENT = eINSTANCE.getModeSwitchedAckEvent();
        public static final EReference MODE_SWITCHED_ACK_EVENT__EVENT_SOURCE = eINSTANCE.getModeSwitchedAckEvent_EventSource();
        public static final EClass RTE_EVENT = eINSTANCE.getRTEEvent();
        public static final EReference RTE_EVENT__INTERNAL_BEHAVIOR = eINSTANCE.getRTEEvent_InternalBehavior();
        public static final EReference RTE_EVENT__MODE_DEPENDENCY = eINSTANCE.getRTEEvent_ModeDependency();
        public static final EReference RTE_EVENT__START_ON_EVENT = eINSTANCE.getRTEEvent_StartOnEvent();
        public static final EClass ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT = eINSTANCE.getAsynchronousServerCallReturnsEvent();
        public static final EReference ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT__EVENT_SOURCE = eINSTANCE.getAsynchronousServerCallReturnsEvent_EventSource();
        public static final EClass DATA_SEND_COMPLETED_EVENT = eINSTANCE.getDataSendCompletedEvent();
        public static final EReference DATA_SEND_COMPLETED_EVENT__EVENT_SOURCE = eINSTANCE.getDataSendCompletedEvent_EventSource();
        public static final EClass DATA_RECEIVED_EVENT = eINSTANCE.getDataReceivedEvent();
        public static final EReference DATA_RECEIVED_EVENT__DATA = eINSTANCE.getDataReceivedEvent_Data();
        public static final EClass DATA_RECEIVE_ERROR_EVENT = eINSTANCE.getDataReceiveErrorEvent();
        public static final EReference DATA_RECEIVE_ERROR_EVENT__DATA = eINSTANCE.getDataReceiveErrorEvent_Data();
        public static final EClass TIMING_EVENT = eINSTANCE.getTimingEvent();
        public static final EAttribute TIMING_EVENT__PERIOD = eINSTANCE.getTimingEvent_Period();
        public static final EClass OPERATION_INVOKED_EVENT = eINSTANCE.getOperationInvokedEvent();
        public static final EReference OPERATION_INVOKED_EVENT__OPERATION = eINSTANCE.getOperationInvokedEvent_Operation();
        public static final EClass MODE_SWITCH_EVENT = eINSTANCE.getModeSwitchEvent();
        public static final EAttribute MODE_SWITCH_EVENT__ACTIVATION = eINSTANCE.getModeSwitchEvent_Activation();
        public static final EReference MODE_SWITCH_EVENT__MODE = eINSTANCE.getModeSwitchEvent_Mode();
        public static final EClass WAIT_POINT = eINSTANCE.getWaitPoint();
        public static final EReference WAIT_POINT__RUNNABLE_ENTITY = eINSTANCE.getWaitPoint_RunnableEntity();
        public static final EAttribute WAIT_POINT__TIMEOUT = eINSTANCE.getWaitPoint_Timeout();
        public static final EReference WAIT_POINT__TRIGGER = eINSTANCE.getWaitPoint_Trigger();
    }
}

