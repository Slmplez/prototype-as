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
package gautosar.gswcomponents.gportinterface;

import gautosar.gswcomponents.gportinterface.GportinterfaceFactory;
import gautosar.gswcomponents.gportinterface.impl.GportinterfacePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GportinterfacePackage
extends EPackage {
    public static final String eNAME = "gportinterface";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/pi";
    public static final String eNS_PREFIX = "";
    public static final GportinterfacePackage eINSTANCE = GportinterfacePackageImpl.init();
    public static final int GPORT_INTERFACE = 0;
    public static final int GPORT_INTERFACE__GCHECKSUM = 0;
    public static final int GPORT_INTERFACE__GTIMESTAMP = 1;
    public static final int GPORT_INTERFACE__GSHORT_NAME = 2;
    public static final int GPORT_INTERFACE__GUUID = 3;
    public static final int GPORT_INTERFACE__GCATEGORY = 4;
    public static final int GPORT_INTERFACE__GDESC = 5;
    public static final int GPORT_INTERFACE__GAR_PACKAGE = 6;
    public static final int GPORT_INTERFACE__GIS_SERVICE = 7;
    public static final int GPORT_INTERFACE_FEATURE_COUNT = 8;
    public static final int GSENDER_RECEIVER_INTERFACE = 1;
    public static final int GSENDER_RECEIVER_INTERFACE__GCHECKSUM = 0;
    public static final int GSENDER_RECEIVER_INTERFACE__GTIMESTAMP = 1;
    public static final int GSENDER_RECEIVER_INTERFACE__GSHORT_NAME = 2;
    public static final int GSENDER_RECEIVER_INTERFACE__GUUID = 3;
    public static final int GSENDER_RECEIVER_INTERFACE__GCATEGORY = 4;
    public static final int GSENDER_RECEIVER_INTERFACE__GDESC = 5;
    public static final int GSENDER_RECEIVER_INTERFACE__GAR_PACKAGE = 6;
    public static final int GSENDER_RECEIVER_INTERFACE__GIS_SERVICE = 7;
    public static final int GSENDER_RECEIVER_INTERFACE__GDATA_ELEMENTS = 8;
    public static final int GSENDER_RECEIVER_INTERFACE_FEATURE_COUNT = 9;
    public static final int GCLIENT_SERVER_INTERFACE = 2;
    public static final int GCLIENT_SERVER_INTERFACE__GCHECKSUM = 0;
    public static final int GCLIENT_SERVER_INTERFACE__GTIMESTAMP = 1;
    public static final int GCLIENT_SERVER_INTERFACE__GSHORT_NAME = 2;
    public static final int GCLIENT_SERVER_INTERFACE__GUUID = 3;
    public static final int GCLIENT_SERVER_INTERFACE__GCATEGORY = 4;
    public static final int GCLIENT_SERVER_INTERFACE__GDESC = 5;
    public static final int GCLIENT_SERVER_INTERFACE__GAR_PACKAGE = 6;
    public static final int GCLIENT_SERVER_INTERFACE__GIS_SERVICE = 7;
    public static final int GCLIENT_SERVER_INTERFACE__GOPERATIONS = 8;
    public static final int GCLIENT_SERVER_INTERFACE__GPOSSIBLE_ERRORS = 9;
    public static final int GCLIENT_SERVER_INTERFACE_FEATURE_COUNT = 10;
    public static final int GPARAMETER_INTERFACE = 3;
    public static final int GPARAMETER_INTERFACE__GCHECKSUM = 0;
    public static final int GPARAMETER_INTERFACE__GTIMESTAMP = 1;
    public static final int GPARAMETER_INTERFACE__GSHORT_NAME = 2;
    public static final int GPARAMETER_INTERFACE__GUUID = 3;
    public static final int GPARAMETER_INTERFACE__GCATEGORY = 4;
    public static final int GPARAMETER_INTERFACE__GDESC = 5;
    public static final int GPARAMETER_INTERFACE__GAR_PACKAGE = 6;
    public static final int GPARAMETER_INTERFACE__GIS_SERVICE = 7;
    public static final int GPARAMETER_INTERFACE__GPARAMETERS = 8;
    public static final int GPARAMETER_INTERFACE_FEATURE_COUNT = 9;
    public static final int GNV_DATA_INTERFACE = 4;
    public static final int GNV_DATA_INTERFACE__GCHECKSUM = 0;
    public static final int GNV_DATA_INTERFACE__GTIMESTAMP = 1;
    public static final int GNV_DATA_INTERFACE__GSHORT_NAME = 2;
    public static final int GNV_DATA_INTERFACE__GUUID = 3;
    public static final int GNV_DATA_INTERFACE__GCATEGORY = 4;
    public static final int GNV_DATA_INTERFACE__GDESC = 5;
    public static final int GNV_DATA_INTERFACE__GAR_PACKAGE = 6;
    public static final int GNV_DATA_INTERFACE__GIS_SERVICE = 7;
    public static final int GNV_DATA_INTERFACE_FEATURE_COUNT = 8;
    public static final int GMODE_SWITCH_INTERFACE = 5;
    public static final int GMODE_SWITCH_INTERFACE__GCHECKSUM = 0;
    public static final int GMODE_SWITCH_INTERFACE__GTIMESTAMP = 1;
    public static final int GMODE_SWITCH_INTERFACE__GSHORT_NAME = 2;
    public static final int GMODE_SWITCH_INTERFACE__GUUID = 3;
    public static final int GMODE_SWITCH_INTERFACE__GCATEGORY = 4;
    public static final int GMODE_SWITCH_INTERFACE__GDESC = 5;
    public static final int GMODE_SWITCH_INTERFACE__GAR_PACKAGE = 6;
    public static final int GMODE_SWITCH_INTERFACE__GIS_SERVICE = 7;
    public static final int GMODE_SWITCH_INTERFACE__GMODE_GROUPS = 8;
    public static final int GMODE_SWITCH_INTERFACE_FEATURE_COUNT = 9;
    public static final int GTRIGGER_INTERFACE = 6;
    public static final int GTRIGGER_INTERFACE__GCHECKSUM = 0;
    public static final int GTRIGGER_INTERFACE__GTIMESTAMP = 1;
    public static final int GTRIGGER_INTERFACE__GSHORT_NAME = 2;
    public static final int GTRIGGER_INTERFACE__GUUID = 3;
    public static final int GTRIGGER_INTERFACE__GCATEGORY = 4;
    public static final int GTRIGGER_INTERFACE__GDESC = 5;
    public static final int GTRIGGER_INTERFACE__GAR_PACKAGE = 6;
    public static final int GTRIGGER_INTERFACE__GIS_SERVICE = 7;
    public static final int GTRIGGER_INTERFACE_FEATURE_COUNT = 8;
    public static final int GARGUMENT_DATA_PROTOTYPE = 7;
    public static final int GARGUMENT_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int GARGUMENT_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GARGUMENT_DATA_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GARGUMENT_DATA_PROTOTYPE__GUUID = 3;
    public static final int GARGUMENT_DATA_PROTOTYPE__GCATEGORY = 4;
    public static final int GARGUMENT_DATA_PROTOTYPE__GDESC = 5;
    public static final int GARGUMENT_DATA_PROTOTYPE__GTYPE = 6;
    public static final int GARGUMENT_DATA_PROTOTYPE__GDIRECTION = 7;
    public static final int GARGUMENT_DATA_PROTOTYPE_FEATURE_COUNT = 8;
    public static final int GCLIENT_SERVER_OPERATION = 8;
    public static final int GCLIENT_SERVER_OPERATION__GCHECKSUM = 0;
    public static final int GCLIENT_SERVER_OPERATION__GTIMESTAMP = 1;
    public static final int GCLIENT_SERVER_OPERATION__GSHORT_NAME = 2;
    public static final int GCLIENT_SERVER_OPERATION__GUUID = 3;
    public static final int GCLIENT_SERVER_OPERATION__GCATEGORY = 4;
    public static final int GCLIENT_SERVER_OPERATION__GDESC = 5;
    public static final int GCLIENT_SERVER_OPERATION__GARGUMENTS = 6;
    public static final int GCLIENT_SERVER_OPERATION__GPOSSIBLE_ERRORS = 7;
    public static final int GCLIENT_SERVER_OPERATION_FEATURE_COUNT = 8;
    public static final int GAPPLICATION_ERROR = 9;
    public static final int GAPPLICATION_ERROR__GCHECKSUM = 0;
    public static final int GAPPLICATION_ERROR__GTIMESTAMP = 1;
    public static final int GAPPLICATION_ERROR__GSHORT_NAME = 2;
    public static final int GAPPLICATION_ERROR__GUUID = 3;
    public static final int GAPPLICATION_ERROR__GCATEGORY = 4;
    public static final int GAPPLICATION_ERROR__GDESC = 5;
    public static final int GAPPLICATION_ERROR__GERROR_CODE = 6;
    public static final int GAPPLICATION_ERROR_FEATURE_COUNT = 7;
    public static final int GARGUMENT_DIRECTION_ENUM = 10;

    public EClass getGPortInterface();

    public EAttribute getGPortInterface_GIsService();

    public EClass getGSenderReceiverInterface();

    public EReference getGSenderReceiverInterface_GDataElements();

    public EClass getGClientServerInterface();

    public EReference getGClientServerInterface_GOperations();

    public EReference getGClientServerInterface_GPossibleErrors();

    public EClass getGParameterInterface();

    public EReference getGParameterInterface_GParameters();

    public EClass getGNvDataInterface();

    public EClass getGModeSwitchInterface();

    public EReference getGModeSwitchInterface_GModeGroups();

    public EClass getGTriggerInterface();

    public EClass getGArgumentDataPrototype();

    public EAttribute getGArgumentDataPrototype_GDirection();

    public EClass getGClientServerOperation();

    public EReference getGClientServerOperation_GArguments();

    public EReference getGClientServerOperation_GPossibleErrors();

    public EClass getGApplicationError();

    public EAttribute getGApplicationError_GErrorCode();

    public EEnum getGArgumentDirectionEnum();

    public GportinterfaceFactory getGportinterfaceFactory();

    public static interface Literals {
        public static final EClass GPORT_INTERFACE = eINSTANCE.getGPortInterface();
        public static final EAttribute GPORT_INTERFACE__GIS_SERVICE = eINSTANCE.getGPortInterface_GIsService();
        public static final EClass GSENDER_RECEIVER_INTERFACE = eINSTANCE.getGSenderReceiverInterface();
        public static final EReference GSENDER_RECEIVER_INTERFACE__GDATA_ELEMENTS = eINSTANCE.getGSenderReceiverInterface_GDataElements();
        public static final EClass GCLIENT_SERVER_INTERFACE = eINSTANCE.getGClientServerInterface();
        public static final EReference GCLIENT_SERVER_INTERFACE__GOPERATIONS = eINSTANCE.getGClientServerInterface_GOperations();
        public static final EReference GCLIENT_SERVER_INTERFACE__GPOSSIBLE_ERRORS = eINSTANCE.getGClientServerInterface_GPossibleErrors();
        public static final EClass GPARAMETER_INTERFACE = eINSTANCE.getGParameterInterface();
        public static final EReference GPARAMETER_INTERFACE__GPARAMETERS = eINSTANCE.getGParameterInterface_GParameters();
        public static final EClass GNV_DATA_INTERFACE = eINSTANCE.getGNvDataInterface();
        public static final EClass GMODE_SWITCH_INTERFACE = eINSTANCE.getGModeSwitchInterface();
        public static final EReference GMODE_SWITCH_INTERFACE__GMODE_GROUPS = eINSTANCE.getGModeSwitchInterface_GModeGroups();
        public static final EClass GTRIGGER_INTERFACE = eINSTANCE.getGTriggerInterface();
        public static final EClass GARGUMENT_DATA_PROTOTYPE = eINSTANCE.getGArgumentDataPrototype();
        public static final EAttribute GARGUMENT_DATA_PROTOTYPE__GDIRECTION = eINSTANCE.getGArgumentDataPrototype_GDirection();
        public static final EClass GCLIENT_SERVER_OPERATION = eINSTANCE.getGClientServerOperation();
        public static final EReference GCLIENT_SERVER_OPERATION__GARGUMENTS = eINSTANCE.getGClientServerOperation_GArguments();
        public static final EReference GCLIENT_SERVER_OPERATION__GPOSSIBLE_ERRORS = eINSTANCE.getGClientServerOperation_GPossibleErrors();
        public static final EClass GAPPLICATION_ERROR = eINSTANCE.getGApplicationError();
        public static final EAttribute GAPPLICATION_ERROR__GERROR_CODE = eINSTANCE.getGApplicationError_GErrorCode();
        public static final EEnum GARGUMENT_DIRECTION_ENUM = eINSTANCE.getGArgumentDirectionEnum();
    }
}

