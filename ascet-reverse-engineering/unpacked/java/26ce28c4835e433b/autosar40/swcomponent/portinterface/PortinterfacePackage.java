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
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.portinterface.PortinterfaceFactory;
import autosar40.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PortinterfacePackage
extends EPackage {
    public static final String eNAME = "portinterface";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/pi";
    public static final String eNS_PREFIX = "";
    public static final PortinterfacePackage eINSTANCE = PortinterfacePackageImpl.init();
    public static final int CLIENT_SERVER_OPERATION = 0;
    public static final int CLIENT_SERVER_OPERATION__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_OPERATION__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_OPERATION__CHECKSUM = 2;
    public static final int CLIENT_SERVER_OPERATION__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_OPERATION__GSHORT_NAME = 4;
    public static final int CLIENT_SERVER_OPERATION__SHORT_NAME = 5;
    public static final int CLIENT_SERVER_OPERATION__LONG_NAME = 6;
    public static final int CLIENT_SERVER_OPERATION__GUUID = 7;
    public static final int CLIENT_SERVER_OPERATION__GCATEGORY = 8;
    public static final int CLIENT_SERVER_OPERATION__GDESC = 9;
    public static final int CLIENT_SERVER_OPERATION__DESC = 10;
    public static final int CLIENT_SERVER_OPERATION__CATEGORY = 11;
    public static final int CLIENT_SERVER_OPERATION__ADMIN_DATA = 12;
    public static final int CLIENT_SERVER_OPERATION__INTRODUCTION = 13;
    public static final int CLIENT_SERVER_OPERATION__ANNOTATIONS = 14;
    public static final int CLIENT_SERVER_OPERATION__UUID = 15;
    public static final int CLIENT_SERVER_OPERATION__ALL_EXTENSIONS = 16;
    public static final int CLIENT_SERVER_OPERATION__CONTAINED_EXTENSIONS = 17;
    public static final int CLIENT_SERVER_OPERATION__ATP_CLASSIFIER = 18;
    public static final int CLIENT_SERVER_OPERATION__GARGUMENTS = 19;
    public static final int CLIENT_SERVER_OPERATION__GPOSSIBLE_ERRORS = 20;
    public static final int CLIENT_SERVER_OPERATION__CLIENT_SERVER_INTERFACE = 21;
    public static final int CLIENT_SERVER_OPERATION__ARGUMENTS = 22;
    public static final int CLIENT_SERVER_OPERATION__POSSIBLE_ERRORS = 23;
    public static final int CLIENT_SERVER_OPERATION__VARIATION_POINT = 24;
    public static final int CLIENT_SERVER_OPERATION_FEATURE_COUNT = 25;
    public static final int ARGUMENT_DATA_PROTOTYPE = 1;
    public static final int ARGUMENT_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int ARGUMENT_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int ARGUMENT_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int ARGUMENT_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int ARGUMENT_DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int ARGUMENT_DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int ARGUMENT_DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int ARGUMENT_DATA_PROTOTYPE__GUUID = 7;
    public static final int ARGUMENT_DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int ARGUMENT_DATA_PROTOTYPE__GDESC = 9;
    public static final int ARGUMENT_DATA_PROTOTYPE__DESC = 10;
    public static final int ARGUMENT_DATA_PROTOTYPE__CATEGORY = 11;
    public static final int ARGUMENT_DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int ARGUMENT_DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int ARGUMENT_DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int ARGUMENT_DATA_PROTOTYPE__UUID = 15;
    public static final int ARGUMENT_DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int ARGUMENT_DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int ARGUMENT_DATA_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int ARGUMENT_DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 19;
    public static final int ARGUMENT_DATA_PROTOTYPE__GTYPE = 20;
    public static final int ARGUMENT_DATA_PROTOTYPE__TYPE = 21;
    public static final int ARGUMENT_DATA_PROTOTYPE__GDIRECTION = 22;
    public static final int ARGUMENT_DATA_PROTOTYPE__CLIENT_SERVER_OPERATION = 23;
    public static final int ARGUMENT_DATA_PROTOTYPE__DIRECTION = 24;
    public static final int ARGUMENT_DATA_PROTOTYPE__SERVER_ARGUMENT_IMPL_POLICY = 25;
    public static final int ARGUMENT_DATA_PROTOTYPE_FEATURE_COUNT = 26;
    public static final int APPLICATION_ERROR = 2;
    public static final int APPLICATION_ERROR__GCHECKSUM = 0;
    public static final int APPLICATION_ERROR__GTIMESTAMP = 1;
    public static final int APPLICATION_ERROR__CHECKSUM = 2;
    public static final int APPLICATION_ERROR__TIMESTAMP = 3;
    public static final int APPLICATION_ERROR__GSHORT_NAME = 4;
    public static final int APPLICATION_ERROR__SHORT_NAME = 5;
    public static final int APPLICATION_ERROR__LONG_NAME = 6;
    public static final int APPLICATION_ERROR__GUUID = 7;
    public static final int APPLICATION_ERROR__GCATEGORY = 8;
    public static final int APPLICATION_ERROR__GDESC = 9;
    public static final int APPLICATION_ERROR__DESC = 10;
    public static final int APPLICATION_ERROR__CATEGORY = 11;
    public static final int APPLICATION_ERROR__ADMIN_DATA = 12;
    public static final int APPLICATION_ERROR__INTRODUCTION = 13;
    public static final int APPLICATION_ERROR__ANNOTATIONS = 14;
    public static final int APPLICATION_ERROR__UUID = 15;
    public static final int APPLICATION_ERROR__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_ERROR__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_ERROR__GERROR_CODE = 18;
    public static final int APPLICATION_ERROR__CLIENT_SERVER_INTERFACE = 19;
    public static final int APPLICATION_ERROR__ERROR_CODE = 20;
    public static final int APPLICATION_ERROR_FEATURE_COUNT = 21;
    public static final int PORT_INTERFACE_MAPPING = 3;
    public static final int PORT_INTERFACE_MAPPING__GCHECKSUM = 0;
    public static final int PORT_INTERFACE_MAPPING__GTIMESTAMP = 1;
    public static final int PORT_INTERFACE_MAPPING__CHECKSUM = 2;
    public static final int PORT_INTERFACE_MAPPING__TIMESTAMP = 3;
    public static final int PORT_INTERFACE_MAPPING__GSHORT_NAME = 4;
    public static final int PORT_INTERFACE_MAPPING__SHORT_NAME = 5;
    public static final int PORT_INTERFACE_MAPPING__LONG_NAME = 6;
    public static final int PORT_INTERFACE_MAPPING__GUUID = 7;
    public static final int PORT_INTERFACE_MAPPING__GCATEGORY = 8;
    public static final int PORT_INTERFACE_MAPPING__GDESC = 9;
    public static final int PORT_INTERFACE_MAPPING__DESC = 10;
    public static final int PORT_INTERFACE_MAPPING__CATEGORY = 11;
    public static final int PORT_INTERFACE_MAPPING__ADMIN_DATA = 12;
    public static final int PORT_INTERFACE_MAPPING__INTRODUCTION = 13;
    public static final int PORT_INTERFACE_MAPPING__ANNOTATIONS = 14;
    public static final int PORT_INTERFACE_MAPPING__UUID = 15;
    public static final int PORT_INTERFACE_MAPPING__ALL_EXTENSIONS = 16;
    public static final int PORT_INTERFACE_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int PORT_INTERFACE_MAPPING__PORT_INTERFACE_MAPPING_SET = 18;
    public static final int PORT_INTERFACE_MAPPING_FEATURE_COUNT = 19;
    public static final int SUB_ELEMENT_REF = 5;
    public static final int SUB_ELEMENT_REF__GCHECKSUM = 0;
    public static final int SUB_ELEMENT_REF__GTIMESTAMP = 1;
    public static final int SUB_ELEMENT_REF__CHECKSUM = 2;
    public static final int SUB_ELEMENT_REF__TIMESTAMP = 3;
    public static final int SUB_ELEMENT_REF__VARIATION_POINT = 4;
    public static final int SUB_ELEMENT_REF_FEATURE_COUNT = 5;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF = 4;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__GCHECKSUM = 0;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__GTIMESTAMP = 1;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__CHECKSUM = 2;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__TIMESTAMP = 3;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__VARIATION_POINT = 4;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__APPLICATION_COMPOSITE_ELEMENT = 5;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF_FEATURE_COUNT = 6;
    public static final int PORT_INTERFACE = 25;
    public static final int PORT_INTERFACE__GCHECKSUM = 0;
    public static final int PORT_INTERFACE__GTIMESTAMP = 1;
    public static final int PORT_INTERFACE__CHECKSUM = 2;
    public static final int PORT_INTERFACE__TIMESTAMP = 3;
    public static final int PORT_INTERFACE__GSHORT_NAME = 4;
    public static final int PORT_INTERFACE__SHORT_NAME = 5;
    public static final int PORT_INTERFACE__LONG_NAME = 6;
    public static final int PORT_INTERFACE__GUUID = 7;
    public static final int PORT_INTERFACE__GCATEGORY = 8;
    public static final int PORT_INTERFACE__GDESC = 9;
    public static final int PORT_INTERFACE__DESC = 10;
    public static final int PORT_INTERFACE__CATEGORY = 11;
    public static final int PORT_INTERFACE__ADMIN_DATA = 12;
    public static final int PORT_INTERFACE__INTRODUCTION = 13;
    public static final int PORT_INTERFACE__ANNOTATIONS = 14;
    public static final int PORT_INTERFACE__UUID = 15;
    public static final int PORT_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int PORT_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int PORT_INTERFACE__GAR_PACKAGE = 18;
    public static final int PORT_INTERFACE__AR_PACKAGE = 19;
    public static final int PORT_INTERFACE__VARIATION_POINT = 20;
    public static final int PORT_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int PORT_INTERFACE__GIS_SERVICE = 22;
    public static final int PORT_INTERFACE__IS_SERVICE = 23;
    public static final int PORT_INTERFACE__SERVICE_KIND = 24;
    public static final int PORT_INTERFACE_FEATURE_COUNT = 25;
    public static final int DATA_INTERFACE = 6;
    public static final int DATA_INTERFACE__GCHECKSUM = 0;
    public static final int DATA_INTERFACE__GTIMESTAMP = 1;
    public static final int DATA_INTERFACE__CHECKSUM = 2;
    public static final int DATA_INTERFACE__TIMESTAMP = 3;
    public static final int DATA_INTERFACE__GSHORT_NAME = 4;
    public static final int DATA_INTERFACE__SHORT_NAME = 5;
    public static final int DATA_INTERFACE__LONG_NAME = 6;
    public static final int DATA_INTERFACE__GUUID = 7;
    public static final int DATA_INTERFACE__GCATEGORY = 8;
    public static final int DATA_INTERFACE__GDESC = 9;
    public static final int DATA_INTERFACE__DESC = 10;
    public static final int DATA_INTERFACE__CATEGORY = 11;
    public static final int DATA_INTERFACE__ADMIN_DATA = 12;
    public static final int DATA_INTERFACE__INTRODUCTION = 13;
    public static final int DATA_INTERFACE__ANNOTATIONS = 14;
    public static final int DATA_INTERFACE__UUID = 15;
    public static final int DATA_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int DATA_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int DATA_INTERFACE__GAR_PACKAGE = 18;
    public static final int DATA_INTERFACE__AR_PACKAGE = 19;
    public static final int DATA_INTERFACE__VARIATION_POINT = 20;
    public static final int DATA_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int DATA_INTERFACE__GIS_SERVICE = 22;
    public static final int DATA_INTERFACE__IS_SERVICE = 23;
    public static final int DATA_INTERFACE__SERVICE_KIND = 24;
    public static final int DATA_INTERFACE_FEATURE_COUNT = 25;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF = 7;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__GCHECKSUM = 0;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__CHECKSUM = 2;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__TIMESTAMP = 3;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__VARIATION_POINT = 4;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__IMPLEMENTATION_DATA_TYPE_ELEMENT = 5;
    public static final int IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF_FEATURE_COUNT = 6;
    public static final int PARAMETER_INTERFACE = 8;
    public static final int PARAMETER_INTERFACE__GCHECKSUM = 0;
    public static final int PARAMETER_INTERFACE__GTIMESTAMP = 1;
    public static final int PARAMETER_INTERFACE__CHECKSUM = 2;
    public static final int PARAMETER_INTERFACE__TIMESTAMP = 3;
    public static final int PARAMETER_INTERFACE__GSHORT_NAME = 4;
    public static final int PARAMETER_INTERFACE__SHORT_NAME = 5;
    public static final int PARAMETER_INTERFACE__LONG_NAME = 6;
    public static final int PARAMETER_INTERFACE__GUUID = 7;
    public static final int PARAMETER_INTERFACE__GCATEGORY = 8;
    public static final int PARAMETER_INTERFACE__GDESC = 9;
    public static final int PARAMETER_INTERFACE__DESC = 10;
    public static final int PARAMETER_INTERFACE__CATEGORY = 11;
    public static final int PARAMETER_INTERFACE__ADMIN_DATA = 12;
    public static final int PARAMETER_INTERFACE__INTRODUCTION = 13;
    public static final int PARAMETER_INTERFACE__ANNOTATIONS = 14;
    public static final int PARAMETER_INTERFACE__UUID = 15;
    public static final int PARAMETER_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int PARAMETER_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int PARAMETER_INTERFACE__GAR_PACKAGE = 18;
    public static final int PARAMETER_INTERFACE__AR_PACKAGE = 19;
    public static final int PARAMETER_INTERFACE__VARIATION_POINT = 20;
    public static final int PARAMETER_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int PARAMETER_INTERFACE__GIS_SERVICE = 22;
    public static final int PARAMETER_INTERFACE__IS_SERVICE = 23;
    public static final int PARAMETER_INTERFACE__SERVICE_KIND = 24;
    public static final int PARAMETER_INTERFACE__GPARAMETERS = 25;
    public static final int PARAMETER_INTERFACE__PARAMETERS = 26;
    public static final int PARAMETER_INTERFACE_FEATURE_COUNT = 27;
    public static final int SUB_ELEMENT_MAPPING = 9;
    public static final int SUB_ELEMENT_MAPPING__GCHECKSUM = 0;
    public static final int SUB_ELEMENT_MAPPING__GTIMESTAMP = 1;
    public static final int SUB_ELEMENT_MAPPING__CHECKSUM = 2;
    public static final int SUB_ELEMENT_MAPPING__TIMESTAMP = 3;
    public static final int SUB_ELEMENT_MAPPING__DATA_PROTOTYPE_MAPPING = 4;
    public static final int SUB_ELEMENT_MAPPING__FIRST_ELEMENTS = 5;
    public static final int SUB_ELEMENT_MAPPING__SECOND_ELEMENTS = 6;
    public static final int SUB_ELEMENT_MAPPING__TEXT_TABLE_MAPPINGS = 7;
    public static final int SUB_ELEMENT_MAPPING_FEATURE_COUNT = 8;
    public static final int TEXT_TABLE_MAPPING = 10;
    public static final int TEXT_TABLE_MAPPING__GCHECKSUM = 0;
    public static final int TEXT_TABLE_MAPPING__GTIMESTAMP = 1;
    public static final int TEXT_TABLE_MAPPING__CHECKSUM = 2;
    public static final int TEXT_TABLE_MAPPING__TIMESTAMP = 3;
    public static final int TEXT_TABLE_MAPPING__IDENTICAL_MAPPING = 4;
    public static final int TEXT_TABLE_MAPPING__MAPPING_DIRECTION = 5;
    public static final int TEXT_TABLE_MAPPING__VALUE_PAIRS = 6;
    public static final int TEXT_TABLE_MAPPING_FEATURE_COUNT = 7;
    public static final int TEXT_TABLE_VALUE_PAIR = 11;
    public static final int TEXT_TABLE_VALUE_PAIR__GCHECKSUM = 0;
    public static final int TEXT_TABLE_VALUE_PAIR__GTIMESTAMP = 1;
    public static final int TEXT_TABLE_VALUE_PAIR__CHECKSUM = 2;
    public static final int TEXT_TABLE_VALUE_PAIR__TIMESTAMP = 3;
    public static final int TEXT_TABLE_VALUE_PAIR__TEXT_TABLE_MAPPING = 4;
    public static final int TEXT_TABLE_VALUE_PAIR__FIRST_VALUE = 5;
    public static final int TEXT_TABLE_VALUE_PAIR__SECOND_VALUE = 6;
    public static final int TEXT_TABLE_VALUE_PAIR_FEATURE_COUNT = 7;
    public static final int NV_DATA_INTERFACE = 12;
    public static final int NV_DATA_INTERFACE__GCHECKSUM = 0;
    public static final int NV_DATA_INTERFACE__GTIMESTAMP = 1;
    public static final int NV_DATA_INTERFACE__CHECKSUM = 2;
    public static final int NV_DATA_INTERFACE__TIMESTAMP = 3;
    public static final int NV_DATA_INTERFACE__GSHORT_NAME = 4;
    public static final int NV_DATA_INTERFACE__SHORT_NAME = 5;
    public static final int NV_DATA_INTERFACE__LONG_NAME = 6;
    public static final int NV_DATA_INTERFACE__GUUID = 7;
    public static final int NV_DATA_INTERFACE__GCATEGORY = 8;
    public static final int NV_DATA_INTERFACE__GDESC = 9;
    public static final int NV_DATA_INTERFACE__DESC = 10;
    public static final int NV_DATA_INTERFACE__CATEGORY = 11;
    public static final int NV_DATA_INTERFACE__ADMIN_DATA = 12;
    public static final int NV_DATA_INTERFACE__INTRODUCTION = 13;
    public static final int NV_DATA_INTERFACE__ANNOTATIONS = 14;
    public static final int NV_DATA_INTERFACE__UUID = 15;
    public static final int NV_DATA_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int NV_DATA_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int NV_DATA_INTERFACE__GAR_PACKAGE = 18;
    public static final int NV_DATA_INTERFACE__AR_PACKAGE = 19;
    public static final int NV_DATA_INTERFACE__VARIATION_POINT = 20;
    public static final int NV_DATA_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int NV_DATA_INTERFACE__GIS_SERVICE = 22;
    public static final int NV_DATA_INTERFACE__IS_SERVICE = 23;
    public static final int NV_DATA_INTERFACE__SERVICE_KIND = 24;
    public static final int NV_DATA_INTERFACE__NV_DATAS = 25;
    public static final int NV_DATA_INTERFACE_FEATURE_COUNT = 26;
    public static final int INVALIDATION_POLICY = 13;
    public static final int INVALIDATION_POLICY__GCHECKSUM = 0;
    public static final int INVALIDATION_POLICY__GTIMESTAMP = 1;
    public static final int INVALIDATION_POLICY__CHECKSUM = 2;
    public static final int INVALIDATION_POLICY__TIMESTAMP = 3;
    public static final int INVALIDATION_POLICY__SENDER_RECEIVER_INTERFACE = 4;
    public static final int INVALIDATION_POLICY__DATA_ELEMENT = 5;
    public static final int INVALIDATION_POLICY__HANDLE_INVALID = 6;
    public static final int INVALIDATION_POLICY_FEATURE_COUNT = 7;
    public static final int MODE_SWITCH_INTERFACE = 14;
    public static final int MODE_SWITCH_INTERFACE__GCHECKSUM = 0;
    public static final int MODE_SWITCH_INTERFACE__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_INTERFACE__CHECKSUM = 2;
    public static final int MODE_SWITCH_INTERFACE__TIMESTAMP = 3;
    public static final int MODE_SWITCH_INTERFACE__GSHORT_NAME = 4;
    public static final int MODE_SWITCH_INTERFACE__SHORT_NAME = 5;
    public static final int MODE_SWITCH_INTERFACE__LONG_NAME = 6;
    public static final int MODE_SWITCH_INTERFACE__GUUID = 7;
    public static final int MODE_SWITCH_INTERFACE__GCATEGORY = 8;
    public static final int MODE_SWITCH_INTERFACE__GDESC = 9;
    public static final int MODE_SWITCH_INTERFACE__DESC = 10;
    public static final int MODE_SWITCH_INTERFACE__CATEGORY = 11;
    public static final int MODE_SWITCH_INTERFACE__ADMIN_DATA = 12;
    public static final int MODE_SWITCH_INTERFACE__INTRODUCTION = 13;
    public static final int MODE_SWITCH_INTERFACE__ANNOTATIONS = 14;
    public static final int MODE_SWITCH_INTERFACE__UUID = 15;
    public static final int MODE_SWITCH_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int MODE_SWITCH_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int MODE_SWITCH_INTERFACE__GAR_PACKAGE = 18;
    public static final int MODE_SWITCH_INTERFACE__AR_PACKAGE = 19;
    public static final int MODE_SWITCH_INTERFACE__VARIATION_POINT = 20;
    public static final int MODE_SWITCH_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int MODE_SWITCH_INTERFACE__GIS_SERVICE = 22;
    public static final int MODE_SWITCH_INTERFACE__IS_SERVICE = 23;
    public static final int MODE_SWITCH_INTERFACE__SERVICE_KIND = 24;
    public static final int MODE_SWITCH_INTERFACE__GMODE_GROUPS = 25;
    public static final int MODE_SWITCH_INTERFACE__MODE_GROUP = 26;
    public static final int MODE_SWITCH_INTERFACE_FEATURE_COUNT = 27;
    public static final int SENDER_RECEIVER_INTERFACE = 15;
    public static final int SENDER_RECEIVER_INTERFACE__GCHECKSUM = 0;
    public static final int SENDER_RECEIVER_INTERFACE__GTIMESTAMP = 1;
    public static final int SENDER_RECEIVER_INTERFACE__CHECKSUM = 2;
    public static final int SENDER_RECEIVER_INTERFACE__TIMESTAMP = 3;
    public static final int SENDER_RECEIVER_INTERFACE__GSHORT_NAME = 4;
    public static final int SENDER_RECEIVER_INTERFACE__SHORT_NAME = 5;
    public static final int SENDER_RECEIVER_INTERFACE__LONG_NAME = 6;
    public static final int SENDER_RECEIVER_INTERFACE__GUUID = 7;
    public static final int SENDER_RECEIVER_INTERFACE__GCATEGORY = 8;
    public static final int SENDER_RECEIVER_INTERFACE__GDESC = 9;
    public static final int SENDER_RECEIVER_INTERFACE__DESC = 10;
    public static final int SENDER_RECEIVER_INTERFACE__CATEGORY = 11;
    public static final int SENDER_RECEIVER_INTERFACE__ADMIN_DATA = 12;
    public static final int SENDER_RECEIVER_INTERFACE__INTRODUCTION = 13;
    public static final int SENDER_RECEIVER_INTERFACE__ANNOTATIONS = 14;
    public static final int SENDER_RECEIVER_INTERFACE__UUID = 15;
    public static final int SENDER_RECEIVER_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int SENDER_RECEIVER_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int SENDER_RECEIVER_INTERFACE__GAR_PACKAGE = 18;
    public static final int SENDER_RECEIVER_INTERFACE__AR_PACKAGE = 19;
    public static final int SENDER_RECEIVER_INTERFACE__VARIATION_POINT = 20;
    public static final int SENDER_RECEIVER_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int SENDER_RECEIVER_INTERFACE__GIS_SERVICE = 22;
    public static final int SENDER_RECEIVER_INTERFACE__IS_SERVICE = 23;
    public static final int SENDER_RECEIVER_INTERFACE__SERVICE_KIND = 24;
    public static final int SENDER_RECEIVER_INTERFACE__GDATA_ELEMENTS = 25;
    public static final int SENDER_RECEIVER_INTERFACE__DATA_ELEMENTS = 26;
    public static final int SENDER_RECEIVER_INTERFACE__INVALIDATION_POLICIES = 27;
    public static final int SENDER_RECEIVER_INTERFACE_FEATURE_COUNT = 28;
    public static final int CLIENT_SERVER_INTERFACE = 16;
    public static final int CLIENT_SERVER_INTERFACE__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_INTERFACE__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_INTERFACE__CHECKSUM = 2;
    public static final int CLIENT_SERVER_INTERFACE__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_INTERFACE__GSHORT_NAME = 4;
    public static final int CLIENT_SERVER_INTERFACE__SHORT_NAME = 5;
    public static final int CLIENT_SERVER_INTERFACE__LONG_NAME = 6;
    public static final int CLIENT_SERVER_INTERFACE__GUUID = 7;
    public static final int CLIENT_SERVER_INTERFACE__GCATEGORY = 8;
    public static final int CLIENT_SERVER_INTERFACE__GDESC = 9;
    public static final int CLIENT_SERVER_INTERFACE__DESC = 10;
    public static final int CLIENT_SERVER_INTERFACE__CATEGORY = 11;
    public static final int CLIENT_SERVER_INTERFACE__ADMIN_DATA = 12;
    public static final int CLIENT_SERVER_INTERFACE__INTRODUCTION = 13;
    public static final int CLIENT_SERVER_INTERFACE__ANNOTATIONS = 14;
    public static final int CLIENT_SERVER_INTERFACE__UUID = 15;
    public static final int CLIENT_SERVER_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int CLIENT_SERVER_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int CLIENT_SERVER_INTERFACE__GAR_PACKAGE = 18;
    public static final int CLIENT_SERVER_INTERFACE__AR_PACKAGE = 19;
    public static final int CLIENT_SERVER_INTERFACE__VARIATION_POINT = 20;
    public static final int CLIENT_SERVER_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int CLIENT_SERVER_INTERFACE__GIS_SERVICE = 22;
    public static final int CLIENT_SERVER_INTERFACE__IS_SERVICE = 23;
    public static final int CLIENT_SERVER_INTERFACE__SERVICE_KIND = 24;
    public static final int CLIENT_SERVER_INTERFACE__GOPERATIONS = 25;
    public static final int CLIENT_SERVER_INTERFACE__GPOSSIBLE_ERRORS = 26;
    public static final int CLIENT_SERVER_INTERFACE__OPERATIONS = 27;
    public static final int CLIENT_SERVER_INTERFACE__POSSIBLE_ERRORS = 28;
    public static final int CLIENT_SERVER_INTERFACE_FEATURE_COUNT = 29;
    public static final int TRIGGER_INTERFACE = 17;
    public static final int TRIGGER_INTERFACE__GCHECKSUM = 0;
    public static final int TRIGGER_INTERFACE__GTIMESTAMP = 1;
    public static final int TRIGGER_INTERFACE__CHECKSUM = 2;
    public static final int TRIGGER_INTERFACE__TIMESTAMP = 3;
    public static final int TRIGGER_INTERFACE__GSHORT_NAME = 4;
    public static final int TRIGGER_INTERFACE__SHORT_NAME = 5;
    public static final int TRIGGER_INTERFACE__LONG_NAME = 6;
    public static final int TRIGGER_INTERFACE__GUUID = 7;
    public static final int TRIGGER_INTERFACE__GCATEGORY = 8;
    public static final int TRIGGER_INTERFACE__GDESC = 9;
    public static final int TRIGGER_INTERFACE__DESC = 10;
    public static final int TRIGGER_INTERFACE__CATEGORY = 11;
    public static final int TRIGGER_INTERFACE__ADMIN_DATA = 12;
    public static final int TRIGGER_INTERFACE__INTRODUCTION = 13;
    public static final int TRIGGER_INTERFACE__ANNOTATIONS = 14;
    public static final int TRIGGER_INTERFACE__UUID = 15;
    public static final int TRIGGER_INTERFACE__ALL_EXTENSIONS = 16;
    public static final int TRIGGER_INTERFACE__CONTAINED_EXTENSIONS = 17;
    public static final int TRIGGER_INTERFACE__GAR_PACKAGE = 18;
    public static final int TRIGGER_INTERFACE__AR_PACKAGE = 19;
    public static final int TRIGGER_INTERFACE__VARIATION_POINT = 20;
    public static final int TRIGGER_INTERFACE__SHORT_NAME_PATTERN = 21;
    public static final int TRIGGER_INTERFACE__GIS_SERVICE = 22;
    public static final int TRIGGER_INTERFACE__IS_SERVICE = 23;
    public static final int TRIGGER_INTERFACE__SERVICE_KIND = 24;
    public static final int TRIGGER_INTERFACE__TRIGGERS = 25;
    public static final int TRIGGER_INTERFACE_FEATURE_COUNT = 26;
    public static final int PORT_INTERFACE_MAPPING_SET = 18;
    public static final int PORT_INTERFACE_MAPPING_SET__GCHECKSUM = 0;
    public static final int PORT_INTERFACE_MAPPING_SET__GTIMESTAMP = 1;
    public static final int PORT_INTERFACE_MAPPING_SET__CHECKSUM = 2;
    public static final int PORT_INTERFACE_MAPPING_SET__TIMESTAMP = 3;
    public static final int PORT_INTERFACE_MAPPING_SET__GSHORT_NAME = 4;
    public static final int PORT_INTERFACE_MAPPING_SET__SHORT_NAME = 5;
    public static final int PORT_INTERFACE_MAPPING_SET__LONG_NAME = 6;
    public static final int PORT_INTERFACE_MAPPING_SET__GUUID = 7;
    public static final int PORT_INTERFACE_MAPPING_SET__GCATEGORY = 8;
    public static final int PORT_INTERFACE_MAPPING_SET__GDESC = 9;
    public static final int PORT_INTERFACE_MAPPING_SET__DESC = 10;
    public static final int PORT_INTERFACE_MAPPING_SET__CATEGORY = 11;
    public static final int PORT_INTERFACE_MAPPING_SET__ADMIN_DATA = 12;
    public static final int PORT_INTERFACE_MAPPING_SET__INTRODUCTION = 13;
    public static final int PORT_INTERFACE_MAPPING_SET__ANNOTATIONS = 14;
    public static final int PORT_INTERFACE_MAPPING_SET__UUID = 15;
    public static final int PORT_INTERFACE_MAPPING_SET__ALL_EXTENSIONS = 16;
    public static final int PORT_INTERFACE_MAPPING_SET__CONTAINED_EXTENSIONS = 17;
    public static final int PORT_INTERFACE_MAPPING_SET__GAR_PACKAGE = 18;
    public static final int PORT_INTERFACE_MAPPING_SET__AR_PACKAGE = 19;
    public static final int PORT_INTERFACE_MAPPING_SET__VARIATION_POINT = 20;
    public static final int PORT_INTERFACE_MAPPING_SET__PORT_INTERFACE_MAPPINGS = 21;
    public static final int PORT_INTERFACE_MAPPING_SET_FEATURE_COUNT = 22;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING = 19;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__GCHECKSUM = 0;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__GTIMESTAMP = 1;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__CHECKSUM = 2;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__TIMESTAMP = 3;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__GSHORT_NAME = 4;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__SHORT_NAME = 5;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__LONG_NAME = 6;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__GUUID = 7;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__GCATEGORY = 8;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__GDESC = 9;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__DESC = 10;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__CATEGORY = 11;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__ADMIN_DATA = 12;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__INTRODUCTION = 13;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__ANNOTATIONS = 14;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__UUID = 15;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__ALL_EXTENSIONS = 16;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__PORT_INTERFACE_MAPPING_SET = 18;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__DATA_MAPPINGS = 19;
    public static final int VARIABLE_AND_PARAMETER_INTERFACE_MAPPING_FEATURE_COUNT = 20;
    public static final int DATA_PROTOTYPE_MAPPING = 20;
    public static final int DATA_PROTOTYPE_MAPPING__GCHECKSUM = 0;
    public static final int DATA_PROTOTYPE_MAPPING__GTIMESTAMP = 1;
    public static final int DATA_PROTOTYPE_MAPPING__CHECKSUM = 2;
    public static final int DATA_PROTOTYPE_MAPPING__TIMESTAMP = 3;
    public static final int DATA_PROTOTYPE_MAPPING__FIRST_DATA_PROTOTYPE = 4;
    public static final int DATA_PROTOTYPE_MAPPING__SECOND_DATA_PROTOTYPE = 5;
    public static final int DATA_PROTOTYPE_MAPPING__SUB_ELEMENT_MAPPINGS = 6;
    public static final int DATA_PROTOTYPE_MAPPING__TEXT_TABLE_MAPPINGS = 7;
    public static final int DATA_PROTOTYPE_MAPPING_FEATURE_COUNT = 8;
    public static final int MODE_INTERFACE_MAPPING = 21;
    public static final int MODE_INTERFACE_MAPPING__GCHECKSUM = 0;
    public static final int MODE_INTERFACE_MAPPING__GTIMESTAMP = 1;
    public static final int MODE_INTERFACE_MAPPING__CHECKSUM = 2;
    public static final int MODE_INTERFACE_MAPPING__TIMESTAMP = 3;
    public static final int MODE_INTERFACE_MAPPING__GSHORT_NAME = 4;
    public static final int MODE_INTERFACE_MAPPING__SHORT_NAME = 5;
    public static final int MODE_INTERFACE_MAPPING__LONG_NAME = 6;
    public static final int MODE_INTERFACE_MAPPING__GUUID = 7;
    public static final int MODE_INTERFACE_MAPPING__GCATEGORY = 8;
    public static final int MODE_INTERFACE_MAPPING__GDESC = 9;
    public static final int MODE_INTERFACE_MAPPING__DESC = 10;
    public static final int MODE_INTERFACE_MAPPING__CATEGORY = 11;
    public static final int MODE_INTERFACE_MAPPING__ADMIN_DATA = 12;
    public static final int MODE_INTERFACE_MAPPING__INTRODUCTION = 13;
    public static final int MODE_INTERFACE_MAPPING__ANNOTATIONS = 14;
    public static final int MODE_INTERFACE_MAPPING__UUID = 15;
    public static final int MODE_INTERFACE_MAPPING__ALL_EXTENSIONS = 16;
    public static final int MODE_INTERFACE_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int MODE_INTERFACE_MAPPING__PORT_INTERFACE_MAPPING_SET = 18;
    public static final int MODE_INTERFACE_MAPPING__MODE_MAPPING = 19;
    public static final int MODE_INTERFACE_MAPPING_FEATURE_COUNT = 20;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING = 22;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__GSHORT_NAME = 4;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__SHORT_NAME = 5;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__LONG_NAME = 6;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__GUUID = 7;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__GCATEGORY = 8;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__GDESC = 9;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__DESC = 10;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__CATEGORY = 11;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__ADMIN_DATA = 12;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__INTRODUCTION = 13;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__ANNOTATIONS = 14;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__UUID = 15;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__ALL_EXTENSIONS = 16;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__PORT_INTERFACE_MAPPING_SET = 18;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING__OPERATION_MAPPINGS = 19;
    public static final int CLIENT_SERVER_INTERFACE_MAPPING_FEATURE_COUNT = 20;
    public static final int CLIENT_SERVER_OPERATION_MAPPING = 23;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__GCHECKSUM = 0;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__GTIMESTAMP = 1;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__CHECKSUM = 2;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__TIMESTAMP = 3;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__CLIENT_SERVER_INTERFACE_MAPPING = 4;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__ARGUMENT_MAPPINGS = 5;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__FIRST_OPERATION = 6;
    public static final int CLIENT_SERVER_OPERATION_MAPPING__SECOND_OPERATION = 7;
    public static final int CLIENT_SERVER_OPERATION_MAPPING_FEATURE_COUNT = 8;
    public static final int TRIGGER_INTERFACE_MAPPING = 24;
    public static final int TRIGGER_INTERFACE_MAPPING__GCHECKSUM = 0;
    public static final int TRIGGER_INTERFACE_MAPPING__GTIMESTAMP = 1;
    public static final int TRIGGER_INTERFACE_MAPPING__CHECKSUM = 2;
    public static final int TRIGGER_INTERFACE_MAPPING__TIMESTAMP = 3;
    public static final int TRIGGER_INTERFACE_MAPPING__GSHORT_NAME = 4;
    public static final int TRIGGER_INTERFACE_MAPPING__SHORT_NAME = 5;
    public static final int TRIGGER_INTERFACE_MAPPING__LONG_NAME = 6;
    public static final int TRIGGER_INTERFACE_MAPPING__GUUID = 7;
    public static final int TRIGGER_INTERFACE_MAPPING__GCATEGORY = 8;
    public static final int TRIGGER_INTERFACE_MAPPING__GDESC = 9;
    public static final int TRIGGER_INTERFACE_MAPPING__DESC = 10;
    public static final int TRIGGER_INTERFACE_MAPPING__CATEGORY = 11;
    public static final int TRIGGER_INTERFACE_MAPPING__ADMIN_DATA = 12;
    public static final int TRIGGER_INTERFACE_MAPPING__INTRODUCTION = 13;
    public static final int TRIGGER_INTERFACE_MAPPING__ANNOTATIONS = 14;
    public static final int TRIGGER_INTERFACE_MAPPING__UUID = 15;
    public static final int TRIGGER_INTERFACE_MAPPING__ALL_EXTENSIONS = 16;
    public static final int TRIGGER_INTERFACE_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int TRIGGER_INTERFACE_MAPPING__PORT_INTERFACE_MAPPING_SET = 18;
    public static final int TRIGGER_INTERFACE_MAPPING__TRIGGER_MAPPINGS = 19;
    public static final int TRIGGER_INTERFACE_MAPPING_FEATURE_COUNT = 20;
    public static final int SERVER_ARGUMENT_IMPL_POLICY_ENUM = 26;
    public static final int MAPPING_DIRECTION_ENUM = 27;

    public EClass getClientServerOperation();

    public EReference getClientServerOperation_ClientServerInterface();

    public EReference getClientServerOperation_Arguments();

    public EReference getClientServerOperation_PossibleErrors();

    public EReference getClientServerOperation_VariationPoint();

    public EClass getArgumentDataPrototype();

    public EReference getArgumentDataPrototype_ClientServerOperation();

    public EAttribute getArgumentDataPrototype_Direction();

    public EAttribute getArgumentDataPrototype_ServerArgumentImplPolicy();

    public EClass getApplicationError();

    public EReference getApplicationError_ClientServerInterface();

    public EAttribute getApplicationError_ErrorCode();

    public EClass getPortInterfaceMapping();

    public EReference getPortInterfaceMapping_PortInterfaceMappingSet();

    public EClass getApplicationCompositeDataTypeSubElementRef();

    public EReference getApplicationCompositeDataTypeSubElementRef_ApplicationCompositeElement();

    public EClass getSubElementRef();

    public EReference getSubElementRef_VariationPoint();

    public EClass getDataInterface();

    public EClass getImplementationDataTypeSubElementRef();

    public EReference getImplementationDataTypeSubElementRef_ImplementationDataTypeElement();

    public EClass getParameterInterface();

    public EReference getParameterInterface_Parameters();

    public EClass getSubElementMapping();

    public EReference getSubElementMapping_DataPrototypeMapping();

    public EReference getSubElementMapping_FirstElements();

    public EReference getSubElementMapping_SecondElements();

    public EReference getSubElementMapping_TextTableMappings();

    public EClass getTextTableMapping();

    public EAttribute getTextTableMapping_IdenticalMapping();

    public EAttribute getTextTableMapping_MappingDirection();

    public EReference getTextTableMapping_ValuePairs();

    public EClass getTextTableValuePair();

    public EReference getTextTableValuePair_TextTableMapping();

    public EReference getTextTableValuePair_FirstValue();

    public EReference getTextTableValuePair_SecondValue();

    public EClass getNvDataInterface();

    public EReference getNvDataInterface_NvDatas();

    public EClass getInvalidationPolicy();

    public EReference getInvalidationPolicy_SenderReceiverInterface();

    public EReference getInvalidationPolicy_DataElement();

    public EAttribute getInvalidationPolicy_HandleInvalid();

    public EClass getModeSwitchInterface();

    public EReference getModeSwitchInterface_ModeGroup();

    public EClass getSenderReceiverInterface();

    public EReference getSenderReceiverInterface_DataElements();

    public EReference getSenderReceiverInterface_InvalidationPolicies();

    public EClass getClientServerInterface();

    public EReference getClientServerInterface_Operations();

    public EReference getClientServerInterface_PossibleErrors();

    public EClass getTriggerInterface();

    public EReference getTriggerInterface_Triggers();

    public EClass getPortInterfaceMappingSet();

    public EReference getPortInterfaceMappingSet_PortInterfaceMappings();

    public EClass getVariableAndParameterInterfaceMapping();

    public EReference getVariableAndParameterInterfaceMapping_DataMappings();

    public EClass getDataPrototypeMapping();

    public EReference getDataPrototypeMapping_FirstDataPrototype();

    public EReference getDataPrototypeMapping_SecondDataPrototype();

    public EReference getDataPrototypeMapping_SubElementMappings();

    public EReference getDataPrototypeMapping_TextTableMappings();

    public EClass getModeInterfaceMapping();

    public EReference getModeInterfaceMapping_ModeMapping();

    public EClass getClientServerInterfaceMapping();

    public EReference getClientServerInterfaceMapping_OperationMappings();

    public EClass getClientServerOperationMapping();

    public EReference getClientServerOperationMapping_ClientServerInterfaceMapping();

    public EReference getClientServerOperationMapping_ArgumentMappings();

    public EReference getClientServerOperationMapping_FirstOperation();

    public EReference getClientServerOperationMapping_SecondOperation();

    public EClass getTriggerInterfaceMapping();

    public EReference getTriggerInterfaceMapping_TriggerMappings();

    public EClass getPortInterface();

    public EAttribute getPortInterface_IsService();

    public EAttribute getPortInterface_ServiceKind();

    public EEnum getServerArgumentImplPolicyEnum();

    public EEnum getMappingDirectionEnum();

    public PortinterfaceFactory getPortinterfaceFactory();

    public static interface Literals {
        public static final EClass CLIENT_SERVER_OPERATION = eINSTANCE.getClientServerOperation();
        public static final EReference CLIENT_SERVER_OPERATION__CLIENT_SERVER_INTERFACE = eINSTANCE.getClientServerOperation_ClientServerInterface();
        public static final EReference CLIENT_SERVER_OPERATION__ARGUMENTS = eINSTANCE.getClientServerOperation_Arguments();
        public static final EReference CLIENT_SERVER_OPERATION__POSSIBLE_ERRORS = eINSTANCE.getClientServerOperation_PossibleErrors();
        public static final EReference CLIENT_SERVER_OPERATION__VARIATION_POINT = eINSTANCE.getClientServerOperation_VariationPoint();
        public static final EClass ARGUMENT_DATA_PROTOTYPE = eINSTANCE.getArgumentDataPrototype();
        public static final EReference ARGUMENT_DATA_PROTOTYPE__CLIENT_SERVER_OPERATION = eINSTANCE.getArgumentDataPrototype_ClientServerOperation();
        public static final EAttribute ARGUMENT_DATA_PROTOTYPE__DIRECTION = eINSTANCE.getArgumentDataPrototype_Direction();
        public static final EAttribute ARGUMENT_DATA_PROTOTYPE__SERVER_ARGUMENT_IMPL_POLICY = eINSTANCE.getArgumentDataPrototype_ServerArgumentImplPolicy();
        public static final EClass APPLICATION_ERROR = eINSTANCE.getApplicationError();
        public static final EReference APPLICATION_ERROR__CLIENT_SERVER_INTERFACE = eINSTANCE.getApplicationError_ClientServerInterface();
        public static final EAttribute APPLICATION_ERROR__ERROR_CODE = eINSTANCE.getApplicationError_ErrorCode();
        public static final EClass PORT_INTERFACE_MAPPING = eINSTANCE.getPortInterfaceMapping();
        public static final EReference PORT_INTERFACE_MAPPING__PORT_INTERFACE_MAPPING_SET = eINSTANCE.getPortInterfaceMapping_PortInterfaceMappingSet();
        public static final EClass APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF = eINSTANCE.getApplicationCompositeDataTypeSubElementRef();
        public static final EReference APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF__APPLICATION_COMPOSITE_ELEMENT = eINSTANCE.getApplicationCompositeDataTypeSubElementRef_ApplicationCompositeElement();
        public static final EClass SUB_ELEMENT_REF = eINSTANCE.getSubElementRef();
        public static final EReference SUB_ELEMENT_REF__VARIATION_POINT = eINSTANCE.getSubElementRef_VariationPoint();
        public static final EClass DATA_INTERFACE = eINSTANCE.getDataInterface();
        public static final EClass IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF = eINSTANCE.getImplementationDataTypeSubElementRef();
        public static final EReference IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF__IMPLEMENTATION_DATA_TYPE_ELEMENT = eINSTANCE.getImplementationDataTypeSubElementRef_ImplementationDataTypeElement();
        public static final EClass PARAMETER_INTERFACE = eINSTANCE.getParameterInterface();
        public static final EReference PARAMETER_INTERFACE__PARAMETERS = eINSTANCE.getParameterInterface_Parameters();
        public static final EClass SUB_ELEMENT_MAPPING = eINSTANCE.getSubElementMapping();
        public static final EReference SUB_ELEMENT_MAPPING__DATA_PROTOTYPE_MAPPING = eINSTANCE.getSubElementMapping_DataPrototypeMapping();
        public static final EReference SUB_ELEMENT_MAPPING__FIRST_ELEMENTS = eINSTANCE.getSubElementMapping_FirstElements();
        public static final EReference SUB_ELEMENT_MAPPING__SECOND_ELEMENTS = eINSTANCE.getSubElementMapping_SecondElements();
        public static final EReference SUB_ELEMENT_MAPPING__TEXT_TABLE_MAPPINGS = eINSTANCE.getSubElementMapping_TextTableMappings();
        public static final EClass TEXT_TABLE_MAPPING = eINSTANCE.getTextTableMapping();
        public static final EAttribute TEXT_TABLE_MAPPING__IDENTICAL_MAPPING = eINSTANCE.getTextTableMapping_IdenticalMapping();
        public static final EAttribute TEXT_TABLE_MAPPING__MAPPING_DIRECTION = eINSTANCE.getTextTableMapping_MappingDirection();
        public static final EReference TEXT_TABLE_MAPPING__VALUE_PAIRS = eINSTANCE.getTextTableMapping_ValuePairs();
        public static final EClass TEXT_TABLE_VALUE_PAIR = eINSTANCE.getTextTableValuePair();
        public static final EReference TEXT_TABLE_VALUE_PAIR__TEXT_TABLE_MAPPING = eINSTANCE.getTextTableValuePair_TextTableMapping();
        public static final EReference TEXT_TABLE_VALUE_PAIR__FIRST_VALUE = eINSTANCE.getTextTableValuePair_FirstValue();
        public static final EReference TEXT_TABLE_VALUE_PAIR__SECOND_VALUE = eINSTANCE.getTextTableValuePair_SecondValue();
        public static final EClass NV_DATA_INTERFACE = eINSTANCE.getNvDataInterface();
        public static final EReference NV_DATA_INTERFACE__NV_DATAS = eINSTANCE.getNvDataInterface_NvDatas();
        public static final EClass INVALIDATION_POLICY = eINSTANCE.getInvalidationPolicy();
        public static final EReference INVALIDATION_POLICY__SENDER_RECEIVER_INTERFACE = eINSTANCE.getInvalidationPolicy_SenderReceiverInterface();
        public static final EReference INVALIDATION_POLICY__DATA_ELEMENT = eINSTANCE.getInvalidationPolicy_DataElement();
        public static final EAttribute INVALIDATION_POLICY__HANDLE_INVALID = eINSTANCE.getInvalidationPolicy_HandleInvalid();
        public static final EClass MODE_SWITCH_INTERFACE = eINSTANCE.getModeSwitchInterface();
        public static final EReference MODE_SWITCH_INTERFACE__MODE_GROUP = eINSTANCE.getModeSwitchInterface_ModeGroup();
        public static final EClass SENDER_RECEIVER_INTERFACE = eINSTANCE.getSenderReceiverInterface();
        public static final EReference SENDER_RECEIVER_INTERFACE__DATA_ELEMENTS = eINSTANCE.getSenderReceiverInterface_DataElements();
        public static final EReference SENDER_RECEIVER_INTERFACE__INVALIDATION_POLICIES = eINSTANCE.getSenderReceiverInterface_InvalidationPolicies();
        public static final EClass CLIENT_SERVER_INTERFACE = eINSTANCE.getClientServerInterface();
        public static final EReference CLIENT_SERVER_INTERFACE__OPERATIONS = eINSTANCE.getClientServerInterface_Operations();
        public static final EReference CLIENT_SERVER_INTERFACE__POSSIBLE_ERRORS = eINSTANCE.getClientServerInterface_PossibleErrors();
        public static final EClass TRIGGER_INTERFACE = eINSTANCE.getTriggerInterface();
        public static final EReference TRIGGER_INTERFACE__TRIGGERS = eINSTANCE.getTriggerInterface_Triggers();
        public static final EClass PORT_INTERFACE_MAPPING_SET = eINSTANCE.getPortInterfaceMappingSet();
        public static final EReference PORT_INTERFACE_MAPPING_SET__PORT_INTERFACE_MAPPINGS = eINSTANCE.getPortInterfaceMappingSet_PortInterfaceMappings();
        public static final EClass VARIABLE_AND_PARAMETER_INTERFACE_MAPPING = eINSTANCE.getVariableAndParameterInterfaceMapping();
        public static final EReference VARIABLE_AND_PARAMETER_INTERFACE_MAPPING__DATA_MAPPINGS = eINSTANCE.getVariableAndParameterInterfaceMapping_DataMappings();
        public static final EClass DATA_PROTOTYPE_MAPPING = eINSTANCE.getDataPrototypeMapping();
        public static final EReference DATA_PROTOTYPE_MAPPING__FIRST_DATA_PROTOTYPE = eINSTANCE.getDataPrototypeMapping_FirstDataPrototype();
        public static final EReference DATA_PROTOTYPE_MAPPING__SECOND_DATA_PROTOTYPE = eINSTANCE.getDataPrototypeMapping_SecondDataPrototype();
        public static final EReference DATA_PROTOTYPE_MAPPING__SUB_ELEMENT_MAPPINGS = eINSTANCE.getDataPrototypeMapping_SubElementMappings();
        public static final EReference DATA_PROTOTYPE_MAPPING__TEXT_TABLE_MAPPINGS = eINSTANCE.getDataPrototypeMapping_TextTableMappings();
        public static final EClass MODE_INTERFACE_MAPPING = eINSTANCE.getModeInterfaceMapping();
        public static final EReference MODE_INTERFACE_MAPPING__MODE_MAPPING = eINSTANCE.getModeInterfaceMapping_ModeMapping();
        public static final EClass CLIENT_SERVER_INTERFACE_MAPPING = eINSTANCE.getClientServerInterfaceMapping();
        public static final EReference CLIENT_SERVER_INTERFACE_MAPPING__OPERATION_MAPPINGS = eINSTANCE.getClientServerInterfaceMapping_OperationMappings();
        public static final EClass CLIENT_SERVER_OPERATION_MAPPING = eINSTANCE.getClientServerOperationMapping();
        public static final EReference CLIENT_SERVER_OPERATION_MAPPING__CLIENT_SERVER_INTERFACE_MAPPING = eINSTANCE.getClientServerOperationMapping_ClientServerInterfaceMapping();
        public static final EReference CLIENT_SERVER_OPERATION_MAPPING__ARGUMENT_MAPPINGS = eINSTANCE.getClientServerOperationMapping_ArgumentMappings();
        public static final EReference CLIENT_SERVER_OPERATION_MAPPING__FIRST_OPERATION = eINSTANCE.getClientServerOperationMapping_FirstOperation();
        public static final EReference CLIENT_SERVER_OPERATION_MAPPING__SECOND_OPERATION = eINSTANCE.getClientServerOperationMapping_SecondOperation();
        public static final EClass TRIGGER_INTERFACE_MAPPING = eINSTANCE.getTriggerInterfaceMapping();
        public static final EReference TRIGGER_INTERFACE_MAPPING__TRIGGER_MAPPINGS = eINSTANCE.getTriggerInterfaceMapping_TriggerMappings();
        public static final EClass PORT_INTERFACE = eINSTANCE.getPortInterface();
        public static final EAttribute PORT_INTERFACE__IS_SERVICE = eINSTANCE.getPortInterface_IsService();
        public static final EAttribute PORT_INTERFACE__SERVICE_KIND = eINSTANCE.getPortInterface_ServiceKind();
        public static final EEnum SERVER_ARGUMENT_IMPL_POLICY_ENUM = eINSTANCE.getServerArgumentImplPolicyEnum();
        public static final EEnum MAPPING_DIRECTION_ENUM = eINSTANCE.getMappingDirectionEnum();
    }
}

