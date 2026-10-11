/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationFactory;
import com.etas.amd620.core.ComponentSpecification.impl.ComponentSpecificationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentSpecificationPackage
extends EPackage {
    public static final String eNAME = "ComponentSpecification";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/component_specification";
    public static final String eNS_PREFIX = "ComponentSpecification";
    public static final ComponentSpecificationPackage eINSTANCE = ComponentSpecificationPackageImpl.init();
    public static final int ACTIONS_TYPE = 0;
    public static final int ACTIONS_TYPE__ACTION = 0;
    public static final int ACTIONS_TYPE__CONDITION = 1;
    public static final int ACTIONS_TYPE_FEATURE_COUNT = 2;
    public static final int ACTIONS_TYPE_OPERATION_COUNT = 0;
    public static final int ACTIONS_TYPE1 = 1;
    public static final int ACTIONS_TYPE1__ENTRY_ACTION = 0;
    public static final int ACTIONS_TYPE1__STATIC_ACTION = 1;
    public static final int ACTIONS_TYPE1__EXIT_ACTION = 2;
    public static final int ACTIONS_TYPE1_FEATURE_COUNT = 3;
    public static final int ACTIONS_TYPE1_OPERATION_COUNT = 0;
    public static final int ACTION_T = 2;
    public static final int ACTION_T__ESDL_ACTION = 0;
    public static final int ACTION_T__METHOD_ACTION = 1;
    public static final int ACTION_T_FEATURE_COUNT = 2;
    public static final int ACTION_T_OPERATION_COUNT = 0;
    public static final int ACTION_TYPE = 3;
    public static final int ACTION_TYPE__ESDL_ACTION = 0;
    public static final int ACTION_TYPE__METHOD_ACTION = 1;
    public static final int ACTION_TYPE__GRAPHIC_OID = 2;
    public static final int ACTION_TYPE_FEATURE_COUNT = 3;
    public static final int ACTION_TYPE_OPERATION_COUNT = 0;
    public static final int GRAPHIC_OBJECT_T = 44;
    public static final int GRAPHIC_OBJECT_T__VIEW_INFO = 0;
    public static final int GRAPHIC_OBJECT_T__LINE_STYLE = 1;
    public static final int GRAPHIC_OBJECT_T__FILL_COLOR = 2;
    public static final int GRAPHIC_OBJECT_T__GRAPHIC_OID = 3;
    public static final int GRAPHIC_OBJECT_T_FEATURE_COUNT = 4;
    public static final int GRAPHIC_OBJECT_T_OPERATION_COUNT = 0;
    public static final int BLOCK_CONNECTOR_T = 4;
    public static final int BLOCK_CONNECTOR_T__VIEW_INFO = 0;
    public static final int BLOCK_CONNECTOR_T__LINE_STYLE = 1;
    public static final int BLOCK_CONNECTOR_T__FILL_COLOR = 2;
    public static final int BLOCK_CONNECTOR_T__GRAPHIC_OID = 3;
    public static final int BLOCK_CONNECTOR_T__SIZE = 4;
    public static final int BLOCK_CONNECTOR_T__CONNECTION_POINT = 5;
    public static final int BLOCK_CONNECTOR_T__DIRECTION = 6;
    public static final int BLOCK_CONNECTOR_T__FLOW = 7;
    public static final int BLOCK_CONNECTOR_T__TEMP_VAR = 8;
    public static final int BLOCK_CONNECTOR_T__VISIBILITY = 9;
    public static final int BLOCK_CONNECTOR_T_FEATURE_COUNT = 10;
    public static final int BLOCK_CONNECTOR_T_OPERATION_COUNT = 0;
    public static final int GRAPHIC_SPECIFICATION_T = 45;
    public static final int GRAPHIC_SPECIFICATION_T__HIGHEST_USED_GRAPHICAL_IDENTIFIER = 0;
    public static final int GRAPHIC_SPECIFICATION_T_FEATURE_COUNT = 1;
    public static final int GRAPHIC_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int BLOCK_DIAGRAM_SPECIFICATION_T = 5;
    public static final int BLOCK_DIAGRAM_SPECIFICATION_T__HIGHEST_USED_GRAPHICAL_IDENTIFIER = 0;
    public static final int BLOCK_DIAGRAM_SPECIFICATION_T__ESDL_CODE = 1;
    public static final int BLOCK_DIAGRAM_SPECIFICATION_T__DIAGRAM_ELEMENTS = 2;
    public static final int BLOCK_DIAGRAM_SPECIFICATION_T_FEATURE_COUNT = 3;
    public static final int BLOCK_DIAGRAM_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int BLOCK_INTERFACE_T = 6;
    public static final int BLOCK_INTERFACE_T__EXTERNAL_CONNECTOR = 0;
    public static final int BLOCK_INTERFACE_T__NAME = 1;
    public static final int BLOCK_INTERFACE_T_FEATURE_COUNT = 2;
    public static final int BLOCK_INTERFACE_T_OPERATION_COUNT = 0;
    public static final int BOOLEAN_TABLE_TYPE = 7;
    public static final int BOOLEAN_TABLE_TYPE__INPUT_COLUMNS = 0;
    public static final int BOOLEAN_TABLE_TYPE__OUTPUT_COLUMNS = 1;
    public static final int BOOLEAN_TABLE_TYPE__COMBINATIONS = 2;
    public static final int BOOLEAN_TABLE_TYPE__INPUTS = 3;
    public static final int BOOLEAN_TABLE_TYPE__OUTPUTS = 4;
    public static final int BOOLEAN_TABLE_TYPE_FEATURE_COUNT = 5;
    public static final int BOOLEAN_TABLE_TYPE_OPERATION_COUNT = 0;
    public static final int CCODE_SPECIFICATION_T = 8;
    public static final int CCODE_SPECIFICATION_T__CCODE = 0;
    public static final int CCODE_SPECIFICATION_T__CT_OUTPUTS = 1;
    public static final int CCODE_SPECIFICATION_T_FEATURE_COUNT = 2;
    public static final int CCODE_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int CCODE_TYPE = 9;
    public static final int CCODE_TYPE__CODE_VARIANT = 0;
    public static final int CCODE_TYPE_FEATURE_COUNT = 1;
    public static final int CCODE_TYPE_OPERATION_COUNT = 0;
    public static final int CODE_VARIANT_TYPE = 10;
    public static final int CODE_VARIANT_TYPE__HEADER_FILE = 0;
    public static final int CODE_VARIANT_TYPE__CODE_FILE = 1;
    public static final int CODE_VARIANT_TYPE__OBJECT_FILE = 2;
    public static final int CODE_VARIANT_TYPE__HEADER_BLOCK = 3;
    public static final int CODE_VARIANT_TYPE__METHOD_BODIES = 4;
    public static final int CODE_VARIANT_TYPE__GENERATOR = 5;
    public static final int CODE_VARIANT_TYPE__IMPLEMENTATION_NAME = 6;
    public static final int CODE_VARIANT_TYPE__IMPLEMENTATION_OID = 7;
    public static final int CODE_VARIANT_TYPE__TARGET = 8;
    public static final int CODE_VARIANT_TYPE_FEATURE_COUNT = 9;
    public static final int CODE_VARIANT_TYPE_OPERATION_COUNT = 0;
    public static final int COLOR_T = 11;
    public static final int COLOR_T__BLUE = 0;
    public static final int COLOR_T__GREEN = 1;
    public static final int COLOR_T__RED = 2;
    public static final int COLOR_T_FEATURE_COUNT = 3;
    public static final int COLOR_T_OPERATION_COUNT = 0;
    public static final int COLUMN_HEADING_TYPE = 12;
    public static final int COLUMN_HEADING_TYPE__DEFAULT = 0;
    public static final int COLUMN_HEADING_TYPE__ELEMENT_NAME = 1;
    public static final int COLUMN_HEADING_TYPE__ELEMENT_OID = 2;
    public static final int COLUMN_HEADING_TYPE__INDEX = 3;
    public static final int COLUMN_HEADING_TYPE__METHOD_NAME = 4;
    public static final int COLUMN_HEADING_TYPE_FEATURE_COUNT = 5;
    public static final int COLUMN_HEADING_TYPE_OPERATION_COUNT = 0;
    public static final int LAYOUT_T = 68;
    public static final int LAYOUT_T__VIEW_INFO = 0;
    public static final int LAYOUT_T__LINE_STYLE = 1;
    public static final int LAYOUT_T__FILL_COLOR = 2;
    public static final int LAYOUT_T__GRAPHIC_OID = 3;
    public static final int LAYOUT_T__POSITION = 4;
    public static final int LAYOUT_T__LABEL_POSITION = 5;
    public static final int LAYOUT_T__INTERFACES = 6;
    public static final int LAYOUT_T__SIZE = 7;
    public static final int LAYOUT_T__ICON = 8;
    public static final int LAYOUT_T__SYMBOL = 9;
    public static final int LAYOUT_T__FLEXIBLE_CREATED = 10;
    public static final int LAYOUT_T__HIDE_CLASS_NAME = 11;
    public static final int LAYOUT_T__HIDE_ICON = 12;
    public static final int LAYOUT_T__HIDE_NAME = 13;
    public static final int LAYOUT_T__HIDE_PIN_NAMES = 14;
    public static final int LAYOUT_T__HIDE_UNCONNECTED_PORTS = 15;
    public static final int LAYOUT_T_FEATURE_COUNT = 16;
    public static final int LAYOUT_T_OPERATION_COUNT = 0;
    public static final int COMPLEX_ELEMENT_T = 13;
    public static final int COMPLEX_ELEMENT_T__VIEW_INFO = 0;
    public static final int COMPLEX_ELEMENT_T__LINE_STYLE = 1;
    public static final int COMPLEX_ELEMENT_T__FILL_COLOR = 2;
    public static final int COMPLEX_ELEMENT_T__GRAPHIC_OID = 3;
    public static final int COMPLEX_ELEMENT_T__POSITION = 4;
    public static final int COMPLEX_ELEMENT_T__LABEL_POSITION = 5;
    public static final int COMPLEX_ELEMENT_T__INTERFACES = 6;
    public static final int COMPLEX_ELEMENT_T__SIZE = 7;
    public static final int COMPLEX_ELEMENT_T__ICON = 8;
    public static final int COMPLEX_ELEMENT_T__SYMBOL = 9;
    public static final int COMPLEX_ELEMENT_T__FLEXIBLE_CREATED = 10;
    public static final int COMPLEX_ELEMENT_T__HIDE_CLASS_NAME = 11;
    public static final int COMPLEX_ELEMENT_T__HIDE_ICON = 12;
    public static final int COMPLEX_ELEMENT_T__HIDE_NAME = 13;
    public static final int COMPLEX_ELEMENT_T__HIDE_PIN_NAMES = 14;
    public static final int COMPLEX_ELEMENT_T__HIDE_UNCONNECTED_PORTS = 15;
    public static final int COMPLEX_ELEMENT_T__ELEMENT_NAME = 16;
    public static final int COMPLEX_ELEMENT_T__ELEMENT_OID = 17;
    public static final int COMPLEX_ELEMENT_T__METHOD_NAME = 18;
    public static final int COMPLEX_ELEMENT_T__TYPE = 19;
    public static final int COMPLEX_ELEMENT_T_FEATURE_COUNT = 20;
    public static final int COMPLEX_ELEMENT_T_OPERATION_COUNT = 0;
    public static final int CONDITIONAL_TABLE_TYPE = 14;
    public static final int CONDITIONAL_TABLE_TYPE__CONDITION_COLUMNS = 0;
    public static final int CONDITIONAL_TABLE_TYPE__INSTRUCTION_COLUMNS = 1;
    public static final int CONDITIONAL_TABLE_TYPE__CONDITIONS = 2;
    public static final int CONDITIONAL_TABLE_TYPE__INSTRUCTIONS = 3;
    public static final int CONDITIONAL_TABLE_TYPE__ROWS = 4;
    public static final int CONDITIONAL_TABLE_TYPE_FEATURE_COUNT = 5;
    public static final int CONDITIONAL_TABLE_TYPE_OPERATION_COUNT = 0;
    public static final int CONDITION_COLUMNS_TYPE = 15;
    public static final int CONDITION_COLUMNS_TYPE__TABLE_COLUMN = 0;
    public static final int CONDITION_COLUMNS_TYPE_FEATURE_COUNT = 1;
    public static final int CONDITION_COLUMNS_TYPE_OPERATION_COUNT = 0;
    public static final int CONDITION_TYPE = 16;
    public static final int CONDITION_TYPE__ESDL_ACTION = 0;
    public static final int CONDITION_TYPE__METHOD_ACTION = 1;
    public static final int CONDITION_TYPE__GRAPHIC_OID = 2;
    public static final int CONDITION_TYPE_FEATURE_COUNT = 3;
    public static final int CONDITION_TYPE_OPERATION_COUNT = 0;
    public static final int CONNECTION_LINE_T = 17;
    public static final int CONNECTION_LINE_T__BEND_POINT = 0;
    public static final int CONNECTION_LINE_T__COMMENT_LINE = 1;
    public static final int CONNECTION_LINE_T_FEATURE_COUNT = 2;
    public static final int CONNECTION_LINE_T_OPERATION_COUNT = 0;
    public static final int CONNECTION_POINT_T = 18;
    public static final int CONNECTION_POINT_T__POSITION = 0;
    public static final int CONNECTION_POINT_T__GRAPHIC_OID = 1;
    public static final int CONNECTION_POINT_T_FEATURE_COUNT = 2;
    public static final int CONNECTION_POINT_T_OPERATION_COUNT = 0;
    public static final int CONNECTION_T = 19;
    public static final int CONNECTION_T__VIEW_INFO = 0;
    public static final int CONNECTION_T__LINE_STYLE = 1;
    public static final int CONNECTION_T__START = 2;
    public static final int CONNECTION_T__END = 3;
    public static final int CONNECTION_T__CONNECTION_LINE = 4;
    public static final int CONNECTION_T__CONNECTION_POINT_NUMBER = 5;
    public static final int CONNECTION_T_FEATURE_COUNT = 6;
    public static final int CONNECTION_T_OPERATION_COUNT = 0;
    public static final int CONNECTOR_INTERFACE_TYPE = 20;
    public static final int CONNECTOR_INTERFACE_TYPE__CONNECTOR = 0;
    public static final int CONNECTOR_INTERFACE_TYPE_FEATURE_COUNT = 1;
    public static final int CONNECTOR_INTERFACE_TYPE_OPERATION_COUNT = 0;
    public static final int CONTENTS_COMPLEX_TYPE = 21;
    public static final int CONTENTS_COMPLEX_TYPE__DIAGRAM_ELEMENT = 0;
    public static final int CONTENTS_COMPLEX_TYPE_FEATURE_COUNT = 1;
    public static final int CONTENTS_COMPLEX_TYPE_OPERATION_COUNT = 0;
    public static final int CONTROL_RTE_ACCESS_T = 22;
    public static final int CONTROL_RTE_ACCESS_T__VIEW_INFO = 0;
    public static final int CONTROL_RTE_ACCESS_T__LINE_STYLE = 1;
    public static final int CONTROL_RTE_ACCESS_T__FILL_COLOR = 2;
    public static final int CONTROL_RTE_ACCESS_T__GRAPHIC_OID = 3;
    public static final int CONTROL_RTE_ACCESS_T__POSITION = 4;
    public static final int CONTROL_RTE_ACCESS_T__INTERFACES = 5;
    public static final int CONTROL_RTE_ACCESS_T__ACCESS = 6;
    public static final int CONTROL_RTE_ACCESS_T__ARGUMENTS = 7;
    public static final int CONTROL_RTE_ACCESS_T__RETURNS = 8;
    public static final int CONTROL_RTE_ACCESS_T__TEMP_VAR = 9;
    public static final int CONTROL_RTE_ACCESS_T__TYPE = 10;
    public static final int CONTROL_RTE_ACCESS_T_FEATURE_COUNT = 11;
    public static final int CONTROL_RTE_ACCESS_T_OPERATION_COUNT = 0;
    public static final int CONTROL_T = 24;
    public static final int CONTROL_T__VIEW_INFO = 0;
    public static final int CONTROL_T__LINE_STYLE = 1;
    public static final int CONTROL_T__FILL_COLOR = 2;
    public static final int CONTROL_T__GRAPHIC_OID = 3;
    public static final int CONTROL_T__POSITION = 4;
    public static final int CONTROL_T__INTERFACES = 5;
    public static final int CONTROL_T__SIZE = 6;
    public static final int CONTROL_T__ARGUMENTS = 7;
    public static final int CONTROL_T__RETURNS = 8;
    public static final int CONTROL_T__TYPE = 9;
    public static final int CONTROL_T_FEATURE_COUNT = 10;
    public static final int CONTROL_T_OPERATION_COUNT = 0;
    public static final int CONTROL_RTE_INVOKE_T = 23;
    public static final int CONTROL_RTE_INVOKE_T__VIEW_INFO = 0;
    public static final int CONTROL_RTE_INVOKE_T__LINE_STYLE = 1;
    public static final int CONTROL_RTE_INVOKE_T__FILL_COLOR = 2;
    public static final int CONTROL_RTE_INVOKE_T__GRAPHIC_OID = 3;
    public static final int CONTROL_RTE_INVOKE_T__POSITION = 4;
    public static final int CONTROL_RTE_INVOKE_T__INTERFACES = 5;
    public static final int CONTROL_RTE_INVOKE_T__SIZE = 6;
    public static final int CONTROL_RTE_INVOKE_T__ARGUMENTS = 7;
    public static final int CONTROL_RTE_INVOKE_T__RETURNS = 8;
    public static final int CONTROL_RTE_INVOKE_T__TYPE = 9;
    public static final int CONTROL_RTE_INVOKE_T__ACCESS = 10;
    public static final int CONTROL_RTE_INVOKE_T_FEATURE_COUNT = 11;
    public static final int CONTROL_RTE_INVOKE_T_OPERATION_COUNT = 0;
    public static final int DIAGRAM_ELEMENTS_COMPLEX_TYPE = 25;
    public static final int DIAGRAM_ELEMENTS_COMPLEX_TYPE__DIAGRAM_ELEMENT = 0;
    public static final int DIAGRAM_ELEMENTS_COMPLEX_TYPE_FEATURE_COUNT = 1;
    public static final int DIAGRAM_ELEMENTS_COMPLEX_TYPE_OPERATION_COUNT = 0;
    public static final int DIAGRAM_ELEMENT_T = 26;
    public static final int DIAGRAM_ELEMENT_T__CUSTOMER_DATA = 0;
    public static final int DIAGRAM_ELEMENT_T__OPERATOR = 1;
    public static final int DIAGRAM_ELEMENT_T__CONTROL = 2;
    public static final int DIAGRAM_ELEMENT_T__CONTROL_RTE_ACCESS = 3;
    public static final int DIAGRAM_ELEMENT_T__CONTROL_RTE_INVOKE = 4;
    public static final int DIAGRAM_ELEMENT_T__LITERAL = 5;
    public static final int DIAGRAM_ELEMENT_T__SIMPLE_ELEMENT = 6;
    public static final int DIAGRAM_ELEMENT_T__RESOURCE = 7;
    public static final int DIAGRAM_ELEMENT_T__IMPLEMENTATION_CAST = 8;
    public static final int DIAGRAM_ELEMENT_T__COMPLEX_ELEMENT = 9;
    public static final int DIAGRAM_ELEMENT_T__COMMENT = 10;
    public static final int DIAGRAM_ELEMENT_T__CONNECTION = 11;
    public static final int DIAGRAM_ELEMENT_T__HIERARCHY = 12;
    public static final int DIAGRAM_ELEMENT_T__HIERARCHY_CONNECTOR = 13;
    public static final int DIAGRAM_ELEMENT_T__STATE = 14;
    public static final int DIAGRAM_ELEMENT_T__HIERARCHY_STATE = 15;
    public static final int DIAGRAM_ELEMENT_T__JUNCTION = 16;
    public static final int DIAGRAM_ELEMENT_T__TRANSITION = 17;
    public static final int DIAGRAM_ELEMENT_T__IGNORE = 18;
    public static final int DIAGRAM_ELEMENT_T__ST_CLASS = 19;
    public static final int DIAGRAM_ELEMENT_T_FEATURE_COUNT = 20;
    public static final int DIAGRAM_ELEMENT_T_OPERATION_COUNT = 0;
    public static final int DISABLING_MODES_TYPE = 27;
    public static final int DISABLING_MODES_TYPE__MODE = 0;
    public static final int DISABLING_MODES_TYPE_FEATURE_COUNT = 1;
    public static final int DISABLING_MODES_TYPE_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 28;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__SPECIFICATIONS = 3;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 4;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int ENTRY_ACTION_TYPE = 29;
    public static final int ENTRY_ACTION_TYPE__ESDL_ACTION = 0;
    public static final int ENTRY_ACTION_TYPE__METHOD_ACTION = 1;
    public static final int ENTRY_ACTION_TYPE__GRAPHIC_OID = 2;
    public static final int ENTRY_ACTION_TYPE_FEATURE_COUNT = 3;
    public static final int ENTRY_ACTION_TYPE_OPERATION_COUNT = 0;
    public static final int ESDL_ACTION_TYPE = 30;
    public static final int ESDL_ACTION_TYPE__CODE_BLOCK = 0;
    public static final int ESDL_ACTION_TYPE_FEATURE_COUNT = 1;
    public static final int ESDL_ACTION_TYPE_OPERATION_COUNT = 0;
    public static final int ESDL_CODE_T = 31;
    public static final int ESDL_CODE_T__METHOD_BODIES = 0;
    public static final int ESDL_CODE_T_FEATURE_COUNT = 1;
    public static final int ESDL_CODE_T_OPERATION_COUNT = 0;
    public static final int ESDL_SPECIFICATION_T = 32;
    public static final int ESDL_SPECIFICATION_T__ESDL_CODE = 0;
    public static final int ESDL_SPECIFICATION_T_FEATURE_COUNT = 1;
    public static final int ESDL_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int EVENT_SPECIFICATION_T = 33;
    public static final int EVENT_SPECIFICATION_T__EVENTS = 0;
    public static final int EVENT_SPECIFICATION_T_FEATURE_COUNT = 1;
    public static final int EVENT_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int EVENTS_TYPE = 34;
    public static final int EVENTS_TYPE__EVENT = 0;
    public static final int EVENTS_TYPE_FEATURE_COUNT = 1;
    public static final int EVENTS_TYPE_OPERATION_COUNT = 0;
    public static final int EVENT_T = 35;
    public static final int EVENT_T__RUNNABLES = 0;
    public static final int EVENT_T__DISABLING_MODES = 1;
    public static final int EVENT_T__EVENT_TYPE = 2;
    public static final int EVENT_T__NAME = 3;
    public static final int EVENT_T__UUID = 4;
    public static final int EVENT_T_FEATURE_COUNT = 5;
    public static final int EVENT_T_OPERATION_COUNT = 0;
    public static final int EVENT_TYPE_TYPE = 36;
    public static final int EVENT_TYPE_TYPE__TIMING_EVENT = 0;
    public static final int EVENT_TYPE_TYPE__MODE_SWITCH_EVENT = 1;
    public static final int EVENT_TYPE_TYPE__OPERATION_INVOKED_EVENT = 2;
    public static final int EVENT_TYPE_TYPE_FEATURE_COUNT = 3;
    public static final int EVENT_TYPE_TYPE_OPERATION_COUNT = 0;
    public static final int EXIT_ACTION_TYPE = 37;
    public static final int EXIT_ACTION_TYPE__ESDL_ACTION = 0;
    public static final int EXIT_ACTION_TYPE__METHOD_ACTION = 1;
    public static final int EXIT_ACTION_TYPE__GRAPHIC_OID = 2;
    public static final int EXIT_ACTION_TYPE_FEATURE_COUNT = 3;
    public static final int EXIT_ACTION_TYPE_OPERATION_COUNT = 0;
    public static final int FILE_LIST_SPECIFICATION_T = 38;
    public static final int FILE_LIST_SPECIFICATION_T__FILE = 0;
    public static final int FILE_LIST_SPECIFICATION_T_FEATURE_COUNT = 1;
    public static final int FILE_LIST_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int FILE_REFERENCE_T = 39;
    public static final int FILE_REFERENCE_T__VALUE = 0;
    public static final int FILE_REFERENCE_T__CHECKSUM = 1;
    public static final int FILE_REFERENCE_T__TYPE = 2;
    public static final int FILE_REFERENCE_T_FEATURE_COUNT = 3;
    public static final int FILE_REFERENCE_T_OPERATION_COUNT = 0;
    public static final int FILE_TYPE = 40;
    public static final int FILE_TYPE__NAME = 0;
    public static final int FILE_TYPE__LOCATION = 1;
    public static final int FILE_TYPE_FEATURE_COUNT = 2;
    public static final int FILE_TYPE_OPERATION_COUNT = 0;
    public static final int FORMATTED_TEXT_T = 41;
    public static final int FORMATTED_TEXT_T__VALUE = 0;
    public static final int FORMATTED_TEXT_T_FEATURE_COUNT = 1;
    public static final int FORMATTED_TEXT_T_OPERATION_COUNT = 0;
    public static final int GENERIC_DATA_T = 42;
    public static final int GENERIC_DATA_T__ANY = 0;
    public static final int GENERIC_DATA_T__NAME = 1;
    public static final int GENERIC_DATA_T_FEATURE_COUNT = 2;
    public static final int GENERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int PIN_T = 88;
    public static final int PIN_T__POSITION = 0;
    public static final int PIN_T__DIRECTION = 1;
    public static final int PIN_T__GRAPHIC_OID = 2;
    public static final int PIN_T__NAME = 3;
    public static final int PIN_T__NAME_VISIBILITY = 4;
    public static final int PIN_T__VISIBILITY = 5;
    public static final int PIN_T_FEATURE_COUNT = 6;
    public static final int PIN_T_OPERATION_COUNT = 0;
    public static final int GET_SET_PORT_BASE_T = 43;
    public static final int GET_SET_PORT_BASE_T__POSITION = 0;
    public static final int GET_SET_PORT_BASE_T__DIRECTION = 1;
    public static final int GET_SET_PORT_BASE_T__GRAPHIC_OID = 2;
    public static final int GET_SET_PORT_BASE_T__NAME = 3;
    public static final int GET_SET_PORT_BASE_T__NAME_VISIBILITY = 4;
    public static final int GET_SET_PORT_BASE_T__VISIBILITY = 5;
    public static final int GET_SET_PORT_BASE_T__ELEMENT_NAME = 6;
    public static final int GET_SET_PORT_BASE_T__ELEMENT_OID = 7;
    public static final int GET_SET_PORT_BASE_T_FEATURE_COUNT = 8;
    public static final int GET_SET_PORT_BASE_T_OPERATION_COUNT = 0;
    public static final int HEADER_FILE_TYPE = 46;
    public static final int HEADER_FILE_TYPE__FILE = 0;
    public static final int HEADER_FILE_TYPE__USE_GLOBAL = 1;
    public static final int HEADER_FILE_TYPE_FEATURE_COUNT = 2;
    public static final int HEADER_FILE_TYPE_OPERATION_COUNT = 0;
    public static final int IN_OUT_PORT_T = 52;
    public static final int IN_OUT_PORT_T__VIEW_INFO = 0;
    public static final int IN_OUT_PORT_T__LINE_STYLE = 1;
    public static final int IN_OUT_PORT_T__FILL_COLOR = 2;
    public static final int IN_OUT_PORT_T__GRAPHIC_OID = 3;
    public static final int IN_OUT_PORT_T__POSITION = 4;
    public static final int IN_OUT_PORT_T__NAME = 5;
    public static final int IN_OUT_PORT_T_FEATURE_COUNT = 6;
    public static final int IN_OUT_PORT_T_OPERATION_COUNT = 0;
    public static final int HIERARCHY_CONNECTOR_TYPE = 47;
    public static final int HIERARCHY_CONNECTOR_TYPE__VIEW_INFO = 0;
    public static final int HIERARCHY_CONNECTOR_TYPE__LINE_STYLE = 1;
    public static final int HIERARCHY_CONNECTOR_TYPE__FILL_COLOR = 2;
    public static final int HIERARCHY_CONNECTOR_TYPE__GRAPHIC_OID = 3;
    public static final int HIERARCHY_CONNECTOR_TYPE__POSITION = 4;
    public static final int HIERARCHY_CONNECTOR_TYPE__NAME = 5;
    public static final int HIERARCHY_CONNECTOR_TYPE_FEATURE_COUNT = 6;
    public static final int HIERARCHY_CONNECTOR_TYPE_OPERATION_COUNT = 0;
    public static final int STATE_T = 114;
    public static final int STATE_T__VIEW_INFO = 0;
    public static final int STATE_T__LINE_STYLE = 1;
    public static final int STATE_T__FILL_COLOR = 2;
    public static final int STATE_T__GRAPHIC_OID = 3;
    public static final int STATE_T__SIZE = 4;
    public static final int STATE_T__POSITION = 5;
    public static final int STATE_T__INTERFACES = 6;
    public static final int STATE_T__ICON = 7;
    public static final int STATE_T__ACTIONS = 8;
    public static final int STATE_T__HISTORY = 9;
    public static final int STATE_T__NAME = 10;
    public static final int STATE_T__START_STATE = 11;
    public static final int STATE_T_FEATURE_COUNT = 12;
    public static final int STATE_T_OPERATION_COUNT = 0;
    public static final int HIERARCHY_STATE_T = 48;
    public static final int HIERARCHY_STATE_T__VIEW_INFO = 0;
    public static final int HIERARCHY_STATE_T__LINE_STYLE = 1;
    public static final int HIERARCHY_STATE_T__FILL_COLOR = 2;
    public static final int HIERARCHY_STATE_T__GRAPHIC_OID = 3;
    public static final int HIERARCHY_STATE_T__SIZE = 4;
    public static final int HIERARCHY_STATE_T__POSITION = 5;
    public static final int HIERARCHY_STATE_T__INTERFACES = 6;
    public static final int HIERARCHY_STATE_T__ICON = 7;
    public static final int HIERARCHY_STATE_T__ACTIONS = 8;
    public static final int HIERARCHY_STATE_T__HISTORY = 9;
    public static final int HIERARCHY_STATE_T__NAME = 10;
    public static final int HIERARCHY_STATE_T__START_STATE = 11;
    public static final int HIERARCHY_STATE_T__PORTS = 12;
    public static final int HIERARCHY_STATE_T__CONTENTS = 13;
    public static final int HIERARCHY_STATE_T_FEATURE_COUNT = 14;
    public static final int HIERARCHY_STATE_T_OPERATION_COUNT = 0;
    public static final int HIERARCHY_T = 49;
    public static final int HIERARCHY_T__VIEW_INFO = 0;
    public static final int HIERARCHY_T__LINE_STYLE = 1;
    public static final int HIERARCHY_T__FILL_COLOR = 2;
    public static final int HIERARCHY_T__GRAPHIC_OID = 3;
    public static final int HIERARCHY_T__SIZE = 4;
    public static final int HIERARCHY_T__POSITION = 5;
    public static final int HIERARCHY_T__INTERFACES = 6;
    public static final int HIERARCHY_T__LABEL_POSITION = 7;
    public static final int HIERARCHY_T__ICON = 8;
    public static final int HIERARCHY_T__CONTENTS = 9;
    public static final int HIERARCHY_T__NAME = 10;
    public static final int HIERARCHY_T__NAME_VISIBILITY = 11;
    public static final int HIERARCHY_T_FEATURE_COUNT = 12;
    public static final int HIERARCHY_T_OPERATION_COUNT = 0;
    public static final int ICON_T = 50;
    public static final int ICON_T__ICON_FILE = 0;
    public static final int ICON_T__SIZE = 1;
    public static final int ICON_T__ICON_NAME = 2;
    public static final int ICON_T__ICON_OID = 3;
    public static final int ICON_T_FEATURE_COUNT = 4;
    public static final int ICON_T_OPERATION_COUNT = 0;
    public static final int SIMPLE_ELEMENT_BASE_T = 107;
    public static final int SIMPLE_ELEMENT_BASE_T__VIEW_INFO = 0;
    public static final int SIMPLE_ELEMENT_BASE_T__LINE_STYLE = 1;
    public static final int SIMPLE_ELEMENT_BASE_T__FILL_COLOR = 2;
    public static final int SIMPLE_ELEMENT_BASE_T__GRAPHIC_OID = 3;
    public static final int SIMPLE_ELEMENT_BASE_T__POSITION = 4;
    public static final int SIMPLE_ELEMENT_BASE_T__LABEL_POSITION = 5;
    public static final int SIMPLE_ELEMENT_BASE_T__ELEMENT_NAME = 6;
    public static final int SIMPLE_ELEMENT_BASE_T__ELEMENT_OID = 7;
    public static final int SIMPLE_ELEMENT_BASE_T__METHOD_NAME = 8;
    public static final int SIMPLE_ELEMENT_BASE_T_FEATURE_COUNT = 9;
    public static final int SIMPLE_ELEMENT_BASE_T_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_CAST_T = 51;
    public static final int IMPLEMENTATION_CAST_T__VIEW_INFO = 0;
    public static final int IMPLEMENTATION_CAST_T__LINE_STYLE = 1;
    public static final int IMPLEMENTATION_CAST_T__FILL_COLOR = 2;
    public static final int IMPLEMENTATION_CAST_T__GRAPHIC_OID = 3;
    public static final int IMPLEMENTATION_CAST_T__POSITION = 4;
    public static final int IMPLEMENTATION_CAST_T__LABEL_POSITION = 5;
    public static final int IMPLEMENTATION_CAST_T__ELEMENT_NAME = 6;
    public static final int IMPLEMENTATION_CAST_T__ELEMENT_OID = 7;
    public static final int IMPLEMENTATION_CAST_T__METHOD_NAME = 8;
    public static final int IMPLEMENTATION_CAST_T__INTERFACES = 9;
    public static final int IMPLEMENTATION_CAST_T__TEMP_VAR = 10;
    public static final int IMPLEMENTATION_CAST_T_FEATURE_COUNT = 11;
    public static final int IMPLEMENTATION_CAST_T_OPERATION_COUNT = 0;
    public static final int INPUT_COLUMNS_TYPE = 53;
    public static final int INPUT_COLUMNS_TYPE__TABLE_COLUMN = 0;
    public static final int INPUT_COLUMNS_TYPE_FEATURE_COUNT = 1;
    public static final int INPUT_COLUMNS_TYPE_OPERATION_COUNT = 0;
    public static final int PORT_T = 91;
    public static final int PORT_T__GRAPHIC_OID = 0;
    public static final int PORT_T__LOCATION = 1;
    public static final int PORT_T_FEATURE_COUNT = 2;
    public static final int PORT_T_OPERATION_COUNT = 0;
    public static final int INPUT_PORT_TYPE = 54;
    public static final int INPUT_PORT_TYPE__GRAPHIC_OID = 0;
    public static final int INPUT_PORT_TYPE__LOCATION = 1;
    public static final int INPUT_PORT_TYPE__INDEX = 2;
    public static final int INPUT_PORT_TYPE__NAME = 3;
    public static final int INPUT_PORT_TYPE_FEATURE_COUNT = 4;
    public static final int INPUT_PORT_TYPE_OPERATION_COUNT = 0;
    public static final int INSTRUCTION_COLUMNS_TYPE = 55;
    public static final int INSTRUCTION_COLUMNS_TYPE__TABLE_COLUMN = 0;
    public static final int INSTRUCTION_COLUMNS_TYPE_FEATURE_COUNT = 1;
    public static final int INSTRUCTION_COLUMNS_TYPE_OPERATION_COUNT = 0;
    public static final int INTERFACE_ELEMENT_TYPE = 56;
    public static final int INTERFACE_ELEMENT_TYPE__ELEMENT_NAME = 0;
    public static final int INTERFACE_ELEMENT_TYPE__ELEMENT_OID = 1;
    public static final int INTERFACE_ELEMENT_TYPE_FEATURE_COUNT = 2;
    public static final int INTERFACE_ELEMENT_TYPE_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE = 57;
    public static final int INTERFACES_TYPE__SELECTOR_PORT = 0;
    public static final int INTERFACES_TYPE__RETURN_PORT = 1;
    public static final int INTERFACES_TYPE_FEATURE_COUNT = 2;
    public static final int INTERFACES_TYPE_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE1 = 58;
    public static final int INTERFACES_TYPE1__RETURN_PORT = 0;
    public static final int INTERFACES_TYPE1_FEATURE_COUNT = 1;
    public static final int INTERFACES_TYPE1_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE2 = 59;
    public static final int INTERFACES_TYPE2__RETURN_PORT = 0;
    public static final int INTERFACES_TYPE2_FEATURE_COUNT = 1;
    public static final int INTERFACES_TYPE2_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE3 = 60;
    public static final int INTERFACES_TYPE3__BLOCK_INTERFACE = 0;
    public static final int INTERFACES_TYPE3_FEATURE_COUNT = 1;
    public static final int INTERFACES_TYPE3_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE4 = 61;
    public static final int INTERFACES_TYPE4__RETURN_PORT = 0;
    public static final int INTERFACES_TYPE4__SELECTOR_PORT = 1;
    public static final int INTERFACES_TYPE4_FEATURE_COUNT = 2;
    public static final int INTERFACES_TYPE4_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE5 = 62;
    public static final int INTERFACES_TYPE5__RETURN_PORT = 0;
    public static final int INTERFACES_TYPE5__SELECTOR_PORT = 1;
    public static final int INTERFACES_TYPE5_FEATURE_COUNT = 2;
    public static final int INTERFACES_TYPE5_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE6 = 63;
    public static final int INTERFACES_TYPE6__RETURN_PORT = 0;
    public static final int INTERFACES_TYPE6_FEATURE_COUNT = 1;
    public static final int INTERFACES_TYPE6_OPERATION_COUNT = 0;
    public static final int INTERFACES_TYPE7 = 64;
    public static final int INTERFACES_TYPE7__GROUP = 0;
    public static final int INTERFACES_TYPE7__METHOD_PORT = 1;
    public static final int INTERFACES_TYPE7__RETURN_PORT = 2;
    public static final int INTERFACES_TYPE7__MEMBER_SET_PORT = 3;
    public static final int INTERFACES_TYPE7__MEMBER_GET_PORT = 4;
    public static final int INTERFACES_TYPE7_FEATURE_COUNT = 5;
    public static final int INTERFACES_TYPE7_OPERATION_COUNT = 0;
    public static final int INTERVAL_T = 65;
    public static final int INTERVAL_T__MAX = 0;
    public static final int INTERVAL_T__MIN = 1;
    public static final int INTERVAL_T_FEATURE_COUNT = 2;
    public static final int INTERVAL_T_OPERATION_COUNT = 0;
    public static final int ITEM_REF_T = 66;
    public static final int ITEM_REF_T__NAME = 0;
    public static final int ITEM_REF_T__OID = 1;
    public static final int ITEM_REF_T_FEATURE_COUNT = 2;
    public static final int ITEM_REF_T_OPERATION_COUNT = 0;
    public static final int JUNCTION_T = 67;
    public static final int JUNCTION_T__VIEW_INFO = 0;
    public static final int JUNCTION_T__LINE_STYLE = 1;
    public static final int JUNCTION_T__FILL_COLOR = 2;
    public static final int JUNCTION_T__GRAPHIC_OID = 3;
    public static final int JUNCTION_T__SIZE = 4;
    public static final int JUNCTION_T__POSITION = 5;
    public static final int JUNCTION_T__INTERFACES = 6;
    public static final int JUNCTION_T__ICON = 7;
    public static final int JUNCTION_T__NAME = 8;
    public static final int JUNCTION_T_FEATURE_COUNT = 9;
    public static final int JUNCTION_T_OPERATION_COUNT = 0;
    public static final int LINE_STYLE_T = 69;
    public static final int LINE_STYLE_T__COLOR = 0;
    public static final int LINE_STYLE_T__TYPE = 1;
    public static final int LINE_STYLE_T__WIDTH = 2;
    public static final int LINE_STYLE_T_FEATURE_COUNT = 3;
    public static final int LINE_STYLE_T_OPERATION_COUNT = 0;
    public static final int LINE_T = 70;
    public static final int LINE_T__POINT_A = 0;
    public static final int LINE_T__DIRECTION = 1;
    public static final int LINE_T_FEATURE_COUNT = 2;
    public static final int LINE_T_OPERATION_COUNT = 0;
    public static final int LITERAL_T = 71;
    public static final int LITERAL_T__VIEW_INFO = 0;
    public static final int LITERAL_T__LINE_STYLE = 1;
    public static final int LITERAL_T__FILL_COLOR = 2;
    public static final int LITERAL_T__GRAPHIC_OID = 3;
    public static final int LITERAL_T__POSITION = 4;
    public static final int LITERAL_T__INTERFACES = 5;
    public static final int LITERAL_T__VALUE = 6;
    public static final int LITERAL_T_FEATURE_COUNT = 7;
    public static final int LITERAL_T_OPERATION_COUNT = 0;
    public static final int MEMBER_GET_PORT_T = 72;
    public static final int MEMBER_GET_PORT_T__POSITION = 0;
    public static final int MEMBER_GET_PORT_T__DIRECTION = 1;
    public static final int MEMBER_GET_PORT_T__GRAPHIC_OID = 2;
    public static final int MEMBER_GET_PORT_T__NAME = 3;
    public static final int MEMBER_GET_PORT_T__NAME_VISIBILITY = 4;
    public static final int MEMBER_GET_PORT_T__VISIBILITY = 5;
    public static final int MEMBER_GET_PORT_T__ELEMENT_NAME = 6;
    public static final int MEMBER_GET_PORT_T__ELEMENT_OID = 7;
    public static final int MEMBER_GET_PORT_T_FEATURE_COUNT = 8;
    public static final int MEMBER_GET_PORT_T_OPERATION_COUNT = 0;
    public static final int MEMBER_SET_PORT_T = 73;
    public static final int MEMBER_SET_PORT_T__POSITION = 0;
    public static final int MEMBER_SET_PORT_T__DIRECTION = 1;
    public static final int MEMBER_SET_PORT_T__GRAPHIC_OID = 2;
    public static final int MEMBER_SET_PORT_T__NAME = 3;
    public static final int MEMBER_SET_PORT_T__NAME_VISIBILITY = 4;
    public static final int MEMBER_SET_PORT_T__VISIBILITY = 5;
    public static final int MEMBER_SET_PORT_T__ELEMENT_NAME = 6;
    public static final int MEMBER_SET_PORT_T__ELEMENT_OID = 7;
    public static final int MEMBER_SET_PORT_T__SEQUENCE_CALL = 8;
    public static final int MEMBER_SET_PORT_T_FEATURE_COUNT = 9;
    public static final int MEMBER_SET_PORT_T_OPERATION_COUNT = 0;
    public static final int METHOD_ACTION_TYPE = 74;
    public static final int METHOD_ACTION_TYPE__METHOD_NAME = 0;
    public static final int METHOD_ACTION_TYPE__METHOD_OID = 1;
    public static final int METHOD_ACTION_TYPE_FEATURE_COUNT = 2;
    public static final int METHOD_ACTION_TYPE_OPERATION_COUNT = 0;
    public static final int METHOD_BODIES_COMPLEX_TYPE = 75;
    public static final int METHOD_BODIES_COMPLEX_TYPE__METHOD_BODY = 0;
    public static final int METHOD_BODIES_COMPLEX_TYPE_FEATURE_COUNT = 1;
    public static final int METHOD_BODIES_COMPLEX_TYPE_OPERATION_COUNT = 0;
    public static final int METHOD_BODY_T = 76;
    public static final int METHOD_BODY_T__HEADER_BLOCK = 0;
    public static final int METHOD_BODY_T__CODE_BLOCK = 1;
    public static final int METHOD_BODY_T__CUSTOMER_DATA = 2;
    public static final int METHOD_BODY_T__METHOD_NAME = 3;
    public static final int METHOD_BODY_T__METHOD_OID = 4;
    public static final int METHOD_BODY_T_FEATURE_COUNT = 5;
    public static final int METHOD_BODY_T_OPERATION_COUNT = 0;
    public static final int METHOD_PORT_T = 77;
    public static final int METHOD_PORT_T__SEQUENCE_CALL = 0;
    public static final int METHOD_PORT_T__SELECTOR_PORT = 1;
    public static final int METHOD_PORT_T__TRIGGER_PORT = 2;
    public static final int METHOD_PORT_T__DEFAULT_METHOD = 3;
    public static final int METHOD_PORT_T__METHOD_NAME = 4;
    public static final int METHOD_PORT_T__METHOD_OID = 5;
    public static final int METHOD_PORT_T_FEATURE_COUNT = 6;
    public static final int METHOD_PORT_T_OPERATION_COUNT = 0;
    public static final int MODE_ELEMENT_TYPE = 78;
    public static final int MODE_ELEMENT_TYPE__ELEMENT_NAME = 0;
    public static final int MODE_ELEMENT_TYPE__ELEMENT_OID = 1;
    public static final int MODE_ELEMENT_TYPE_FEATURE_COUNT = 2;
    public static final int MODE_ELEMENT_TYPE_OPERATION_COUNT = 0;
    public static final int MODE_SWITCH_EVENT_TYPE = 79;
    public static final int MODE_SWITCH_EVENT_TYPE__ASSIGNED_MODE = 0;
    public static final int MODE_SWITCH_EVENT_TYPE__MODE_SWITCH_TYPE = 1;
    public static final int MODE_SWITCH_EVENT_TYPE_FEATURE_COUNT = 2;
    public static final int MODE_SWITCH_EVENT_TYPE_OPERATION_COUNT = 0;
    public static final int MODE_T = 80;
    public static final int MODE_T__INTERFACE_ELEMENT = 0;
    public static final int MODE_T__MODE_ELEMENT = 1;
    public static final int MODE_T__MODE_VALUE = 2;
    public static final int MODE_T_FEATURE_COUNT = 3;
    public static final int MODE_T_OPERATION_COUNT = 0;
    public static final int NOTES_T = 81;
    public static final int NOTES_T__NOTE = 0;
    public static final int NOTES_T_FEATURE_COUNT = 1;
    public static final int NOTES_T_OPERATION_COUNT = 0;
    public static final int NOTE_TYPE = 82;
    public static final int NOTE_TYPE__TEXT = 0;
    public static final int NOTE_TYPE__VIEW = 1;
    public static final int NOTE_TYPE__NAME = 2;
    public static final int NOTE_TYPE_FEATURE_COUNT = 3;
    public static final int NOTE_TYPE_OPERATION_COUNT = 0;
    public static final int OPERATION_INVOKED_EVENT_TYPE = 83;
    public static final int OPERATION_INVOKED_EVENT_TYPE__OPERATION_NAME = 0;
    public static final int OPERATION_INVOKED_EVENT_TYPE__OPERATION_OID = 1;
    public static final int OPERATION_INVOKED_EVENT_TYPE__PORT_NAME = 2;
    public static final int OPERATION_INVOKED_EVENT_TYPE__PORT_OID = 3;
    public static final int OPERATION_INVOKED_EVENT_TYPE_FEATURE_COUNT = 4;
    public static final int OPERATION_INVOKED_EVENT_TYPE_OPERATION_COUNT = 0;
    public static final int OPERATOR_T = 84;
    public static final int OPERATOR_T__VIEW_INFO = 0;
    public static final int OPERATOR_T__LINE_STYLE = 1;
    public static final int OPERATOR_T__FILL_COLOR = 2;
    public static final int OPERATOR_T__GRAPHIC_OID = 3;
    public static final int OPERATOR_T__POSITION = 4;
    public static final int OPERATOR_T__INTERFACES = 5;
    public static final int OPERATOR_T__ARGUMENTS = 6;
    public static final int OPERATOR_T__OLD_FASHION = 7;
    public static final int OPERATOR_T__RETURNS = 8;
    public static final int OPERATOR_T__TEMP_VAR = 9;
    public static final int OPERATOR_T__TYPE = 10;
    public static final int OPERATOR_T_FEATURE_COUNT = 11;
    public static final int OPERATOR_T_OPERATION_COUNT = 0;
    public static final int OPERATOR_TYPE = 85;
    public static final int OPERATOR_TYPE__VIEW_INFO = 0;
    public static final int OPERATOR_TYPE__LINE_STYLE = 1;
    public static final int OPERATOR_TYPE__FILL_COLOR = 2;
    public static final int OPERATOR_TYPE__GRAPHIC_OID = 3;
    public static final int OPERATOR_TYPE__POSITION = 4;
    public static final int OPERATOR_TYPE__INTERFACES = 5;
    public static final int OPERATOR_TYPE__ARGUMENTS = 6;
    public static final int OPERATOR_TYPE__OLD_FASHION = 7;
    public static final int OPERATOR_TYPE__RETURNS = 8;
    public static final int OPERATOR_TYPE__TEMP_VAR = 9;
    public static final int OPERATOR_TYPE__TYPE = 10;
    public static final int OPERATOR_TYPE_FEATURE_COUNT = 11;
    public static final int OPERATOR_TYPE_OPERATION_COUNT = 0;
    public static final int OPTION_T = 86;
    public static final int OPTION_T__NAME = 0;
    public static final int OPTION_T__TYPE = 1;
    public static final int OPTION_T__VALUE = 2;
    public static final int OPTION_T_FEATURE_COUNT = 3;
    public static final int OPTION_T_OPERATION_COUNT = 0;
    public static final int OUTPUT_COLUMNS_TYPE = 87;
    public static final int OUTPUT_COLUMNS_TYPE__TABLE_COLUMN = 0;
    public static final int OUTPUT_COLUMNS_TYPE_FEATURE_COUNT = 1;
    public static final int OUTPUT_COLUMNS_TYPE_OPERATION_COUNT = 0;
    public static final int POINT_T = 89;
    public static final int POINT_T__X = 0;
    public static final int POINT_T__Y = 1;
    public static final int POINT_T_FEATURE_COUNT = 2;
    public static final int POINT_T_OPERATION_COUNT = 0;
    public static final int PORTS_TYPE = 90;
    public static final int PORTS_TYPE__BLOCK_INTERFACE = 0;
    public static final int PORTS_TYPE_FEATURE_COUNT = 1;
    public static final int PORTS_TYPE_OPERATION_COUNT = 0;
    public static final int PROJECT_SPECIFICATION_T = 92;
    public static final int PROJECT_SPECIFICATION_T__HIGHEST_USED_GRAPHICAL_IDENTIFIER = 0;
    public static final int PROJECT_SPECIFICATION_T__ESDL_CODE = 1;
    public static final int PROJECT_SPECIFICATION_T__DIAGRAM_ELEMENTS = 2;
    public static final int PROJECT_SPECIFICATION_T_FEATURE_COUNT = 3;
    public static final int PROJECT_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int RESOURCE_INTERFACE_TYPE = 93;
    public static final int RESOURCE_INTERFACE_TYPE__RESERVE_PORT = 0;
    public static final int RESOURCE_INTERFACE_TYPE__RELEASE_PORT = 1;
    public static final int RESOURCE_INTERFACE_TYPE_FEATURE_COUNT = 2;
    public static final int RESOURCE_INTERFACE_TYPE_OPERATION_COUNT = 0;
    public static final int RESOURCE_T = 94;
    public static final int RESOURCE_T__VIEW_INFO = 0;
    public static final int RESOURCE_T__LINE_STYLE = 1;
    public static final int RESOURCE_T__FILL_COLOR = 2;
    public static final int RESOURCE_T__GRAPHIC_OID = 3;
    public static final int RESOURCE_T__POSITION = 4;
    public static final int RESOURCE_T__LABEL_POSITION = 5;
    public static final int RESOURCE_T__ELEMENT_NAME = 6;
    public static final int RESOURCE_T__ELEMENT_OID = 7;
    public static final int RESOURCE_T__METHOD_NAME = 8;
    public static final int RESOURCE_T__INTERFACES = 9;
    public static final int RESOURCE_T_FEATURE_COUNT = 10;
    public static final int RESOURCE_T_OPERATION_COUNT = 0;
    public static final int RETURN_PORT_T = 95;
    public static final int RETURN_PORT_T__GRAPHIC_OID = 0;
    public static final int RETURN_PORT_T__LOCATION = 1;
    public static final int RETURN_PORT_T__POSITION = 2;
    public static final int RETURN_PORT_T__SELECTOR_PORT = 3;
    public static final int RETURN_PORT_T__DEFAULT_PORT = 4;
    public static final int RETURN_PORT_T__METHOD_NAME = 5;
    public static final int RETURN_PORT_T__METHOD_OID = 6;
    public static final int RETURN_PORT_T__NAME_VISIBILITY = 7;
    public static final int RETURN_PORT_T__RETURN_ELEMENT_OID = 8;
    public static final int RETURN_PORT_T__TEMP_VAR = 9;
    public static final int RETURN_PORT_T__VISIBILITY = 10;
    public static final int RETURN_PORT_T_FEATURE_COUNT = 11;
    public static final int RETURN_PORT_T_OPERATION_COUNT = 0;
    public static final int RETURN_PORT_TYPE = 96;
    public static final int RETURN_PORT_TYPE__GRAPHIC_OID = 0;
    public static final int RETURN_PORT_TYPE__LOCATION = 1;
    public static final int RETURN_PORT_TYPE__INDEX = 2;
    public static final int RETURN_PORT_TYPE__LABEL = 3;
    public static final int RETURN_PORT_TYPE_FEATURE_COUNT = 4;
    public static final int RETURN_PORT_TYPE_OPERATION_COUNT = 0;
    public static final int RETURN_PORT_TYPE1 = 97;
    public static final int RETURN_PORT_TYPE1__GRAPHIC_OID = 0;
    public static final int RETURN_PORT_TYPE1__LOCATION = 1;
    public static final int RETURN_PORT_TYPE1__SELECTOR_PORT = 2;
    public static final int RETURN_PORT_TYPE1__INDEX = 3;
    public static final int RETURN_PORT_TYPE1__LABEL = 4;
    public static final int RETURN_PORT_TYPE1_FEATURE_COUNT = 5;
    public static final int RETURN_PORT_TYPE1_OPERATION_COUNT = 0;
    public static final int RETURN_PORT_TYPE2 = 98;
    public static final int RETURN_PORT_TYPE2__GRAPHIC_OID = 0;
    public static final int RETURN_PORT_TYPE2__LOCATION = 1;
    public static final int RETURN_PORT_TYPE2__SELECTOR_PORT = 2;
    public static final int RETURN_PORT_TYPE2__INPUT_PORT = 3;
    public static final int RETURN_PORT_TYPE2_FEATURE_COUNT = 4;
    public static final int RETURN_PORT_TYPE2_OPERATION_COUNT = 0;
    public static final int RUNNABLES_TYPE = 99;
    public static final int RUNNABLES_TYPE__RUNNABLE = 0;
    public static final int RUNNABLES_TYPE_FEATURE_COUNT = 1;
    public static final int RUNNABLES_TYPE_OPERATION_COUNT = 0;
    public static final int RUNNABLE_TYPE = 100;
    public static final int RUNNABLE_TYPE__INDEX = 0;
    public static final int RUNNABLE_TYPE__RUNNABLE_NAME = 1;
    public static final int RUNNABLE_TYPE__RUNNABLE_OID = 2;
    public static final int RUNNABLE_TYPE_FEATURE_COUNT = 3;
    public static final int RUNNABLE_TYPE_OPERATION_COUNT = 0;
    public static final int SELECTOR_PORT_T = 101;
    public static final int SELECTOR_PORT_T__POSITION = 0;
    public static final int SELECTOR_PORT_T__DIRECTION = 1;
    public static final int SELECTOR_PORT_T__ELEMENT_NAME = 2;
    public static final int SELECTOR_PORT_T__ELEMENT_OID = 3;
    public static final int SELECTOR_PORT_T__GRAPHIC_OID = 4;
    public static final int SELECTOR_PORT_T__NAME = 5;
    public static final int SELECTOR_PORT_T__NAME_VISIBILITY = 6;
    public static final int SELECTOR_PORT_T__VISIBILITY = 7;
    public static final int SELECTOR_PORT_T_FEATURE_COUNT = 8;
    public static final int SELECTOR_PORT_T_OPERATION_COUNT = 0;
    public static final int SELECTOR_PORT_TYPE = 102;
    public static final int SELECTOR_PORT_TYPE__GRAPHIC_OID = 0;
    public static final int SELECTOR_PORT_TYPE__LOCATION = 1;
    public static final int SELECTOR_PORT_TYPE__INDEX = 2;
    public static final int SELECTOR_PORT_TYPE__LABEL = 3;
    public static final int SELECTOR_PORT_TYPE_FEATURE_COUNT = 4;
    public static final int SELECTOR_PORT_TYPE_OPERATION_COUNT = 0;
    public static final int SELECTOR_PORT_TYPE1 = 103;
    public static final int SELECTOR_PORT_TYPE1__GRAPHIC_OID = 0;
    public static final int SELECTOR_PORT_TYPE1__LOCATION = 1;
    public static final int SELECTOR_PORT_TYPE1__SEQUENCE_CALL = 2;
    public static final int SELECTOR_PORT_TYPE1_FEATURE_COUNT = 3;
    public static final int SELECTOR_PORT_TYPE1_OPERATION_COUNT = 0;
    public static final int SELECTOR_PORT_TYPE2 = 104;
    public static final int SELECTOR_PORT_TYPE2__GRAPHIC_OID = 0;
    public static final int SELECTOR_PORT_TYPE2__LOCATION = 1;
    public static final int SELECTOR_PORT_TYPE2__INDEX = 2;
    public static final int SELECTOR_PORT_TYPE2_FEATURE_COUNT = 3;
    public static final int SELECTOR_PORT_TYPE2_OPERATION_COUNT = 0;
    public static final int SEQUENCE_CALL_T = 105;
    public static final int SEQUENCE_CALL_T__POSITION = 0;
    public static final int SEQUENCE_CALL_T__CONNECT_OID = 1;
    public static final int SEQUENCE_CALL_T__END_ATOMIC = 2;
    public static final int SEQUENCE_CALL_T__GRAPHIC_OID = 3;
    public static final int SEQUENCE_CALL_T__METHOD_NAME = 4;
    public static final int SEQUENCE_CALL_T__METHOD_OID = 5;
    public static final int SEQUENCE_CALL_T__SEQUENCE_NUMBER = 6;
    public static final int SEQUENCE_CALL_T__START_ATOMIC = 7;
    public static final int SEQUENCE_CALL_T__USER_VISIBILITY = 8;
    public static final int SEQUENCE_CALL_T_FEATURE_COUNT = 9;
    public static final int SEQUENCE_CALL_T_OPERATION_COUNT = 0;
    public static final int SEQUENCED_PORT_T = 106;
    public static final int SEQUENCED_PORT_T__GRAPHIC_OID = 0;
    public static final int SEQUENCED_PORT_T__LOCATION = 1;
    public static final int SEQUENCED_PORT_T__SEQUENCE_CALL = 2;
    public static final int SEQUENCED_PORT_T_FEATURE_COUNT = 3;
    public static final int SEQUENCED_PORT_T_OPERATION_COUNT = 0;
    public static final int SIMPLE_ELEMENT_T = 108;
    public static final int SIMPLE_ELEMENT_T__VIEW_INFO = 0;
    public static final int SIMPLE_ELEMENT_T__LINE_STYLE = 1;
    public static final int SIMPLE_ELEMENT_T__FILL_COLOR = 2;
    public static final int SIMPLE_ELEMENT_T__GRAPHIC_OID = 3;
    public static final int SIMPLE_ELEMENT_T__POSITION = 4;
    public static final int SIMPLE_ELEMENT_T__LABEL_POSITION = 5;
    public static final int SIMPLE_ELEMENT_T__ELEMENT_NAME = 6;
    public static final int SIMPLE_ELEMENT_T__ELEMENT_OID = 7;
    public static final int SIMPLE_ELEMENT_T__METHOD_NAME = 8;
    public static final int SIMPLE_ELEMENT_T__INTERFACES = 9;
    public static final int SIMPLE_ELEMENT_T__TYPE = 10;
    public static final int SIMPLE_ELEMENT_T_FEATURE_COUNT = 11;
    public static final int SIMPLE_ELEMENT_T_OPERATION_COUNT = 0;
    public static final int SIZE_T = 109;
    public static final int SIZE_T__X = 0;
    public static final int SIZE_T__Y = 1;
    public static final int SIZE_T_FEATURE_COUNT = 2;
    public static final int SIZE_T_OPERATION_COUNT = 0;
    public static final int SPECIFICATIONS_TYPE = 110;
    public static final int SPECIFICATIONS_TYPE__LAYOUT = 0;
    public static final int SPECIFICATIONS_TYPE__SPECIFICATION = 1;
    public static final int SPECIFICATIONS_TYPE__EVENT_SPECIFICATION = 2;
    public static final int SPECIFICATIONS_TYPE__FILE_LIST_SPECIFICATION = 3;
    public static final int SPECIFICATIONS_TYPE__SIGNATURE = 4;
    public static final int SPECIFICATIONS_TYPE__SCHEMA_VERSION = 5;
    public static final int SPECIFICATIONS_TYPE__TOOL_VERSION = 6;
    public static final int SPECIFICATIONS_TYPE_FEATURE_COUNT = 7;
    public static final int SPECIFICATIONS_TYPE_OPERATION_COUNT = 0;
    public static final int SPECIFICATION_T = 111;
    public static final int SPECIFICATION_T__TIME_STAMP = 0;
    public static final int SPECIFICATION_T__BLOCK_DIAGRAM_SPECIFICATION = 1;
    public static final int SPECIFICATION_T__ATOMIC_SOFTWARE_COMPONENT_SPECIFICATION = 2;
    public static final int SPECIFICATION_T__METHOD_INTERFACE_SPECIFICATION = 3;
    public static final int SPECIFICATION_T__TABLE_SPECIFICATION = 4;
    public static final int SPECIFICATION_T__ESDL_SPECIFICATION = 5;
    public static final int SPECIFICATION_T__CCODE_SPECIFICATION = 6;
    public static final int SPECIFICATION_T__STATE_MACHINE_SPECIFICATION = 7;
    public static final int SPECIFICATION_T__PROJECT_SPECIFICATION = 8;
    public static final int SPECIFICATION_T__NAME = 9;
    public static final int SPECIFICATION_T__PUBLIC = 10;
    public static final int SPECIFICATION_T__UUID = 11;
    public static final int SPECIFICATION_T_FEATURE_COUNT = 12;
    public static final int SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int SPECIFICATION_TYPE = 112;
    public static final int SPECIFICATION_TYPE__TIME_STAMP = 0;
    public static final int SPECIFICATION_TYPE__BLOCK_DIAGRAM_SPECIFICATION = 1;
    public static final int SPECIFICATION_TYPE__ATOMIC_SOFTWARE_COMPONENT_SPECIFICATION = 2;
    public static final int SPECIFICATION_TYPE__METHOD_INTERFACE_SPECIFICATION = 3;
    public static final int SPECIFICATION_TYPE__TABLE_SPECIFICATION = 4;
    public static final int SPECIFICATION_TYPE__ESDL_SPECIFICATION = 5;
    public static final int SPECIFICATION_TYPE__CCODE_SPECIFICATION = 6;
    public static final int SPECIFICATION_TYPE__STATE_MACHINE_SPECIFICATION = 7;
    public static final int SPECIFICATION_TYPE__PROJECT_SPECIFICATION = 8;
    public static final int SPECIFICATION_TYPE__NAME = 9;
    public static final int SPECIFICATION_TYPE__PUBLIC = 10;
    public static final int SPECIFICATION_TYPE__UUID = 11;
    public static final int SPECIFICATION_TYPE_FEATURE_COUNT = 12;
    public static final int SPECIFICATION_TYPE_OPERATION_COUNT = 0;
    public static final int STATE_MACHINE_SPECIFICATION_T = 113;
    public static final int STATE_MACHINE_SPECIFICATION_T__HIGHEST_USED_GRAPHICAL_IDENTIFIER = 0;
    public static final int STATE_MACHINE_SPECIFICATION_T__ESDL_CODE = 1;
    public static final int STATE_MACHINE_SPECIFICATION_T__DIAGRAM_ELEMENTS = 2;
    public static final int STATE_MACHINE_SPECIFICATION_T_FEATURE_COUNT = 3;
    public static final int STATE_MACHINE_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int STATIC_ACTION_TYPE = 115;
    public static final int STATIC_ACTION_TYPE__ESDL_ACTION = 0;
    public static final int STATIC_ACTION_TYPE__METHOD_ACTION = 1;
    public static final int STATIC_ACTION_TYPE__GRAPHIC_OID = 2;
    public static final int STATIC_ACTION_TYPE_FEATURE_COUNT = 3;
    public static final int STATIC_ACTION_TYPE_OPERATION_COUNT = 0;
    public static final int SYMBOL_T = 116;
    public static final int SYMBOL_T_FEATURE_COUNT = 0;
    public static final int SYMBOL_T_OPERATION_COUNT = 0;
    public static final int TABLE_CELL_TYPE = 117;
    public static final int TABLE_CELL_TYPE__VALUE = 0;
    public static final int TABLE_CELL_TYPE__INDEX = 1;
    public static final int TABLE_CELL_TYPE_FEATURE_COUNT = 2;
    public static final int TABLE_CELL_TYPE_OPERATION_COUNT = 0;
    public static final int TABLE_COLUMN_T = 118;
    public static final int TABLE_COLUMN_T__COLUMN_HEADING = 0;
    public static final int TABLE_COLUMN_T__TABLE_CELL = 1;
    public static final int TABLE_COLUMN_T_FEATURE_COUNT = 2;
    public static final int TABLE_COLUMN_T_OPERATION_COUNT = 0;
    public static final int TABLE_SPECIFICATION_T = 119;
    public static final int TABLE_SPECIFICATION_T__ESDL_CODE = 0;
    public static final int TABLE_SPECIFICATION_T__CONDITIONAL_TABLE = 1;
    public static final int TABLE_SPECIFICATION_T__BOOLEAN_TABLE = 2;
    public static final int TABLE_SPECIFICATION_T_FEATURE_COUNT = 3;
    public static final int TABLE_SPECIFICATION_T_OPERATION_COUNT = 0;
    public static final int TEXT_T = 120;
    public static final int TEXT_T__VIEW_INFO = 0;
    public static final int TEXT_T__POSITION = 1;
    public static final int TEXT_T__OFFSET = 2;
    public static final int TEXT_T__TEXT = 3;
    public static final int TEXT_T__GRAPHIC_OID = 4;
    public static final int TEXT_T__VISIBLE = 5;
    public static final int TEXT_T_FEATURE_COUNT = 6;
    public static final int TEXT_T_OPERATION_COUNT = 0;
    public static final int TIME_STAMP_T = 121;
    public static final int TIME_STAMP_T__TIME_STAMP_COUNTER = 0;
    public static final int TIME_STAMP_T__TIME_STAMP_KEY = 1;
    public static final int TIME_STAMP_T__TIME_STAMP_VALUE = 2;
    public static final int TIME_STAMP_T_FEATURE_COUNT = 3;
    public static final int TIME_STAMP_T_OPERATION_COUNT = 0;
    public static final int TIMING_EVENT_TYPE = 122;
    public static final int TIMING_EVENT_TYPE__PERIOD = 0;
    public static final int TIMING_EVENT_TYPE_FEATURE_COUNT = 1;
    public static final int TIMING_EVENT_TYPE_OPERATION_COUNT = 0;
    public static final int TRANSITION_T = 123;
    public static final int TRANSITION_T__VIEW_INFO = 0;
    public static final int TRANSITION_T__LINE_STYLE = 1;
    public static final int TRANSITION_T__FILL_COLOR = 2;
    public static final int TRANSITION_T__GRAPHIC_OID = 3;
    public static final int TRANSITION_T__START = 4;
    public static final int TRANSITION_T__END = 5;
    public static final int TRANSITION_T__CONNECTION_LINE = 6;
    public static final int TRANSITION_T__LABEL_POSITION = 7;
    public static final int TRANSITION_T__ACTIONS = 8;
    public static final int TRANSITION_T_FEATURE_COUNT = 9;
    public static final int TRANSITION_T_OPERATION_COUNT = 0;
    public static final int TRANSITION_TYPE = 124;
    public static final int TRANSITION_TYPE__VIEW_INFO = 0;
    public static final int TRANSITION_TYPE__LINE_STYLE = 1;
    public static final int TRANSITION_TYPE__FILL_COLOR = 2;
    public static final int TRANSITION_TYPE__GRAPHIC_OID = 3;
    public static final int TRANSITION_TYPE__START = 4;
    public static final int TRANSITION_TYPE__END = 5;
    public static final int TRANSITION_TYPE__CONNECTION_LINE = 6;
    public static final int TRANSITION_TYPE__LABEL_POSITION = 7;
    public static final int TRANSITION_TYPE__ACTIONS = 8;
    public static final int TRANSITION_TYPE__PRIORITY = 9;
    public static final int TRANSITION_TYPE__TRIGGER_NAME = 10;
    public static final int TRANSITION_TYPE__TRIGGER_OID = 11;
    public static final int TRANSITION_TYPE_FEATURE_COUNT = 12;
    public static final int TRANSITION_TYPE_OPERATION_COUNT = 0;
    public static final int TRIGGER_PORT_TYPE = 125;
    public static final int TRIGGER_PORT_TYPE__POSITION = 0;
    public static final int TRIGGER_PORT_TYPE__DIRECTION = 1;
    public static final int TRIGGER_PORT_TYPE__GRAPHIC_OID = 2;
    public static final int TRIGGER_PORT_TYPE__NAME_VISIBILITY = 3;
    public static final int TRIGGER_PORT_TYPE__VISIBILITY = 4;
    public static final int TRIGGER_PORT_TYPE_FEATURE_COUNT = 5;
    public static final int TRIGGER_PORT_TYPE_OPERATION_COUNT = 0;
    public static final int VIEW_INFO_T = 126;
    public static final int VIEW_INFO_T__VIEW = 0;
    public static final int VIEW_INFO_T_FEATURE_COUNT = 1;
    public static final int VIEW_INFO_T_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE = 127;
    public static final int VIEW_TYPE__NAME = 0;
    public static final int VIEW_TYPE_FEATURE_COUNT = 1;
    public static final int VIEW_TYPE_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE1 = 128;
    public static final int VIEW_TYPE1__NAME = 0;
    public static final int VIEW_TYPE1__VISIBILITY = 1;
    public static final int VIEW_TYPE1_FEATURE_COUNT = 2;
    public static final int VIEW_TYPE1_OPERATION_COUNT = 0;
    public static final int ACCESS_TYPE = 129;
    public static final int ACCESS_TYPE1 = 130;
    public static final int CT_OUTPUTS_TYPE = 131;
    public static final int DIRECTION_TYPE = 132;
    public static final int DIRECTION_TYPE1 = 133;
    public static final int FLOW_TYPE = 134;
    public static final int MODE_SWITCH_TYPE_TYPE = 135;
    public static final int OPERATOR_TTYPE = 136;
    public static final int PUBLIC_TYPE = 137;
    public static final int TYPE_TYPE = 138;
    public static final int TYPE_TYPE1 = 139;
    public static final int TYPE_TYPE2 = 140;
    public static final int TYPE_TYPE3 = 141;
    public static final int TYPE_TYPE4 = 142;
    public static final int TYPE_TYPE5 = 143;
    public static final int VISIBILITY_TYPE = 144;
    public static final int ACCESS_TYPE_OBJECT = 145;
    public static final int ACCESS_TYPE_OBJECT1 = 146;
    public static final int CT_OUTPUTS_TYPE_OBJECT = 147;
    public static final int DIRECTION_TYPE_OBJECT = 148;
    public static final int DIRECTION_TYPE_OBJECT1 = 149;
    public static final int FLOW_TYPE_OBJECT = 150;
    public static final int GRAPHIC_OIDT = 151;
    public static final int MODE_SWITCH_TYPE_TYPE_OBJECT = 152;
    public static final int NUMBER_OR_FRACTION = 153;
    public static final int NUMBER_OR_FRACTION_MEMBER1 = 154;
    public static final int NZQR = 155;
    public static final int NZQR_MEMBER2 = 156;
    public static final int OID = 157;
    public static final int OPERATOR_TTYPE_OBJECT = 158;
    public static final int PUBLIC_TYPE_OBJECT = 159;
    public static final int TYPE_TYPE_OBJECT = 160;
    public static final int TYPE_TYPE_OBJECT1 = 161;
    public static final int TYPE_TYPE_OBJECT2 = 162;
    public static final int TYPE_TYPE_OBJECT3 = 163;
    public static final int TYPE_TYPE_OBJECT4 = 164;
    public static final int TYPE_TYPE_OBJECT5 = 165;
    public static final int VISIBILITY_TYPE_OBJECT = 166;

    public EClass getActionsType();

    public EReference getActionsType_Action();

    public EReference getActionsType_Condition();

    public EClass getActionsType1();

    public EReference getActionsType1_EntryAction();

    public EReference getActionsType1_StaticAction();

    public EReference getActionsType1_ExitAction();

    public EClass getActionT();

    public EReference getActionT_ESDLAction();

    public EReference getActionT_MethodAction();

    public EClass getActionType();

    public EAttribute getActionType_GraphicOID();

    public EClass getBlockConnectorT();

    public EReference getBlockConnectorT_Size();

    public EReference getBlockConnectorT_ConnectionPoint();

    public EAttribute getBlockConnectorT_Direction();

    public EAttribute getBlockConnectorT_Flow();

    public EAttribute getBlockConnectorT_TempVar();

    public EAttribute getBlockConnectorT_Visibility();

    public EClass getBlockDiagramSpecificationT();

    public EReference getBlockDiagramSpecificationT_ESDLCode();

    public EReference getBlockDiagramSpecificationT_DiagramElements();

    public EClass getBlockInterfaceT();

    public EReference getBlockInterfaceT_ExternalConnector();

    public EAttribute getBlockInterfaceT_Name();

    public EClass getBooleanTableType();

    public EReference getBooleanTableType_InputColumns();

    public EReference getBooleanTableType_OutputColumns();

    public EAttribute getBooleanTableType_Combinations();

    public EAttribute getBooleanTableType_Inputs();

    public EAttribute getBooleanTableType_Outputs();

    public EClass getCCodeSpecificationT();

    public EReference getCCodeSpecificationT_CCode();

    public EAttribute getCCodeSpecificationT_CtOutputs();

    public EClass getCCodeType();

    public EReference getCCodeType_CodeVariant();

    public EClass getCodeVariantType();

    public EReference getCodeVariantType_HeaderFile();

    public EReference getCodeVariantType_CodeFile();

    public EReference getCodeVariantType_ObjectFile();

    public EReference getCodeVariantType_HeaderBlock();

    public EReference getCodeVariantType_MethodBodies();

    public EAttribute getCodeVariantType_Generator();

    public EAttribute getCodeVariantType_ImplementationName();

    public EAttribute getCodeVariantType_ImplementationOID();

    public EAttribute getCodeVariantType_Target();

    public EClass getColorT();

    public EAttribute getColorT_Blue();

    public EAttribute getColorT_Green();

    public EAttribute getColorT_Red();

    public EClass getColumnHeadingType();

    public EAttribute getColumnHeadingType_Default();

    public EAttribute getColumnHeadingType_ElementName();

    public EAttribute getColumnHeadingType_ElementOID();

    public EAttribute getColumnHeadingType_Index();

    public EAttribute getColumnHeadingType_MethodName();

    public EClass getComplexElementT();

    public EAttribute getComplexElementT_ElementName();

    public EAttribute getComplexElementT_ElementOID();

    public EAttribute getComplexElementT_MethodName();

    public EAttribute getComplexElementT_Type();

    public EClass getConditionalTableType();

    public EReference getConditionalTableType_ConditionColumns();

    public EReference getConditionalTableType_InstructionColumns();

    public EAttribute getConditionalTableType_Conditions();

    public EAttribute getConditionalTableType_Instructions();

    public EAttribute getConditionalTableType_Rows();

    public EClass getConditionColumnsType();

    public EReference getConditionColumnsType_TableColumn();

    public EClass getConditionType();

    public EAttribute getConditionType_GraphicOID();

    public EClass getConnectionLineT();

    public EReference getConnectionLineT_BendPoint();

    public EAttribute getConnectionLineT_CommentLine();

    public EClass getConnectionPointT();

    public EReference getConnectionPointT_Position();

    public EAttribute getConnectionPointT_GraphicOID();

    public EClass getConnectionT();

    public EReference getConnectionT_ViewInfo();

    public EReference getConnectionT_LineStyle();

    public EReference getConnectionT_Start();

    public EReference getConnectionT_End();

    public EReference getConnectionT_ConnectionLine();

    public EAttribute getConnectionT_ConnectionPointNumber();

    public EClass getConnectorInterfaceType();

    public EReference getConnectorInterfaceType_Connector();

    public EClass getContentsComplexType();

    public EReference getContentsComplexType_DiagramElement();

    public EClass getControlRteAccessT();

    public EReference getControlRteAccessT_Position();

    public EReference getControlRteAccessT_Interfaces();

    public EAttribute getControlRteAccessT_Access();

    public EAttribute getControlRteAccessT_Arguments();

    public EAttribute getControlRteAccessT_Returns();

    public EAttribute getControlRteAccessT_TempVar();

    public EAttribute getControlRteAccessT_Type();

    public EClass getControlRteInvokeT();

    public EAttribute getControlRteInvokeT_Access();

    public EClass getControlT();

    public EReference getControlT_Position();

    public EReference getControlT_Interfaces();

    public EReference getControlT_Size();

    public EAttribute getControlT_Arguments();

    public EAttribute getControlT_Returns();

    public EAttribute getControlT_Type();

    public EClass getDiagramElementsComplexType();

    public EReference getDiagramElementsComplexType_DiagramElement();

    public EClass getDiagramElementT();

    public EReference getDiagramElementT_CustomerData();

    public EReference getDiagramElementT_Operator();

    public EReference getDiagramElementT_Control();

    public EReference getDiagramElementT_ControlRteAccess();

    public EReference getDiagramElementT_ControlRteInvoke();

    public EReference getDiagramElementT_Literal();

    public EReference getDiagramElementT_SimpleElement();

    public EReference getDiagramElementT_Resource();

    public EReference getDiagramElementT_ImplementationCast();

    public EReference getDiagramElementT_ComplexElement();

    public EReference getDiagramElementT_Comment();

    public EReference getDiagramElementT_Connection();

    public EReference getDiagramElementT_Hierarchy();

    public EReference getDiagramElementT_HierarchyConnector();

    public EReference getDiagramElementT_State();

    public EReference getDiagramElementT_HierarchyState();

    public EReference getDiagramElementT_Junction();

    public EReference getDiagramElementT_Transition();

    public EAttribute getDiagramElementT_Ignore();

    public EAttribute getDiagramElementT_StClass();

    public EClass getDisablingModesType();

    public EReference getDisablingModesType_Mode();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_Specifications();

    public EClass getEntryActionType();

    public EAttribute getEntryActionType_GraphicOID();

    public EClass getESDLActionType();

    public EReference getESDLActionType_CodeBlock();

    public EClass getESDLCodeT();

    public EReference getESDLCodeT_MethodBodies();

    public EClass getESDLSpecificationT();

    public EReference getESDLSpecificationT_ESDLCode();

    public EClass getEventSpecificationT();

    public EReference getEventSpecificationT_Events();

    public EClass getEventsType();

    public EReference getEventsType_Event();

    public EClass getEventT();

    public EReference getEventT_Runnables();

    public EReference getEventT_DisablingModes();

    public EReference getEventT_EventType();

    public EAttribute getEventT_Name();

    public EAttribute getEventT_UUID();

    public EClass getEventTypeType();

    public EReference getEventTypeType_TimingEvent();

    public EReference getEventTypeType_ModeSwitchEvent();

    public EReference getEventTypeType_OperationInvokedEvent();

    public EClass getExitActionType();

    public EAttribute getExitActionType_GraphicOID();

    public EClass getFileListSpecificationT();

    public EReference getFileListSpecificationT_File();

    public EClass getFileReferenceT();

    public EAttribute getFileReferenceT_Value();

    public EAttribute getFileReferenceT_Checksum();

    public EAttribute getFileReferenceT_Type();

    public EClass getFileType();

    public EAttribute getFileType_Name();

    public EAttribute getFileType_Location();

    public EClass getFormattedTextT();

    public EAttribute getFormattedTextT_Value();

    public EClass getGenericDataT();

    public EAttribute getGenericDataT_Any();

    public EAttribute getGenericDataT_Name();

    public EClass getGetSetPortBaseT();

    public EAttribute getGetSetPortBaseT_ElementName();

    public EAttribute getGetSetPortBaseT_ElementOID();

    public EClass getGraphicObjectT();

    public EReference getGraphicObjectT_ViewInfo();

    public EReference getGraphicObjectT_LineStyle();

    public EReference getGraphicObjectT_FillColor();

    public EAttribute getGraphicObjectT_GraphicOID();

    public EClass getGraphicSpecificationT();

    public EAttribute getGraphicSpecificationT_HighestUsedGraphicalIdentifier();

    public EClass getHeaderFileType();

    public EReference getHeaderFileType_File();

    public EAttribute getHeaderFileType_UseGlobal();

    public EClass getHierarchyConnectorType();

    public EClass getHierarchyStateT();

    public EReference getHierarchyStateT_Ports();

    public EReference getHierarchyStateT_Contents();

    public EClass getHierarchyT();

    public EReference getHierarchyT_Size();

    public EReference getHierarchyT_Position();

    public EReference getHierarchyT_Interfaces();

    public EReference getHierarchyT_LabelPosition();

    public EReference getHierarchyT_Icon();

    public EReference getHierarchyT_Contents();

    public EAttribute getHierarchyT_Name();

    public EAttribute getHierarchyT_NameVisibility();

    public EClass getIconT();

    public EReference getIconT_IconFile();

    public EReference getIconT_Size();

    public EAttribute getIconT_IconName();

    public EAttribute getIconT_IconOID();

    public EClass getImplementationCastT();

    public EReference getImplementationCastT_Interfaces();

    public EAttribute getImplementationCastT_TempVar();

    public EClass getInOutPortT();

    public EReference getInOutPortT_Position();

    public EAttribute getInOutPortT_Name();

    public EClass getInputColumnsType();

    public EReference getInputColumnsType_TableColumn();

    public EClass getInputPortType();

    public EAttribute getInputPortType_Index();

    public EAttribute getInputPortType_Name();

    public EClass getInstructionColumnsType();

    public EReference getInstructionColumnsType_TableColumn();

    public EClass getInterfaceElementType();

    public EAttribute getInterfaceElementType_ElementName();

    public EAttribute getInterfaceElementType_ElementOID();

    public EClass getInterfacesType();

    public EReference getInterfacesType_SelectorPort();

    public EReference getInterfacesType_ReturnPort();

    public EClass getInterfacesType1();

    public EReference getInterfacesType1_ReturnPort();

    public EClass getInterfacesType2();

    public EReference getInterfacesType2_ReturnPort();

    public EClass getInterfacesType3();

    public EReference getInterfacesType3_BlockInterface();

    public EClass getInterfacesType4();

    public EReference getInterfacesType4_ReturnPort();

    public EReference getInterfacesType4_SelectorPort();

    public EClass getInterfacesType5();

    public EReference getInterfacesType5_ReturnPort();

    public EReference getInterfacesType5_SelectorPort();

    public EClass getInterfacesType6();

    public EReference getInterfacesType6_ReturnPort();

    public EClass getInterfacesType7();

    public EAttribute getInterfacesType7_Group();

    public EReference getInterfacesType7_MethodPort();

    public EReference getInterfacesType7_ReturnPort();

    public EReference getInterfacesType7_MemberSetPort();

    public EReference getInterfacesType7_MemberGetPort();

    public EClass getIntervalT();

    public EAttribute getIntervalT_Max();

    public EAttribute getIntervalT_Min();

    public EClass getItemRefT();

    public EAttribute getItemRefT_Name();

    public EAttribute getItemRefT_OID();

    public EClass getJunctionT();

    public EReference getJunctionT_Size();

    public EReference getJunctionT_Position();

    public EReference getJunctionT_Interfaces();

    public EReference getJunctionT_Icon();

    public EAttribute getJunctionT_Name();

    public EClass getLayoutT();

    public EReference getLayoutT_Position();

    public EReference getLayoutT_LabelPosition();

    public EReference getLayoutT_Interfaces();

    public EReference getLayoutT_Size();

    public EReference getLayoutT_Icon();

    public EReference getLayoutT_Symbol();

    public EAttribute getLayoutT_FlexibleCreated();

    public EAttribute getLayoutT_HideClassName();

    public EAttribute getLayoutT_HideIcon();

    public EAttribute getLayoutT_HideName();

    public EAttribute getLayoutT_HidePinNames();

    public EAttribute getLayoutT_HideUnconnectedPorts();

    public EClass getLineStyleT();

    public EReference getLineStyleT_Color();

    public EAttribute getLineStyleT_Type();

    public EAttribute getLineStyleT_Width();

    public EClass getLineT();

    public EReference getLineT_PointA();

    public EAttribute getLineT_Direction();

    public EClass getLiteralT();

    public EReference getLiteralT_Position();

    public EReference getLiteralT_Interfaces();

    public EAttribute getLiteralT_Value();

    public EClass getMemberGetPortT();

    public EClass getMemberSetPortT();

    public EReference getMemberSetPortT_SequenceCall();

    public EClass getMethodActionType();

    public EAttribute getMethodActionType_MethodName();

    public EAttribute getMethodActionType_MethodOID();

    public EClass getMethodBodiesComplexType();

    public EReference getMethodBodiesComplexType_MethodBody();

    public EClass getMethodBodyT();

    public EReference getMethodBodyT_HeaderBlock();

    public EReference getMethodBodyT_CodeBlock();

    public EReference getMethodBodyT_CustomerData();

    public EAttribute getMethodBodyT_MethodName();

    public EAttribute getMethodBodyT_MethodOID();

    public EClass getMethodPortT();

    public EReference getMethodPortT_SequenceCall();

    public EReference getMethodPortT_SelectorPort();

    public EReference getMethodPortT_TriggerPort();

    public EAttribute getMethodPortT_DefaultMethod();

    public EAttribute getMethodPortT_MethodName();

    public EAttribute getMethodPortT_MethodOID();

    public EClass getModeElementType();

    public EAttribute getModeElementType_ElementName();

    public EAttribute getModeElementType_ElementOID();

    public EClass getModeSwitchEventType();

    public EReference getModeSwitchEventType_AssignedMode();

    public EAttribute getModeSwitchEventType_ModeSwitchType();

    public EClass getModeT();

    public EReference getModeT_InterfaceElement();

    public EReference getModeT_ModeElement();

    public EAttribute getModeT_ModeValue();

    public EClass getNotesT();

    public EReference getNotesT_Note();

    public EClass getNoteType();

    public EReference getNoteType_Text();

    public EReference getNoteType_View();

    public EAttribute getNoteType_Name();

    public EClass getOperationInvokedEventType();

    public EAttribute getOperationInvokedEventType_OperationName();

    public EAttribute getOperationInvokedEventType_OperationOID();

    public EAttribute getOperationInvokedEventType_PortName();

    public EAttribute getOperationInvokedEventType_PortOID();

    public EClass getOperatorT();

    public EReference getOperatorT_Position();

    public EReference getOperatorT_Interfaces();

    public EAttribute getOperatorT_Arguments();

    public EAttribute getOperatorT_OldFashion();

    public EAttribute getOperatorT_Returns();

    public EAttribute getOperatorT_TempVar();

    public EAttribute getOperatorT_Type();

    public EClass getOperatorType();

    public EClass getOptionT();

    public EAttribute getOptionT_Name();

    public EAttribute getOptionT_Type();

    public EAttribute getOptionT_Value();

    public EClass getOutputColumnsType();

    public EReference getOutputColumnsType_TableColumn();

    public EClass getPinT();

    public EReference getPinT_Position();

    public EAttribute getPinT_Direction();

    public EAttribute getPinT_GraphicOID();

    public EAttribute getPinT_Name();

    public EAttribute getPinT_NameVisibility();

    public EAttribute getPinT_Visibility();

    public EClass getPointT();

    public EAttribute getPointT_X();

    public EAttribute getPointT_Y();

    public EClass getPortsType();

    public EReference getPortsType_BlockInterface();

    public EClass getPortT();

    public EAttribute getPortT_GraphicOID();

    public EAttribute getPortT_Location();

    public EClass getProjectSpecificationT();

    public EReference getProjectSpecificationT_ESDLCode();

    public EReference getProjectSpecificationT_DiagramElements();

    public EClass getResourceInterfaceType();

    public EReference getResourceInterfaceType_ReservePort();

    public EReference getResourceInterfaceType_ReleasePort();

    public EClass getResourceT();

    public EReference getResourceT_Interfaces();

    public EClass getReturnPortT();

    public EReference getReturnPortT_Position();

    public EReference getReturnPortT_SelectorPort();

    public EAttribute getReturnPortT_DefaultPort();

    public EAttribute getReturnPortT_MethodName();

    public EAttribute getReturnPortT_MethodOID();

    public EAttribute getReturnPortT_NameVisibility();

    public EAttribute getReturnPortT_ReturnElementOID();

    public EAttribute getReturnPortT_TempVar();

    public EAttribute getReturnPortT_Visibility();

    public EClass getReturnPortType();

    public EAttribute getReturnPortType_Index();

    public EAttribute getReturnPortType_Label();

    public EClass getReturnPortType1();

    public EReference getReturnPortType1_SelectorPort();

    public EAttribute getReturnPortType1_Index();

    public EAttribute getReturnPortType1_Label();

    public EClass getReturnPortType2();

    public EReference getReturnPortType2_SelectorPort();

    public EReference getReturnPortType2_InputPort();

    public EClass getRunnablesType();

    public EReference getRunnablesType_Runnable();

    public EClass getRunnableType();

    public EAttribute getRunnableType_Index();

    public EAttribute getRunnableType_RunnableName();

    public EAttribute getRunnableType_RunnableOID();

    public EClass getSelectorPortT();

    public EReference getSelectorPortT_Position();

    public EAttribute getSelectorPortT_Direction();

    public EAttribute getSelectorPortT_ElementName();

    public EAttribute getSelectorPortT_ElementOID();

    public EAttribute getSelectorPortT_GraphicOID();

    public EAttribute getSelectorPortT_Name();

    public EAttribute getSelectorPortT_NameVisibility();

    public EAttribute getSelectorPortT_Visibility();

    public EClass getSelectorPortType();

    public EAttribute getSelectorPortType_Index();

    public EAttribute getSelectorPortType_Label();

    public EClass getSelectorPortType1();

    public EReference getSelectorPortType1_SequenceCall();

    public EClass getSelectorPortType2();

    public EAttribute getSelectorPortType2_Index();

    public EClass getSequenceCallT();

    public EReference getSequenceCallT_Position();

    public EAttribute getSequenceCallT_ConnectOID();

    public EAttribute getSequenceCallT_EndAtomic();

    public EAttribute getSequenceCallT_GraphicOID();

    public EAttribute getSequenceCallT_MethodName();

    public EAttribute getSequenceCallT_MethodOID();

    public EAttribute getSequenceCallT_SequenceNumber();

    public EAttribute getSequenceCallT_StartAtomic();

    public EAttribute getSequenceCallT_UserVisibility();

    public EClass getSequencedPortT();

    public EReference getSequencedPortT_SequenceCall();

    public EClass getSimpleElementBaseT();

    public EReference getSimpleElementBaseT_Position();

    public EReference getSimpleElementBaseT_LabelPosition();

    public EAttribute getSimpleElementBaseT_ElementName();

    public EAttribute getSimpleElementBaseT_ElementOID();

    public EAttribute getSimpleElementBaseT_MethodName();

    public EClass getSimpleElementT();

    public EReference getSimpleElementT_Interfaces();

    public EAttribute getSimpleElementT_Type();

    public EClass getSizeT();

    public EAttribute getSizeT_X();

    public EAttribute getSizeT_Y();

    public EClass getSpecificationsType();

    public EReference getSpecificationsType_Layout();

    public EReference getSpecificationsType_Specification();

    public EReference getSpecificationsType_EventSpecification();

    public EReference getSpecificationsType_FileListSpecification();

    public EReference getSpecificationsType_Signature();

    public EAttribute getSpecificationsType_SchemaVersion();

    public EAttribute getSpecificationsType_ToolVersion();

    public EClass getSpecificationT();

    public EReference getSpecificationT_TimeStamp();

    public EReference getSpecificationT_BlockDiagramSpecification();

    public EReference getSpecificationT_AtomicSoftwareComponentSpecification();

    public EReference getSpecificationT_MethodInterfaceSpecification();

    public EReference getSpecificationT_TableSpecification();

    public EReference getSpecificationT_ESDLSpecification();

    public EReference getSpecificationT_CCodeSpecification();

    public EReference getSpecificationT_StateMachineSpecification();

    public EReference getSpecificationT_ProjectSpecification();

    public EAttribute getSpecificationT_Name();

    public EAttribute getSpecificationT_Public();

    public EAttribute getSpecificationT_UUID();

    public EClass getSpecificationType();

    public EClass getStateMachineSpecificationT();

    public EReference getStateMachineSpecificationT_ESDLCode();

    public EReference getStateMachineSpecificationT_DiagramElements();

    public EClass getStateT();

    public EReference getStateT_Size();

    public EReference getStateT_Position();

    public EReference getStateT_Interfaces();

    public EReference getStateT_Icon();

    public EReference getStateT_Actions();

    public EAttribute getStateT_History();

    public EAttribute getStateT_Name();

    public EAttribute getStateT_StartState();

    public EClass getStaticActionType();

    public EAttribute getStaticActionType_GraphicOID();

    public EClass getSymbolT();

    public EClass getTableCellType();

    public EAttribute getTableCellType_Value();

    public EAttribute getTableCellType_Index();

    public EClass getTableColumnT();

    public EReference getTableColumnT_ColumnHeading();

    public EReference getTableColumnT_TableCell();

    public EClass getTableSpecificationT();

    public EReference getTableSpecificationT_ESDLCode();

    public EReference getTableSpecificationT_ConditionalTable();

    public EReference getTableSpecificationT_BooleanTable();

    public EClass getTextT();

    public EReference getTextT_ViewInfo();

    public EReference getTextT_Position();

    public EReference getTextT_Offset();

    public EReference getTextT_Text();

    public EAttribute getTextT_GraphicOID();

    public EAttribute getTextT_Visible();

    public EClass getTimeStampT();

    public EAttribute getTimeStampT_TimeStampCounter();

    public EAttribute getTimeStampT_TimeStampKey();

    public EAttribute getTimeStampT_TimeStampValue();

    public EClass getTimingEventType();

    public EAttribute getTimingEventType_Period();

    public EClass getTransitionT();

    public EReference getTransitionT_Start();

    public EReference getTransitionT_End();

    public EReference getTransitionT_ConnectionLine();

    public EReference getTransitionT_LabelPosition();

    public EReference getTransitionT_Actions();

    public EClass getTransitionType();

    public EAttribute getTransitionType_Priority();

    public EAttribute getTransitionType_TriggerName();

    public EAttribute getTransitionType_TriggerOID();

    public EClass getTriggerPortType();

    public EReference getTriggerPortType_Position();

    public EAttribute getTriggerPortType_Direction();

    public EAttribute getTriggerPortType_GraphicOID();

    public EAttribute getTriggerPortType_NameVisibility();

    public EAttribute getTriggerPortType_Visibility();

    public EClass getViewInfoT();

    public EReference getViewInfoT_View();

    public EClass getViewType();

    public EAttribute getViewType_Name();

    public EClass getViewType1();

    public EAttribute getViewType1_Name();

    public EAttribute getViewType1_Visibility();

    public EEnum getAccessType();

    public EEnum getAccessType1();

    public EEnum getCtOutputsType();

    public EEnum getDirectionType();

    public EEnum getDirectionType1();

    public EEnum getFlowType();

    public EEnum getModeSwitchTypeType();

    public EEnum getOperatorTType();

    public EEnum getPublicType();

    public EEnum getTypeType();

    public EEnum getTypeType1();

    public EEnum getTypeType2();

    public EEnum getTypeType3();

    public EEnum getTypeType4();

    public EEnum getTypeType5();

    public EEnum getVisibilityType();

    public EDataType getAccessTypeObject();

    public EDataType getAccessTypeObject1();

    public EDataType getCtOutputsTypeObject();

    public EDataType getDirectionTypeObject();

    public EDataType getDirectionTypeObject1();

    public EDataType getFlowTypeObject();

    public EDataType getGraphicOIDT();

    public EDataType getModeSwitchTypeTypeObject();

    public EDataType getNumberOrFraction();

    public EDataType getNumberOrFractionMember1();

    public EDataType getNzqr();

    public EDataType getNzqrMember2();

    public EDataType getOID();

    public EDataType getOperatorTTypeObject();

    public EDataType getPublicTypeObject();

    public EDataType getTypeTypeObject();

    public EDataType getTypeTypeObject1();

    public EDataType getTypeTypeObject2();

    public EDataType getTypeTypeObject3();

    public EDataType getTypeTypeObject4();

    public EDataType getTypeTypeObject5();

    public EDataType getVisibilityTypeObject();

    public ComponentSpecificationFactory getComponentSpecificationFactory();
}

