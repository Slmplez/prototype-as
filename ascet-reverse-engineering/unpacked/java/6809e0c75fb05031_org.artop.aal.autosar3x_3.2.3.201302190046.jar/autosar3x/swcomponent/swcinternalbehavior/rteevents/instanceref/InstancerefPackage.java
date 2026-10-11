/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefFactory;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA = 0;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__GCHECKSUM = 0;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__GTIMESTAMP = 1;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__CHECKSUM = 2;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__TIMESTAMP = 3;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__GCONTEXT_RPORT = 4;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__GTARGET_DATA_ELEMENT = 5;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__DATA_RECEIVE_ERROR_EVENT = 6;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__RPORT_PROTOTYPE = 7;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int DATA_RECEIVE_ERROR_EVENT_DATA_FEATURE_COUNT = 9;
    public static final int MODE_SWITCH_EVENT_MODE = 1;
    public static final int MODE_SWITCH_EVENT_MODE__GCHECKSUM = 0;
    public static final int MODE_SWITCH_EVENT_MODE__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_EVENT_MODE__CHECKSUM = 2;
    public static final int MODE_SWITCH_EVENT_MODE__TIMESTAMP = 3;
    public static final int MODE_SWITCH_EVENT_MODE__GCONTEXT_RPORT = 4;
    public static final int MODE_SWITCH_EVENT_MODE__GCONTEXT_MODE_DECLARATION_GROUP_PROTOTYPE = 5;
    public static final int MODE_SWITCH_EVENT_MODE__GTARGET_MODE_DECLARATION = 6;
    public static final int MODE_SWITCH_EVENT_MODE__MODE_SWITCH_EVENT = 7;
    public static final int MODE_SWITCH_EVENT_MODE__RPORT_PROTOTYPE = 8;
    public static final int MODE_SWITCH_EVENT_MODE__MODE_DECLARATION_GROUP_PROTOTYPE = 9;
    public static final int MODE_SWITCH_EVENT_MODE__MODE_DECLARATION = 10;
    public static final int MODE_SWITCH_EVENT_MODE_FEATURE_COUNT = 11;
    public static final int OPERATION_INVOKED_EVENT_OPERATION = 2;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__GCHECKSUM = 0;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__GTIMESTAMP = 1;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__CHECKSUM = 2;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__TIMESTAMP = 3;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__GCONTEXT_PPORT = 4;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__GTARGET_PROVIDED_OPERATION = 5;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__OPERATION_INVOKED_EVENT = 6;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__PPORT_PROTOTYPE = 7;
    public static final int OPERATION_INVOKED_EVENT_OPERATION__OPERATION_PROTOTYPE = 8;
    public static final int OPERATION_INVOKED_EVENT_OPERATION_FEATURE_COUNT = 9;
    public static final int DATA_RECEIVED_EVENT_DATA = 3;
    public static final int DATA_RECEIVED_EVENT_DATA__GCHECKSUM = 0;
    public static final int DATA_RECEIVED_EVENT_DATA__GTIMESTAMP = 1;
    public static final int DATA_RECEIVED_EVENT_DATA__CHECKSUM = 2;
    public static final int DATA_RECEIVED_EVENT_DATA__TIMESTAMP = 3;
    public static final int DATA_RECEIVED_EVENT_DATA__GCONTEXT_RPORT = 4;
    public static final int DATA_RECEIVED_EVENT_DATA__GTARGET_DATA_ELEMENT = 5;
    public static final int DATA_RECEIVED_EVENT_DATA__DATA_RECEIVED_EVENT = 6;
    public static final int DATA_RECEIVED_EVENT_DATA__RPORT_PROTOTYPE = 7;
    public static final int DATA_RECEIVED_EVENT_DATA__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int DATA_RECEIVED_EVENT_DATA_FEATURE_COUNT = 9;

    public EClass getDataReceiveErrorEventData();

    public EReference getDataReceiveErrorEventData_DataReceiveErrorEvent();

    public EReference getDataReceiveErrorEventData_RPortPrototype();

    public EReference getDataReceiveErrorEventData_DataElementPrototype();

    public EClass getModeSwitchEventMode();

    public EReference getModeSwitchEventMode_ModeSwitchEvent();

    public EReference getModeSwitchEventMode_RPortPrototype();

    public EReference getModeSwitchEventMode_ModeDeclarationGroupPrototype();

    public EReference getModeSwitchEventMode_ModeDeclaration();

    public EClass getOperationInvokedEventOperation();

    public EReference getOperationInvokedEventOperation_OperationInvokedEvent();

    public EReference getOperationInvokedEventOperation_PPortPrototype();

    public EReference getOperationInvokedEventOperation_OperationPrototype();

    public EClass getDataReceivedEventData();

    public EReference getDataReceivedEventData_DataReceivedEvent();

    public EReference getDataReceivedEventData_RPortPrototype();

    public EReference getDataReceivedEventData_DataElementPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass DATA_RECEIVE_ERROR_EVENT_DATA = eINSTANCE.getDataReceiveErrorEventData();
        public static final EReference DATA_RECEIVE_ERROR_EVENT_DATA__DATA_RECEIVE_ERROR_EVENT = eINSTANCE.getDataReceiveErrorEventData_DataReceiveErrorEvent();
        public static final EReference DATA_RECEIVE_ERROR_EVENT_DATA__RPORT_PROTOTYPE = eINSTANCE.getDataReceiveErrorEventData_RPortPrototype();
        public static final EReference DATA_RECEIVE_ERROR_EVENT_DATA__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataReceiveErrorEventData_DataElementPrototype();
        public static final EClass MODE_SWITCH_EVENT_MODE = eINSTANCE.getModeSwitchEventMode();
        public static final EReference MODE_SWITCH_EVENT_MODE__MODE_SWITCH_EVENT = eINSTANCE.getModeSwitchEventMode_ModeSwitchEvent();
        public static final EReference MODE_SWITCH_EVENT_MODE__RPORT_PROTOTYPE = eINSTANCE.getModeSwitchEventMode_RPortPrototype();
        public static final EReference MODE_SWITCH_EVENT_MODE__MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeSwitchEventMode_ModeDeclarationGroupPrototype();
        public static final EReference MODE_SWITCH_EVENT_MODE__MODE_DECLARATION = eINSTANCE.getModeSwitchEventMode_ModeDeclaration();
        public static final EClass OPERATION_INVOKED_EVENT_OPERATION = eINSTANCE.getOperationInvokedEventOperation();
        public static final EReference OPERATION_INVOKED_EVENT_OPERATION__OPERATION_INVOKED_EVENT = eINSTANCE.getOperationInvokedEventOperation_OperationInvokedEvent();
        public static final EReference OPERATION_INVOKED_EVENT_OPERATION__PPORT_PROTOTYPE = eINSTANCE.getOperationInvokedEventOperation_PPortPrototype();
        public static final EReference OPERATION_INVOKED_EVENT_OPERATION__OPERATION_PROTOTYPE = eINSTANCE.getOperationInvokedEventOperation_OperationPrototype();
        public static final EClass DATA_RECEIVED_EVENT_DATA = eINSTANCE.getDataReceivedEventData();
        public static final EReference DATA_RECEIVED_EVENT_DATA__DATA_RECEIVED_EVENT = eINSTANCE.getDataReceivedEventData_DataReceivedEvent();
        public static final EReference DATA_RECEIVED_EVENT_DATA__RPORT_PROTOTYPE = eINSTANCE.getDataReceivedEventData_RPortPrototype();
        public static final EReference DATA_RECEIVED_EVENT_DATA__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataReceivedEventData_DataElementPrototype();
    }
}

