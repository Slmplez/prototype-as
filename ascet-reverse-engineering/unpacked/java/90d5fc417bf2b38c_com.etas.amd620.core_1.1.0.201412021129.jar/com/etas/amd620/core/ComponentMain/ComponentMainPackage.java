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
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentMainPackage
extends EPackage {
    public static final String eNAME = "ComponentMain";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/component_main";
    public static final String eNS_PREFIX = "ComponentMain";
    public static final ComponentMainPackage eINSTANCE = ComponentMainPackageImpl.init();
    public static final int ACCESS_MODES_T = 0;
    public static final int ACCESS_MODES_T__IMPORT = 0;
    public static final int ACCESS_MODES_T__READ = 1;
    public static final int ACCESS_MODES_T__WRITE = 2;
    public static final int ACCESS_MODES_T_FEATURE_COUNT = 3;
    public static final int ACCESS_MODES_T_OPERATION_COUNT = 0;
    public static final int ARGUMENTS_COMPLEX_TYPE = 1;
    public static final int ARGUMENTS_COMPLEX_TYPE__ARGUMENT = 0;
    public static final int ARGUMENTS_COMPLEX_TYPE_FEATURE_COUNT = 1;
    public static final int ARGUMENTS_COMPLEX_TYPE_OPERATION_COUNT = 0;
    public static final int ARGUMENTS_TYPE = 2;
    public static final int ARGUMENTS_TYPE__ARGUMENT = 0;
    public static final int ARGUMENTS_TYPE_FEATURE_COUNT = 1;
    public static final int ARGUMENTS_TYPE_OPERATION_COUNT = 0;
    public static final int ITEM_BASE_T = 37;
    public static final int ITEM_BASE_T__TIME_STAMP = 0;
    public static final int ITEM_BASE_T__COMMENT = 1;
    public static final int ITEM_BASE_T__CHECKSUM = 2;
    public static final int ITEM_BASE_T__COMPONENT_TYPE = 3;
    public static final int ITEM_BASE_T__NAME = 4;
    public static final int ITEM_BASE_T__NAME_SPACE = 5;
    public static final int ITEM_BASE_T__OID = 6;
    public static final int ITEM_BASE_T__TIME_STAMP1 = 7;
    public static final int ITEM_BASE_T__UUID = 8;
    public static final int ITEM_BASE_T_FEATURE_COUNT = 9;
    public static final int ITEM_BASE_T_OPERATION_COUNT = 0;
    public static final int ITEM_T = 39;
    public static final int ITEM_T__TIME_STAMP = 0;
    public static final int ITEM_T__COMMENT = 1;
    public static final int ITEM_T__CHECKSUM = 2;
    public static final int ITEM_T__COMPONENT_TYPE = 3;
    public static final int ITEM_T__NAME = 4;
    public static final int ITEM_T__NAME_SPACE = 5;
    public static final int ITEM_T__OID = 6;
    public static final int ITEM_T__TIME_STAMP1 = 7;
    public static final int ITEM_T__UUID = 8;
    public static final int ITEM_T__NOTES = 9;
    public static final int ITEM_T__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int ITEM_T_FEATURE_COUNT = 11;
    public static final int ITEM_T_OPERATION_COUNT = 0;
    public static final int ASAP2_ITEM_TYPE = 3;
    public static final int ASAP2_ITEM_TYPE__TIME_STAMP = 0;
    public static final int ASAP2_ITEM_TYPE__COMMENT = 1;
    public static final int ASAP2_ITEM_TYPE__CHECKSUM = 2;
    public static final int ASAP2_ITEM_TYPE__COMPONENT_TYPE = 3;
    public static final int ASAP2_ITEM_TYPE__NAME = 4;
    public static final int ASAP2_ITEM_TYPE__NAME_SPACE = 5;
    public static final int ASAP2_ITEM_TYPE__OID = 6;
    public static final int ASAP2_ITEM_TYPE__TIME_STAMP1 = 7;
    public static final int ASAP2_ITEM_TYPE__UUID = 8;
    public static final int ASAP2_ITEM_TYPE__NOTES = 9;
    public static final int ASAP2_ITEM_TYPE__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int ASAP2_ITEM_TYPE__FILE = 11;
    public static final int ASAP2_ITEM_TYPE__ORIGINAL_LOCATION = 12;
    public static final int ASAP2_ITEM_TYPE_FEATURE_COUNT = 13;
    public static final int ASAP2_ITEM_TYPE_OPERATION_COUNT = 0;
    public static final int COMPONENT_T = 10;
    public static final int COMPONENT_T__TIME_STAMP = 0;
    public static final int COMPONENT_T__COMMENT = 1;
    public static final int COMPONENT_T__CHECKSUM = 2;
    public static final int COMPONENT_T__COMPONENT_TYPE = 3;
    public static final int COMPONENT_T__NAME = 4;
    public static final int COMPONENT_T__NAME_SPACE = 5;
    public static final int COMPONENT_T__OID = 6;
    public static final int COMPONENT_T__TIME_STAMP1 = 7;
    public static final int COMPONENT_T__UUID = 8;
    public static final int COMPONENT_T__NOTES = 9;
    public static final int COMPONENT_T__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int COMPONENT_T__ELEMENTS = 11;
    public static final int COMPONENT_T__METHOD_SIGNATURES = 12;
    public static final int COMPONENT_T__TIME_STAMPS = 13;
    public static final int COMPONENT_T__CHECKSUM_GENERAL = 14;
    public static final int COMPONENT_T__CHECKSUM_PUBLIC_INTERFACE = 15;
    public static final int COMPONENT_T__DEFAULT_PROJECT_NAME = 16;
    public static final int COMPONENT_T__DEFAULT_PROJECT_OID = 17;
    public static final int COMPONENT_T__SPECIFICATION_TYPE = 18;
    public static final int COMPONENT_T_FEATURE_COUNT = 19;
    public static final int COMPONENT_T_OPERATION_COUNT = 0;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T = 4;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__TIME_STAMP = 0;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__COMMENT = 1;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__CHECKSUM = 2;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__COMPONENT_TYPE = 3;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__NAME = 4;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__NAME_SPACE = 5;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__OID = 6;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__TIME_STAMP1 = 7;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__UUID = 8;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__NOTES = 9;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__ELEMENTS = 11;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__METHOD_SIGNATURES = 12;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__TIME_STAMPS = 13;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__CHECKSUM_GENERAL = 14;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__CHECKSUM_PUBLIC_INTERFACE = 15;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__DEFAULT_PROJECT_NAME = 16;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__DEFAULT_PROJECT_OID = 17;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__SPECIFICATION_TYPE = 18;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__PARAMETER_MAPPINGS = 19;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__VARIABLE_MAPPINGS_INTERNAL = 20;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__VARIABLE_MAPPINGS_EXTERNAL = 21;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__CATEGORY = 22;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T__SUPPORTS_MULTIPLE_INSTANTIATION = 23;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T_FEATURE_COUNT = 24;
    public static final int ATOMIC_SOFTWARE_COMPONENT_T_OPERATION_COUNT = 0;
    public static final int ATTRIBUTES_BASE_T = 5;
    public static final int ATTRIBUTES_BASE_T__DIRECT = 0;
    public static final int ATTRIBUTES_BASE_T__GET = 1;
    public static final int ATTRIBUTES_BASE_T__READ = 2;
    public static final int ATTRIBUTES_BASE_T__SCOPE = 3;
    public static final int ATTRIBUTES_BASE_T__SET = 4;
    public static final int ATTRIBUTES_BASE_T__WRITE = 5;
    public static final int ATTRIBUTES_BASE_T_FEATURE_COUNT = 6;
    public static final int ATTRIBUTES_BASE_T_OPERATION_COUNT = 0;
    public static final int COLOR_T = 6;
    public static final int COLOR_T__BLUE = 0;
    public static final int COLOR_T__GREEN = 1;
    public static final int COLOR_T__RED = 2;
    public static final int COLOR_T_FEATURE_COUNT = 3;
    public static final int COLOR_T_OPERATION_COUNT = 0;
    public static final int COMPLEX_ATTRIBUTES_T = 7;
    public static final int COMPLEX_ATTRIBUTES_T__DIRECT = 0;
    public static final int COMPLEX_ATTRIBUTES_T__GET = 1;
    public static final int COMPLEX_ATTRIBUTES_T__READ = 2;
    public static final int COMPLEX_ATTRIBUTES_T__SCOPE = 3;
    public static final int COMPLEX_ATTRIBUTES_T__SET = 4;
    public static final int COMPLEX_ATTRIBUTES_T__WRITE = 5;
    public static final int COMPLEX_ATTRIBUTES_T__COMPONENT_ID = 6;
    public static final int COMPLEX_ATTRIBUTES_T__COMPONENT_NAME = 7;
    public static final int COMPLEX_ATTRIBUTES_T__KIND = 8;
    public static final int COMPLEX_ATTRIBUTES_T__QUEUED = 9;
    public static final int COMPLEX_ATTRIBUTES_T__REFERENCE = 10;
    public static final int COMPLEX_ATTRIBUTES_T_FEATURE_COUNT = 11;
    public static final int COMPLEX_ATTRIBUTES_T_OPERATION_COUNT = 0;
    public static final int COMPLEX_TYPE_TYPE = 8;
    public static final int COMPLEX_TYPE_TYPE__COMPLEX_ATTRIBUTES = 0;
    public static final int COMPLEX_TYPE_TYPE__RECORD_ATTRIBUTES = 1;
    public static final int COMPLEX_TYPE_TYPE_FEATURE_COUNT = 2;
    public static final int COMPLEX_TYPE_TYPE_OPERATION_COUNT = 0;
    public static final int COMPONENT_MAIN_TYPE = 9;
    public static final int COMPONENT_MAIN_TYPE__COMPONENT = 0;
    public static final int COMPONENT_MAIN_TYPE__GENERIC_COMPONENT = 1;
    public static final int COMPONENT_MAIN_TYPE__ATOMIC_SOFTWARE_COMPONENT = 2;
    public static final int COMPONENT_MAIN_TYPE__ENUMERATION = 3;
    public static final int COMPONENT_MAIN_TYPE__MODE_GROUP = 4;
    public static final int COMPONENT_MAIN_TYPE__IMAGE = 5;
    public static final int COMPONENT_MAIN_TYPE__SIGNAL = 6;
    public static final int COMPONENT_MAIN_TYPE__ASAP2_ITEM = 7;
    public static final int COMPONENT_MAIN_TYPE__CONTAINER = 8;
    public static final int COMPONENT_MAIN_TYPE__FOLDER = 9;
    public static final int COMPONENT_MAIN_TYPE__SIGNATURE = 10;
    public static final int COMPONENT_MAIN_TYPE__SCHEMA_VERSION = 11;
    public static final int COMPONENT_MAIN_TYPE__TOOL_VERSION = 12;
    public static final int COMPONENT_MAIN_TYPE_FEATURE_COUNT = 13;
    public static final int COMPONENT_MAIN_TYPE_OPERATION_COUNT = 0;
    public static final int CONFIGURATION_MANAGEMENT_T = 11;
    public static final int CONFIGURATION_MANAGEMENT_T__GENERIC_DATA = 0;
    public static final int CONFIGURATION_MANAGEMENT_T__CONFIGURATION_ID = 1;
    public static final int CONFIGURATION_MANAGEMENT_T__EDITION = 2;
    public static final int CONFIGURATION_MANAGEMENT_T__VERSION_ID = 3;
    public static final int CONFIGURATION_MANAGEMENT_T_FEATURE_COUNT = 4;
    public static final int CONFIGURATION_MANAGEMENT_T_OPERATION_COUNT = 0;
    public static final int CONTAINER_TYPE = 12;
    public static final int CONTAINER_TYPE__TIME_STAMP = 0;
    public static final int CONTAINER_TYPE__COMMENT = 1;
    public static final int CONTAINER_TYPE__CHECKSUM = 2;
    public static final int CONTAINER_TYPE__COMPONENT_TYPE = 3;
    public static final int CONTAINER_TYPE__NAME = 4;
    public static final int CONTAINER_TYPE__NAME_SPACE = 5;
    public static final int CONTAINER_TYPE__OID = 6;
    public static final int CONTAINER_TYPE__TIME_STAMP1 = 7;
    public static final int CONTAINER_TYPE__UUID = 8;
    public static final int CONTAINER_TYPE__NOTES = 9;
    public static final int CONTAINER_TYPE__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int CONTAINER_TYPE__ITEM = 11;
    public static final int CONTAINER_TYPE_FEATURE_COUNT = 12;
    public static final int CONTAINER_TYPE_OPERATION_COUNT = 0;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE = 13;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__CONFIGURATION_MANAGEMENT = 0;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__REQUIREMENTS_MANAGEMENT = 1;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__ACCESS_MANAGEMENT = 2;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__CUSTOMER_DATA = 3;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE_FEATURE_COUNT = 4;
    public static final int CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE_OPERATION_COUNT = 0;
    public static final int DATA_INTERFACE_T = 14;
    public static final int DATA_INTERFACE_T__TIME_STAMP = 0;
    public static final int DATA_INTERFACE_T__COMMENT = 1;
    public static final int DATA_INTERFACE_T__CHECKSUM = 2;
    public static final int DATA_INTERFACE_T__COMPONENT_TYPE = 3;
    public static final int DATA_INTERFACE_T__NAME = 4;
    public static final int DATA_INTERFACE_T__NAME_SPACE = 5;
    public static final int DATA_INTERFACE_T__OID = 6;
    public static final int DATA_INTERFACE_T__TIME_STAMP1 = 7;
    public static final int DATA_INTERFACE_T__UUID = 8;
    public static final int DATA_INTERFACE_T__NOTES = 9;
    public static final int DATA_INTERFACE_T__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int DATA_INTERFACE_T__ELEMENTS = 11;
    public static final int DATA_INTERFACE_T__CHECKSUM_GENERAL = 12;
    public static final int DATA_INTERFACE_T__CHECKSUM_PUBLIC_INTERFACE = 13;
    public static final int DATA_INTERFACE_T_FEATURE_COUNT = 14;
    public static final int DATA_INTERFACE_T_OPERATION_COUNT = 0;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T = 56;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__DIRECT = 0;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__GET = 1;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__READ = 2;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__SCOPE = 3;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__SET = 4;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__WRITE = 5;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__CALIBRATION_READ = 6;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__CALIBRATION_WRITE = 7;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__KIND = 8;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T__VOLATILE = 9;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T_FEATURE_COUNT = 10;
    public static final int PRIMITIVE_ATTRIBUTES_BASE_T_OPERATION_COUNT = 0;
    public static final int DIMENSIONAL_ATTRIBUTES_T = 15;
    public static final int DIMENSIONAL_ATTRIBUTES_T__DIRECT = 0;
    public static final int DIMENSIONAL_ATTRIBUTES_T__GET = 1;
    public static final int DIMENSIONAL_ATTRIBUTES_T__READ = 2;
    public static final int DIMENSIONAL_ATTRIBUTES_T__SCOPE = 3;
    public static final int DIMENSIONAL_ATTRIBUTES_T__SET = 4;
    public static final int DIMENSIONAL_ATTRIBUTES_T__WRITE = 5;
    public static final int DIMENSIONAL_ATTRIBUTES_T__CALIBRATION_READ = 6;
    public static final int DIMENSIONAL_ATTRIBUTES_T__CALIBRATION_WRITE = 7;
    public static final int DIMENSIONAL_ATTRIBUTES_T__KIND = 8;
    public static final int DIMENSIONAL_ATTRIBUTES_T__VOLATILE = 9;
    public static final int DIMENSIONAL_ATTRIBUTES_T__FORMULA = 10;
    public static final int DIMENSIONAL_ATTRIBUTES_T__DEPENDENT = 11;
    public static final int DIMENSIONAL_ATTRIBUTES_T__REFERENCE = 12;
    public static final int DIMENSIONAL_ATTRIBUTES_T__VIRTUAL = 13;
    public static final int DIMENSIONAL_ATTRIBUTES_T_FEATURE_COUNT = 14;
    public static final int DIMENSIONAL_ATTRIBUTES_T_OPERATION_COUNT = 0;
    public static final int DIMENSIONAL_TYPE_TYPE = 16;
    public static final int DIMENSIONAL_TYPE_TYPE__DIMENSIONAL_ATTRIBUTES = 0;
    public static final int DIMENSIONAL_TYPE_TYPE__INTERPOLATION = 1;
    public static final int DIMENSIONAL_TYPE_TYPE__MAX_SIZE_X = 2;
    public static final int DIMENSIONAL_TYPE_TYPE__MAX_SIZE_Y = 3;
    public static final int DIMENSIONAL_TYPE_TYPE__TYPE = 4;
    public static final int DIMENSIONAL_TYPE_TYPE__XDISTRIBUTION_NAME = 5;
    public static final int DIMENSIONAL_TYPE_TYPE__XDISTRIBUTION_OID = 6;
    public static final int DIMENSIONAL_TYPE_TYPE__XSIZE_VARIANT_ELEMENT_NAME = 7;
    public static final int DIMENSIONAL_TYPE_TYPE__XSIZE_VARIANT_ELEMENT_OID = 8;
    public static final int DIMENSIONAL_TYPE_TYPE__YDISTRIBUTION_NAME = 9;
    public static final int DIMENSIONAL_TYPE_TYPE__YDISTRIBUTION_OID = 10;
    public static final int DIMENSIONAL_TYPE_TYPE__YSIZE_VARIANT_ELEMENT_NAME = 11;
    public static final int DIMENSIONAL_TYPE_TYPE__YSIZE_VARIANT_ELEMENT_OID = 12;
    public static final int DIMENSIONAL_TYPE_TYPE_FEATURE_COUNT = 13;
    public static final int DIMENSIONAL_TYPE_TYPE_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 17;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__COMPONENT_MAIN = 3;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 4;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int ELEMENT_ATTRIBUTES_T = 18;
    public static final int ELEMENT_ATTRIBUTES_T__SCALAR_TYPE = 0;
    public static final int ELEMENT_ATTRIBUTES_T__COMPLEX_TYPE = 1;
    public static final int ELEMENT_ATTRIBUTES_T__DIMENSIONAL_TYPE = 2;
    public static final int ELEMENT_ATTRIBUTES_T__BASIC_MODEL_TYPE = 3;
    public static final int ELEMENT_ATTRIBUTES_T__MODEL_TYPE = 4;
    public static final int ELEMENT_ATTRIBUTES_T__UNIT = 5;
    public static final int ELEMENT_ATTRIBUTES_T_FEATURE_COUNT = 6;
    public static final int ELEMENT_ATTRIBUTES_T_OPERATION_COUNT = 0;
    public static final int MAPPING_OBJECT_T = 43;
    public static final int MAPPING_OBJECT_T__SOURCE_OBJECT = 0;
    public static final int MAPPING_OBJECT_T__TARGET_OBJECT = 1;
    public static final int MAPPING_OBJECT_T_FEATURE_COUNT = 2;
    public static final int MAPPING_OBJECT_T_OPERATION_COUNT = 0;
    public static final int ELEMENT_MAPPING_TYPE = 19;
    public static final int ELEMENT_MAPPING_TYPE__SOURCE_OBJECT = 0;
    public static final int ELEMENT_MAPPING_TYPE__TARGET_OBJECT = 1;
    public static final int ELEMENT_MAPPING_TYPE__ELEMENT_NAME = 2;
    public static final int ELEMENT_MAPPING_TYPE_FEATURE_COUNT = 3;
    public static final int ELEMENT_MAPPING_TYPE_OPERATION_COUNT = 0;
    public static final int EXTERNAL_MAPPING_OBJECT_T = 27;
    public static final int EXTERNAL_MAPPING_OBJECT_T__SOURCE_OBJECT = 0;
    public static final int EXTERNAL_MAPPING_OBJECT_T__TARGET_OBJECT = 1;
    public static final int EXTERNAL_MAPPING_OBJECT_T_FEATURE_COUNT = 2;
    public static final int EXTERNAL_MAPPING_OBJECT_T_OPERATION_COUNT = 0;
    public static final int ELEMENT_MAPPING_TYPE1 = 20;
    public static final int ELEMENT_MAPPING_TYPE1__SOURCE_OBJECT = 0;
    public static final int ELEMENT_MAPPING_TYPE1__TARGET_OBJECT = 1;
    public static final int ELEMENT_MAPPING_TYPE1__ELEMENT_NAME = 2;
    public static final int ELEMENT_MAPPING_TYPE1_FEATURE_COUNT = 3;
    public static final int ELEMENT_MAPPING_TYPE1_OPERATION_COUNT = 0;
    public static final int ELEMENT_MAPPING_TYPE2 = 21;
    public static final int ELEMENT_MAPPING_TYPE2__SOURCE_OBJECT = 0;
    public static final int ELEMENT_MAPPING_TYPE2__TARGET_OBJECT = 1;
    public static final int ELEMENT_MAPPING_TYPE2__ELEMENT_NAME = 2;
    public static final int ELEMENT_MAPPING_TYPE2_FEATURE_COUNT = 3;
    public static final int ELEMENT_MAPPING_TYPE2_OPERATION_COUNT = 0;
    public static final int ELEMENTS_TYPE = 22;
    public static final int ELEMENTS_TYPE__ELEMENT = 0;
    public static final int ELEMENTS_TYPE_FEATURE_COUNT = 1;
    public static final int ELEMENTS_TYPE_OPERATION_COUNT = 0;
    public static final int ELEMENT_T = 23;
    public static final int ELEMENT_T__COMMENT = 0;
    public static final int ELEMENT_T__ELEMENT_ATTRIBUTES = 1;
    public static final int ELEMENT_T__CUSTOMER_DATA = 2;
    public static final int ELEMENT_T__IGNORE = 3;
    public static final int ELEMENT_T__NAME = 4;
    public static final int ELEMENT_T__OID = 5;
    public static final int ELEMENT_T__UUID = 6;
    public static final int ELEMENT_T_FEATURE_COUNT = 7;
    public static final int ELEMENT_T_OPERATION_COUNT = 0;
    public static final int ENUMERATION_ATTRIBUTES_T = 24;
    public static final int ENUMERATION_ATTRIBUTES_T__DIRECT = 0;
    public static final int ENUMERATION_ATTRIBUTES_T__GET = 1;
    public static final int ENUMERATION_ATTRIBUTES_T__READ = 2;
    public static final int ENUMERATION_ATTRIBUTES_T__SCOPE = 3;
    public static final int ENUMERATION_ATTRIBUTES_T__SET = 4;
    public static final int ENUMERATION_ATTRIBUTES_T__WRITE = 5;
    public static final int ENUMERATION_ATTRIBUTES_T__CALIBRATION_READ = 6;
    public static final int ENUMERATION_ATTRIBUTES_T__CALIBRATION_WRITE = 7;
    public static final int ENUMERATION_ATTRIBUTES_T__KIND = 8;
    public static final int ENUMERATION_ATTRIBUTES_T__VOLATILE = 9;
    public static final int ENUMERATION_ATTRIBUTES_T__ENUMERATION_NAME = 10;
    public static final int ENUMERATION_ATTRIBUTES_T__ENUMERATION_OID = 11;
    public static final int ENUMERATION_ATTRIBUTES_T__EXPLICIT = 12;
    public static final int ENUMERATION_ATTRIBUTES_T_FEATURE_COUNT = 13;
    public static final int ENUMERATION_ATTRIBUTES_T_OPERATION_COUNT = 0;
    public static final int ENUMERATION_TYPE = 25;
    public static final int ENUMERATION_TYPE__TIME_STAMP = 0;
    public static final int ENUMERATION_TYPE__COMMENT = 1;
    public static final int ENUMERATION_TYPE__CHECKSUM = 2;
    public static final int ENUMERATION_TYPE__COMPONENT_TYPE = 3;
    public static final int ENUMERATION_TYPE__NAME = 4;
    public static final int ENUMERATION_TYPE__NAME_SPACE = 5;
    public static final int ENUMERATION_TYPE__OID = 6;
    public static final int ENUMERATION_TYPE__TIME_STAMP1 = 7;
    public static final int ENUMERATION_TYPE__UUID = 8;
    public static final int ENUMERATION_TYPE__NOTES = 9;
    public static final int ENUMERATION_TYPE__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int ENUMERATION_TYPE__ENUMERATOR = 11;
    public static final int ENUMERATION_TYPE_FEATURE_COUNT = 12;
    public static final int ENUMERATION_TYPE_OPERATION_COUNT = 0;
    public static final int ENUMERATOR_T = 26;
    public static final int ENUMERATOR_T__INDEX = 0;
    public static final int ENUMERATOR_T__VALUE = 1;
    public static final int ENUMERATOR_T_FEATURE_COUNT = 2;
    public static final int ENUMERATOR_T_OPERATION_COUNT = 0;
    public static final int FILE_REFERENCE_T = 28;
    public static final int FILE_REFERENCE_T__VALUE = 0;
    public static final int FILE_REFERENCE_T__CHECKSUM = 1;
    public static final int FILE_REFERENCE_T__TYPE = 2;
    public static final int FILE_REFERENCE_T_FEATURE_COUNT = 3;
    public static final int FILE_REFERENCE_T_OPERATION_COUNT = 0;
    public static final int FORMAL_TYPE = 29;
    public static final int FORMAL_TYPE__NAME = 0;
    public static final int FORMAL_TYPE__OID = 1;
    public static final int FORMAL_TYPE_FEATURE_COUNT = 2;
    public static final int FORMAL_TYPE_OPERATION_COUNT = 0;
    public static final int FORMATTED_TEXT_T = 30;
    public static final int FORMATTED_TEXT_T__VALUE = 0;
    public static final int FORMATTED_TEXT_T_FEATURE_COUNT = 1;
    public static final int FORMATTED_TEXT_T_OPERATION_COUNT = 0;
    public static final int FORMULA_TYPE = 31;
    public static final int FORMULA_TYPE__FORMAL = 0;
    public static final int FORMULA_TYPE__CODE = 1;
    public static final int FORMULA_TYPE_FEATURE_COUNT = 2;
    public static final int FORMULA_TYPE_OPERATION_COUNT = 0;
    public static final int GENERIC_COMPONENT_T = 32;
    public static final int GENERIC_COMPONENT_T__TIME_STAMP = 0;
    public static final int GENERIC_COMPONENT_T__COMMENT = 1;
    public static final int GENERIC_COMPONENT_T__CHECKSUM = 2;
    public static final int GENERIC_COMPONENT_T__COMPONENT_TYPE = 3;
    public static final int GENERIC_COMPONENT_T__NAME = 4;
    public static final int GENERIC_COMPONENT_T__NAME_SPACE = 5;
    public static final int GENERIC_COMPONENT_T__OID = 6;
    public static final int GENERIC_COMPONENT_T__TIME_STAMP1 = 7;
    public static final int GENERIC_COMPONENT_T__UUID = 8;
    public static final int GENERIC_COMPONENT_T__NOTES = 9;
    public static final int GENERIC_COMPONENT_T__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int GENERIC_COMPONENT_T__ELEMENTS = 11;
    public static final int GENERIC_COMPONENT_T__METHOD_SIGNATURES = 12;
    public static final int GENERIC_COMPONENT_T__TIME_STAMPS = 13;
    public static final int GENERIC_COMPONENT_T__CHECKSUM_GENERAL = 14;
    public static final int GENERIC_COMPONENT_T__CHECKSUM_PUBLIC_INTERFACE = 15;
    public static final int GENERIC_COMPONENT_T__DEFAULT_PROJECT_NAME = 16;
    public static final int GENERIC_COMPONENT_T__DEFAULT_PROJECT_OID = 17;
    public static final int GENERIC_COMPONENT_T__SPECIFICATION_TYPE = 18;
    public static final int GENERIC_COMPONENT_T__FACTORY_KEY = 19;
    public static final int GENERIC_COMPONENT_T__ICON_NAME = 20;
    public static final int GENERIC_COMPONENT_T_FEATURE_COUNT = 21;
    public static final int GENERIC_COMPONENT_T_OPERATION_COUNT = 0;
    public static final int GENERIC_DATA_T = 33;
    public static final int GENERIC_DATA_T__ANY = 0;
    public static final int GENERIC_DATA_T__NAME = 1;
    public static final int GENERIC_DATA_T_FEATURE_COUNT = 2;
    public static final int GENERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int ICON_T = 34;
    public static final int ICON_T__ICON_FILE = 0;
    public static final int ICON_T__SIZE = 1;
    public static final int ICON_T__ICON_NAME = 2;
    public static final int ICON_T__ICON_OID = 3;
    public static final int ICON_T_FEATURE_COUNT = 4;
    public static final int ICON_T_OPERATION_COUNT = 0;
    public static final int IMAGE_TYPE = 35;
    public static final int IMAGE_TYPE__TIME_STAMP = 0;
    public static final int IMAGE_TYPE__COMMENT = 1;
    public static final int IMAGE_TYPE__CHECKSUM = 2;
    public static final int IMAGE_TYPE__COMPONENT_TYPE = 3;
    public static final int IMAGE_TYPE__NAME = 4;
    public static final int IMAGE_TYPE__NAME_SPACE = 5;
    public static final int IMAGE_TYPE__OID = 6;
    public static final int IMAGE_TYPE__TIME_STAMP1 = 7;
    public static final int IMAGE_TYPE__UUID = 8;
    public static final int IMAGE_TYPE__NOTES = 9;
    public static final int IMAGE_TYPE__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int IMAGE_TYPE__FILE = 11;
    public static final int IMAGE_TYPE_FEATURE_COUNT = 12;
    public static final int IMAGE_TYPE_OPERATION_COUNT = 0;
    public static final int INTERVAL_T = 36;
    public static final int INTERVAL_T__MAX = 0;
    public static final int INTERVAL_T__MIN = 1;
    public static final int INTERVAL_T_FEATURE_COUNT = 2;
    public static final int INTERVAL_T_OPERATION_COUNT = 0;
    public static final int ITEM_REF_T = 38;
    public static final int ITEM_REF_T__NAME = 0;
    public static final int ITEM_REF_T__OID = 1;
    public static final int ITEM_REF_T_FEATURE_COUNT = 2;
    public static final int ITEM_REF_T_OPERATION_COUNT = 0;
    public static final int ITEM_TYPE = 40;
    public static final int ITEM_TYPE__ITEM_NAME = 0;
    public static final int ITEM_TYPE__ITEM_OID = 1;
    public static final int ITEM_TYPE_FEATURE_COUNT = 2;
    public static final int ITEM_TYPE_OPERATION_COUNT = 0;
    public static final int LOCALS_COMPLEX_TYPE = 41;
    public static final int LOCALS_COMPLEX_TYPE__LOCAL = 0;
    public static final int LOCALS_COMPLEX_TYPE_FEATURE_COUNT = 1;
    public static final int LOCALS_COMPLEX_TYPE_OPERATION_COUNT = 0;
    public static final int MAPPING_ITEM_T = 42;
    public static final int MAPPING_ITEM_T__DISPLAY_NAME = 0;
    public static final int MAPPING_ITEM_T__ELEMENT_NAME = 1;
    public static final int MAPPING_ITEM_T__ELEMENT_OID = 2;
    public static final int MAPPING_ITEM_T__MODEL_NAME = 3;
    public static final int MAPPING_ITEM_T__MODEL_OID = 4;
    public static final int MAPPING_ITEM_T_FEATURE_COUNT = 5;
    public static final int MAPPING_ITEM_T_OPERATION_COUNT = 0;
    public static final int METHOD_BASE_T = 44;
    public static final int METHOD_BASE_T__CUSTOMER_DATA = 0;
    public static final int METHOD_BASE_T__AVAILABLE_FOR_OS = 1;
    public static final int METHOD_BASE_T__DEFAULT = 2;
    public static final int METHOD_BASE_T__DEFAULT_METHOD = 3;
    public static final int METHOD_BASE_T__HIDDEN = 4;
    public static final int METHOD_BASE_T__NAME = 5;
    public static final int METHOD_BASE_T__OID = 6;
    public static final int METHOD_BASE_T__PUBLIC = 7;
    public static final int METHOD_BASE_T__REINITIALIZE_METHOD = 8;
    public static final int METHOD_BASE_T__UUID = 9;
    public static final int METHOD_BASE_T_FEATURE_COUNT = 10;
    public static final int METHOD_BASE_T_OPERATION_COUNT = 0;
    public static final int METHOD_INTERFACE_T = 45;
    public static final int METHOD_INTERFACE_T__TIME_STAMP = 0;
    public static final int METHOD_INTERFACE_T__COMMENT = 1;
    public static final int METHOD_INTERFACE_T__CHECKSUM = 2;
    public static final int METHOD_INTERFACE_T__COMPONENT_TYPE = 3;
    public static final int METHOD_INTERFACE_T__NAME = 4;
    public static final int METHOD_INTERFACE_T__NAME_SPACE = 5;
    public static final int METHOD_INTERFACE_T__OID = 6;
    public static final int METHOD_INTERFACE_T__TIME_STAMP1 = 7;
    public static final int METHOD_INTERFACE_T__UUID = 8;
    public static final int METHOD_INTERFACE_T__NOTES = 9;
    public static final int METHOD_INTERFACE_T__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int METHOD_INTERFACE_T__METHOD_SIGNATURES = 11;
    public static final int METHOD_INTERFACE_T__CHECKSUM_GENERAL = 12;
    public static final int METHOD_INTERFACE_T__CHECKSUM_PUBLIC_INTERFACE = 13;
    public static final int METHOD_INTERFACE_T_FEATURE_COUNT = 14;
    public static final int METHOD_INTERFACE_T_OPERATION_COUNT = 0;
    public static final int METHOD_SIGNATURES_TYPE = 46;
    public static final int METHOD_SIGNATURES_TYPE__GROUP = 0;
    public static final int METHOD_SIGNATURES_TYPE__METHOD_SIGNATURE = 1;
    public static final int METHOD_SIGNATURES_TYPE_FEATURE_COUNT = 2;
    public static final int METHOD_SIGNATURES_TYPE_OPERATION_COUNT = 0;
    public static final int METHOD_SIGNATURES_TYPE1 = 47;
    public static final int METHOD_SIGNATURES_TYPE1__GROUP = 0;
    public static final int METHOD_SIGNATURES_TYPE1__RUNNABLE_SIGNATURE = 1;
    public static final int METHOD_SIGNATURES_TYPE1__REALIZED_RUNNABLE_SIGNATURE = 2;
    public static final int METHOD_SIGNATURES_TYPE1__METHOD_SIGNATURE = 3;
    public static final int METHOD_SIGNATURES_TYPE1__REALIZED_METHOD_SIGNATURE = 4;
    public static final int METHOD_SIGNATURES_TYPE1_FEATURE_COUNT = 5;
    public static final int METHOD_SIGNATURES_TYPE1_OPERATION_COUNT = 0;
    public static final int METHOD_SIGNATURE_T = 48;
    public static final int METHOD_SIGNATURE_T__CUSTOMER_DATA = 0;
    public static final int METHOD_SIGNATURE_T__AVAILABLE_FOR_OS = 1;
    public static final int METHOD_SIGNATURE_T__DEFAULT = 2;
    public static final int METHOD_SIGNATURE_T__DEFAULT_METHOD = 3;
    public static final int METHOD_SIGNATURE_T__HIDDEN = 4;
    public static final int METHOD_SIGNATURE_T__NAME = 5;
    public static final int METHOD_SIGNATURE_T__OID = 6;
    public static final int METHOD_SIGNATURE_T__PUBLIC = 7;
    public static final int METHOD_SIGNATURE_T__REINITIALIZE_METHOD = 8;
    public static final int METHOD_SIGNATURE_T__UUID = 9;
    public static final int METHOD_SIGNATURE_T__ARGUMENTS = 10;
    public static final int METHOD_SIGNATURE_T__RETURN = 11;
    public static final int METHOD_SIGNATURE_T_FEATURE_COUNT = 12;
    public static final int METHOD_SIGNATURE_T_OPERATION_COUNT = 0;
    public static final int METHOD_T = 49;
    public static final int METHOD_T__CUSTOMER_DATA = 0;
    public static final int METHOD_T__AVAILABLE_FOR_OS = 1;
    public static final int METHOD_T__DEFAULT = 2;
    public static final int METHOD_T__DEFAULT_METHOD = 3;
    public static final int METHOD_T__HIDDEN = 4;
    public static final int METHOD_T__NAME = 5;
    public static final int METHOD_T__OID = 6;
    public static final int METHOD_T__PUBLIC = 7;
    public static final int METHOD_T__REINITIALIZE_METHOD = 8;
    public static final int METHOD_T__UUID = 9;
    public static final int METHOD_T__ARGUMENTS = 10;
    public static final int METHOD_T__RETURN = 11;
    public static final int METHOD_T__LOCALS = 12;
    public static final int METHOD_T_FEATURE_COUNT = 13;
    public static final int METHOD_T_OPERATION_COUNT = 0;
    public static final int MODE_GROUP_TYPE = 50;
    public static final int MODE_GROUP_TYPE__TIME_STAMP = 0;
    public static final int MODE_GROUP_TYPE__COMMENT = 1;
    public static final int MODE_GROUP_TYPE__CHECKSUM = 2;
    public static final int MODE_GROUP_TYPE__COMPONENT_TYPE = 3;
    public static final int MODE_GROUP_TYPE__NAME = 4;
    public static final int MODE_GROUP_TYPE__NAME_SPACE = 5;
    public static final int MODE_GROUP_TYPE__OID = 6;
    public static final int MODE_GROUP_TYPE__TIME_STAMP1 = 7;
    public static final int MODE_GROUP_TYPE__UUID = 8;
    public static final int MODE_GROUP_TYPE__NOTES = 9;
    public static final int MODE_GROUP_TYPE__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int MODE_GROUP_TYPE__MODE = 11;
    public static final int MODE_GROUP_TYPE__DEFAULT_MODE = 12;
    public static final int MODE_GROUP_TYPE_FEATURE_COUNT = 13;
    public static final int MODE_GROUP_TYPE_OPERATION_COUNT = 0;
    public static final int NOTES_T = 51;
    public static final int NOTES_T__NOTE = 0;
    public static final int NOTES_T_FEATURE_COUNT = 1;
    public static final int NOTES_T_OPERATION_COUNT = 0;
    public static final int NOTE_TYPE = 52;
    public static final int NOTE_TYPE__TEXT = 0;
    public static final int NOTE_TYPE__VIEW = 1;
    public static final int NOTE_TYPE__NAME = 2;
    public static final int NOTE_TYPE_FEATURE_COUNT = 3;
    public static final int NOTE_TYPE_OPERATION_COUNT = 0;
    public static final int OPTION_T = 53;
    public static final int OPTION_T__NAME = 0;
    public static final int OPTION_T__TYPE = 1;
    public static final int OPTION_T__VALUE = 2;
    public static final int OPTION_T_FEATURE_COUNT = 3;
    public static final int OPTION_T_OPERATION_COUNT = 0;
    public static final int PARAMETER_MAPPINGS_TYPE = 54;
    public static final int PARAMETER_MAPPINGS_TYPE__GROUP = 0;
    public static final int PARAMETER_MAPPINGS_TYPE__ELEMENT_MAPPING = 1;
    public static final int PARAMETER_MAPPINGS_TYPE_FEATURE_COUNT = 2;
    public static final int PARAMETER_MAPPINGS_TYPE_OPERATION_COUNT = 0;
    public static final int POINT_T = 55;
    public static final int POINT_T__X = 0;
    public static final int POINT_T__Y = 1;
    public static final int POINT_T_FEATURE_COUNT = 2;
    public static final int POINT_T_OPERATION_COUNT = 0;
    public static final int REALIZED_ELEMENT_T = 57;
    public static final int REALIZED_ELEMENT_T__COMMENT = 0;
    public static final int REALIZED_ELEMENT_T__ELEMENT_ATTRIBUTES = 1;
    public static final int REALIZED_ELEMENT_T__CUSTOMER_DATA = 2;
    public static final int REALIZED_ELEMENT_T__IGNORE = 3;
    public static final int REALIZED_ELEMENT_T__NAME = 4;
    public static final int REALIZED_ELEMENT_T__OID = 5;
    public static final int REALIZED_ELEMENT_T__UUID = 6;
    public static final int REALIZED_ELEMENT_T__MASTER_ELEMENT_NAME = 7;
    public static final int REALIZED_ELEMENT_T__MASTER_ELEMENT_OID = 8;
    public static final int REALIZED_ELEMENT_T_FEATURE_COUNT = 9;
    public static final int REALIZED_ELEMENT_T_OPERATION_COUNT = 0;
    public static final int REALIZED_METHOD_BASE_T = 58;
    public static final int REALIZED_METHOD_BASE_T__CUSTOMER_DATA = 0;
    public static final int REALIZED_METHOD_BASE_T__AVAILABLE_FOR_OS = 1;
    public static final int REALIZED_METHOD_BASE_T__DEFAULT = 2;
    public static final int REALIZED_METHOD_BASE_T__DEFAULT_METHOD = 3;
    public static final int REALIZED_METHOD_BASE_T__HIDDEN = 4;
    public static final int REALIZED_METHOD_BASE_T__NAME = 5;
    public static final int REALIZED_METHOD_BASE_T__OID = 6;
    public static final int REALIZED_METHOD_BASE_T__PUBLIC = 7;
    public static final int REALIZED_METHOD_BASE_T__REINITIALIZE_METHOD = 8;
    public static final int REALIZED_METHOD_BASE_T__UUID = 9;
    public static final int REALIZED_METHOD_BASE_T__INTERFACE_NAME = 10;
    public static final int REALIZED_METHOD_BASE_T__INTERFACE_OID = 11;
    public static final int REALIZED_METHOD_BASE_T__SIGNATURE_NAME = 12;
    public static final int REALIZED_METHOD_BASE_T__SIGNATURE_OID = 13;
    public static final int REALIZED_METHOD_BASE_T_FEATURE_COUNT = 14;
    public static final int REALIZED_METHOD_BASE_T_OPERATION_COUNT = 0;
    public static final int REALIZED_METHOD_T = 59;
    public static final int REALIZED_METHOD_T__CUSTOMER_DATA = 0;
    public static final int REALIZED_METHOD_T__AVAILABLE_FOR_OS = 1;
    public static final int REALIZED_METHOD_T__DEFAULT = 2;
    public static final int REALIZED_METHOD_T__DEFAULT_METHOD = 3;
    public static final int REALIZED_METHOD_T__HIDDEN = 4;
    public static final int REALIZED_METHOD_T__NAME = 5;
    public static final int REALIZED_METHOD_T__OID = 6;
    public static final int REALIZED_METHOD_T__PUBLIC = 7;
    public static final int REALIZED_METHOD_T__REINITIALIZE_METHOD = 8;
    public static final int REALIZED_METHOD_T__UUID = 9;
    public static final int REALIZED_METHOD_T__INTERFACE_NAME = 10;
    public static final int REALIZED_METHOD_T__INTERFACE_OID = 11;
    public static final int REALIZED_METHOD_T__SIGNATURE_NAME = 12;
    public static final int REALIZED_METHOD_T__SIGNATURE_OID = 13;
    public static final int REALIZED_METHOD_T__ARGUMENTS = 14;
    public static final int REALIZED_METHOD_T__RETURN = 15;
    public static final int REALIZED_METHOD_T__LOCALS = 16;
    public static final int REALIZED_METHOD_T_FEATURE_COUNT = 17;
    public static final int REALIZED_METHOD_T_OPERATION_COUNT = 0;
    public static final int RETURN_T = 64;
    public static final int RETURN_T__COMMENT = 0;
    public static final int RETURN_T__ELEMENT_ATTRIBUTES = 1;
    public static final int RETURN_T__CUSTOMER_DATA = 2;
    public static final int RETURN_T__OID = 3;
    public static final int RETURN_T__UUID = 4;
    public static final int RETURN_T_FEATURE_COUNT = 5;
    public static final int RETURN_T_OPERATION_COUNT = 0;
    public static final int REALIZED_RETURN_T = 60;
    public static final int REALIZED_RETURN_T__COMMENT = 0;
    public static final int REALIZED_RETURN_T__ELEMENT_ATTRIBUTES = 1;
    public static final int REALIZED_RETURN_T__CUSTOMER_DATA = 2;
    public static final int REALIZED_RETURN_T__OID = 3;
    public static final int REALIZED_RETURN_T__UUID = 4;
    public static final int REALIZED_RETURN_T__MASTER_ELEMENT_OID = 5;
    public static final int REALIZED_RETURN_T_FEATURE_COUNT = 6;
    public static final int REALIZED_RETURN_T_OPERATION_COUNT = 0;
    public static final int REALIZED_RUNNABLE_T = 61;
    public static final int REALIZED_RUNNABLE_T__CUSTOMER_DATA = 0;
    public static final int REALIZED_RUNNABLE_T__AVAILABLE_FOR_OS = 1;
    public static final int REALIZED_RUNNABLE_T__DEFAULT = 2;
    public static final int REALIZED_RUNNABLE_T__DEFAULT_METHOD = 3;
    public static final int REALIZED_RUNNABLE_T__HIDDEN = 4;
    public static final int REALIZED_RUNNABLE_T__NAME = 5;
    public static final int REALIZED_RUNNABLE_T__OID = 6;
    public static final int REALIZED_RUNNABLE_T__PUBLIC = 7;
    public static final int REALIZED_RUNNABLE_T__REINITIALIZE_METHOD = 8;
    public static final int REALIZED_RUNNABLE_T__UUID = 9;
    public static final int REALIZED_RUNNABLE_T__INTERFACE_NAME = 10;
    public static final int REALIZED_RUNNABLE_T__INTERFACE_OID = 11;
    public static final int REALIZED_RUNNABLE_T__SIGNATURE_NAME = 12;
    public static final int REALIZED_RUNNABLE_T__SIGNATURE_OID = 13;
    public static final int REALIZED_RUNNABLE_T__ARGUMENTS = 14;
    public static final int REALIZED_RUNNABLE_T__RETURN = 15;
    public static final int REALIZED_RUNNABLE_T__LOCALS = 16;
    public static final int REALIZED_RUNNABLE_T__CAN_BE_INVOKED_CONCURRENTLY = 17;
    public static final int REALIZED_RUNNABLE_T__MINIMUM_START_TIME = 18;
    public static final int REALIZED_RUNNABLE_T_FEATURE_COUNT = 19;
    public static final int REALIZED_RUNNABLE_T_OPERATION_COUNT = 0;
    public static final int RECORD_ATTRIBUTES_T = 62;
    public static final int RECORD_ATTRIBUTES_T__DIRECT = 0;
    public static final int RECORD_ATTRIBUTES_T__GET = 1;
    public static final int RECORD_ATTRIBUTES_T__READ = 2;
    public static final int RECORD_ATTRIBUTES_T__SCOPE = 3;
    public static final int RECORD_ATTRIBUTES_T__SET = 4;
    public static final int RECORD_ATTRIBUTES_T__WRITE = 5;
    public static final int RECORD_ATTRIBUTES_T__COMPONENT_ID = 6;
    public static final int RECORD_ATTRIBUTES_T__COMPONENT_NAME = 7;
    public static final int RECORD_ATTRIBUTES_T__KIND = 8;
    public static final int RECORD_ATTRIBUTES_T__QUEUED = 9;
    public static final int RECORD_ATTRIBUTES_T__REFERENCE = 10;
    public static final int RECORD_ATTRIBUTES_T__CALIBRATION_READ = 11;
    public static final int RECORD_ATTRIBUTES_T__CALIBRATION_WRITE = 12;
    public static final int RECORD_ATTRIBUTES_T__VIRTUAL = 13;
    public static final int RECORD_ATTRIBUTES_T__VOLATILE = 14;
    public static final int RECORD_ATTRIBUTES_T_FEATURE_COUNT = 15;
    public static final int RECORD_ATTRIBUTES_T_OPERATION_COUNT = 0;
    public static final int REQUIREMENTS_MANAGEMENT_T = 63;
    public static final int REQUIREMENTS_MANAGEMENT_T__GENERIC_DATA = 0;
    public static final int REQUIREMENTS_MANAGEMENT_T__REQUIREMENTS_ID = 1;
    public static final int REQUIREMENTS_MANAGEMENT_T_FEATURE_COUNT = 2;
    public static final int REQUIREMENTS_MANAGEMENT_T_OPERATION_COUNT = 0;
    public static final int RUNNABLE_T = 65;
    public static final int RUNNABLE_T__CUSTOMER_DATA = 0;
    public static final int RUNNABLE_T__AVAILABLE_FOR_OS = 1;
    public static final int RUNNABLE_T__DEFAULT = 2;
    public static final int RUNNABLE_T__DEFAULT_METHOD = 3;
    public static final int RUNNABLE_T__HIDDEN = 4;
    public static final int RUNNABLE_T__NAME = 5;
    public static final int RUNNABLE_T__OID = 6;
    public static final int RUNNABLE_T__PUBLIC = 7;
    public static final int RUNNABLE_T__REINITIALIZE_METHOD = 8;
    public static final int RUNNABLE_T__UUID = 9;
    public static final int RUNNABLE_T__LOCALS = 10;
    public static final int RUNNABLE_T__CAN_BE_INVOKED_CONCURRENTLY = 11;
    public static final int RUNNABLE_T__MINIMUM_START_TIME = 12;
    public static final int RUNNABLE_T_FEATURE_COUNT = 13;
    public static final int RUNNABLE_T_OPERATION_COUNT = 0;
    public static final int SCALAR_ATTRIBUTES_T = 66;
    public static final int SCALAR_ATTRIBUTES_T__DIRECT = 0;
    public static final int SCALAR_ATTRIBUTES_T__GET = 1;
    public static final int SCALAR_ATTRIBUTES_T__READ = 2;
    public static final int SCALAR_ATTRIBUTES_T__SCOPE = 3;
    public static final int SCALAR_ATTRIBUTES_T__SET = 4;
    public static final int SCALAR_ATTRIBUTES_T__WRITE = 5;
    public static final int SCALAR_ATTRIBUTES_T__CALIBRATION_READ = 6;
    public static final int SCALAR_ATTRIBUTES_T__CALIBRATION_WRITE = 7;
    public static final int SCALAR_ATTRIBUTES_T__KIND = 8;
    public static final int SCALAR_ATTRIBUTES_T__VOLATILE = 9;
    public static final int SCALAR_ATTRIBUTES_T__FORMULA = 10;
    public static final int SCALAR_ATTRIBUTES_T__DEPENDENT = 11;
    public static final int SCALAR_ATTRIBUTES_T__EXPLICIT = 12;
    public static final int SCALAR_ATTRIBUTES_T__INTERRUNNABLE = 13;
    public static final int SCALAR_ATTRIBUTES_T__VIRTUAL = 14;
    public static final int SCALAR_ATTRIBUTES_T_FEATURE_COUNT = 15;
    public static final int SCALAR_ATTRIBUTES_T_OPERATION_COUNT = 0;
    public static final int SCALAR_TYPE_TYPE = 67;
    public static final int SCALAR_TYPE_TYPE__SCALAR_ATTRIBUTES = 0;
    public static final int SCALAR_TYPE_TYPE__ENUMERATION_ATTRIBUTES = 1;
    public static final int SCALAR_TYPE_TYPE_FEATURE_COUNT = 2;
    public static final int SCALAR_TYPE_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNAL_TYPE = 68;
    public static final int SIGNAL_TYPE__TIME_STAMP = 0;
    public static final int SIGNAL_TYPE__COMMENT = 1;
    public static final int SIGNAL_TYPE__CHECKSUM = 2;
    public static final int SIGNAL_TYPE__COMPONENT_TYPE = 3;
    public static final int SIGNAL_TYPE__NAME = 4;
    public static final int SIGNAL_TYPE__NAME_SPACE = 5;
    public static final int SIGNAL_TYPE__OID = 6;
    public static final int SIGNAL_TYPE__TIME_STAMP1 = 7;
    public static final int SIGNAL_TYPE__UUID = 8;
    public static final int SIGNAL_TYPE__NOTES = 9;
    public static final int SIGNAL_TYPE__CUSTOMER_SPECIFIC_ATTRIBUTES = 10;
    public static final int SIGNAL_TYPE__FILE = 11;
    public static final int SIGNAL_TYPE_FEATURE_COUNT = 12;
    public static final int SIGNAL_TYPE_OPERATION_COUNT = 0;
    public static final int SIZE_T = 69;
    public static final int SIZE_T__X = 0;
    public static final int SIZE_T__Y = 1;
    public static final int SIZE_T_FEATURE_COUNT = 2;
    public static final int SIZE_T_OPERATION_COUNT = 0;
    public static final int SOURCE_OBJECT_TYPE = 70;
    public static final int SOURCE_OBJECT_TYPE__DISPLAY_NAME = 0;
    public static final int SOURCE_OBJECT_TYPE__ELEMENT_NAME = 1;
    public static final int SOURCE_OBJECT_TYPE__ELEMENT_OID = 2;
    public static final int SOURCE_OBJECT_TYPE__MODEL_NAME = 3;
    public static final int SOURCE_OBJECT_TYPE__MODEL_OID = 4;
    public static final int SOURCE_OBJECT_TYPE__INTERNAL_ACCESS = 5;
    public static final int SOURCE_OBJECT_TYPE_FEATURE_COUNT = 6;
    public static final int SOURCE_OBJECT_TYPE_OPERATION_COUNT = 0;
    public static final int TIME_STAMPS_TYPE = 71;
    public static final int TIME_STAMPS_TYPE__TIME_STAMP = 0;
    public static final int TIME_STAMPS_TYPE_FEATURE_COUNT = 1;
    public static final int TIME_STAMPS_TYPE_OPERATION_COUNT = 0;
    public static final int TIME_STAMP_T = 72;
    public static final int TIME_STAMP_T__TIME_STAMP_COUNTER = 0;
    public static final int TIME_STAMP_T__TIME_STAMP_KEY = 1;
    public static final int TIME_STAMP_T__TIME_STAMP_VALUE = 2;
    public static final int TIME_STAMP_T_FEATURE_COUNT = 3;
    public static final int TIME_STAMP_T_OPERATION_COUNT = 0;
    public static final int VARIABLE_MAPPINGS_EXTERNAL_TYPE = 73;
    public static final int VARIABLE_MAPPINGS_EXTERNAL_TYPE__GROUP = 0;
    public static final int VARIABLE_MAPPINGS_EXTERNAL_TYPE__ELEMENT_MAPPING = 1;
    public static final int VARIABLE_MAPPINGS_EXTERNAL_TYPE_FEATURE_COUNT = 2;
    public static final int VARIABLE_MAPPINGS_EXTERNAL_TYPE_OPERATION_COUNT = 0;
    public static final int VARIABLE_MAPPINGS_INTERNAL_TYPE = 74;
    public static final int VARIABLE_MAPPINGS_INTERNAL_TYPE__GROUP = 0;
    public static final int VARIABLE_MAPPINGS_INTERNAL_TYPE__ELEMENT_MAPPING = 1;
    public static final int VARIABLE_MAPPINGS_INTERNAL_TYPE_FEATURE_COUNT = 2;
    public static final int VARIABLE_MAPPINGS_INTERNAL_TYPE_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE = 75;
    public static final int VIEW_TYPE__NAME = 0;
    public static final int VIEW_TYPE_FEATURE_COUNT = 1;
    public static final int VIEW_TYPE_OPERATION_COUNT = 0;
    public static final int BASIC_MODEL_TYPE_TYPE = 76;
    public static final int COMPONENT_TYPE_TYPE = 77;
    public static final int INTERNAL_ACCESS_TYPE = 78;
    public static final int KIND_TYPE = 79;
    public static final int MODEL_TYPE_TYPE = 80;
    public static final int SCOPE_TYPE = 81;
    public static final int SPECIFICATION_TYPE_TYPE = 82;
    public static final int TYPE_TYPE = 83;
    public static final int TYPE_TYPE1 = 84;
    public static final int BASIC_MODEL_TYPE_TYPE_OBJECT = 85;
    public static final int COMPONENT_TYPE_TYPE_OBJECT = 86;
    public static final int INDEX_TYPE = 87;
    public static final int INTERNAL_ACCESS_TYPE_OBJECT = 88;
    public static final int KIND_TYPE_OBJECT = 89;
    public static final int MODEL_TYPE_TYPE_OBJECT = 90;
    public static final int NUMBER_OR_FRACTION = 91;
    public static final int NUMBER_OR_FRACTION_MEMBER1 = 92;
    public static final int NZQR = 93;
    public static final int NZQR_MEMBER2 = 94;
    public static final int OID = 95;
    public static final int SCOPE_TYPE_OBJECT = 96;
    public static final int SPECIFICATION_TYPE_TYPE_OBJECT = 97;
    public static final int TYPE_TYPE_OBJECT = 98;
    public static final int TYPE_TYPE_OBJECT1 = 99;

    public EClass getAccessModesT();

    public EAttribute getAccessModesT_Import();

    public EAttribute getAccessModesT_Read();

    public EAttribute getAccessModesT_Write();

    public EClass getArgumentsComplexType();

    public EReference getArgumentsComplexType_Argument();

    public EClass getArgumentsType();

    public EReference getArgumentsType_Argument();

    public EClass getAsap2ItemType();

    public EReference getAsap2ItemType_File();

    public EAttribute getAsap2ItemType_OriginalLocation();

    public EClass getAtomicSoftwareComponentT();

    public EReference getAtomicSoftwareComponentT_ParameterMappings();

    public EReference getAtomicSoftwareComponentT_VariableMappingsInternal();

    public EReference getAtomicSoftwareComponentT_VariableMappingsExternal();

    public EAttribute getAtomicSoftwareComponentT_Category();

    public EAttribute getAtomicSoftwareComponentT_SupportsMultipleInstantiation();

    public EClass getAttributesBaseT();

    public EAttribute getAttributesBaseT_Direct();

    public EAttribute getAttributesBaseT_Get();

    public EAttribute getAttributesBaseT_Read();

    public EAttribute getAttributesBaseT_Scope();

    public EAttribute getAttributesBaseT_Set();

    public EAttribute getAttributesBaseT_Write();

    public EClass getColorT();

    public EAttribute getColorT_Blue();

    public EAttribute getColorT_Green();

    public EAttribute getColorT_Red();

    public EClass getComplexAttributesT();

    public EAttribute getComplexAttributesT_ComponentID();

    public EAttribute getComplexAttributesT_ComponentName();

    public EAttribute getComplexAttributesT_Kind();

    public EAttribute getComplexAttributesT_Queued();

    public EAttribute getComplexAttributesT_Reference();

    public EClass getComplexTypeType();

    public EReference getComplexTypeType_ComplexAttributes();

    public EReference getComplexTypeType_RecordAttributes();

    public EClass getComponentMainType();

    public EReference getComponentMainType_Component();

    public EReference getComponentMainType_GenericComponent();

    public EReference getComponentMainType_AtomicSoftwareComponent();

    public EReference getComponentMainType_Enumeration();

    public EReference getComponentMainType_ModeGroup();

    public EReference getComponentMainType_Image();

    public EReference getComponentMainType_Signal();

    public EReference getComponentMainType_Asap2Item();

    public EReference getComponentMainType_Container();

    public EReference getComponentMainType_Folder();

    public EReference getComponentMainType_Signature();

    public EAttribute getComponentMainType_SchemaVersion();

    public EAttribute getComponentMainType_ToolVersion();

    public EClass getComponentT();

    public EReference getComponentT_Elements();

    public EReference getComponentT_MethodSignatures();

    public EReference getComponentT_TimeStamps();

    public EAttribute getComponentT_ChecksumGeneral();

    public EAttribute getComponentT_ChecksumPublicInterface();

    public EAttribute getComponentT_DefaultProjectName();

    public EAttribute getComponentT_DefaultProjectOID();

    public EAttribute getComponentT_SpecificationType();

    public EClass getConfigurationManagementT();

    public EReference getConfigurationManagementT_GenericData();

    public EAttribute getConfigurationManagementT_ConfigurationID();

    public EAttribute getConfigurationManagementT_Edition();

    public EAttribute getConfigurationManagementT_VersionID();

    public EClass getContainerType();

    public EReference getContainerType_Item();

    public EClass getCustomerSpecificAttributesType();

    public EReference getCustomerSpecificAttributesType_ConfigurationManagement();

    public EReference getCustomerSpecificAttributesType_RequirementsManagement();

    public EReference getCustomerSpecificAttributesType_AccessManagement();

    public EReference getCustomerSpecificAttributesType_CustomerData();

    public EClass getDataInterfaceT();

    public EReference getDataInterfaceT_Elements();

    public EAttribute getDataInterfaceT_ChecksumGeneral();

    public EAttribute getDataInterfaceT_ChecksumPublicInterface();

    public EClass getDimensionalAttributesT();

    public EReference getDimensionalAttributesT_Formula();

    public EAttribute getDimensionalAttributesT_Dependent();

    public EAttribute getDimensionalAttributesT_Reference();

    public EAttribute getDimensionalAttributesT_Virtual();

    public EClass getDimensionalTypeType();

    public EReference getDimensionalTypeType_DimensionalAttributes();

    public EAttribute getDimensionalTypeType_Interpolation();

    public EAttribute getDimensionalTypeType_MaxSizeX();

    public EAttribute getDimensionalTypeType_MaxSizeY();

    public EAttribute getDimensionalTypeType_Type();

    public EAttribute getDimensionalTypeType_XDistributionName();

    public EAttribute getDimensionalTypeType_XDistributionOID();

    public EAttribute getDimensionalTypeType_XSizeVariantElementName();

    public EAttribute getDimensionalTypeType_XSizeVariantElementOID();

    public EAttribute getDimensionalTypeType_YDistributionName();

    public EAttribute getDimensionalTypeType_YDistributionOID();

    public EAttribute getDimensionalTypeType_YSizeVariantElementName();

    public EAttribute getDimensionalTypeType_YSizeVariantElementOID();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_ComponentMain();

    public EClass getElementAttributesT();

    public EReference getElementAttributesT_ScalarType();

    public EReference getElementAttributesT_ComplexType();

    public EReference getElementAttributesT_DimensionalType();

    public EAttribute getElementAttributesT_BasicModelType();

    public EAttribute getElementAttributesT_ModelType();

    public EAttribute getElementAttributesT_Unit();

    public EClass getElementMappingType();

    public EAttribute getElementMappingType_ElementName();

    public EClass getElementMappingType1();

    public EAttribute getElementMappingType1_ElementName();

    public EClass getElementMappingType2();

    public EAttribute getElementMappingType2_ElementName();

    public EClass getElementsType();

    public EReference getElementsType_Element();

    public EClass getElementT();

    public EReference getElementT_Comment();

    public EReference getElementT_ElementAttributes();

    public EReference getElementT_CustomerData();

    public EAttribute getElementT_Ignore();

    public EAttribute getElementT_Name();

    public EAttribute getElementT_OID();

    public EAttribute getElementT_UUID();

    public EClass getEnumerationAttributesT();

    public EAttribute getEnumerationAttributesT_EnumerationName();

    public EAttribute getEnumerationAttributesT_EnumerationOID();

    public EAttribute getEnumerationAttributesT_Explicit();

    public EClass getEnumerationType();

    public EReference getEnumerationType_Enumerator();

    public EClass getEnumeratorT();

    public EAttribute getEnumeratorT_Index();

    public EAttribute getEnumeratorT_Value();

    public EClass getExternalMappingObjectT();

    public EReference getExternalMappingObjectT_SourceObject();

    public EReference getExternalMappingObjectT_TargetObject();

    public EClass getFileReferenceT();

    public EAttribute getFileReferenceT_Value();

    public EAttribute getFileReferenceT_Checksum();

    public EAttribute getFileReferenceT_Type();

    public EClass getFormalType();

    public EAttribute getFormalType_Name();

    public EAttribute getFormalType_OID();

    public EClass getFormattedTextT();

    public EAttribute getFormattedTextT_Value();

    public EClass getFormulaType();

    public EReference getFormulaType_Formal();

    public EAttribute getFormulaType_Code();

    public EClass getGenericComponentT();

    public EAttribute getGenericComponentT_FactoryKey();

    public EAttribute getGenericComponentT_IconName();

    public EClass getGenericDataT();

    public EAttribute getGenericDataT_Any();

    public EAttribute getGenericDataT_Name();

    public EClass getIconT();

    public EReference getIconT_IconFile();

    public EReference getIconT_Size();

    public EAttribute getIconT_IconName();

    public EAttribute getIconT_IconOID();

    public EClass getImageType();

    public EReference getImageType_File();

    public EClass getIntervalT();

    public EAttribute getIntervalT_Max();

    public EAttribute getIntervalT_Min();

    public EClass getItemBaseT();

    public EReference getItemBaseT_TimeStamp();

    public EReference getItemBaseT_Comment();

    public EAttribute getItemBaseT_Checksum();

    public EAttribute getItemBaseT_ComponentType();

    public EAttribute getItemBaseT_Name();

    public EAttribute getItemBaseT_NameSpace();

    public EAttribute getItemBaseT_OID();

    public EAttribute getItemBaseT_TimeStamp1();

    public EAttribute getItemBaseT_UUID();

    public EClass getItemRefT();

    public EAttribute getItemRefT_Name();

    public EAttribute getItemRefT_OID();

    public EClass getItemT();

    public EReference getItemT_Notes();

    public EReference getItemT_CustomerSpecificAttributes();

    public EClass getItemType();

    public EAttribute getItemType_ItemName();

    public EAttribute getItemType_ItemOID();

    public EClass getLocalsComplexType();

    public EReference getLocalsComplexType_Local();

    public EClass getMappingItemT();

    public EAttribute getMappingItemT_DisplayName();

    public EAttribute getMappingItemT_ElementName();

    public EAttribute getMappingItemT_ElementOID();

    public EAttribute getMappingItemT_ModelName();

    public EAttribute getMappingItemT_ModelOID();

    public EClass getMappingObjectT();

    public EReference getMappingObjectT_SourceObject();

    public EReference getMappingObjectT_TargetObject();

    public EClass getMethodBaseT();

    public EReference getMethodBaseT_CustomerData();

    public EAttribute getMethodBaseT_AvailableForOS();

    public EAttribute getMethodBaseT_Default();

    public EAttribute getMethodBaseT_DefaultMethod();

    public EAttribute getMethodBaseT_Hidden();

    public EAttribute getMethodBaseT_Name();

    public EAttribute getMethodBaseT_OID();

    public EAttribute getMethodBaseT_Public();

    public EAttribute getMethodBaseT_ReinitializeMethod();

    public EAttribute getMethodBaseT_UUID();

    public EClass getMethodInterfaceT();

    public EReference getMethodInterfaceT_MethodSignatures();

    public EAttribute getMethodInterfaceT_ChecksumGeneral();

    public EAttribute getMethodInterfaceT_ChecksumPublicInterface();

    public EClass getMethodSignaturesType();

    public EAttribute getMethodSignaturesType_Group();

    public EReference getMethodSignaturesType_MethodSignature();

    public EClass getMethodSignaturesType1();

    public EAttribute getMethodSignaturesType1_Group();

    public EReference getMethodSignaturesType1_RunnableSignature();

    public EReference getMethodSignaturesType1_RealizedRunnableSignature();

    public EReference getMethodSignaturesType1_MethodSignature();

    public EReference getMethodSignaturesType1_RealizedMethodSignature();

    public EClass getMethodSignatureT();

    public EReference getMethodSignatureT_Arguments();

    public EReference getMethodSignatureT_Return();

    public EClass getMethodT();

    public EReference getMethodT_Arguments();

    public EReference getMethodT_Return();

    public EReference getMethodT_Locals();

    public EClass getModeGroupType();

    public EReference getModeGroupType_Mode();

    public EAttribute getModeGroupType_DefaultMode();

    public EClass getNotesT();

    public EReference getNotesT_Note();

    public EClass getNoteType();

    public EReference getNoteType_Text();

    public EReference getNoteType_View();

    public EAttribute getNoteType_Name();

    public EClass getOptionT();

    public EAttribute getOptionT_Name();

    public EAttribute getOptionT_Type();

    public EAttribute getOptionT_Value();

    public EClass getParameterMappingsType();

    public EAttribute getParameterMappingsType_Group();

    public EReference getParameterMappingsType_ElementMapping();

    public EClass getPointT();

    public EAttribute getPointT_X();

    public EAttribute getPointT_Y();

    public EClass getPrimitiveAttributesBaseT();

    public EAttribute getPrimitiveAttributesBaseT_CalibrationRead();

    public EAttribute getPrimitiveAttributesBaseT_CalibrationWrite();

    public EAttribute getPrimitiveAttributesBaseT_Kind();

    public EAttribute getPrimitiveAttributesBaseT_Volatile();

    public EClass getRealizedElementT();

    public EAttribute getRealizedElementT_MasterElementName();

    public EAttribute getRealizedElementT_MasterElementOID();

    public EClass getRealizedMethodBaseT();

    public EAttribute getRealizedMethodBaseT_InterfaceName();

    public EAttribute getRealizedMethodBaseT_InterfaceOID();

    public EAttribute getRealizedMethodBaseT_SignatureName();

    public EAttribute getRealizedMethodBaseT_SignatureOID();

    public EClass getRealizedMethodT();

    public EReference getRealizedMethodT_Arguments();

    public EReference getRealizedMethodT_Return();

    public EReference getRealizedMethodT_Locals();

    public EClass getRealizedReturnT();

    public EAttribute getRealizedReturnT_MasterElementOID();

    public EClass getRealizedRunnableT();

    public EAttribute getRealizedRunnableT_CanBeInvokedConcurrently();

    public EAttribute getRealizedRunnableT_MinimumStartTime();

    public EClass getRecordAttributesT();

    public EAttribute getRecordAttributesT_CalibrationRead();

    public EAttribute getRecordAttributesT_CalibrationWrite();

    public EAttribute getRecordAttributesT_Virtual();

    public EAttribute getRecordAttributesT_Volatile();

    public EClass getRequirementsManagementT();

    public EReference getRequirementsManagementT_GenericData();

    public EAttribute getRequirementsManagementT_RequirementsID();

    public EClass getReturnT();

    public EReference getReturnT_Comment();

    public EReference getReturnT_ElementAttributes();

    public EReference getReturnT_CustomerData();

    public EAttribute getReturnT_OID();

    public EAttribute getReturnT_UUID();

    public EClass getRunnableT();

    public EReference getRunnableT_Locals();

    public EAttribute getRunnableT_CanBeInvokedConcurrently();

    public EAttribute getRunnableT_MinimumStartTime();

    public EClass getScalarAttributesT();

    public EReference getScalarAttributesT_Formula();

    public EAttribute getScalarAttributesT_Dependent();

    public EAttribute getScalarAttributesT_Explicit();

    public EAttribute getScalarAttributesT_Interrunnable();

    public EAttribute getScalarAttributesT_Virtual();

    public EClass getScalarTypeType();

    public EReference getScalarTypeType_ScalarAttributes();

    public EReference getScalarTypeType_EnumerationAttributes();

    public EClass getSignalType();

    public EReference getSignalType_File();

    public EClass getSizeT();

    public EAttribute getSizeT_X();

    public EAttribute getSizeT_Y();

    public EClass getSourceObjectType();

    public EAttribute getSourceObjectType_InternalAccess();

    public EClass getTimeStampsType();

    public EReference getTimeStampsType_TimeStamp();

    public EClass getTimeStampT();

    public EAttribute getTimeStampT_TimeStampCounter();

    public EAttribute getTimeStampT_TimeStampKey();

    public EAttribute getTimeStampT_TimeStampValue();

    public EClass getVariableMappingsExternalType();

    public EAttribute getVariableMappingsExternalType_Group();

    public EReference getVariableMappingsExternalType_ElementMapping();

    public EClass getVariableMappingsInternalType();

    public EAttribute getVariableMappingsInternalType_Group();

    public EReference getVariableMappingsInternalType_ElementMapping();

    public EClass getViewType();

    public EAttribute getViewType_Name();

    public EEnum getBasicModelTypeType();

    public EEnum getComponentTypeType();

    public EEnum getInternalAccessType();

    public EEnum getKindType();

    public EEnum getModelTypeType();

    public EEnum getScopeType();

    public EEnum getSpecificationTypeType();

    public EEnum getTypeType();

    public EEnum getTypeType1();

    public EDataType getBasicModelTypeTypeObject();

    public EDataType getComponentTypeTypeObject();

    public EDataType getIndexType();

    public EDataType getInternalAccessTypeObject();

    public EDataType getKindTypeObject();

    public EDataType getModelTypeTypeObject();

    public EDataType getNumberOrFraction();

    public EDataType getNumberOrFractionMember1();

    public EDataType getNzqr();

    public EDataType getNzqrMember2();

    public EDataType getOID();

    public EDataType getScopeTypeObject();

    public EDataType getSpecificationTypeTypeObject();

    public EDataType getTypeTypeObject();

    public EDataType getTypeTypeObject1();

    public ComponentMainFactory getComponentMainFactory();

    public static interface Literals {
        public static final EClass ACCESS_MODES_T = eINSTANCE.getAccessModesT();
        public static final EAttribute ACCESS_MODES_T__IMPORT = eINSTANCE.getAccessModesT_Import();
        public static final EAttribute ACCESS_MODES_T__READ = eINSTANCE.getAccessModesT_Read();
        public static final EAttribute ACCESS_MODES_T__WRITE = eINSTANCE.getAccessModesT_Write();
        public static final EClass ARGUMENTS_COMPLEX_TYPE = eINSTANCE.getArgumentsComplexType();
        public static final EReference ARGUMENTS_COMPLEX_TYPE__ARGUMENT = eINSTANCE.getArgumentsComplexType_Argument();
        public static final EClass ARGUMENTS_TYPE = eINSTANCE.getArgumentsType();
        public static final EReference ARGUMENTS_TYPE__ARGUMENT = eINSTANCE.getArgumentsType_Argument();
        public static final EClass ASAP2_ITEM_TYPE = eINSTANCE.getAsap2ItemType();
        public static final EReference ASAP2_ITEM_TYPE__FILE = eINSTANCE.getAsap2ItemType_File();
        public static final EAttribute ASAP2_ITEM_TYPE__ORIGINAL_LOCATION = eINSTANCE.getAsap2ItemType_OriginalLocation();
        public static final EClass ATOMIC_SOFTWARE_COMPONENT_T = eINSTANCE.getAtomicSoftwareComponentT();
        public static final EReference ATOMIC_SOFTWARE_COMPONENT_T__PARAMETER_MAPPINGS = eINSTANCE.getAtomicSoftwareComponentT_ParameterMappings();
        public static final EReference ATOMIC_SOFTWARE_COMPONENT_T__VARIABLE_MAPPINGS_INTERNAL = eINSTANCE.getAtomicSoftwareComponentT_VariableMappingsInternal();
        public static final EReference ATOMIC_SOFTWARE_COMPONENT_T__VARIABLE_MAPPINGS_EXTERNAL = eINSTANCE.getAtomicSoftwareComponentT_VariableMappingsExternal();
        public static final EAttribute ATOMIC_SOFTWARE_COMPONENT_T__CATEGORY = eINSTANCE.getAtomicSoftwareComponentT_Category();
        public static final EAttribute ATOMIC_SOFTWARE_COMPONENT_T__SUPPORTS_MULTIPLE_INSTANTIATION = eINSTANCE.getAtomicSoftwareComponentT_SupportsMultipleInstantiation();
        public static final EClass ATTRIBUTES_BASE_T = eINSTANCE.getAttributesBaseT();
        public static final EAttribute ATTRIBUTES_BASE_T__DIRECT = eINSTANCE.getAttributesBaseT_Direct();
        public static final EAttribute ATTRIBUTES_BASE_T__GET = eINSTANCE.getAttributesBaseT_Get();
        public static final EAttribute ATTRIBUTES_BASE_T__READ = eINSTANCE.getAttributesBaseT_Read();
        public static final EAttribute ATTRIBUTES_BASE_T__SCOPE = eINSTANCE.getAttributesBaseT_Scope();
        public static final EAttribute ATTRIBUTES_BASE_T__SET = eINSTANCE.getAttributesBaseT_Set();
        public static final EAttribute ATTRIBUTES_BASE_T__WRITE = eINSTANCE.getAttributesBaseT_Write();
        public static final EClass COLOR_T = eINSTANCE.getColorT();
        public static final EAttribute COLOR_T__BLUE = eINSTANCE.getColorT_Blue();
        public static final EAttribute COLOR_T__GREEN = eINSTANCE.getColorT_Green();
        public static final EAttribute COLOR_T__RED = eINSTANCE.getColorT_Red();
        public static final EClass COMPLEX_ATTRIBUTES_T = eINSTANCE.getComplexAttributesT();
        public static final EAttribute COMPLEX_ATTRIBUTES_T__COMPONENT_ID = eINSTANCE.getComplexAttributesT_ComponentID();
        public static final EAttribute COMPLEX_ATTRIBUTES_T__COMPONENT_NAME = eINSTANCE.getComplexAttributesT_ComponentName();
        public static final EAttribute COMPLEX_ATTRIBUTES_T__KIND = eINSTANCE.getComplexAttributesT_Kind();
        public static final EAttribute COMPLEX_ATTRIBUTES_T__QUEUED = eINSTANCE.getComplexAttributesT_Queued();
        public static final EAttribute COMPLEX_ATTRIBUTES_T__REFERENCE = eINSTANCE.getComplexAttributesT_Reference();
        public static final EClass COMPLEX_TYPE_TYPE = eINSTANCE.getComplexTypeType();
        public static final EReference COMPLEX_TYPE_TYPE__COMPLEX_ATTRIBUTES = eINSTANCE.getComplexTypeType_ComplexAttributes();
        public static final EReference COMPLEX_TYPE_TYPE__RECORD_ATTRIBUTES = eINSTANCE.getComplexTypeType_RecordAttributes();
        public static final EClass COMPONENT_MAIN_TYPE = eINSTANCE.getComponentMainType();
        public static final EReference COMPONENT_MAIN_TYPE__COMPONENT = eINSTANCE.getComponentMainType_Component();
        public static final EReference COMPONENT_MAIN_TYPE__GENERIC_COMPONENT = eINSTANCE.getComponentMainType_GenericComponent();
        public static final EReference COMPONENT_MAIN_TYPE__ATOMIC_SOFTWARE_COMPONENT = eINSTANCE.getComponentMainType_AtomicSoftwareComponent();
        public static final EReference COMPONENT_MAIN_TYPE__ENUMERATION = eINSTANCE.getComponentMainType_Enumeration();
        public static final EReference COMPONENT_MAIN_TYPE__MODE_GROUP = eINSTANCE.getComponentMainType_ModeGroup();
        public static final EReference COMPONENT_MAIN_TYPE__IMAGE = eINSTANCE.getComponentMainType_Image();
        public static final EReference COMPONENT_MAIN_TYPE__SIGNAL = eINSTANCE.getComponentMainType_Signal();
        public static final EReference COMPONENT_MAIN_TYPE__ASAP2_ITEM = eINSTANCE.getComponentMainType_Asap2Item();
        public static final EReference COMPONENT_MAIN_TYPE__CONTAINER = eINSTANCE.getComponentMainType_Container();
        public static final EReference COMPONENT_MAIN_TYPE__FOLDER = eINSTANCE.getComponentMainType_Folder();
        public static final EReference COMPONENT_MAIN_TYPE__SIGNATURE = eINSTANCE.getComponentMainType_Signature();
        public static final EAttribute COMPONENT_MAIN_TYPE__SCHEMA_VERSION = eINSTANCE.getComponentMainType_SchemaVersion();
        public static final EAttribute COMPONENT_MAIN_TYPE__TOOL_VERSION = eINSTANCE.getComponentMainType_ToolVersion();
        public static final EClass COMPONENT_T = eINSTANCE.getComponentT();
        public static final EReference COMPONENT_T__ELEMENTS = eINSTANCE.getComponentT_Elements();
        public static final EReference COMPONENT_T__METHOD_SIGNATURES = eINSTANCE.getComponentT_MethodSignatures();
        public static final EReference COMPONENT_T__TIME_STAMPS = eINSTANCE.getComponentT_TimeStamps();
        public static final EAttribute COMPONENT_T__CHECKSUM_GENERAL = eINSTANCE.getComponentT_ChecksumGeneral();
        public static final EAttribute COMPONENT_T__CHECKSUM_PUBLIC_INTERFACE = eINSTANCE.getComponentT_ChecksumPublicInterface();
        public static final EAttribute COMPONENT_T__DEFAULT_PROJECT_NAME = eINSTANCE.getComponentT_DefaultProjectName();
        public static final EAttribute COMPONENT_T__DEFAULT_PROJECT_OID = eINSTANCE.getComponentT_DefaultProjectOID();
        public static final EAttribute COMPONENT_T__SPECIFICATION_TYPE = eINSTANCE.getComponentT_SpecificationType();
        public static final EClass CONFIGURATION_MANAGEMENT_T = eINSTANCE.getConfigurationManagementT();
        public static final EReference CONFIGURATION_MANAGEMENT_T__GENERIC_DATA = eINSTANCE.getConfigurationManagementT_GenericData();
        public static final EAttribute CONFIGURATION_MANAGEMENT_T__CONFIGURATION_ID = eINSTANCE.getConfigurationManagementT_ConfigurationID();
        public static final EAttribute CONFIGURATION_MANAGEMENT_T__EDITION = eINSTANCE.getConfigurationManagementT_Edition();
        public static final EAttribute CONFIGURATION_MANAGEMENT_T__VERSION_ID = eINSTANCE.getConfigurationManagementT_VersionID();
        public static final EClass CONTAINER_TYPE = eINSTANCE.getContainerType();
        public static final EReference CONTAINER_TYPE__ITEM = eINSTANCE.getContainerType_Item();
        public static final EClass CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE = eINSTANCE.getCustomerSpecificAttributesType();
        public static final EReference CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__CONFIGURATION_MANAGEMENT = eINSTANCE.getCustomerSpecificAttributesType_ConfigurationManagement();
        public static final EReference CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__REQUIREMENTS_MANAGEMENT = eINSTANCE.getCustomerSpecificAttributesType_RequirementsManagement();
        public static final EReference CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__ACCESS_MANAGEMENT = eINSTANCE.getCustomerSpecificAttributesType_AccessManagement();
        public static final EReference CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE__CUSTOMER_DATA = eINSTANCE.getCustomerSpecificAttributesType_CustomerData();
        public static final EClass DATA_INTERFACE_T = eINSTANCE.getDataInterfaceT();
        public static final EReference DATA_INTERFACE_T__ELEMENTS = eINSTANCE.getDataInterfaceT_Elements();
        public static final EAttribute DATA_INTERFACE_T__CHECKSUM_GENERAL = eINSTANCE.getDataInterfaceT_ChecksumGeneral();
        public static final EAttribute DATA_INTERFACE_T__CHECKSUM_PUBLIC_INTERFACE = eINSTANCE.getDataInterfaceT_ChecksumPublicInterface();
        public static final EClass DIMENSIONAL_ATTRIBUTES_T = eINSTANCE.getDimensionalAttributesT();
        public static final EReference DIMENSIONAL_ATTRIBUTES_T__FORMULA = eINSTANCE.getDimensionalAttributesT_Formula();
        public static final EAttribute DIMENSIONAL_ATTRIBUTES_T__DEPENDENT = eINSTANCE.getDimensionalAttributesT_Dependent();
        public static final EAttribute DIMENSIONAL_ATTRIBUTES_T__REFERENCE = eINSTANCE.getDimensionalAttributesT_Reference();
        public static final EAttribute DIMENSIONAL_ATTRIBUTES_T__VIRTUAL = eINSTANCE.getDimensionalAttributesT_Virtual();
        public static final EClass DIMENSIONAL_TYPE_TYPE = eINSTANCE.getDimensionalTypeType();
        public static final EReference DIMENSIONAL_TYPE_TYPE__DIMENSIONAL_ATTRIBUTES = eINSTANCE.getDimensionalTypeType_DimensionalAttributes();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__INTERPOLATION = eINSTANCE.getDimensionalTypeType_Interpolation();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__MAX_SIZE_X = eINSTANCE.getDimensionalTypeType_MaxSizeX();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__MAX_SIZE_Y = eINSTANCE.getDimensionalTypeType_MaxSizeY();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__TYPE = eINSTANCE.getDimensionalTypeType_Type();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__XDISTRIBUTION_NAME = eINSTANCE.getDimensionalTypeType_XDistributionName();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__XDISTRIBUTION_OID = eINSTANCE.getDimensionalTypeType_XDistributionOID();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__XSIZE_VARIANT_ELEMENT_NAME = eINSTANCE.getDimensionalTypeType_XSizeVariantElementName();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__XSIZE_VARIANT_ELEMENT_OID = eINSTANCE.getDimensionalTypeType_XSizeVariantElementOID();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__YDISTRIBUTION_NAME = eINSTANCE.getDimensionalTypeType_YDistributionName();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__YDISTRIBUTION_OID = eINSTANCE.getDimensionalTypeType_YDistributionOID();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__YSIZE_VARIANT_ELEMENT_NAME = eINSTANCE.getDimensionalTypeType_YSizeVariantElementName();
        public static final EAttribute DIMENSIONAL_TYPE_TYPE__YSIZE_VARIANT_ELEMENT_OID = eINSTANCE.getDimensionalTypeType_YSizeVariantElementOID();
        public static final EClass DOCUMENT_ROOT = eINSTANCE.getDocumentRoot();
        public static final EAttribute DOCUMENT_ROOT__MIXED = eINSTANCE.getDocumentRoot_Mixed();
        public static final EReference DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getDocumentRoot_XMLNSPrefixMap();
        public static final EReference DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getDocumentRoot_XSISchemaLocation();
        public static final EReference DOCUMENT_ROOT__COMPONENT_MAIN = eINSTANCE.getDocumentRoot_ComponentMain();
        public static final EClass ELEMENT_ATTRIBUTES_T = eINSTANCE.getElementAttributesT();
        public static final EReference ELEMENT_ATTRIBUTES_T__SCALAR_TYPE = eINSTANCE.getElementAttributesT_ScalarType();
        public static final EReference ELEMENT_ATTRIBUTES_T__COMPLEX_TYPE = eINSTANCE.getElementAttributesT_ComplexType();
        public static final EReference ELEMENT_ATTRIBUTES_T__DIMENSIONAL_TYPE = eINSTANCE.getElementAttributesT_DimensionalType();
        public static final EAttribute ELEMENT_ATTRIBUTES_T__BASIC_MODEL_TYPE = eINSTANCE.getElementAttributesT_BasicModelType();
        public static final EAttribute ELEMENT_ATTRIBUTES_T__MODEL_TYPE = eINSTANCE.getElementAttributesT_ModelType();
        public static final EAttribute ELEMENT_ATTRIBUTES_T__UNIT = eINSTANCE.getElementAttributesT_Unit();
        public static final EClass ELEMENT_MAPPING_TYPE = eINSTANCE.getElementMappingType();
        public static final EAttribute ELEMENT_MAPPING_TYPE__ELEMENT_NAME = eINSTANCE.getElementMappingType_ElementName();
        public static final EClass ELEMENT_MAPPING_TYPE1 = eINSTANCE.getElementMappingType1();
        public static final EAttribute ELEMENT_MAPPING_TYPE1__ELEMENT_NAME = eINSTANCE.getElementMappingType1_ElementName();
        public static final EClass ELEMENT_MAPPING_TYPE2 = eINSTANCE.getElementMappingType2();
        public static final EAttribute ELEMENT_MAPPING_TYPE2__ELEMENT_NAME = eINSTANCE.getElementMappingType2_ElementName();
        public static final EClass ELEMENTS_TYPE = eINSTANCE.getElementsType();
        public static final EReference ELEMENTS_TYPE__ELEMENT = eINSTANCE.getElementsType_Element();
        public static final EClass ELEMENT_T = eINSTANCE.getElementT();
        public static final EReference ELEMENT_T__COMMENT = eINSTANCE.getElementT_Comment();
        public static final EReference ELEMENT_T__ELEMENT_ATTRIBUTES = eINSTANCE.getElementT_ElementAttributes();
        public static final EReference ELEMENT_T__CUSTOMER_DATA = eINSTANCE.getElementT_CustomerData();
        public static final EAttribute ELEMENT_T__IGNORE = eINSTANCE.getElementT_Ignore();
        public static final EAttribute ELEMENT_T__NAME = eINSTANCE.getElementT_Name();
        public static final EAttribute ELEMENT_T__OID = eINSTANCE.getElementT_OID();
        public static final EAttribute ELEMENT_T__UUID = eINSTANCE.getElementT_UUID();
        public static final EClass ENUMERATION_ATTRIBUTES_T = eINSTANCE.getEnumerationAttributesT();
        public static final EAttribute ENUMERATION_ATTRIBUTES_T__ENUMERATION_NAME = eINSTANCE.getEnumerationAttributesT_EnumerationName();
        public static final EAttribute ENUMERATION_ATTRIBUTES_T__ENUMERATION_OID = eINSTANCE.getEnumerationAttributesT_EnumerationOID();
        public static final EAttribute ENUMERATION_ATTRIBUTES_T__EXPLICIT = eINSTANCE.getEnumerationAttributesT_Explicit();
        public static final EClass ENUMERATION_TYPE = eINSTANCE.getEnumerationType();
        public static final EReference ENUMERATION_TYPE__ENUMERATOR = eINSTANCE.getEnumerationType_Enumerator();
        public static final EClass ENUMERATOR_T = eINSTANCE.getEnumeratorT();
        public static final EAttribute ENUMERATOR_T__INDEX = eINSTANCE.getEnumeratorT_Index();
        public static final EAttribute ENUMERATOR_T__VALUE = eINSTANCE.getEnumeratorT_Value();
        public static final EClass EXTERNAL_MAPPING_OBJECT_T = eINSTANCE.getExternalMappingObjectT();
        public static final EReference EXTERNAL_MAPPING_OBJECT_T__SOURCE_OBJECT = eINSTANCE.getExternalMappingObjectT_SourceObject();
        public static final EReference EXTERNAL_MAPPING_OBJECT_T__TARGET_OBJECT = eINSTANCE.getExternalMappingObjectT_TargetObject();
        public static final EClass FILE_REFERENCE_T = eINSTANCE.getFileReferenceT();
        public static final EAttribute FILE_REFERENCE_T__VALUE = eINSTANCE.getFileReferenceT_Value();
        public static final EAttribute FILE_REFERENCE_T__CHECKSUM = eINSTANCE.getFileReferenceT_Checksum();
        public static final EAttribute FILE_REFERENCE_T__TYPE = eINSTANCE.getFileReferenceT_Type();
        public static final EClass FORMAL_TYPE = eINSTANCE.getFormalType();
        public static final EAttribute FORMAL_TYPE__NAME = eINSTANCE.getFormalType_Name();
        public static final EAttribute FORMAL_TYPE__OID = eINSTANCE.getFormalType_OID();
        public static final EClass FORMATTED_TEXT_T = eINSTANCE.getFormattedTextT();
        public static final EAttribute FORMATTED_TEXT_T__VALUE = eINSTANCE.getFormattedTextT_Value();
        public static final EClass FORMULA_TYPE = eINSTANCE.getFormulaType();
        public static final EReference FORMULA_TYPE__FORMAL = eINSTANCE.getFormulaType_Formal();
        public static final EAttribute FORMULA_TYPE__CODE = eINSTANCE.getFormulaType_Code();
        public static final EClass GENERIC_COMPONENT_T = eINSTANCE.getGenericComponentT();
        public static final EAttribute GENERIC_COMPONENT_T__FACTORY_KEY = eINSTANCE.getGenericComponentT_FactoryKey();
        public static final EAttribute GENERIC_COMPONENT_T__ICON_NAME = eINSTANCE.getGenericComponentT_IconName();
        public static final EClass GENERIC_DATA_T = eINSTANCE.getGenericDataT();
        public static final EAttribute GENERIC_DATA_T__ANY = eINSTANCE.getGenericDataT_Any();
        public static final EAttribute GENERIC_DATA_T__NAME = eINSTANCE.getGenericDataT_Name();
        public static final EClass ICON_T = eINSTANCE.getIconT();
        public static final EReference ICON_T__ICON_FILE = eINSTANCE.getIconT_IconFile();
        public static final EReference ICON_T__SIZE = eINSTANCE.getIconT_Size();
        public static final EAttribute ICON_T__ICON_NAME = eINSTANCE.getIconT_IconName();
        public static final EAttribute ICON_T__ICON_OID = eINSTANCE.getIconT_IconOID();
        public static final EClass IMAGE_TYPE = eINSTANCE.getImageType();
        public static final EReference IMAGE_TYPE__FILE = eINSTANCE.getImageType_File();
        public static final EClass INTERVAL_T = eINSTANCE.getIntervalT();
        public static final EAttribute INTERVAL_T__MAX = eINSTANCE.getIntervalT_Max();
        public static final EAttribute INTERVAL_T__MIN = eINSTANCE.getIntervalT_Min();
        public static final EClass ITEM_BASE_T = eINSTANCE.getItemBaseT();
        public static final EReference ITEM_BASE_T__TIME_STAMP = eINSTANCE.getItemBaseT_TimeStamp();
        public static final EReference ITEM_BASE_T__COMMENT = eINSTANCE.getItemBaseT_Comment();
        public static final EAttribute ITEM_BASE_T__CHECKSUM = eINSTANCE.getItemBaseT_Checksum();
        public static final EAttribute ITEM_BASE_T__COMPONENT_TYPE = eINSTANCE.getItemBaseT_ComponentType();
        public static final EAttribute ITEM_BASE_T__NAME = eINSTANCE.getItemBaseT_Name();
        public static final EAttribute ITEM_BASE_T__NAME_SPACE = eINSTANCE.getItemBaseT_NameSpace();
        public static final EAttribute ITEM_BASE_T__OID = eINSTANCE.getItemBaseT_OID();
        public static final EAttribute ITEM_BASE_T__TIME_STAMP1 = eINSTANCE.getItemBaseT_TimeStamp1();
        public static final EAttribute ITEM_BASE_T__UUID = eINSTANCE.getItemBaseT_UUID();
        public static final EClass ITEM_REF_T = eINSTANCE.getItemRefT();
        public static final EAttribute ITEM_REF_T__NAME = eINSTANCE.getItemRefT_Name();
        public static final EAttribute ITEM_REF_T__OID = eINSTANCE.getItemRefT_OID();
        public static final EClass ITEM_T = eINSTANCE.getItemT();
        public static final EReference ITEM_T__NOTES = eINSTANCE.getItemT_Notes();
        public static final EReference ITEM_T__CUSTOMER_SPECIFIC_ATTRIBUTES = eINSTANCE.getItemT_CustomerSpecificAttributes();
        public static final EClass ITEM_TYPE = eINSTANCE.getItemType();
        public static final EAttribute ITEM_TYPE__ITEM_NAME = eINSTANCE.getItemType_ItemName();
        public static final EAttribute ITEM_TYPE__ITEM_OID = eINSTANCE.getItemType_ItemOID();
        public static final EClass LOCALS_COMPLEX_TYPE = eINSTANCE.getLocalsComplexType();
        public static final EReference LOCALS_COMPLEX_TYPE__LOCAL = eINSTANCE.getLocalsComplexType_Local();
        public static final EClass MAPPING_ITEM_T = eINSTANCE.getMappingItemT();
        public static final EAttribute MAPPING_ITEM_T__DISPLAY_NAME = eINSTANCE.getMappingItemT_DisplayName();
        public static final EAttribute MAPPING_ITEM_T__ELEMENT_NAME = eINSTANCE.getMappingItemT_ElementName();
        public static final EAttribute MAPPING_ITEM_T__ELEMENT_OID = eINSTANCE.getMappingItemT_ElementOID();
        public static final EAttribute MAPPING_ITEM_T__MODEL_NAME = eINSTANCE.getMappingItemT_ModelName();
        public static final EAttribute MAPPING_ITEM_T__MODEL_OID = eINSTANCE.getMappingItemT_ModelOID();
        public static final EClass MAPPING_OBJECT_T = eINSTANCE.getMappingObjectT();
        public static final EReference MAPPING_OBJECT_T__SOURCE_OBJECT = eINSTANCE.getMappingObjectT_SourceObject();
        public static final EReference MAPPING_OBJECT_T__TARGET_OBJECT = eINSTANCE.getMappingObjectT_TargetObject();
        public static final EClass METHOD_BASE_T = eINSTANCE.getMethodBaseT();
        public static final EReference METHOD_BASE_T__CUSTOMER_DATA = eINSTANCE.getMethodBaseT_CustomerData();
        public static final EAttribute METHOD_BASE_T__AVAILABLE_FOR_OS = eINSTANCE.getMethodBaseT_AvailableForOS();
        public static final EAttribute METHOD_BASE_T__DEFAULT = eINSTANCE.getMethodBaseT_Default();
        public static final EAttribute METHOD_BASE_T__DEFAULT_METHOD = eINSTANCE.getMethodBaseT_DefaultMethod();
        public static final EAttribute METHOD_BASE_T__HIDDEN = eINSTANCE.getMethodBaseT_Hidden();
        public static final EAttribute METHOD_BASE_T__NAME = eINSTANCE.getMethodBaseT_Name();
        public static final EAttribute METHOD_BASE_T__OID = eINSTANCE.getMethodBaseT_OID();
        public static final EAttribute METHOD_BASE_T__PUBLIC = eINSTANCE.getMethodBaseT_Public();
        public static final EAttribute METHOD_BASE_T__REINITIALIZE_METHOD = eINSTANCE.getMethodBaseT_ReinitializeMethod();
        public static final EAttribute METHOD_BASE_T__UUID = eINSTANCE.getMethodBaseT_UUID();
        public static final EClass METHOD_INTERFACE_T = eINSTANCE.getMethodInterfaceT();
        public static final EReference METHOD_INTERFACE_T__METHOD_SIGNATURES = eINSTANCE.getMethodInterfaceT_MethodSignatures();
        public static final EAttribute METHOD_INTERFACE_T__CHECKSUM_GENERAL = eINSTANCE.getMethodInterfaceT_ChecksumGeneral();
        public static final EAttribute METHOD_INTERFACE_T__CHECKSUM_PUBLIC_INTERFACE = eINSTANCE.getMethodInterfaceT_ChecksumPublicInterface();
        public static final EClass METHOD_SIGNATURES_TYPE = eINSTANCE.getMethodSignaturesType();
        public static final EAttribute METHOD_SIGNATURES_TYPE__GROUP = eINSTANCE.getMethodSignaturesType_Group();
        public static final EReference METHOD_SIGNATURES_TYPE__METHOD_SIGNATURE = eINSTANCE.getMethodSignaturesType_MethodSignature();
        public static final EClass METHOD_SIGNATURES_TYPE1 = eINSTANCE.getMethodSignaturesType1();
        public static final EAttribute METHOD_SIGNATURES_TYPE1__GROUP = eINSTANCE.getMethodSignaturesType1_Group();
        public static final EReference METHOD_SIGNATURES_TYPE1__RUNNABLE_SIGNATURE = eINSTANCE.getMethodSignaturesType1_RunnableSignature();
        public static final EReference METHOD_SIGNATURES_TYPE1__REALIZED_RUNNABLE_SIGNATURE = eINSTANCE.getMethodSignaturesType1_RealizedRunnableSignature();
        public static final EReference METHOD_SIGNATURES_TYPE1__METHOD_SIGNATURE = eINSTANCE.getMethodSignaturesType1_MethodSignature();
        public static final EReference METHOD_SIGNATURES_TYPE1__REALIZED_METHOD_SIGNATURE = eINSTANCE.getMethodSignaturesType1_RealizedMethodSignature();
        public static final EClass METHOD_SIGNATURE_T = eINSTANCE.getMethodSignatureT();
        public static final EReference METHOD_SIGNATURE_T__ARGUMENTS = eINSTANCE.getMethodSignatureT_Arguments();
        public static final EReference METHOD_SIGNATURE_T__RETURN = eINSTANCE.getMethodSignatureT_Return();
        public static final EClass METHOD_T = eINSTANCE.getMethodT();
        public static final EReference METHOD_T__ARGUMENTS = eINSTANCE.getMethodT_Arguments();
        public static final EReference METHOD_T__RETURN = eINSTANCE.getMethodT_Return();
        public static final EReference METHOD_T__LOCALS = eINSTANCE.getMethodT_Locals();
        public static final EClass MODE_GROUP_TYPE = eINSTANCE.getModeGroupType();
        public static final EReference MODE_GROUP_TYPE__MODE = eINSTANCE.getModeGroupType_Mode();
        public static final EAttribute MODE_GROUP_TYPE__DEFAULT_MODE = eINSTANCE.getModeGroupType_DefaultMode();
        public static final EClass NOTES_T = eINSTANCE.getNotesT();
        public static final EReference NOTES_T__NOTE = eINSTANCE.getNotesT_Note();
        public static final EClass NOTE_TYPE = eINSTANCE.getNoteType();
        public static final EReference NOTE_TYPE__TEXT = eINSTANCE.getNoteType_Text();
        public static final EReference NOTE_TYPE__VIEW = eINSTANCE.getNoteType_View();
        public static final EAttribute NOTE_TYPE__NAME = eINSTANCE.getNoteType_Name();
        public static final EClass OPTION_T = eINSTANCE.getOptionT();
        public static final EAttribute OPTION_T__NAME = eINSTANCE.getOptionT_Name();
        public static final EAttribute OPTION_T__TYPE = eINSTANCE.getOptionT_Type();
        public static final EAttribute OPTION_T__VALUE = eINSTANCE.getOptionT_Value();
        public static final EClass PARAMETER_MAPPINGS_TYPE = eINSTANCE.getParameterMappingsType();
        public static final EAttribute PARAMETER_MAPPINGS_TYPE__GROUP = eINSTANCE.getParameterMappingsType_Group();
        public static final EReference PARAMETER_MAPPINGS_TYPE__ELEMENT_MAPPING = eINSTANCE.getParameterMappingsType_ElementMapping();
        public static final EClass POINT_T = eINSTANCE.getPointT();
        public static final EAttribute POINT_T__X = eINSTANCE.getPointT_X();
        public static final EAttribute POINT_T__Y = eINSTANCE.getPointT_Y();
        public static final EClass PRIMITIVE_ATTRIBUTES_BASE_T = eINSTANCE.getPrimitiveAttributesBaseT();
        public static final EAttribute PRIMITIVE_ATTRIBUTES_BASE_T__CALIBRATION_READ = eINSTANCE.getPrimitiveAttributesBaseT_CalibrationRead();
        public static final EAttribute PRIMITIVE_ATTRIBUTES_BASE_T__CALIBRATION_WRITE = eINSTANCE.getPrimitiveAttributesBaseT_CalibrationWrite();
        public static final EAttribute PRIMITIVE_ATTRIBUTES_BASE_T__KIND = eINSTANCE.getPrimitiveAttributesBaseT_Kind();
        public static final EAttribute PRIMITIVE_ATTRIBUTES_BASE_T__VOLATILE = eINSTANCE.getPrimitiveAttributesBaseT_Volatile();
        public static final EClass REALIZED_ELEMENT_T = eINSTANCE.getRealizedElementT();
        public static final EAttribute REALIZED_ELEMENT_T__MASTER_ELEMENT_NAME = eINSTANCE.getRealizedElementT_MasterElementName();
        public static final EAttribute REALIZED_ELEMENT_T__MASTER_ELEMENT_OID = eINSTANCE.getRealizedElementT_MasterElementOID();
        public static final EClass REALIZED_METHOD_BASE_T = eINSTANCE.getRealizedMethodBaseT();
        public static final EAttribute REALIZED_METHOD_BASE_T__INTERFACE_NAME = eINSTANCE.getRealizedMethodBaseT_InterfaceName();
        public static final EAttribute REALIZED_METHOD_BASE_T__INTERFACE_OID = eINSTANCE.getRealizedMethodBaseT_InterfaceOID();
        public static final EAttribute REALIZED_METHOD_BASE_T__SIGNATURE_NAME = eINSTANCE.getRealizedMethodBaseT_SignatureName();
        public static final EAttribute REALIZED_METHOD_BASE_T__SIGNATURE_OID = eINSTANCE.getRealizedMethodBaseT_SignatureOID();
        public static final EClass REALIZED_METHOD_T = eINSTANCE.getRealizedMethodT();
        public static final EReference REALIZED_METHOD_T__ARGUMENTS = eINSTANCE.getRealizedMethodT_Arguments();
        public static final EReference REALIZED_METHOD_T__RETURN = eINSTANCE.getRealizedMethodT_Return();
        public static final EReference REALIZED_METHOD_T__LOCALS = eINSTANCE.getRealizedMethodT_Locals();
        public static final EClass REALIZED_RETURN_T = eINSTANCE.getRealizedReturnT();
        public static final EAttribute REALIZED_RETURN_T__MASTER_ELEMENT_OID = eINSTANCE.getRealizedReturnT_MasterElementOID();
        public static final EClass REALIZED_RUNNABLE_T = eINSTANCE.getRealizedRunnableT();
        public static final EAttribute REALIZED_RUNNABLE_T__CAN_BE_INVOKED_CONCURRENTLY = eINSTANCE.getRealizedRunnableT_CanBeInvokedConcurrently();
        public static final EAttribute REALIZED_RUNNABLE_T__MINIMUM_START_TIME = eINSTANCE.getRealizedRunnableT_MinimumStartTime();
        public static final EClass RECORD_ATTRIBUTES_T = eINSTANCE.getRecordAttributesT();
        public static final EAttribute RECORD_ATTRIBUTES_T__CALIBRATION_READ = eINSTANCE.getRecordAttributesT_CalibrationRead();
        public static final EAttribute RECORD_ATTRIBUTES_T__CALIBRATION_WRITE = eINSTANCE.getRecordAttributesT_CalibrationWrite();
        public static final EAttribute RECORD_ATTRIBUTES_T__VIRTUAL = eINSTANCE.getRecordAttributesT_Virtual();
        public static final EAttribute RECORD_ATTRIBUTES_T__VOLATILE = eINSTANCE.getRecordAttributesT_Volatile();
        public static final EClass REQUIREMENTS_MANAGEMENT_T = eINSTANCE.getRequirementsManagementT();
        public static final EReference REQUIREMENTS_MANAGEMENT_T__GENERIC_DATA = eINSTANCE.getRequirementsManagementT_GenericData();
        public static final EAttribute REQUIREMENTS_MANAGEMENT_T__REQUIREMENTS_ID = eINSTANCE.getRequirementsManagementT_RequirementsID();
        public static final EClass RETURN_T = eINSTANCE.getReturnT();
        public static final EReference RETURN_T__COMMENT = eINSTANCE.getReturnT_Comment();
        public static final EReference RETURN_T__ELEMENT_ATTRIBUTES = eINSTANCE.getReturnT_ElementAttributes();
        public static final EReference RETURN_T__CUSTOMER_DATA = eINSTANCE.getReturnT_CustomerData();
        public static final EAttribute RETURN_T__OID = eINSTANCE.getReturnT_OID();
        public static final EAttribute RETURN_T__UUID = eINSTANCE.getReturnT_UUID();
        public static final EClass RUNNABLE_T = eINSTANCE.getRunnableT();
        public static final EReference RUNNABLE_T__LOCALS = eINSTANCE.getRunnableT_Locals();
        public static final EAttribute RUNNABLE_T__CAN_BE_INVOKED_CONCURRENTLY = eINSTANCE.getRunnableT_CanBeInvokedConcurrently();
        public static final EAttribute RUNNABLE_T__MINIMUM_START_TIME = eINSTANCE.getRunnableT_MinimumStartTime();
        public static final EClass SCALAR_ATTRIBUTES_T = eINSTANCE.getScalarAttributesT();
        public static final EReference SCALAR_ATTRIBUTES_T__FORMULA = eINSTANCE.getScalarAttributesT_Formula();
        public static final EAttribute SCALAR_ATTRIBUTES_T__DEPENDENT = eINSTANCE.getScalarAttributesT_Dependent();
        public static final EAttribute SCALAR_ATTRIBUTES_T__EXPLICIT = eINSTANCE.getScalarAttributesT_Explicit();
        public static final EAttribute SCALAR_ATTRIBUTES_T__INTERRUNNABLE = eINSTANCE.getScalarAttributesT_Interrunnable();
        public static final EAttribute SCALAR_ATTRIBUTES_T__VIRTUAL = eINSTANCE.getScalarAttributesT_Virtual();
        public static final EClass SCALAR_TYPE_TYPE = eINSTANCE.getScalarTypeType();
        public static final EReference SCALAR_TYPE_TYPE__SCALAR_ATTRIBUTES = eINSTANCE.getScalarTypeType_ScalarAttributes();
        public static final EReference SCALAR_TYPE_TYPE__ENUMERATION_ATTRIBUTES = eINSTANCE.getScalarTypeType_EnumerationAttributes();
        public static final EClass SIGNAL_TYPE = eINSTANCE.getSignalType();
        public static final EReference SIGNAL_TYPE__FILE = eINSTANCE.getSignalType_File();
        public static final EClass SIZE_T = eINSTANCE.getSizeT();
        public static final EAttribute SIZE_T__X = eINSTANCE.getSizeT_X();
        public static final EAttribute SIZE_T__Y = eINSTANCE.getSizeT_Y();
        public static final EClass SOURCE_OBJECT_TYPE = eINSTANCE.getSourceObjectType();
        public static final EAttribute SOURCE_OBJECT_TYPE__INTERNAL_ACCESS = eINSTANCE.getSourceObjectType_InternalAccess();
        public static final EClass TIME_STAMPS_TYPE = eINSTANCE.getTimeStampsType();
        public static final EReference TIME_STAMPS_TYPE__TIME_STAMP = eINSTANCE.getTimeStampsType_TimeStamp();
        public static final EClass TIME_STAMP_T = eINSTANCE.getTimeStampT();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_COUNTER = eINSTANCE.getTimeStampT_TimeStampCounter();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_KEY = eINSTANCE.getTimeStampT_TimeStampKey();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_VALUE = eINSTANCE.getTimeStampT_TimeStampValue();
        public static final EClass VARIABLE_MAPPINGS_EXTERNAL_TYPE = eINSTANCE.getVariableMappingsExternalType();
        public static final EAttribute VARIABLE_MAPPINGS_EXTERNAL_TYPE__GROUP = eINSTANCE.getVariableMappingsExternalType_Group();
        public static final EReference VARIABLE_MAPPINGS_EXTERNAL_TYPE__ELEMENT_MAPPING = eINSTANCE.getVariableMappingsExternalType_ElementMapping();
        public static final EClass VARIABLE_MAPPINGS_INTERNAL_TYPE = eINSTANCE.getVariableMappingsInternalType();
        public static final EAttribute VARIABLE_MAPPINGS_INTERNAL_TYPE__GROUP = eINSTANCE.getVariableMappingsInternalType_Group();
        public static final EReference VARIABLE_MAPPINGS_INTERNAL_TYPE__ELEMENT_MAPPING = eINSTANCE.getVariableMappingsInternalType_ElementMapping();
        public static final EClass VIEW_TYPE = eINSTANCE.getViewType();
        public static final EAttribute VIEW_TYPE__NAME = eINSTANCE.getViewType_Name();
        public static final EEnum BASIC_MODEL_TYPE_TYPE = eINSTANCE.getBasicModelTypeType();
        public static final EEnum COMPONENT_TYPE_TYPE = eINSTANCE.getComponentTypeType();
        public static final EEnum INTERNAL_ACCESS_TYPE = eINSTANCE.getInternalAccessType();
        public static final EEnum KIND_TYPE = eINSTANCE.getKindType();
        public static final EEnum MODEL_TYPE_TYPE = eINSTANCE.getModelTypeType();
        public static final EEnum SCOPE_TYPE = eINSTANCE.getScopeType();
        public static final EEnum SPECIFICATION_TYPE_TYPE = eINSTANCE.getSpecificationTypeType();
        public static final EEnum TYPE_TYPE = eINSTANCE.getTypeType();
        public static final EEnum TYPE_TYPE1 = eINSTANCE.getTypeType1();
        public static final EDataType BASIC_MODEL_TYPE_TYPE_OBJECT = eINSTANCE.getBasicModelTypeTypeObject();
        public static final EDataType COMPONENT_TYPE_TYPE_OBJECT = eINSTANCE.getComponentTypeTypeObject();
        public static final EDataType INDEX_TYPE = eINSTANCE.getIndexType();
        public static final EDataType INTERNAL_ACCESS_TYPE_OBJECT = eINSTANCE.getInternalAccessTypeObject();
        public static final EDataType KIND_TYPE_OBJECT = eINSTANCE.getKindTypeObject();
        public static final EDataType MODEL_TYPE_TYPE_OBJECT = eINSTANCE.getModelTypeTypeObject();
        public static final EDataType NUMBER_OR_FRACTION = eINSTANCE.getNumberOrFraction();
        public static final EDataType NUMBER_OR_FRACTION_MEMBER1 = eINSTANCE.getNumberOrFractionMember1();
        public static final EDataType NZQR = eINSTANCE.getNzqr();
        public static final EDataType NZQR_MEMBER2 = eINSTANCE.getNzqrMember2();
        public static final EDataType OID = eINSTANCE.getOID();
        public static final EDataType SCOPE_TYPE_OBJECT = eINSTANCE.getScopeTypeObject();
        public static final EDataType SPECIFICATION_TYPE_TYPE_OBJECT = eINSTANCE.getSpecificationTypeTypeObject();
        public static final EDataType TYPE_TYPE_OBJECT = eINSTANCE.getTypeTypeObject();
        public static final EDataType TYPE_TYPE_OBJECT1 = eINSTANCE.getTypeTypeObject1();
    }
}

