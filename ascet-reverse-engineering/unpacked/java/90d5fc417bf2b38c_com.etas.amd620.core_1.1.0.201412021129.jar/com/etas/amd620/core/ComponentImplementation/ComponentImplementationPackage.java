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
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentImplementationPackage
extends EPackage {
    public static final String eNAME = "ComponentImplementation";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/component_implementation";
    public static final String eNS_PREFIX = "ComponentImplementation";
    public static final ComponentImplementationPackage eINSTANCE = ComponentImplementationPackageImpl.init();
    public static final int COLOR_T = 0;
    public static final int COLOR_T__BLUE = 0;
    public static final int COLOR_T__GREEN = 1;
    public static final int COLOR_T__RED = 2;
    public static final int COLOR_T_FEATURE_COUNT = 3;
    public static final int COLOR_T_OPERATION_COUNT = 0;
    public static final int COMPLEX_IMPLEMENTATION_T = 1;
    public static final int COMPLEX_IMPLEMENTATION_T__CHECKSUM = 0;
    public static final int COMPLEX_IMPLEMENTATION_T__IMPLEMENTATION_NAME = 1;
    public static final int COMPLEX_IMPLEMENTATION_T__IMPLEMENTATION_OID = 2;
    public static final int COMPLEX_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 3;
    public static final int COMPLEX_IMPLEMENTATION_T__POLICY = 4;
    public static final int COMPLEX_IMPLEMENTATION_T__RESCALING_FORMULA = 5;
    public static final int COMPLEX_IMPLEMENTATION_T_FEATURE_COUNT = 6;
    public static final int COMPLEX_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T = 2;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__CHECKSUM = 0;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__IMPLEMENTATION_NAME = 1;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__IMPLEMENTATION_OID = 2;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 3;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__POLICY = 4;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__RESCALING_FORMULA = 5;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__CACHE_LOCKING = 6;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T__MEMORY_LOCATION_REFERENCE = 7;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T_FEATURE_COUNT = 8;
    public static final int COMPLEX_REFERENCE_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int COMPONENT_IMPLEMENTATION_TYPE = 3;
    public static final int COMPONENT_IMPLEMENTATION_TYPE__IMPLEMENTATION_SET = 0;
    public static final int COMPONENT_IMPLEMENTATION_TYPE__SIGNATURE = 1;
    public static final int COMPONENT_IMPLEMENTATION_TYPE__SCHEMA_VERSION = 2;
    public static final int COMPONENT_IMPLEMENTATION_TYPE__TOOL_VERSION = 3;
    public static final int COMPONENT_IMPLEMENTATION_TYPE_FEATURE_COUNT = 4;
    public static final int COMPONENT_IMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int DIMENSIONAL_IMPLEMENTATION_T = 4;
    public static final int DIMENSIONAL_IMPLEMENTATION_T__ONE_DIMPLEMENTATION = 0;
    public static final int DIMENSIONAL_IMPLEMENTATION_T__TWO_DIMPLEMENTATION = 1;
    public static final int DIMENSIONAL_IMPLEMENTATION_T__DISTRIBUTION_IMPLEMENTATION = 2;
    public static final int DIMENSIONAL_IMPLEMENTATION_T__ARRAY_IMPLEMENTATION = 3;
    public static final int DIMENSIONAL_IMPLEMENTATION_T__MATRIX_IMPLEMENTATION = 4;
    public static final int DIMENSIONAL_IMPLEMENTATION_T_FEATURE_COUNT = 5;
    public static final int DIMENSIONAL_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T = 5;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__ONE_DIMPLEMENTATION = 0;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__TWO_DIMPLEMENTATION = 1;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__DISTRIBUTION_IMPLEMENTATION = 2;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__ARRAY_IMPLEMENTATION = 3;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__MATRIX_IMPLEMENTATION = 4;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__MEMORY_LOCATION_REFERENCE = 5;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T_FEATURE_COUNT = 6;
    public static final int DIMENSIONAL_REFERENCE_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int SCALAR_IMPLEMENTATION_T = 33;
    public static final int SCALAR_IMPLEMENTATION_T__ENUMERATION_IMPLEMENTATION = 0;
    public static final int SCALAR_IMPLEMENTATION_T__NUMERIC_IMPLEMENTATION = 1;
    public static final int SCALAR_IMPLEMENTATION_T__LOGIC_IMPLEMENTATION = 2;
    public static final int SCALAR_IMPLEMENTATION_T__TEMPLATE_IMPLEMENTATION = 3;
    public static final int SCALAR_IMPLEMENTATION_T__RESOURCE_IMPLEMENTATION = 4;
    public static final int SCALAR_IMPLEMENTATION_T__IMPLEMENTATION_CAST_IMPLEMENTATION = 5;
    public static final int SCALAR_IMPLEMENTATION_T_FEATURE_COUNT = 6;
    public static final int SCALAR_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE = 6;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE__ENUMERATION_IMPLEMENTATION = 0;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE__NUMERIC_IMPLEMENTATION = 1;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE__LOGIC_IMPLEMENTATION = 2;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE__TEMPLATE_IMPLEMENTATION = 3;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE__RESOURCE_IMPLEMENTATION = 4;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE__IMPLEMENTATION_CAST_IMPLEMENTATION = 5;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE_FEATURE_COUNT = 6;
    public static final int DISTRIBUTION_IMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 7;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__COMPONENT_IMPLEMENTATION = 3;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 4;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int ELEMENT_IMPLEMENTATION_T = 8;
    public static final int ELEMENT_IMPLEMENTATION_T__SCALAR_IMPLEMENTATION = 0;
    public static final int ELEMENT_IMPLEMENTATION_T__DIMENSIONAL_IMPLEMENTATION = 1;
    public static final int ELEMENT_IMPLEMENTATION_T__COMPLEX_IMPLEMENTATION = 2;
    public static final int ELEMENT_IMPLEMENTATION_T__DIMENSIONAL_REFERENCE_IMPLEMENTATION = 3;
    public static final int ELEMENT_IMPLEMENTATION_T__COMPLEX_REFERENCE_IMPLEMENTATION = 4;
    public static final int ELEMENT_IMPLEMENTATION_T__AS_REFERENCE = 5;
    public static final int ELEMENT_IMPLEMENTATION_T__ELEMENT_NAME = 6;
    public static final int ELEMENT_IMPLEMENTATION_T__ELEMENT_OID = 7;
    public static final int ELEMENT_IMPLEMENTATION_T__INDEX = 8;
    public static final int ELEMENT_IMPLEMENTATION_T__METHOD_NAME = 9;
    public static final int ELEMENT_IMPLEMENTATION_T_FEATURE_COUNT = 10;
    public static final int ELEMENT_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int ELEMENT_IMPLEMENTATION_TYPE = 9;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__SCALAR_IMPLEMENTATION = 0;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__DIMENSIONAL_IMPLEMENTATION = 1;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__COMPLEX_IMPLEMENTATION = 2;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__DIMENSIONAL_REFERENCE_IMPLEMENTATION = 3;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__COMPLEX_REFERENCE_IMPLEMENTATION = 4;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__AS_REFERENCE = 5;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__ELEMENT_NAME = 6;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__ELEMENT_OID = 7;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__INDEX = 8;
    public static final int ELEMENT_IMPLEMENTATION_TYPE__METHOD_NAME = 9;
    public static final int ELEMENT_IMPLEMENTATION_TYPE_FEATURE_COUNT = 10;
    public static final int ELEMENT_IMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int FILE_REFERENCE_T = 10;
    public static final int FILE_REFERENCE_T__VALUE = 0;
    public static final int FILE_REFERENCE_T__CHECKSUM = 1;
    public static final int FILE_REFERENCE_T__TYPE = 2;
    public static final int FILE_REFERENCE_T_FEATURE_COUNT = 3;
    public static final int FILE_REFERENCE_T_OPERATION_COUNT = 0;
    public static final int FORMATTED_TEXT_T = 11;
    public static final int FORMATTED_TEXT_T__VALUE = 0;
    public static final int FORMATTED_TEXT_T_FEATURE_COUNT = 1;
    public static final int FORMATTED_TEXT_T_OPERATION_COUNT = 0;
    public static final int GENERIC_DATA_T = 12;
    public static final int GENERIC_DATA_T__ANY = 0;
    public static final int GENERIC_DATA_T__NAME = 1;
    public static final int GENERIC_DATA_T_FEATURE_COUNT = 2;
    public static final int GENERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int ICON_T = 13;
    public static final int ICON_T__ICON_FILE = 0;
    public static final int ICON_T__SIZE = 1;
    public static final int ICON_T__ICON_NAME = 2;
    public static final int ICON_T__ICON_OID = 3;
    public static final int ICON_T_FEATURE_COUNT = 4;
    public static final int ICON_T_OPERATION_COUNT = 0;
    public static final int PRIMITIVE_IMPLEMENTATION_T = 30;
    public static final int PRIMITIVE_IMPLEMENTATION_T__ADDITIONAL_INFORMATION = 0;
    public static final int PRIMITIVE_IMPLEMENTATION_T__CACHE_LOCKING = 1;
    public static final int PRIMITIVE_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 2;
    public static final int PRIMITIVE_IMPLEMENTATION_T__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int PRIMITIVE_IMPLEMENTATION_T__NAME = 4;
    public static final int PRIMITIVE_IMPLEMENTATION_T__POLICY = 5;
    public static final int PRIMITIVE_IMPLEMENTATION_T__RESCALED = 6;
    public static final int PRIMITIVE_IMPLEMENTATION_T_FEATURE_COUNT = 7;
    public static final int PRIMITIVE_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T = 25;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__ADDITIONAL_INFORMATION = 0;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__CACHE_LOCKING = 1;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__MEMORY_LOCATION_INSTANCE = 2;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__NAME = 4;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__POLICY = 5;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__RESCALED = 6;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__IS_LIMIT_OVERFLOW = 7;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__LIMIT_ASSIGNMENTS = 8;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T__LIMIT_OVERFLOW = 9;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T_FEATURE_COUNT = 10;
    public static final int NUMERIC_IMPLEMENTATION_BASE_T_OPERATION_COUNT = 0;
    public static final int NUMERIC_IMPLEMENTATION_T = 26;
    public static final int NUMERIC_IMPLEMENTATION_T__ADDITIONAL_INFORMATION = 0;
    public static final int NUMERIC_IMPLEMENTATION_T__CACHE_LOCKING = 1;
    public static final int NUMERIC_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 2;
    public static final int NUMERIC_IMPLEMENTATION_T__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int NUMERIC_IMPLEMENTATION_T__NAME = 4;
    public static final int NUMERIC_IMPLEMENTATION_T__POLICY = 5;
    public static final int NUMERIC_IMPLEMENTATION_T__RESCALED = 6;
    public static final int NUMERIC_IMPLEMENTATION_T__IS_LIMIT_OVERFLOW = 7;
    public static final int NUMERIC_IMPLEMENTATION_T__LIMIT_ASSIGNMENTS = 8;
    public static final int NUMERIC_IMPLEMENTATION_T__LIMIT_OVERFLOW = 9;
    public static final int NUMERIC_IMPLEMENTATION_T__PHYSICAL_INTERVAL = 10;
    public static final int NUMERIC_IMPLEMENTATION_T__IMPLEMENTATION_INTERVAL = 11;
    public static final int NUMERIC_IMPLEMENTATION_T__FORMULA = 12;
    public static final int NUMERIC_IMPLEMENTATION_T__IMPL_TYPE = 13;
    public static final int NUMERIC_IMPLEMENTATION_T__MASTER = 14;
    public static final int NUMERIC_IMPLEMENTATION_T__PHYS_TYPE = 15;
    public static final int NUMERIC_IMPLEMENTATION_T__QUANTIZATION = 16;
    public static final int NUMERIC_IMPLEMENTATION_T__ZERO_NOT_INCLUDED = 17;
    public static final int NUMERIC_IMPLEMENTATION_T_FEATURE_COUNT = 18;
    public static final int NUMERIC_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE = 14;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__ADDITIONAL_INFORMATION = 0;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__CACHE_LOCKING = 1;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__MEMORY_LOCATION_INSTANCE = 2;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__NAME = 4;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__POLICY = 5;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__RESCALED = 6;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__IS_LIMIT_OVERFLOW = 7;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__LIMIT_ASSIGNMENTS = 8;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__LIMIT_OVERFLOW = 9;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__PHYSICAL_INTERVAL = 10;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__IMPLEMENTATION_INTERVAL = 11;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__FORMULA = 12;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__IMPL_TYPE = 13;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__MASTER = 14;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__PHYS_TYPE = 15;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__QUANTIZATION = 16;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__ZERO_NOT_INCLUDED = 17;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__IGNORE_IMPLEMENTATION_CAST = 18;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE_FEATURE_COUNT = 19;
    public static final int IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_ENTRY_T = 15;
    public static final int IMPLEMENTATION_ENTRY_T__IMPLEMENTATION_VARIANT = 0;
    public static final int IMPLEMENTATION_ENTRY_T__CUSTOMER_DATA = 1;
    public static final int IMPLEMENTATION_ENTRY_T__IGNORE = 2;
    public static final int IMPLEMENTATION_ENTRY_T_FEATURE_COUNT = 3;
    public static final int IMPLEMENTATION_ENTRY_T_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_SET_T = 16;
    public static final int IMPLEMENTATION_SET_T__TIME_STAMP = 0;
    public static final int IMPLEMENTATION_SET_T__NOTES = 1;
    public static final int IMPLEMENTATION_SET_T__CUSTOMER_DATA = 2;
    public static final int IMPLEMENTATION_SET_T__CACHE_LOCKING = 3;
    public static final int IMPLEMENTATION_SET_T__CHECKSUM = 4;
    public static final int IMPLEMENTATION_SET_T__CLASS_CONFIG = 5;
    public static final int IMPLEMENTATION_SET_T__DEFAULT = 6;
    public static final int IMPLEMENTATION_SET_T__GENERATE_DATA_STRUCTURES = 7;
    public static final int IMPLEMENTATION_SET_T__GENERATE_METHOD_BODY = 8;
    public static final int IMPLEMENTATION_SET_T__HIERARCHICAL_GENERATION_FOR_SM = 9;
    public static final int IMPLEMENTATION_SET_T__INLINE_PRIVATE_METHODS_SM = 10;
    public static final int IMPLEMENTATION_SET_T__IS_SERVICE = 11;
    public static final int IMPLEMENTATION_SET_T__MEMORY_LOCATION = 12;
    public static final int IMPLEMENTATION_SET_T__NAME = 13;
    public static final int IMPLEMENTATION_SET_T__OID = 14;
    public static final int IMPLEMENTATION_SET_T__OPTIMIZE_METHOD_CALLS = 15;
    public static final int IMPLEMENTATION_SET_T__OUTLINE_METHODS_SM = 16;
    public static final int IMPLEMENTATION_SET_T__PACKAGE_NAME = 17;
    public static final int IMPLEMENTATION_SET_T__USER_DEFINED_ORDER = 18;
    public static final int IMPLEMENTATION_SET_T__USING_SERVICE_ROUTINES = 19;
    public static final int IMPLEMENTATION_SET_T__UUID = 20;
    public static final int IMPLEMENTATION_SET_T_FEATURE_COUNT = 21;
    public static final int IMPLEMENTATION_SET_T_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_SET_TYPE = 17;
    public static final int IMPLEMENTATION_SET_TYPE__TIME_STAMP = 0;
    public static final int IMPLEMENTATION_SET_TYPE__NOTES = 1;
    public static final int IMPLEMENTATION_SET_TYPE__CUSTOMER_DATA = 2;
    public static final int IMPLEMENTATION_SET_TYPE__CACHE_LOCKING = 3;
    public static final int IMPLEMENTATION_SET_TYPE__CHECKSUM = 4;
    public static final int IMPLEMENTATION_SET_TYPE__CLASS_CONFIG = 5;
    public static final int IMPLEMENTATION_SET_TYPE__DEFAULT = 6;
    public static final int IMPLEMENTATION_SET_TYPE__GENERATE_DATA_STRUCTURES = 7;
    public static final int IMPLEMENTATION_SET_TYPE__GENERATE_METHOD_BODY = 8;
    public static final int IMPLEMENTATION_SET_TYPE__HIERARCHICAL_GENERATION_FOR_SM = 9;
    public static final int IMPLEMENTATION_SET_TYPE__INLINE_PRIVATE_METHODS_SM = 10;
    public static final int IMPLEMENTATION_SET_TYPE__IS_SERVICE = 11;
    public static final int IMPLEMENTATION_SET_TYPE__MEMORY_LOCATION = 12;
    public static final int IMPLEMENTATION_SET_TYPE__NAME = 13;
    public static final int IMPLEMENTATION_SET_TYPE__OID = 14;
    public static final int IMPLEMENTATION_SET_TYPE__OPTIMIZE_METHOD_CALLS = 15;
    public static final int IMPLEMENTATION_SET_TYPE__OUTLINE_METHODS_SM = 16;
    public static final int IMPLEMENTATION_SET_TYPE__PACKAGE_NAME = 17;
    public static final int IMPLEMENTATION_SET_TYPE__USER_DEFINED_ORDER = 18;
    public static final int IMPLEMENTATION_SET_TYPE__USING_SERVICE_ROUTINES = 19;
    public static final int IMPLEMENTATION_SET_TYPE__UUID = 20;
    public static final int IMPLEMENTATION_SET_TYPE__IMPLEMENTATION_ENTRY = 21;
    public static final int IMPLEMENTATION_SET_TYPE_FEATURE_COUNT = 22;
    public static final int IMPLEMENTATION_SET_TYPE_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_VARIANT_T = 18;
    public static final int IMPLEMENTATION_VARIANT_T__ELEMENT_IMPLEMENTATION = 0;
    public static final int IMPLEMENTATION_VARIANT_T__METHOD_IMPLEMENTATION = 1;
    public static final int IMPLEMENTATION_VARIANT_T__NAME = 2;
    public static final int IMPLEMENTATION_VARIANT_T_FEATURE_COUNT = 3;
    public static final int IMPLEMENTATION_VARIANT_T_OPERATION_COUNT = 0;
    public static final int INTERVAL_T = 19;
    public static final int INTERVAL_T__MAX = 0;
    public static final int INTERVAL_T__MIN = 1;
    public static final int INTERVAL_T_FEATURE_COUNT = 2;
    public static final int INTERVAL_T_OPERATION_COUNT = 0;
    public static final int ITEM_REF_T = 20;
    public static final int ITEM_REF_T__NAME = 0;
    public static final int ITEM_REF_T__OID = 1;
    public static final int ITEM_REF_T_FEATURE_COUNT = 2;
    public static final int ITEM_REF_T_OPERATION_COUNT = 0;
    public static final int LOGIC_IMPLEMENTATION_T = 21;
    public static final int LOGIC_IMPLEMENTATION_T__ADDITIONAL_INFORMATION = 0;
    public static final int LOGIC_IMPLEMENTATION_T__CACHE_LOCKING = 1;
    public static final int LOGIC_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 2;
    public static final int LOGIC_IMPLEMENTATION_T__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int LOGIC_IMPLEMENTATION_T__NAME = 4;
    public static final int LOGIC_IMPLEMENTATION_T__POLICY = 5;
    public static final int LOGIC_IMPLEMENTATION_T__RESCALED = 6;
    public static final int LOGIC_IMPLEMENTATION_T__IMPL_TYPE = 7;
    public static final int LOGIC_IMPLEMENTATION_T__PHYS_TYPE = 8;
    public static final int LOGIC_IMPLEMENTATION_T_FEATURE_COUNT = 9;
    public static final int LOGIC_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int METHOD_IMPLEMENTATION_T = 22;
    public static final int METHOD_IMPLEMENTATION_T__CACHE_LOCKING = 0;
    public static final int METHOD_IMPLEMENTATION_T__INLINE = 1;
    public static final int METHOD_IMPLEMENTATION_T__MEMORY_LOCATION = 2;
    public static final int METHOD_IMPLEMENTATION_T__METHOD_NAME = 3;
    public static final int METHOD_IMPLEMENTATION_T__METHOD_OID = 4;
    public static final int METHOD_IMPLEMENTATION_T__SYMBOL = 5;
    public static final int METHOD_IMPLEMENTATION_T__USE_FPU = 6;
    public static final int METHOD_IMPLEMENTATION_T_FEATURE_COUNT = 7;
    public static final int METHOD_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int NOTES_T = 23;
    public static final int NOTES_T__NOTE = 0;
    public static final int NOTES_T_FEATURE_COUNT = 1;
    public static final int NOTES_T_OPERATION_COUNT = 0;
    public static final int NOTE_TYPE = 24;
    public static final int NOTE_TYPE__TEXT = 0;
    public static final int NOTE_TYPE__VIEW = 1;
    public static final int NOTE_TYPE__NAME = 2;
    public static final int NOTE_TYPE_FEATURE_COUNT = 3;
    public static final int NOTE_TYPE_OPERATION_COUNT = 0;
    public static final int ONE_DIMPLEMENTATION_TYPE = 27;
    public static final int ONE_DIMPLEMENTATION_TYPE__XAXIS = 0;
    public static final int ONE_DIMPLEMENTATION_TYPE__TABLE_VALUES = 1;
    public static final int ONE_DIMPLEMENTATION_TYPE__NAME = 2;
    public static final int ONE_DIMPLEMENTATION_TYPE_FEATURE_COUNT = 3;
    public static final int ONE_DIMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int OPTION_T = 28;
    public static final int OPTION_T__NAME = 0;
    public static final int OPTION_T__TYPE = 1;
    public static final int OPTION_T__VALUE = 2;
    public static final int OPTION_T_FEATURE_COUNT = 3;
    public static final int OPTION_T_OPERATION_COUNT = 0;
    public static final int POINT_T = 29;
    public static final int POINT_T__X = 0;
    public static final int POINT_T__Y = 1;
    public static final int POINT_T_FEATURE_COUNT = 2;
    public static final int POINT_T_OPERATION_COUNT = 0;
    public static final int RESOURCE_IMPLEMENTATION_T = 31;
    public static final int RESOURCE_IMPLEMENTATION_T__ADDITIONAL_INFORMATION = 0;
    public static final int RESOURCE_IMPLEMENTATION_T__CACHE_LOCKING = 1;
    public static final int RESOURCE_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 2;
    public static final int RESOURCE_IMPLEMENTATION_T__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int RESOURCE_IMPLEMENTATION_T__NAME = 4;
    public static final int RESOURCE_IMPLEMENTATION_T__POLICY = 5;
    public static final int RESOURCE_IMPLEMENTATION_T__RESCALED = 6;
    public static final int RESOURCE_IMPLEMENTATION_T_FEATURE_COUNT = 7;
    public static final int RESOURCE_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int RESOURCE_IMPLEMENTATION_TYPE = 32;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__ADDITIONAL_INFORMATION = 0;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__CACHE_LOCKING = 1;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__MEMORY_LOCATION_INSTANCE = 2;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__NAME = 4;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__POLICY = 5;
    public static final int RESOURCE_IMPLEMENTATION_TYPE__RESCALED = 6;
    public static final int RESOURCE_IMPLEMENTATION_TYPE_FEATURE_COUNT = 7;
    public static final int RESOURCE_IMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int SIZE_T = 34;
    public static final int SIZE_T__X = 0;
    public static final int SIZE_T__Y = 1;
    public static final int SIZE_T_FEATURE_COUNT = 2;
    public static final int SIZE_T_OPERATION_COUNT = 0;
    public static final int TEMPLATE_IMPLEMENTATION_T = 35;
    public static final int TEMPLATE_IMPLEMENTATION_T__ADDITIONAL_INFORMATION = 0;
    public static final int TEMPLATE_IMPLEMENTATION_T__CACHE_LOCKING = 1;
    public static final int TEMPLATE_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = 2;
    public static final int TEMPLATE_IMPLEMENTATION_T__MEMORY_LOCATION_SEARCH_RESULT = 3;
    public static final int TEMPLATE_IMPLEMENTATION_T__NAME = 4;
    public static final int TEMPLATE_IMPLEMENTATION_T__POLICY = 5;
    public static final int TEMPLATE_IMPLEMENTATION_T__RESCALED = 6;
    public static final int TEMPLATE_IMPLEMENTATION_T__IS_LIMIT_OVERFLOW = 7;
    public static final int TEMPLATE_IMPLEMENTATION_T__LIMIT_ASSIGNMENTS = 8;
    public static final int TEMPLATE_IMPLEMENTATION_T__LIMIT_OVERFLOW = 9;
    public static final int TEMPLATE_IMPLEMENTATION_T__IGNORE_IMPLEMENTATION_CAST = 10;
    public static final int TEMPLATE_IMPLEMENTATION_T__REFERS_TO = 11;
    public static final int TEMPLATE_IMPLEMENTATION_T_FEATURE_COUNT = 12;
    public static final int TEMPLATE_IMPLEMENTATION_T_OPERATION_COUNT = 0;
    public static final int TIME_STAMP_T = 36;
    public static final int TIME_STAMP_T__TIME_STAMP_COUNTER = 0;
    public static final int TIME_STAMP_T__TIME_STAMP_KEY = 1;
    public static final int TIME_STAMP_T__TIME_STAMP_VALUE = 2;
    public static final int TIME_STAMP_T_FEATURE_COUNT = 3;
    public static final int TIME_STAMP_T_OPERATION_COUNT = 0;
    public static final int TWO_DIMPLEMENTATION_TYPE = 37;
    public static final int TWO_DIMPLEMENTATION_TYPE__XAXIS = 0;
    public static final int TWO_DIMPLEMENTATION_TYPE__YAXIS = 1;
    public static final int TWO_DIMPLEMENTATION_TYPE__TABLE_VALUES = 2;
    public static final int TWO_DIMPLEMENTATION_TYPE__NAME = 3;
    public static final int TWO_DIMPLEMENTATION_TYPE_FEATURE_COUNT = 4;
    public static final int TWO_DIMPLEMENTATION_TYPE_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE = 38;
    public static final int VIEW_TYPE__NAME = 0;
    public static final int VIEW_TYPE_FEATURE_COUNT = 1;
    public static final int VIEW_TYPE_OPERATION_COUNT = 0;
    public static final int CACHE_LOCKING_TYPE = 39;
    public static final int LIMIT_OVERFLOW_TYPE = 40;
    public static final int MASTER_TYPE = 41;
    public static final int TYPE_TYPE = 42;
    public static final int CACHE_LOCKING_TYPE_OBJECT = 43;
    public static final int LIMIT_OVERFLOW_TYPE_OBJECT = 44;
    public static final int MASTER_TYPE_OBJECT = 45;
    public static final int NUMBER_OR_FRACTION = 46;
    public static final int NUMBER_OR_FRACTION_MEMBER1 = 47;
    public static final int NZQR = 48;
    public static final int NZQR_MEMBER2 = 49;
    public static final int OID = 50;
    public static final int TYPE_TYPE_OBJECT = 51;

    public EClass getColorT();

    public EAttribute getColorT_Blue();

    public EAttribute getColorT_Green();

    public EAttribute getColorT_Red();

    public EClass getComplexImplementationT();

    public EAttribute getComplexImplementationT_Checksum();

    public EAttribute getComplexImplementationT_ImplementationName();

    public EAttribute getComplexImplementationT_ImplementationOID();

    public EAttribute getComplexImplementationT_MemoryLocationInstance();

    public EAttribute getComplexImplementationT_Policy();

    public EAttribute getComplexImplementationT_RescalingFormula();

    public EClass getComplexReferenceImplementationT();

    public EAttribute getComplexReferenceImplementationT_CacheLocking();

    public EAttribute getComplexReferenceImplementationT_MemoryLocationReference();

    public EClass getComponentImplementationType();

    public EReference getComponentImplementationType_ImplementationSet();

    public EReference getComponentImplementationType_Signature();

    public EAttribute getComponentImplementationType_SchemaVersion();

    public EAttribute getComponentImplementationType_ToolVersion();

    public EClass getDimensionalImplementationT();

    public EReference getDimensionalImplementationT_OneDImplementation();

    public EReference getDimensionalImplementationT_TwoDImplementation();

    public EReference getDimensionalImplementationT_DistributionImplementation();

    public EReference getDimensionalImplementationT_ArrayImplementation();

    public EReference getDimensionalImplementationT_MatrixImplementation();

    public EClass getDimensionalReferenceImplementationT();

    public EAttribute getDimensionalReferenceImplementationT_MemoryLocationReference();

    public EClass getDistributionImplementationType();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_ComponentImplementation();

    public EClass getElementImplementationT();

    public EReference getElementImplementationT_ScalarImplementation();

    public EReference getElementImplementationT_DimensionalImplementation();

    public EReference getElementImplementationT_ComplexImplementation();

    public EReference getElementImplementationT_DimensionalReferenceImplementation();

    public EReference getElementImplementationT_ComplexReferenceImplementation();

    public EAttribute getElementImplementationT_AsReference();

    public EAttribute getElementImplementationT_ElementName();

    public EAttribute getElementImplementationT_ElementOID();

    public EAttribute getElementImplementationT_Index();

    public EAttribute getElementImplementationT_MethodName();

    public EClass getElementImplementationType();

    public EClass getFileReferenceT();

    public EAttribute getFileReferenceT_Value();

    public EAttribute getFileReferenceT_Checksum();

    public EAttribute getFileReferenceT_Type();

    public EClass getFormattedTextT();

    public EAttribute getFormattedTextT_Value();

    public EClass getGenericDataT();

    public EAttribute getGenericDataT_Any();

    public EAttribute getGenericDataT_Name();

    public EClass getIconT();

    public EReference getIconT_IconFile();

    public EReference getIconT_Size();

    public EAttribute getIconT_IconName();

    public EAttribute getIconT_IconOID();

    public EClass getImplementationCastImplementationType();

    public EAttribute getImplementationCastImplementationType_IgnoreImplementationCast();

    public EClass getImplementationEntryT();

    public EReference getImplementationEntryT_ImplementationVariant();

    public EReference getImplementationEntryT_CustomerData();

    public EAttribute getImplementationEntryT_Ignore();

    public EClass getImplementationSetT();

    public EReference getImplementationSetT_TimeStamp();

    public EReference getImplementationSetT_Notes();

    public EReference getImplementationSetT_CustomerData();

    public EAttribute getImplementationSetT_CacheLocking();

    public EAttribute getImplementationSetT_Checksum();

    public EAttribute getImplementationSetT_ClassConfig();

    public EAttribute getImplementationSetT_Default();

    public EAttribute getImplementationSetT_GenerateDataStructures();

    public EAttribute getImplementationSetT_GenerateMethodBody();

    public EAttribute getImplementationSetT_HierarchicalGenerationForSM();

    public EAttribute getImplementationSetT_InlinePrivateMethodsSM();

    public EAttribute getImplementationSetT_IsService();

    public EAttribute getImplementationSetT_MemoryLocation();

    public EAttribute getImplementationSetT_Name();

    public EAttribute getImplementationSetT_OID();

    public EAttribute getImplementationSetT_OptimizeMethodCalls();

    public EAttribute getImplementationSetT_OutlineMethodsSM();

    public EAttribute getImplementationSetT_PackageName();

    public EAttribute getImplementationSetT_UserDefinedOrder();

    public EAttribute getImplementationSetT_UsingServiceRoutines();

    public EAttribute getImplementationSetT_UUID();

    public EClass getImplementationSetType();

    public EReference getImplementationSetType_ImplementationEntry();

    public EClass getImplementationVariantT();

    public EReference getImplementationVariantT_ElementImplementation();

    public EReference getImplementationVariantT_MethodImplementation();

    public EAttribute getImplementationVariantT_Name();

    public EClass getIntervalT();

    public EAttribute getIntervalT_Max();

    public EAttribute getIntervalT_Min();

    public EClass getItemRefT();

    public EAttribute getItemRefT_Name();

    public EAttribute getItemRefT_OID();

    public EClass getLogicImplementationT();

    public EAttribute getLogicImplementationT_ImplType();

    public EAttribute getLogicImplementationT_PhysType();

    public EClass getMethodImplementationT();

    public EAttribute getMethodImplementationT_CacheLocking();

    public EAttribute getMethodImplementationT_Inline();

    public EAttribute getMethodImplementationT_MemoryLocation();

    public EAttribute getMethodImplementationT_MethodName();

    public EAttribute getMethodImplementationT_MethodOID();

    public EAttribute getMethodImplementationT_Symbol();

    public EAttribute getMethodImplementationT_UseFPU();

    public EClass getNotesT();

    public EReference getNotesT_Note();

    public EClass getNoteType();

    public EReference getNoteType_Text();

    public EReference getNoteType_View();

    public EAttribute getNoteType_Name();

    public EClass getNumericImplementationBaseT();

    public EAttribute getNumericImplementationBaseT_IsLimitOverflow();

    public EAttribute getNumericImplementationBaseT_LimitAssignments();

    public EAttribute getNumericImplementationBaseT_LimitOverflow();

    public EClass getNumericImplementationT();

    public EReference getNumericImplementationT_PhysicalInterval();

    public EReference getNumericImplementationT_ImplementationInterval();

    public EAttribute getNumericImplementationT_Formula();

    public EAttribute getNumericImplementationT_ImplType();

    public EAttribute getNumericImplementationT_Master();

    public EAttribute getNumericImplementationT_PhysType();

    public EAttribute getNumericImplementationT_Quantization();

    public EAttribute getNumericImplementationT_ZeroNotIncluded();

    public EClass getOneDImplementationType();

    public EReference getOneDImplementationType_XAxis();

    public EReference getOneDImplementationType_TableValues();

    public EAttribute getOneDImplementationType_Name();

    public EClass getOptionT();

    public EAttribute getOptionT_Name();

    public EAttribute getOptionT_Type();

    public EAttribute getOptionT_Value();

    public EClass getPointT();

    public EAttribute getPointT_X();

    public EAttribute getPointT_Y();

    public EClass getPrimitiveImplementationT();

    public EAttribute getPrimitiveImplementationT_AdditionalInformation();

    public EAttribute getPrimitiveImplementationT_CacheLocking();

    public EAttribute getPrimitiveImplementationT_MemoryLocationInstance();

    public EAttribute getPrimitiveImplementationT_MemoryLocationSearchResult();

    public EAttribute getPrimitiveImplementationT_Name();

    public EAttribute getPrimitiveImplementationT_Policy();

    public EAttribute getPrimitiveImplementationT_Rescaled();

    public EClass getResourceImplementationT();

    public EClass getResourceImplementationType();

    public EClass getScalarImplementationT();

    public EReference getScalarImplementationT_EnumerationImplementation();

    public EReference getScalarImplementationT_NumericImplementation();

    public EReference getScalarImplementationT_LogicImplementation();

    public EReference getScalarImplementationT_TemplateImplementation();

    public EReference getScalarImplementationT_ResourceImplementation();

    public EReference getScalarImplementationT_ImplementationCastImplementation();

    public EClass getSizeT();

    public EAttribute getSizeT_X();

    public EAttribute getSizeT_Y();

    public EClass getTemplateImplementationT();

    public EAttribute getTemplateImplementationT_IgnoreImplementationCast();

    public EAttribute getTemplateImplementationT_RefersTo();

    public EClass getTimeStampT();

    public EAttribute getTimeStampT_TimeStampCounter();

    public EAttribute getTimeStampT_TimeStampKey();

    public EAttribute getTimeStampT_TimeStampValue();

    public EClass getTwoDImplementationType();

    public EReference getTwoDImplementationType_XAxis();

    public EReference getTwoDImplementationType_YAxis();

    public EReference getTwoDImplementationType_TableValues();

    public EAttribute getTwoDImplementationType_Name();

    public EClass getViewType();

    public EAttribute getViewType_Name();

    public EEnum getCacheLockingType();

    public EEnum getLimitOverflowType();

    public EEnum getMasterType();

    public EEnum getTypeType();

    public EDataType getCacheLockingTypeObject();

    public EDataType getLimitOverflowTypeObject();

    public EDataType getMasterTypeObject();

    public EDataType getNumberOrFraction();

    public EDataType getNumberOrFractionMember1();

    public EDataType getNzqr();

    public EDataType getNzqrMember2();

    public EDataType getOID();

    public EDataType getTypeTypeObject();

    public ComponentImplementationFactory getComponentImplementationFactory();

    public static interface Literals {
        public static final EClass COLOR_T = eINSTANCE.getColorT();
        public static final EAttribute COLOR_T__BLUE = eINSTANCE.getColorT_Blue();
        public static final EAttribute COLOR_T__GREEN = eINSTANCE.getColorT_Green();
        public static final EAttribute COLOR_T__RED = eINSTANCE.getColorT_Red();
        public static final EClass COMPLEX_IMPLEMENTATION_T = eINSTANCE.getComplexImplementationT();
        public static final EAttribute COMPLEX_IMPLEMENTATION_T__CHECKSUM = eINSTANCE.getComplexImplementationT_Checksum();
        public static final EAttribute COMPLEX_IMPLEMENTATION_T__IMPLEMENTATION_NAME = eINSTANCE.getComplexImplementationT_ImplementationName();
        public static final EAttribute COMPLEX_IMPLEMENTATION_T__IMPLEMENTATION_OID = eINSTANCE.getComplexImplementationT_ImplementationOID();
        public static final EAttribute COMPLEX_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = eINSTANCE.getComplexImplementationT_MemoryLocationInstance();
        public static final EAttribute COMPLEX_IMPLEMENTATION_T__POLICY = eINSTANCE.getComplexImplementationT_Policy();
        public static final EAttribute COMPLEX_IMPLEMENTATION_T__RESCALING_FORMULA = eINSTANCE.getComplexImplementationT_RescalingFormula();
        public static final EClass COMPLEX_REFERENCE_IMPLEMENTATION_T = eINSTANCE.getComplexReferenceImplementationT();
        public static final EAttribute COMPLEX_REFERENCE_IMPLEMENTATION_T__CACHE_LOCKING = eINSTANCE.getComplexReferenceImplementationT_CacheLocking();
        public static final EAttribute COMPLEX_REFERENCE_IMPLEMENTATION_T__MEMORY_LOCATION_REFERENCE = eINSTANCE.getComplexReferenceImplementationT_MemoryLocationReference();
        public static final EClass COMPONENT_IMPLEMENTATION_TYPE = eINSTANCE.getComponentImplementationType();
        public static final EReference COMPONENT_IMPLEMENTATION_TYPE__IMPLEMENTATION_SET = eINSTANCE.getComponentImplementationType_ImplementationSet();
        public static final EReference COMPONENT_IMPLEMENTATION_TYPE__SIGNATURE = eINSTANCE.getComponentImplementationType_Signature();
        public static final EAttribute COMPONENT_IMPLEMENTATION_TYPE__SCHEMA_VERSION = eINSTANCE.getComponentImplementationType_SchemaVersion();
        public static final EAttribute COMPONENT_IMPLEMENTATION_TYPE__TOOL_VERSION = eINSTANCE.getComponentImplementationType_ToolVersion();
        public static final EClass DIMENSIONAL_IMPLEMENTATION_T = eINSTANCE.getDimensionalImplementationT();
        public static final EReference DIMENSIONAL_IMPLEMENTATION_T__ONE_DIMPLEMENTATION = eINSTANCE.getDimensionalImplementationT_OneDImplementation();
        public static final EReference DIMENSIONAL_IMPLEMENTATION_T__TWO_DIMPLEMENTATION = eINSTANCE.getDimensionalImplementationT_TwoDImplementation();
        public static final EReference DIMENSIONAL_IMPLEMENTATION_T__DISTRIBUTION_IMPLEMENTATION = eINSTANCE.getDimensionalImplementationT_DistributionImplementation();
        public static final EReference DIMENSIONAL_IMPLEMENTATION_T__ARRAY_IMPLEMENTATION = eINSTANCE.getDimensionalImplementationT_ArrayImplementation();
        public static final EReference DIMENSIONAL_IMPLEMENTATION_T__MATRIX_IMPLEMENTATION = eINSTANCE.getDimensionalImplementationT_MatrixImplementation();
        public static final EClass DIMENSIONAL_REFERENCE_IMPLEMENTATION_T = eINSTANCE.getDimensionalReferenceImplementationT();
        public static final EAttribute DIMENSIONAL_REFERENCE_IMPLEMENTATION_T__MEMORY_LOCATION_REFERENCE = eINSTANCE.getDimensionalReferenceImplementationT_MemoryLocationReference();
        public static final EClass DISTRIBUTION_IMPLEMENTATION_TYPE = eINSTANCE.getDistributionImplementationType();
        public static final EClass DOCUMENT_ROOT = eINSTANCE.getDocumentRoot();
        public static final EAttribute DOCUMENT_ROOT__MIXED = eINSTANCE.getDocumentRoot_Mixed();
        public static final EReference DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getDocumentRoot_XMLNSPrefixMap();
        public static final EReference DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getDocumentRoot_XSISchemaLocation();
        public static final EReference DOCUMENT_ROOT__COMPONENT_IMPLEMENTATION = eINSTANCE.getDocumentRoot_ComponentImplementation();
        public static final EClass ELEMENT_IMPLEMENTATION_T = eINSTANCE.getElementImplementationT();
        public static final EReference ELEMENT_IMPLEMENTATION_T__SCALAR_IMPLEMENTATION = eINSTANCE.getElementImplementationT_ScalarImplementation();
        public static final EReference ELEMENT_IMPLEMENTATION_T__DIMENSIONAL_IMPLEMENTATION = eINSTANCE.getElementImplementationT_DimensionalImplementation();
        public static final EReference ELEMENT_IMPLEMENTATION_T__COMPLEX_IMPLEMENTATION = eINSTANCE.getElementImplementationT_ComplexImplementation();
        public static final EReference ELEMENT_IMPLEMENTATION_T__DIMENSIONAL_REFERENCE_IMPLEMENTATION = eINSTANCE.getElementImplementationT_DimensionalReferenceImplementation();
        public static final EReference ELEMENT_IMPLEMENTATION_T__COMPLEX_REFERENCE_IMPLEMENTATION = eINSTANCE.getElementImplementationT_ComplexReferenceImplementation();
        public static final EAttribute ELEMENT_IMPLEMENTATION_T__AS_REFERENCE = eINSTANCE.getElementImplementationT_AsReference();
        public static final EAttribute ELEMENT_IMPLEMENTATION_T__ELEMENT_NAME = eINSTANCE.getElementImplementationT_ElementName();
        public static final EAttribute ELEMENT_IMPLEMENTATION_T__ELEMENT_OID = eINSTANCE.getElementImplementationT_ElementOID();
        public static final EAttribute ELEMENT_IMPLEMENTATION_T__INDEX = eINSTANCE.getElementImplementationT_Index();
        public static final EAttribute ELEMENT_IMPLEMENTATION_T__METHOD_NAME = eINSTANCE.getElementImplementationT_MethodName();
        public static final EClass ELEMENT_IMPLEMENTATION_TYPE = eINSTANCE.getElementImplementationType();
        public static final EClass FILE_REFERENCE_T = eINSTANCE.getFileReferenceT();
        public static final EAttribute FILE_REFERENCE_T__VALUE = eINSTANCE.getFileReferenceT_Value();
        public static final EAttribute FILE_REFERENCE_T__CHECKSUM = eINSTANCE.getFileReferenceT_Checksum();
        public static final EAttribute FILE_REFERENCE_T__TYPE = eINSTANCE.getFileReferenceT_Type();
        public static final EClass FORMATTED_TEXT_T = eINSTANCE.getFormattedTextT();
        public static final EAttribute FORMATTED_TEXT_T__VALUE = eINSTANCE.getFormattedTextT_Value();
        public static final EClass GENERIC_DATA_T = eINSTANCE.getGenericDataT();
        public static final EAttribute GENERIC_DATA_T__ANY = eINSTANCE.getGenericDataT_Any();
        public static final EAttribute GENERIC_DATA_T__NAME = eINSTANCE.getGenericDataT_Name();
        public static final EClass ICON_T = eINSTANCE.getIconT();
        public static final EReference ICON_T__ICON_FILE = eINSTANCE.getIconT_IconFile();
        public static final EReference ICON_T__SIZE = eINSTANCE.getIconT_Size();
        public static final EAttribute ICON_T__ICON_NAME = eINSTANCE.getIconT_IconName();
        public static final EAttribute ICON_T__ICON_OID = eINSTANCE.getIconT_IconOID();
        public static final EClass IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE = eINSTANCE.getImplementationCastImplementationType();
        public static final EAttribute IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE__IGNORE_IMPLEMENTATION_CAST = eINSTANCE.getImplementationCastImplementationType_IgnoreImplementationCast();
        public static final EClass IMPLEMENTATION_ENTRY_T = eINSTANCE.getImplementationEntryT();
        public static final EReference IMPLEMENTATION_ENTRY_T__IMPLEMENTATION_VARIANT = eINSTANCE.getImplementationEntryT_ImplementationVariant();
        public static final EReference IMPLEMENTATION_ENTRY_T__CUSTOMER_DATA = eINSTANCE.getImplementationEntryT_CustomerData();
        public static final EAttribute IMPLEMENTATION_ENTRY_T__IGNORE = eINSTANCE.getImplementationEntryT_Ignore();
        public static final EClass IMPLEMENTATION_SET_T = eINSTANCE.getImplementationSetT();
        public static final EReference IMPLEMENTATION_SET_T__TIME_STAMP = eINSTANCE.getImplementationSetT_TimeStamp();
        public static final EReference IMPLEMENTATION_SET_T__NOTES = eINSTANCE.getImplementationSetT_Notes();
        public static final EReference IMPLEMENTATION_SET_T__CUSTOMER_DATA = eINSTANCE.getImplementationSetT_CustomerData();
        public static final EAttribute IMPLEMENTATION_SET_T__CACHE_LOCKING = eINSTANCE.getImplementationSetT_CacheLocking();
        public static final EAttribute IMPLEMENTATION_SET_T__CHECKSUM = eINSTANCE.getImplementationSetT_Checksum();
        public static final EAttribute IMPLEMENTATION_SET_T__CLASS_CONFIG = eINSTANCE.getImplementationSetT_ClassConfig();
        public static final EAttribute IMPLEMENTATION_SET_T__DEFAULT = eINSTANCE.getImplementationSetT_Default();
        public static final EAttribute IMPLEMENTATION_SET_T__GENERATE_DATA_STRUCTURES = eINSTANCE.getImplementationSetT_GenerateDataStructures();
        public static final EAttribute IMPLEMENTATION_SET_T__GENERATE_METHOD_BODY = eINSTANCE.getImplementationSetT_GenerateMethodBody();
        public static final EAttribute IMPLEMENTATION_SET_T__HIERARCHICAL_GENERATION_FOR_SM = eINSTANCE.getImplementationSetT_HierarchicalGenerationForSM();
        public static final EAttribute IMPLEMENTATION_SET_T__INLINE_PRIVATE_METHODS_SM = eINSTANCE.getImplementationSetT_InlinePrivateMethodsSM();
        public static final EAttribute IMPLEMENTATION_SET_T__IS_SERVICE = eINSTANCE.getImplementationSetT_IsService();
        public static final EAttribute IMPLEMENTATION_SET_T__MEMORY_LOCATION = eINSTANCE.getImplementationSetT_MemoryLocation();
        public static final EAttribute IMPLEMENTATION_SET_T__NAME = eINSTANCE.getImplementationSetT_Name();
        public static final EAttribute IMPLEMENTATION_SET_T__OID = eINSTANCE.getImplementationSetT_OID();
        public static final EAttribute IMPLEMENTATION_SET_T__OPTIMIZE_METHOD_CALLS = eINSTANCE.getImplementationSetT_OptimizeMethodCalls();
        public static final EAttribute IMPLEMENTATION_SET_T__OUTLINE_METHODS_SM = eINSTANCE.getImplementationSetT_OutlineMethodsSM();
        public static final EAttribute IMPLEMENTATION_SET_T__PACKAGE_NAME = eINSTANCE.getImplementationSetT_PackageName();
        public static final EAttribute IMPLEMENTATION_SET_T__USER_DEFINED_ORDER = eINSTANCE.getImplementationSetT_UserDefinedOrder();
        public static final EAttribute IMPLEMENTATION_SET_T__USING_SERVICE_ROUTINES = eINSTANCE.getImplementationSetT_UsingServiceRoutines();
        public static final EAttribute IMPLEMENTATION_SET_T__UUID = eINSTANCE.getImplementationSetT_UUID();
        public static final EClass IMPLEMENTATION_SET_TYPE = eINSTANCE.getImplementationSetType();
        public static final EReference IMPLEMENTATION_SET_TYPE__IMPLEMENTATION_ENTRY = eINSTANCE.getImplementationSetType_ImplementationEntry();
        public static final EClass IMPLEMENTATION_VARIANT_T = eINSTANCE.getImplementationVariantT();
        public static final EReference IMPLEMENTATION_VARIANT_T__ELEMENT_IMPLEMENTATION = eINSTANCE.getImplementationVariantT_ElementImplementation();
        public static final EReference IMPLEMENTATION_VARIANT_T__METHOD_IMPLEMENTATION = eINSTANCE.getImplementationVariantT_MethodImplementation();
        public static final EAttribute IMPLEMENTATION_VARIANT_T__NAME = eINSTANCE.getImplementationVariantT_Name();
        public static final EClass INTERVAL_T = eINSTANCE.getIntervalT();
        public static final EAttribute INTERVAL_T__MAX = eINSTANCE.getIntervalT_Max();
        public static final EAttribute INTERVAL_T__MIN = eINSTANCE.getIntervalT_Min();
        public static final EClass ITEM_REF_T = eINSTANCE.getItemRefT();
        public static final EAttribute ITEM_REF_T__NAME = eINSTANCE.getItemRefT_Name();
        public static final EAttribute ITEM_REF_T__OID = eINSTANCE.getItemRefT_OID();
        public static final EClass LOGIC_IMPLEMENTATION_T = eINSTANCE.getLogicImplementationT();
        public static final EAttribute LOGIC_IMPLEMENTATION_T__IMPL_TYPE = eINSTANCE.getLogicImplementationT_ImplType();
        public static final EAttribute LOGIC_IMPLEMENTATION_T__PHYS_TYPE = eINSTANCE.getLogicImplementationT_PhysType();
        public static final EClass METHOD_IMPLEMENTATION_T = eINSTANCE.getMethodImplementationT();
        public static final EAttribute METHOD_IMPLEMENTATION_T__CACHE_LOCKING = eINSTANCE.getMethodImplementationT_CacheLocking();
        public static final EAttribute METHOD_IMPLEMENTATION_T__INLINE = eINSTANCE.getMethodImplementationT_Inline();
        public static final EAttribute METHOD_IMPLEMENTATION_T__MEMORY_LOCATION = eINSTANCE.getMethodImplementationT_MemoryLocation();
        public static final EAttribute METHOD_IMPLEMENTATION_T__METHOD_NAME = eINSTANCE.getMethodImplementationT_MethodName();
        public static final EAttribute METHOD_IMPLEMENTATION_T__METHOD_OID = eINSTANCE.getMethodImplementationT_MethodOID();
        public static final EAttribute METHOD_IMPLEMENTATION_T__SYMBOL = eINSTANCE.getMethodImplementationT_Symbol();
        public static final EAttribute METHOD_IMPLEMENTATION_T__USE_FPU = eINSTANCE.getMethodImplementationT_UseFPU();
        public static final EClass NOTES_T = eINSTANCE.getNotesT();
        public static final EReference NOTES_T__NOTE = eINSTANCE.getNotesT_Note();
        public static final EClass NOTE_TYPE = eINSTANCE.getNoteType();
        public static final EReference NOTE_TYPE__TEXT = eINSTANCE.getNoteType_Text();
        public static final EReference NOTE_TYPE__VIEW = eINSTANCE.getNoteType_View();
        public static final EAttribute NOTE_TYPE__NAME = eINSTANCE.getNoteType_Name();
        public static final EClass NUMERIC_IMPLEMENTATION_BASE_T = eINSTANCE.getNumericImplementationBaseT();
        public static final EAttribute NUMERIC_IMPLEMENTATION_BASE_T__IS_LIMIT_OVERFLOW = eINSTANCE.getNumericImplementationBaseT_IsLimitOverflow();
        public static final EAttribute NUMERIC_IMPLEMENTATION_BASE_T__LIMIT_ASSIGNMENTS = eINSTANCE.getNumericImplementationBaseT_LimitAssignments();
        public static final EAttribute NUMERIC_IMPLEMENTATION_BASE_T__LIMIT_OVERFLOW = eINSTANCE.getNumericImplementationBaseT_LimitOverflow();
        public static final EClass NUMERIC_IMPLEMENTATION_T = eINSTANCE.getNumericImplementationT();
        public static final EReference NUMERIC_IMPLEMENTATION_T__PHYSICAL_INTERVAL = eINSTANCE.getNumericImplementationT_PhysicalInterval();
        public static final EReference NUMERIC_IMPLEMENTATION_T__IMPLEMENTATION_INTERVAL = eINSTANCE.getNumericImplementationT_ImplementationInterval();
        public static final EAttribute NUMERIC_IMPLEMENTATION_T__FORMULA = eINSTANCE.getNumericImplementationT_Formula();
        public static final EAttribute NUMERIC_IMPLEMENTATION_T__IMPL_TYPE = eINSTANCE.getNumericImplementationT_ImplType();
        public static final EAttribute NUMERIC_IMPLEMENTATION_T__MASTER = eINSTANCE.getNumericImplementationT_Master();
        public static final EAttribute NUMERIC_IMPLEMENTATION_T__PHYS_TYPE = eINSTANCE.getNumericImplementationT_PhysType();
        public static final EAttribute NUMERIC_IMPLEMENTATION_T__QUANTIZATION = eINSTANCE.getNumericImplementationT_Quantization();
        public static final EAttribute NUMERIC_IMPLEMENTATION_T__ZERO_NOT_INCLUDED = eINSTANCE.getNumericImplementationT_ZeroNotIncluded();
        public static final EClass ONE_DIMPLEMENTATION_TYPE = eINSTANCE.getOneDImplementationType();
        public static final EReference ONE_DIMPLEMENTATION_TYPE__XAXIS = eINSTANCE.getOneDImplementationType_XAxis();
        public static final EReference ONE_DIMPLEMENTATION_TYPE__TABLE_VALUES = eINSTANCE.getOneDImplementationType_TableValues();
        public static final EAttribute ONE_DIMPLEMENTATION_TYPE__NAME = eINSTANCE.getOneDImplementationType_Name();
        public static final EClass OPTION_T = eINSTANCE.getOptionT();
        public static final EAttribute OPTION_T__NAME = eINSTANCE.getOptionT_Name();
        public static final EAttribute OPTION_T__TYPE = eINSTANCE.getOptionT_Type();
        public static final EAttribute OPTION_T__VALUE = eINSTANCE.getOptionT_Value();
        public static final EClass POINT_T = eINSTANCE.getPointT();
        public static final EAttribute POINT_T__X = eINSTANCE.getPointT_X();
        public static final EAttribute POINT_T__Y = eINSTANCE.getPointT_Y();
        public static final EClass PRIMITIVE_IMPLEMENTATION_T = eINSTANCE.getPrimitiveImplementationT();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__ADDITIONAL_INFORMATION = eINSTANCE.getPrimitiveImplementationT_AdditionalInformation();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__CACHE_LOCKING = eINSTANCE.getPrimitiveImplementationT_CacheLocking();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__MEMORY_LOCATION_INSTANCE = eINSTANCE.getPrimitiveImplementationT_MemoryLocationInstance();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__MEMORY_LOCATION_SEARCH_RESULT = eINSTANCE.getPrimitiveImplementationT_MemoryLocationSearchResult();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__NAME = eINSTANCE.getPrimitiveImplementationT_Name();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__POLICY = eINSTANCE.getPrimitiveImplementationT_Policy();
        public static final EAttribute PRIMITIVE_IMPLEMENTATION_T__RESCALED = eINSTANCE.getPrimitiveImplementationT_Rescaled();
        public static final EClass RESOURCE_IMPLEMENTATION_T = eINSTANCE.getResourceImplementationT();
        public static final EClass RESOURCE_IMPLEMENTATION_TYPE = eINSTANCE.getResourceImplementationType();
        public static final EClass SCALAR_IMPLEMENTATION_T = eINSTANCE.getScalarImplementationT();
        public static final EReference SCALAR_IMPLEMENTATION_T__ENUMERATION_IMPLEMENTATION = eINSTANCE.getScalarImplementationT_EnumerationImplementation();
        public static final EReference SCALAR_IMPLEMENTATION_T__NUMERIC_IMPLEMENTATION = eINSTANCE.getScalarImplementationT_NumericImplementation();
        public static final EReference SCALAR_IMPLEMENTATION_T__LOGIC_IMPLEMENTATION = eINSTANCE.getScalarImplementationT_LogicImplementation();
        public static final EReference SCALAR_IMPLEMENTATION_T__TEMPLATE_IMPLEMENTATION = eINSTANCE.getScalarImplementationT_TemplateImplementation();
        public static final EReference SCALAR_IMPLEMENTATION_T__RESOURCE_IMPLEMENTATION = eINSTANCE.getScalarImplementationT_ResourceImplementation();
        public static final EReference SCALAR_IMPLEMENTATION_T__IMPLEMENTATION_CAST_IMPLEMENTATION = eINSTANCE.getScalarImplementationT_ImplementationCastImplementation();
        public static final EClass SIZE_T = eINSTANCE.getSizeT();
        public static final EAttribute SIZE_T__X = eINSTANCE.getSizeT_X();
        public static final EAttribute SIZE_T__Y = eINSTANCE.getSizeT_Y();
        public static final EClass TEMPLATE_IMPLEMENTATION_T = eINSTANCE.getTemplateImplementationT();
        public static final EAttribute TEMPLATE_IMPLEMENTATION_T__IGNORE_IMPLEMENTATION_CAST = eINSTANCE.getTemplateImplementationT_IgnoreImplementationCast();
        public static final EAttribute TEMPLATE_IMPLEMENTATION_T__REFERS_TO = eINSTANCE.getTemplateImplementationT_RefersTo();
        public static final EClass TIME_STAMP_T = eINSTANCE.getTimeStampT();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_COUNTER = eINSTANCE.getTimeStampT_TimeStampCounter();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_KEY = eINSTANCE.getTimeStampT_TimeStampKey();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_VALUE = eINSTANCE.getTimeStampT_TimeStampValue();
        public static final EClass TWO_DIMPLEMENTATION_TYPE = eINSTANCE.getTwoDImplementationType();
        public static final EReference TWO_DIMPLEMENTATION_TYPE__XAXIS = eINSTANCE.getTwoDImplementationType_XAxis();
        public static final EReference TWO_DIMPLEMENTATION_TYPE__YAXIS = eINSTANCE.getTwoDImplementationType_YAxis();
        public static final EReference TWO_DIMPLEMENTATION_TYPE__TABLE_VALUES = eINSTANCE.getTwoDImplementationType_TableValues();
        public static final EAttribute TWO_DIMPLEMENTATION_TYPE__NAME = eINSTANCE.getTwoDImplementationType_Name();
        public static final EClass VIEW_TYPE = eINSTANCE.getViewType();
        public static final EAttribute VIEW_TYPE__NAME = eINSTANCE.getViewType_Name();
        public static final EEnum CACHE_LOCKING_TYPE = eINSTANCE.getCacheLockingType();
        public static final EEnum LIMIT_OVERFLOW_TYPE = eINSTANCE.getLimitOverflowType();
        public static final EEnum MASTER_TYPE = eINSTANCE.getMasterType();
        public static final EEnum TYPE_TYPE = eINSTANCE.getTypeType();
        public static final EDataType CACHE_LOCKING_TYPE_OBJECT = eINSTANCE.getCacheLockingTypeObject();
        public static final EDataType LIMIT_OVERFLOW_TYPE_OBJECT = eINSTANCE.getLimitOverflowTypeObject();
        public static final EDataType MASTER_TYPE_OBJECT = eINSTANCE.getMasterTypeObject();
        public static final EDataType NUMBER_OR_FRACTION = eINSTANCE.getNumberOrFraction();
        public static final EDataType NUMBER_OR_FRACTION_MEMBER1 = eINSTANCE.getNumberOrFractionMember1();
        public static final EDataType NZQR = eINSTANCE.getNzqr();
        public static final EDataType NZQR_MEMBER2 = eINSTANCE.getNzqrMember2();
        public static final EDataType OID = eINSTANCE.getOID();
        public static final EDataType TYPE_TYPE_OBJECT = eINSTANCE.getTypeTypeObject();
    }
}

