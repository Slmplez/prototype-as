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
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucparameterdefFactory;
import autosar40.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcucparameterdefPackage
extends EPackage {
    public static final String eNAME = "ecucparameterdef";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/ecucpd";
    public static final String eNS_PREFIX = "";
    public static final EcucparameterdefPackage eINSTANCE = EcucparameterdefPackageImpl.init();
    public static final int ECUC_DEFINITION_ELEMENT = 3;
    public static final int ECUC_DEFINITION_ELEMENT__GCHECKSUM = 0;
    public static final int ECUC_DEFINITION_ELEMENT__GTIMESTAMP = 1;
    public static final int ECUC_DEFINITION_ELEMENT__CHECKSUM = 2;
    public static final int ECUC_DEFINITION_ELEMENT__TIMESTAMP = 3;
    public static final int ECUC_DEFINITION_ELEMENT__GSHORT_NAME = 4;
    public static final int ECUC_DEFINITION_ELEMENT__SHORT_NAME = 5;
    public static final int ECUC_DEFINITION_ELEMENT__LONG_NAME = 6;
    public static final int ECUC_DEFINITION_ELEMENT__GUUID = 7;
    public static final int ECUC_DEFINITION_ELEMENT__GCATEGORY = 8;
    public static final int ECUC_DEFINITION_ELEMENT__GDESC = 9;
    public static final int ECUC_DEFINITION_ELEMENT__DESC = 10;
    public static final int ECUC_DEFINITION_ELEMENT__CATEGORY = 11;
    public static final int ECUC_DEFINITION_ELEMENT__ADMIN_DATA = 12;
    public static final int ECUC_DEFINITION_ELEMENT__INTRODUCTION = 13;
    public static final int ECUC_DEFINITION_ELEMENT__ANNOTATIONS = 14;
    public static final int ECUC_DEFINITION_ELEMENT__UUID = 15;
    public static final int ECUC_DEFINITION_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int ECUC_DEFINITION_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_DEFINITION_ELEMENT__ECUC_COND = 18;
    public static final int ECUC_DEFINITION_ELEMENT__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_DEFINITION_ELEMENT__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_DEFINITION_ELEMENT__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_DEFINITION_ELEMENT_FEATURE_COUNT = 22;
    public static final int ECUC_COMMON_ATTRIBUTES = 2;
    public static final int ECUC_COMMON_ATTRIBUTES__GCHECKSUM = 0;
    public static final int ECUC_COMMON_ATTRIBUTES__GTIMESTAMP = 1;
    public static final int ECUC_COMMON_ATTRIBUTES__CHECKSUM = 2;
    public static final int ECUC_COMMON_ATTRIBUTES__TIMESTAMP = 3;
    public static final int ECUC_COMMON_ATTRIBUTES__GSHORT_NAME = 4;
    public static final int ECUC_COMMON_ATTRIBUTES__SHORT_NAME = 5;
    public static final int ECUC_COMMON_ATTRIBUTES__LONG_NAME = 6;
    public static final int ECUC_COMMON_ATTRIBUTES__GUUID = 7;
    public static final int ECUC_COMMON_ATTRIBUTES__GCATEGORY = 8;
    public static final int ECUC_COMMON_ATTRIBUTES__GDESC = 9;
    public static final int ECUC_COMMON_ATTRIBUTES__DESC = 10;
    public static final int ECUC_COMMON_ATTRIBUTES__CATEGORY = 11;
    public static final int ECUC_COMMON_ATTRIBUTES__ADMIN_DATA = 12;
    public static final int ECUC_COMMON_ATTRIBUTES__INTRODUCTION = 13;
    public static final int ECUC_COMMON_ATTRIBUTES__ANNOTATIONS = 14;
    public static final int ECUC_COMMON_ATTRIBUTES__UUID = 15;
    public static final int ECUC_COMMON_ATTRIBUTES__ALL_EXTENSIONS = 16;
    public static final int ECUC_COMMON_ATTRIBUTES__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_COMMON_ATTRIBUTES__ECUC_COND = 18;
    public static final int ECUC_COMMON_ATTRIBUTES__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_COMMON_ATTRIBUTES__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_COMMON_ATTRIBUTES__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_COMMON_ATTRIBUTES__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_COMMON_ATTRIBUTES__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_COMMON_ATTRIBUTES__ORIGIN = 24;
    public static final int ECUC_COMMON_ATTRIBUTES__REQUIRES_INDEX = 25;
    public static final int ECUC_COMMON_ATTRIBUTES_FEATURE_COUNT = 26;
    public static final int ECUC_PARAMETER_DEF = 1;
    public static final int ECUC_PARAMETER_DEF__GCHECKSUM = 0;
    public static final int ECUC_PARAMETER_DEF__GTIMESTAMP = 1;
    public static final int ECUC_PARAMETER_DEF__CHECKSUM = 2;
    public static final int ECUC_PARAMETER_DEF__TIMESTAMP = 3;
    public static final int ECUC_PARAMETER_DEF__GSHORT_NAME = 4;
    public static final int ECUC_PARAMETER_DEF__SHORT_NAME = 5;
    public static final int ECUC_PARAMETER_DEF__LONG_NAME = 6;
    public static final int ECUC_PARAMETER_DEF__GUUID = 7;
    public static final int ECUC_PARAMETER_DEF__GCATEGORY = 8;
    public static final int ECUC_PARAMETER_DEF__GDESC = 9;
    public static final int ECUC_PARAMETER_DEF__DESC = 10;
    public static final int ECUC_PARAMETER_DEF__CATEGORY = 11;
    public static final int ECUC_PARAMETER_DEF__ADMIN_DATA = 12;
    public static final int ECUC_PARAMETER_DEF__INTRODUCTION = 13;
    public static final int ECUC_PARAMETER_DEF__ANNOTATIONS = 14;
    public static final int ECUC_PARAMETER_DEF__UUID = 15;
    public static final int ECUC_PARAMETER_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_PARAMETER_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_PARAMETER_DEF__ECUC_COND = 18;
    public static final int ECUC_PARAMETER_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_PARAMETER_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_PARAMETER_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_PARAMETER_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_PARAMETER_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_PARAMETER_DEF__ORIGIN = 24;
    public static final int ECUC_PARAMETER_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_PARAMETER_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_PARAMETER_DEF__DERIVATION = 27;
    public static final int ECUC_PARAMETER_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_PARAMETER_DEF__WITH_AUTO = 29;
    public static final int ECUC_PARAMETER_DEF_FEATURE_COUNT = 30;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF = 0;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__GUUID = 7;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__GDESC = 9;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__DESC = 10;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__UUID = 15;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_FEATURE_COUNT = 30;
    public static final int ECUC_CONDITION_SPECIFICATION = 4;
    public static final int ECUC_CONDITION_SPECIFICATION__GCHECKSUM = 0;
    public static final int ECUC_CONDITION_SPECIFICATION__GTIMESTAMP = 1;
    public static final int ECUC_CONDITION_SPECIFICATION__CHECKSUM = 2;
    public static final int ECUC_CONDITION_SPECIFICATION__TIMESTAMP = 3;
    public static final int ECUC_CONDITION_SPECIFICATION__CONDITION_FORMULA = 4;
    public static final int ECUC_CONDITION_SPECIFICATION__ECUC_QUERIES = 5;
    public static final int ECUC_CONDITION_SPECIFICATION__INFORMAL_FORMULA = 6;
    public static final int ECUC_CONDITION_SPECIFICATION_FEATURE_COUNT = 7;
    public static final int ECUC_QUERY = 5;
    public static final int ECUC_QUERY__GCHECKSUM = 0;
    public static final int ECUC_QUERY__GTIMESTAMP = 1;
    public static final int ECUC_QUERY__CHECKSUM = 2;
    public static final int ECUC_QUERY__TIMESTAMP = 3;
    public static final int ECUC_QUERY__GSHORT_NAME = 4;
    public static final int ECUC_QUERY__SHORT_NAME = 5;
    public static final int ECUC_QUERY__LONG_NAME = 6;
    public static final int ECUC_QUERY__GUUID = 7;
    public static final int ECUC_QUERY__GCATEGORY = 8;
    public static final int ECUC_QUERY__GDESC = 9;
    public static final int ECUC_QUERY__DESC = 10;
    public static final int ECUC_QUERY__CATEGORY = 11;
    public static final int ECUC_QUERY__ADMIN_DATA = 12;
    public static final int ECUC_QUERY__INTRODUCTION = 13;
    public static final int ECUC_QUERY__ANNOTATIONS = 14;
    public static final int ECUC_QUERY__UUID = 15;
    public static final int ECUC_QUERY__ALL_EXTENSIONS = 16;
    public static final int ECUC_QUERY__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_QUERY__ECUC_QUERY_EXPRESSION = 18;
    public static final int ECUC_QUERY_FEATURE_COUNT = 19;
    public static final int ECUC_QUERY_EXPRESSION = 6;
    public static final int ECUC_QUERY_EXPRESSION__GCHECKSUM = 0;
    public static final int ECUC_QUERY_EXPRESSION__GTIMESTAMP = 1;
    public static final int ECUC_QUERY_EXPRESSION__CHECKSUM = 2;
    public static final int ECUC_QUERY_EXPRESSION__TIMESTAMP = 3;
    public static final int ECUC_QUERY_EXPRESSION__MIXED = 4;
    public static final int ECUC_QUERY_EXPRESSION__ECUC_QUERY = 5;
    public static final int ECUC_QUERY_EXPRESSION__CONFIG_ELEMENT_DEF_GLOBALS = 6;
    public static final int ECUC_QUERY_EXPRESSION__CONFIG_ELEMENT_DEF_LOCALS = 7;
    public static final int ECUC_QUERY_EXPRESSION_FEATURE_COUNT = 8;
    public static final int ECUC_CONDITION_FORMULA = 7;
    public static final int ECUC_CONDITION_FORMULA__GCHECKSUM = 0;
    public static final int ECUC_CONDITION_FORMULA__GTIMESTAMP = 1;
    public static final int ECUC_CONDITION_FORMULA__CHECKSUM = 2;
    public static final int ECUC_CONDITION_FORMULA__TIMESTAMP = 3;
    public static final int ECUC_CONDITION_FORMULA__MIXED = 4;
    public static final int ECUC_CONDITION_FORMULA__ECUC_CONDITION_SPECIFICATION = 5;
    public static final int ECUC_CONDITION_FORMULA__ECUC_QUERIES = 6;
    public static final int ECUC_CONDITION_FORMULA__ECUC_QUERY_STRINGS = 7;
    public static final int ECUC_CONDITION_FORMULA_FEATURE_COUNT = 8;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS = 8;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__GCHECKSUM = 0;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__GTIMESTAMP = 1;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__CHECKSUM = 2;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__TIMESTAMP = 3;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__ECUC_COMMON_ATTRIBUTES = 4;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__CONFIG_CLASS = 5;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__CONFIG_VARIANT = 6;
    public static final int ECUC_IMPLEMENTATION_CONFIGURATION_CLASS_FEATURE_COUNT = 7;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION = 9;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__GCHECKSUM = 0;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__GTIMESTAMP = 1;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__CHECKSUM = 2;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__TIMESTAMP = 3;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__ECUC_COMMON_ATTRIBUTES = 4;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__AFFECTEDS = 5;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION__AFFECTION_KIND = 6;
    public static final int ECUC_CONFIGURATION_CLASS_AFFECTION_FEATURE_COUNT = 7;
    public static final int ECUC_DERIVATION_SPECIFICATION = 10;
    public static final int ECUC_DERIVATION_SPECIFICATION__GCHECKSUM = 0;
    public static final int ECUC_DERIVATION_SPECIFICATION__GTIMESTAMP = 1;
    public static final int ECUC_DERIVATION_SPECIFICATION__CHECKSUM = 2;
    public static final int ECUC_DERIVATION_SPECIFICATION__TIMESTAMP = 3;
    public static final int ECUC_DERIVATION_SPECIFICATION__ECUC_PARAMETER_DEF = 4;
    public static final int ECUC_DERIVATION_SPECIFICATION__CALCULATION_FORMULA = 5;
    public static final int ECUC_DERIVATION_SPECIFICATION__ECUC_QUERIES = 6;
    public static final int ECUC_DERIVATION_SPECIFICATION__INFORMAL_FORMULA = 7;
    public static final int ECUC_DERIVATION_SPECIFICATION_FEATURE_COUNT = 8;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA = 11;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__GCHECKSUM = 0;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__GTIMESTAMP = 1;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__CHECKSUM = 2;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__TIMESTAMP = 3;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__MIXED = 4;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_DERIVATION_SPECIFICATION = 5;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_QUERIES = 6;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_QUERY_STRINGS = 7;
    public static final int ECUC_PARAMETER_DERIVATION_FORMULA_FEATURE_COUNT = 8;
    public static final int ECUC_ADD_INFO_PARAM_DEF = 12;
    public static final int ECUC_ADD_INFO_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_ADD_INFO_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_ADD_INFO_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_ADD_INFO_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_ADD_INFO_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_ADD_INFO_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_ADD_INFO_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_ADD_INFO_PARAM_DEF__GUUID = 7;
    public static final int ECUC_ADD_INFO_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_ADD_INFO_PARAM_DEF__GDESC = 9;
    public static final int ECUC_ADD_INFO_PARAM_DEF__DESC = 10;
    public static final int ECUC_ADD_INFO_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_ADD_INFO_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_ADD_INFO_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_ADD_INFO_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_ADD_INFO_PARAM_DEF__UUID = 15;
    public static final int ECUC_ADD_INFO_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_ADD_INFO_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_ADD_INFO_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_ADD_INFO_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_ADD_INFO_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_ADD_INFO_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_ADD_INFO_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_ADD_INFO_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_ADD_INFO_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_ADD_INFO_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_ADD_INFO_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_ADD_INFO_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_ADD_INFO_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_ADD_INFO_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_ADD_INFO_PARAM_DEF_FEATURE_COUNT = 30;
    public static final int ECUC_BOOLEAN_PARAM_DEF = 13;
    public static final int ECUC_BOOLEAN_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_BOOLEAN_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_BOOLEAN_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_BOOLEAN_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_BOOLEAN_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_BOOLEAN_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_BOOLEAN_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_BOOLEAN_PARAM_DEF__GUUID = 7;
    public static final int ECUC_BOOLEAN_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_BOOLEAN_PARAM_DEF__GDESC = 9;
    public static final int ECUC_BOOLEAN_PARAM_DEF__DESC = 10;
    public static final int ECUC_BOOLEAN_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_BOOLEAN_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_BOOLEAN_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_BOOLEAN_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_BOOLEAN_PARAM_DEF__UUID = 15;
    public static final int ECUC_BOOLEAN_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_BOOLEAN_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_BOOLEAN_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_BOOLEAN_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_BOOLEAN_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_BOOLEAN_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_BOOLEAN_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_BOOLEAN_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_BOOLEAN_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_BOOLEAN_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_BOOLEAN_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_BOOLEAN_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_BOOLEAN_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_BOOLEAN_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_BOOLEAN_PARAM_DEF__DEFAULT_VALUE = 30;
    public static final int ECUC_BOOLEAN_PARAM_DEF_FEATURE_COUNT = 31;
    public static final int ECUC_CONTAINER_DEF = 15;
    public static final int ECUC_CONTAINER_DEF__GCHECKSUM = 0;
    public static final int ECUC_CONTAINER_DEF__GTIMESTAMP = 1;
    public static final int ECUC_CONTAINER_DEF__CHECKSUM = 2;
    public static final int ECUC_CONTAINER_DEF__TIMESTAMP = 3;
    public static final int ECUC_CONTAINER_DEF__GSHORT_NAME = 4;
    public static final int ECUC_CONTAINER_DEF__SHORT_NAME = 5;
    public static final int ECUC_CONTAINER_DEF__LONG_NAME = 6;
    public static final int ECUC_CONTAINER_DEF__GUUID = 7;
    public static final int ECUC_CONTAINER_DEF__GCATEGORY = 8;
    public static final int ECUC_CONTAINER_DEF__GDESC = 9;
    public static final int ECUC_CONTAINER_DEF__DESC = 10;
    public static final int ECUC_CONTAINER_DEF__CATEGORY = 11;
    public static final int ECUC_CONTAINER_DEF__ADMIN_DATA = 12;
    public static final int ECUC_CONTAINER_DEF__INTRODUCTION = 13;
    public static final int ECUC_CONTAINER_DEF__ANNOTATIONS = 14;
    public static final int ECUC_CONTAINER_DEF__UUID = 15;
    public static final int ECUC_CONTAINER_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_CONTAINER_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_CONTAINER_DEF__ECUC_COND = 18;
    public static final int ECUC_CONTAINER_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_CONTAINER_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_CONTAINER_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_CONTAINER_DEF__POST_BUILD_CHANGEABLE = 22;
    public static final int ECUC_CONTAINER_DEF_FEATURE_COUNT = 23;
    public static final int ECUC_CHOICE_CONTAINER_DEF = 14;
    public static final int ECUC_CHOICE_CONTAINER_DEF__GCHECKSUM = 0;
    public static final int ECUC_CHOICE_CONTAINER_DEF__GTIMESTAMP = 1;
    public static final int ECUC_CHOICE_CONTAINER_DEF__CHECKSUM = 2;
    public static final int ECUC_CHOICE_CONTAINER_DEF__TIMESTAMP = 3;
    public static final int ECUC_CHOICE_CONTAINER_DEF__GSHORT_NAME = 4;
    public static final int ECUC_CHOICE_CONTAINER_DEF__SHORT_NAME = 5;
    public static final int ECUC_CHOICE_CONTAINER_DEF__LONG_NAME = 6;
    public static final int ECUC_CHOICE_CONTAINER_DEF__GUUID = 7;
    public static final int ECUC_CHOICE_CONTAINER_DEF__GCATEGORY = 8;
    public static final int ECUC_CHOICE_CONTAINER_DEF__GDESC = 9;
    public static final int ECUC_CHOICE_CONTAINER_DEF__DESC = 10;
    public static final int ECUC_CHOICE_CONTAINER_DEF__CATEGORY = 11;
    public static final int ECUC_CHOICE_CONTAINER_DEF__ADMIN_DATA = 12;
    public static final int ECUC_CHOICE_CONTAINER_DEF__INTRODUCTION = 13;
    public static final int ECUC_CHOICE_CONTAINER_DEF__ANNOTATIONS = 14;
    public static final int ECUC_CHOICE_CONTAINER_DEF__UUID = 15;
    public static final int ECUC_CHOICE_CONTAINER_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_CHOICE_CONTAINER_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_CHOICE_CONTAINER_DEF__ECUC_COND = 18;
    public static final int ECUC_CHOICE_CONTAINER_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_CHOICE_CONTAINER_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_CHOICE_CONTAINER_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_CHOICE_CONTAINER_DEF__POST_BUILD_CHANGEABLE = 22;
    public static final int ECUC_CHOICE_CONTAINER_DEF__CHOICES = 23;
    public static final int ECUC_CHOICE_CONTAINER_DEF_FEATURE_COUNT = 24;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF = 16;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__GCHECKSUM = 0;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__GTIMESTAMP = 1;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__CHECKSUM = 2;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__TIMESTAMP = 3;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__GSHORT_NAME = 4;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__SHORT_NAME = 5;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__LONG_NAME = 6;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__GUUID = 7;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__GCATEGORY = 8;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__GDESC = 9;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__DESC = 10;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__CATEGORY = 11;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__ADMIN_DATA = 12;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__INTRODUCTION = 13;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__ANNOTATIONS = 14;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__UUID = 15;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__ECUC_COND = 18;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__POST_BUILD_CHANGEABLE = 22;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__ECUC_CHOICE_CONTAINER_DEF = 23;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__MULTIPLE_CONFIGURATION_CONTAINER = 24;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__PARAMETERS = 25;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__REFERENCES = 26;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF__SUB_CONTAINERS = 27;
    public static final int ECUC_PARAM_CONF_CONTAINER_DEF_FEATURE_COUNT = 28;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF = 41;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__GCHECKSUM = 0;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__CHECKSUM = 2;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__TIMESTAMP = 3;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__SHORT_NAME = 5;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__LONG_NAME = 6;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__GUUID = 7;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__GCATEGORY = 8;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__GDESC = 9;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__DESC = 10;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__CATEGORY = 11;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__INTRODUCTION = 13;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__UUID = 15;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__ECUC_COND = 18;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__ORIGIN = 24;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_ABSTRACT_REFERENCE_DEF_FEATURE_COUNT = 27;
    public static final int ECUC_CHOICE_REFERENCE_DEF = 17;
    public static final int ECUC_CHOICE_REFERENCE_DEF__GCHECKSUM = 0;
    public static final int ECUC_CHOICE_REFERENCE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_CHOICE_REFERENCE_DEF__CHECKSUM = 2;
    public static final int ECUC_CHOICE_REFERENCE_DEF__TIMESTAMP = 3;
    public static final int ECUC_CHOICE_REFERENCE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_CHOICE_REFERENCE_DEF__SHORT_NAME = 5;
    public static final int ECUC_CHOICE_REFERENCE_DEF__LONG_NAME = 6;
    public static final int ECUC_CHOICE_REFERENCE_DEF__GUUID = 7;
    public static final int ECUC_CHOICE_REFERENCE_DEF__GCATEGORY = 8;
    public static final int ECUC_CHOICE_REFERENCE_DEF__GDESC = 9;
    public static final int ECUC_CHOICE_REFERENCE_DEF__DESC = 10;
    public static final int ECUC_CHOICE_REFERENCE_DEF__CATEGORY = 11;
    public static final int ECUC_CHOICE_REFERENCE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_CHOICE_REFERENCE_DEF__INTRODUCTION = 13;
    public static final int ECUC_CHOICE_REFERENCE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_CHOICE_REFERENCE_DEF__UUID = 15;
    public static final int ECUC_CHOICE_REFERENCE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_CHOICE_REFERENCE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_CHOICE_REFERENCE_DEF__ECUC_COND = 18;
    public static final int ECUC_CHOICE_REFERENCE_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_CHOICE_REFERENCE_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_CHOICE_REFERENCE_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_CHOICE_REFERENCE_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_CHOICE_REFERENCE_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_CHOICE_REFERENCE_DEF__ORIGIN = 24;
    public static final int ECUC_CHOICE_REFERENCE_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_CHOICE_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_CHOICE_REFERENCE_DEF__DESTINATIONS = 27;
    public static final int ECUC_CHOICE_REFERENCE_DEF_FEATURE_COUNT = 28;
    public static final int ECUC_DEFINITION_COLLECTION = 18;
    public static final int ECUC_DEFINITION_COLLECTION__GCHECKSUM = 0;
    public static final int ECUC_DEFINITION_COLLECTION__GTIMESTAMP = 1;
    public static final int ECUC_DEFINITION_COLLECTION__CHECKSUM = 2;
    public static final int ECUC_DEFINITION_COLLECTION__TIMESTAMP = 3;
    public static final int ECUC_DEFINITION_COLLECTION__GSHORT_NAME = 4;
    public static final int ECUC_DEFINITION_COLLECTION__SHORT_NAME = 5;
    public static final int ECUC_DEFINITION_COLLECTION__LONG_NAME = 6;
    public static final int ECUC_DEFINITION_COLLECTION__GUUID = 7;
    public static final int ECUC_DEFINITION_COLLECTION__GCATEGORY = 8;
    public static final int ECUC_DEFINITION_COLLECTION__GDESC = 9;
    public static final int ECUC_DEFINITION_COLLECTION__DESC = 10;
    public static final int ECUC_DEFINITION_COLLECTION__CATEGORY = 11;
    public static final int ECUC_DEFINITION_COLLECTION__ADMIN_DATA = 12;
    public static final int ECUC_DEFINITION_COLLECTION__INTRODUCTION = 13;
    public static final int ECUC_DEFINITION_COLLECTION__ANNOTATIONS = 14;
    public static final int ECUC_DEFINITION_COLLECTION__UUID = 15;
    public static final int ECUC_DEFINITION_COLLECTION__ALL_EXTENSIONS = 16;
    public static final int ECUC_DEFINITION_COLLECTION__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_DEFINITION_COLLECTION__GAR_PACKAGE = 18;
    public static final int ECUC_DEFINITION_COLLECTION__AR_PACKAGE = 19;
    public static final int ECUC_DEFINITION_COLLECTION__VARIATION_POINT = 20;
    public static final int ECUC_DEFINITION_COLLECTION__SHORT_NAME_PATTERN = 21;
    public static final int ECUC_DEFINITION_COLLECTION__MODULES = 22;
    public static final int ECUC_DEFINITION_COLLECTION_FEATURE_COUNT = 23;
    public static final int ECUC_MODULE_DEF = 19;
    public static final int ECUC_MODULE_DEF__GCHECKSUM = 0;
    public static final int ECUC_MODULE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_MODULE_DEF__CHECKSUM = 2;
    public static final int ECUC_MODULE_DEF__TIMESTAMP = 3;
    public static final int ECUC_MODULE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_MODULE_DEF__SHORT_NAME = 5;
    public static final int ECUC_MODULE_DEF__LONG_NAME = 6;
    public static final int ECUC_MODULE_DEF__GUUID = 7;
    public static final int ECUC_MODULE_DEF__GCATEGORY = 8;
    public static final int ECUC_MODULE_DEF__GDESC = 9;
    public static final int ECUC_MODULE_DEF__DESC = 10;
    public static final int ECUC_MODULE_DEF__CATEGORY = 11;
    public static final int ECUC_MODULE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_MODULE_DEF__INTRODUCTION = 13;
    public static final int ECUC_MODULE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_MODULE_DEF__UUID = 15;
    public static final int ECUC_MODULE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_MODULE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_MODULE_DEF__GAR_PACKAGE = 18;
    public static final int ECUC_MODULE_DEF__AR_PACKAGE = 19;
    public static final int ECUC_MODULE_DEF__VARIATION_POINT = 20;
    public static final int ECUC_MODULE_DEF__SHORT_NAME_PATTERN = 21;
    public static final int ECUC_MODULE_DEF__ECUC_COND = 22;
    public static final int ECUC_MODULE_DEF__LOWER_MULTIPLICITY = 23;
    public static final int ECUC_MODULE_DEF__UPPER_MULTIPLICITY = 24;
    public static final int ECUC_MODULE_DEF__UPPER_MULTIPLICITY_INFINITE = 25;
    public static final int ECUC_MODULE_DEF__API_SERVICE_PREFIX = 26;
    public static final int ECUC_MODULE_DEF__REFINED_MODULE_DEF = 27;
    public static final int ECUC_MODULE_DEF__SUPPORTED_CONFIG_VARIANTS = 28;
    public static final int ECUC_MODULE_DEF__CONTAINERS = 29;
    public static final int ECUC_MODULE_DEF_FEATURE_COUNT = 30;
    public static final int ECUC_ENUMERATION_LITERAL_DEF = 20;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__GCHECKSUM = 0;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__GTIMESTAMP = 1;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__CHECKSUM = 2;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__TIMESTAMP = 3;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__GSHORT_NAME = 4;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__SHORT_NAME = 5;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__LONG_NAME = 6;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__GUUID = 7;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__GCATEGORY = 8;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__GDESC = 9;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__DESC = 10;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__CATEGORY = 11;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__ADMIN_DATA = 12;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__INTRODUCTION = 13;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__ANNOTATIONS = 14;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__UUID = 15;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__ECUC_ENUMERATION_PARAM_DEF = 18;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__ECUC_COND = 19;
    public static final int ECUC_ENUMERATION_LITERAL_DEF__ORIGIN = 20;
    public static final int ECUC_ENUMERATION_LITERAL_DEF_FEATURE_COUNT = 21;
    public static final int ECUC_ENUMERATION_PARAM_DEF = 21;
    public static final int ECUC_ENUMERATION_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_ENUMERATION_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_ENUMERATION_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_ENUMERATION_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_ENUMERATION_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_ENUMERATION_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_ENUMERATION_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_ENUMERATION_PARAM_DEF__GUUID = 7;
    public static final int ECUC_ENUMERATION_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_ENUMERATION_PARAM_DEF__GDESC = 9;
    public static final int ECUC_ENUMERATION_PARAM_DEF__DESC = 10;
    public static final int ECUC_ENUMERATION_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_ENUMERATION_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_ENUMERATION_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_ENUMERATION_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_ENUMERATION_PARAM_DEF__UUID = 15;
    public static final int ECUC_ENUMERATION_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_ENUMERATION_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_ENUMERATION_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_ENUMERATION_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_ENUMERATION_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_ENUMERATION_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_ENUMERATION_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_ENUMERATION_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_ENUMERATION_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_ENUMERATION_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_ENUMERATION_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_ENUMERATION_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_ENUMERATION_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_ENUMERATION_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_ENUMERATION_PARAM_DEF__DEFAULT_VALUE = 30;
    public static final int ECUC_ENUMERATION_PARAM_DEF__LITERALS = 31;
    public static final int ECUC_ENUMERATION_PARAM_DEF_FEATURE_COUNT = 32;
    public static final int ECUC_FLOAT_PARAM_DEF = 22;
    public static final int ECUC_FLOAT_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_FLOAT_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_FLOAT_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_FLOAT_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_FLOAT_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_FLOAT_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_FLOAT_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_FLOAT_PARAM_DEF__GUUID = 7;
    public static final int ECUC_FLOAT_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_FLOAT_PARAM_DEF__GDESC = 9;
    public static final int ECUC_FLOAT_PARAM_DEF__DESC = 10;
    public static final int ECUC_FLOAT_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_FLOAT_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_FLOAT_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_FLOAT_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_FLOAT_PARAM_DEF__UUID = 15;
    public static final int ECUC_FLOAT_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_FLOAT_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_FLOAT_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_FLOAT_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_FLOAT_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_FLOAT_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_FLOAT_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_FLOAT_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_FLOAT_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_FLOAT_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_FLOAT_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_FLOAT_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_FLOAT_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_FLOAT_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_FLOAT_PARAM_DEF__DEFAULT_VALUE = 30;
    public static final int ECUC_FLOAT_PARAM_DEF__MAX = 31;
    public static final int ECUC_FLOAT_PARAM_DEF__MIN = 32;
    public static final int ECUC_FLOAT_PARAM_DEF_FEATURE_COUNT = 33;
    public static final int ECUC_FOREIGN_REFERENCE_DEF = 23;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__GCHECKSUM = 0;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__CHECKSUM = 2;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__TIMESTAMP = 3;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__SHORT_NAME = 5;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__LONG_NAME = 6;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__GUUID = 7;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__GCATEGORY = 8;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__GDESC = 9;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__DESC = 10;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__CATEGORY = 11;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__INTRODUCTION = 13;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__UUID = 15;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__ECUC_COND = 18;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__ORIGIN = 24;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_FOREIGN_REFERENCE_DEF__DESTINATION_TYPE = 27;
    public static final int ECUC_FOREIGN_REFERENCE_DEF_FEATURE_COUNT = 28;
    public static final int ECUC_FUNCTION_NAME_DEF = 24;
    public static final int ECUC_FUNCTION_NAME_DEF__GCHECKSUM = 0;
    public static final int ECUC_FUNCTION_NAME_DEF__GTIMESTAMP = 1;
    public static final int ECUC_FUNCTION_NAME_DEF__CHECKSUM = 2;
    public static final int ECUC_FUNCTION_NAME_DEF__TIMESTAMP = 3;
    public static final int ECUC_FUNCTION_NAME_DEF__GSHORT_NAME = 4;
    public static final int ECUC_FUNCTION_NAME_DEF__SHORT_NAME = 5;
    public static final int ECUC_FUNCTION_NAME_DEF__LONG_NAME = 6;
    public static final int ECUC_FUNCTION_NAME_DEF__GUUID = 7;
    public static final int ECUC_FUNCTION_NAME_DEF__GCATEGORY = 8;
    public static final int ECUC_FUNCTION_NAME_DEF__GDESC = 9;
    public static final int ECUC_FUNCTION_NAME_DEF__DESC = 10;
    public static final int ECUC_FUNCTION_NAME_DEF__CATEGORY = 11;
    public static final int ECUC_FUNCTION_NAME_DEF__ADMIN_DATA = 12;
    public static final int ECUC_FUNCTION_NAME_DEF__INTRODUCTION = 13;
    public static final int ECUC_FUNCTION_NAME_DEF__ANNOTATIONS = 14;
    public static final int ECUC_FUNCTION_NAME_DEF__UUID = 15;
    public static final int ECUC_FUNCTION_NAME_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_FUNCTION_NAME_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_FUNCTION_NAME_DEF__ECUC_COND = 18;
    public static final int ECUC_FUNCTION_NAME_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_FUNCTION_NAME_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_FUNCTION_NAME_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_FUNCTION_NAME_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_FUNCTION_NAME_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_FUNCTION_NAME_DEF__ORIGIN = 24;
    public static final int ECUC_FUNCTION_NAME_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_FUNCTION_NAME_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_FUNCTION_NAME_DEF__DERIVATION = 27;
    public static final int ECUC_FUNCTION_NAME_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_FUNCTION_NAME_DEF__WITH_AUTO = 29;
    public static final int ECUC_FUNCTION_NAME_DEF__ECUC_FUNCTION_NAME_DEF_VARIANTS = 30;
    public static final int ECUC_FUNCTION_NAME_DEF_FEATURE_COUNT = 31;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT = 27;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__GCHECKSUM = 0;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__GTIMESTAMP = 1;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__CHECKSUM = 2;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__TIMESTAMP = 3;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__DEFAULT_VALUE = 4;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__MAX_LENGTH = 5;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__MIN_LENGTH = 6;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__REGULAR_EXPRESSION = 7;
    public static final int ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT_FEATURE_COUNT = 8;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT = 26;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__GCHECKSUM = 0;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__GTIMESTAMP = 1;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__CHECKSUM = 2;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__TIMESTAMP = 3;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__DEFAULT_VALUE = 4;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__MAX_LENGTH = 5;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__MIN_LENGTH = 6;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT__REGULAR_EXPRESSION = 7;
    public static final int ECUC_FUNCTION_NAME_DEF_CONTENT_FEATURE_COUNT = 8;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL = 25;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__CHECKSUM = 2;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__DEFAULT_VALUE = 4;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__MAX_LENGTH = 5;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__MIN_LENGTH = 6;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__REGULAR_EXPRESSION = 7;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__ECUC_FUNCTION_NAME_DEF = 8;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL__VARIATION_POINT = 9;
    public static final int ECUC_FUNCTION_NAME_DEF_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int ECUC_INSTANCE_REFERENCE_DEF = 28;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__GCHECKSUM = 0;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__CHECKSUM = 2;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__TIMESTAMP = 3;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__SHORT_NAME = 5;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__LONG_NAME = 6;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__GUUID = 7;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__GCATEGORY = 8;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__GDESC = 9;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__DESC = 10;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__CATEGORY = 11;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__INTRODUCTION = 13;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__UUID = 15;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__ECUC_COND = 18;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__ORIGIN = 24;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__DESTINATION_CONTEXT = 27;
    public static final int ECUC_INSTANCE_REFERENCE_DEF__DESTINATION_TYPE = 28;
    public static final int ECUC_INSTANCE_REFERENCE_DEF_FEATURE_COUNT = 29;
    public static final int ECUC_INTEGER_PARAM_DEF = 29;
    public static final int ECUC_INTEGER_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_INTEGER_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_INTEGER_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_INTEGER_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_INTEGER_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_INTEGER_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_INTEGER_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_INTEGER_PARAM_DEF__GUUID = 7;
    public static final int ECUC_INTEGER_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_INTEGER_PARAM_DEF__GDESC = 9;
    public static final int ECUC_INTEGER_PARAM_DEF__DESC = 10;
    public static final int ECUC_INTEGER_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_INTEGER_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_INTEGER_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_INTEGER_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_INTEGER_PARAM_DEF__UUID = 15;
    public static final int ECUC_INTEGER_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_INTEGER_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_INTEGER_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_INTEGER_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_INTEGER_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_INTEGER_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_INTEGER_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_INTEGER_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_INTEGER_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_INTEGER_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_INTEGER_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_INTEGER_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_INTEGER_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_INTEGER_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_INTEGER_PARAM_DEF__DEFAULT_VALUE = 30;
    public static final int ECUC_INTEGER_PARAM_DEF__MAX = 31;
    public static final int ECUC_INTEGER_PARAM_DEF__MIN = 32;
    public static final int ECUC_INTEGER_PARAM_DEF_FEATURE_COUNT = 33;
    public static final int ECUC_LINKER_SYMBOL_DEF = 30;
    public static final int ECUC_LINKER_SYMBOL_DEF__GCHECKSUM = 0;
    public static final int ECUC_LINKER_SYMBOL_DEF__GTIMESTAMP = 1;
    public static final int ECUC_LINKER_SYMBOL_DEF__CHECKSUM = 2;
    public static final int ECUC_LINKER_SYMBOL_DEF__TIMESTAMP = 3;
    public static final int ECUC_LINKER_SYMBOL_DEF__GSHORT_NAME = 4;
    public static final int ECUC_LINKER_SYMBOL_DEF__SHORT_NAME = 5;
    public static final int ECUC_LINKER_SYMBOL_DEF__LONG_NAME = 6;
    public static final int ECUC_LINKER_SYMBOL_DEF__GUUID = 7;
    public static final int ECUC_LINKER_SYMBOL_DEF__GCATEGORY = 8;
    public static final int ECUC_LINKER_SYMBOL_DEF__GDESC = 9;
    public static final int ECUC_LINKER_SYMBOL_DEF__DESC = 10;
    public static final int ECUC_LINKER_SYMBOL_DEF__CATEGORY = 11;
    public static final int ECUC_LINKER_SYMBOL_DEF__ADMIN_DATA = 12;
    public static final int ECUC_LINKER_SYMBOL_DEF__INTRODUCTION = 13;
    public static final int ECUC_LINKER_SYMBOL_DEF__ANNOTATIONS = 14;
    public static final int ECUC_LINKER_SYMBOL_DEF__UUID = 15;
    public static final int ECUC_LINKER_SYMBOL_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_LINKER_SYMBOL_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_LINKER_SYMBOL_DEF__ECUC_COND = 18;
    public static final int ECUC_LINKER_SYMBOL_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_LINKER_SYMBOL_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_LINKER_SYMBOL_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_LINKER_SYMBOL_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_LINKER_SYMBOL_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_LINKER_SYMBOL_DEF__ORIGIN = 24;
    public static final int ECUC_LINKER_SYMBOL_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_LINKER_SYMBOL_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_LINKER_SYMBOL_DEF__DERIVATION = 27;
    public static final int ECUC_LINKER_SYMBOL_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_LINKER_SYMBOL_DEF__WITH_AUTO = 29;
    public static final int ECUC_LINKER_SYMBOL_DEF__ECUC_LINKER_SYMBOL_DEF_VARIANTS = 30;
    public static final int ECUC_LINKER_SYMBOL_DEF_FEATURE_COUNT = 31;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT = 32;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__GCHECKSUM = 0;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__GTIMESTAMP = 1;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__CHECKSUM = 2;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__TIMESTAMP = 3;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__DEFAULT_VALUE = 4;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__MAX_LENGTH = 5;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__MIN_LENGTH = 6;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT__REGULAR_EXPRESSION = 7;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONTENT_FEATURE_COUNT = 8;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL = 31;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__CHECKSUM = 2;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__DEFAULT_VALUE = 4;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__MAX_LENGTH = 5;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__MIN_LENGTH = 6;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__REGULAR_EXPRESSION = 7;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__ECUC_LINKER_SYMBOL_DEF = 8;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__VARIATION_POINT = 9;
    public static final int ECUC_LINKER_SYMBOL_DEF_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF = 33;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__GUUID = 7;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__GDESC = 9;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__DESC = 10;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__UUID = 15;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF__ECUC_MULTILINE_STRING_PARAM_DEF_VARIANTS = 30;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_FEATURE_COUNT = 31;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT = 35;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__GCHECKSUM = 0;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__GTIMESTAMP = 1;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__CHECKSUM = 2;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__TIMESTAMP = 3;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__DEFAULT_VALUE = 4;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__MAX_LENGTH = 5;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__MIN_LENGTH = 6;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT__REGULAR_EXPRESSION = 7;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT_FEATURE_COUNT = 8;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL = 34;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__CHECKSUM = 2;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__DEFAULT_VALUE = 4;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__MAX_LENGTH = 5;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__MIN_LENGTH = 6;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__REGULAR_EXPRESSION = 7;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__ECUC_MULTILINE_STRING_PARAM_DEF = 8;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__VARIATION_POINT = 9;
    public static final int ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int ECUC_REFERENCE_DEF = 36;
    public static final int ECUC_REFERENCE_DEF__GCHECKSUM = 0;
    public static final int ECUC_REFERENCE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_REFERENCE_DEF__CHECKSUM = 2;
    public static final int ECUC_REFERENCE_DEF__TIMESTAMP = 3;
    public static final int ECUC_REFERENCE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_REFERENCE_DEF__SHORT_NAME = 5;
    public static final int ECUC_REFERENCE_DEF__LONG_NAME = 6;
    public static final int ECUC_REFERENCE_DEF__GUUID = 7;
    public static final int ECUC_REFERENCE_DEF__GCATEGORY = 8;
    public static final int ECUC_REFERENCE_DEF__GDESC = 9;
    public static final int ECUC_REFERENCE_DEF__DESC = 10;
    public static final int ECUC_REFERENCE_DEF__CATEGORY = 11;
    public static final int ECUC_REFERENCE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_REFERENCE_DEF__INTRODUCTION = 13;
    public static final int ECUC_REFERENCE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_REFERENCE_DEF__UUID = 15;
    public static final int ECUC_REFERENCE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_REFERENCE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_REFERENCE_DEF__ECUC_COND = 18;
    public static final int ECUC_REFERENCE_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_REFERENCE_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_REFERENCE_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_REFERENCE_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_REFERENCE_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_REFERENCE_DEF__ORIGIN = 24;
    public static final int ECUC_REFERENCE_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_REFERENCE_DEF__DESTINATION = 27;
    public static final int ECUC_REFERENCE_DEF_FEATURE_COUNT = 28;
    public static final int ECUC_STRING_PARAM_DEF = 37;
    public static final int ECUC_STRING_PARAM_DEF__GCHECKSUM = 0;
    public static final int ECUC_STRING_PARAM_DEF__GTIMESTAMP = 1;
    public static final int ECUC_STRING_PARAM_DEF__CHECKSUM = 2;
    public static final int ECUC_STRING_PARAM_DEF__TIMESTAMP = 3;
    public static final int ECUC_STRING_PARAM_DEF__GSHORT_NAME = 4;
    public static final int ECUC_STRING_PARAM_DEF__SHORT_NAME = 5;
    public static final int ECUC_STRING_PARAM_DEF__LONG_NAME = 6;
    public static final int ECUC_STRING_PARAM_DEF__GUUID = 7;
    public static final int ECUC_STRING_PARAM_DEF__GCATEGORY = 8;
    public static final int ECUC_STRING_PARAM_DEF__GDESC = 9;
    public static final int ECUC_STRING_PARAM_DEF__DESC = 10;
    public static final int ECUC_STRING_PARAM_DEF__CATEGORY = 11;
    public static final int ECUC_STRING_PARAM_DEF__ADMIN_DATA = 12;
    public static final int ECUC_STRING_PARAM_DEF__INTRODUCTION = 13;
    public static final int ECUC_STRING_PARAM_DEF__ANNOTATIONS = 14;
    public static final int ECUC_STRING_PARAM_DEF__UUID = 15;
    public static final int ECUC_STRING_PARAM_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_STRING_PARAM_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_STRING_PARAM_DEF__ECUC_COND = 18;
    public static final int ECUC_STRING_PARAM_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_STRING_PARAM_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_STRING_PARAM_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_STRING_PARAM_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_STRING_PARAM_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_STRING_PARAM_DEF__ORIGIN = 24;
    public static final int ECUC_STRING_PARAM_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_STRING_PARAM_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_STRING_PARAM_DEF__DERIVATION = 27;
    public static final int ECUC_STRING_PARAM_DEF__SYMBOLIC_NAME_VALUE = 28;
    public static final int ECUC_STRING_PARAM_DEF__WITH_AUTO = 29;
    public static final int ECUC_STRING_PARAM_DEF__ECUC_STRING_PARAM_DEF_VARIANTS = 30;
    public static final int ECUC_STRING_PARAM_DEF_FEATURE_COUNT = 31;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT = 39;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__GCHECKSUM = 0;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__GTIMESTAMP = 1;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__CHECKSUM = 2;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__TIMESTAMP = 3;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__DEFAULT_VALUE = 4;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__MAX_LENGTH = 5;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__MIN_LENGTH = 6;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT__REGULAR_EXPRESSION = 7;
    public static final int ECUC_STRING_PARAM_DEF_CONTENT_FEATURE_COUNT = 8;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL = 38;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__CHECKSUM = 2;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__DEFAULT_VALUE = 4;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__MAX_LENGTH = 5;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__MIN_LENGTH = 6;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__REGULAR_EXPRESSION = 7;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__ECUC_STRING_PARAM_DEF = 8;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL__VARIATION_POINT = 9;
    public static final int ECUC_STRING_PARAM_DEF_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF = 40;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__GCHECKSUM = 0;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__GTIMESTAMP = 1;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__CHECKSUM = 2;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__TIMESTAMP = 3;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__GSHORT_NAME = 4;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__SHORT_NAME = 5;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__LONG_NAME = 6;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__GUUID = 7;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__GCATEGORY = 8;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__GDESC = 9;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__DESC = 10;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__CATEGORY = 11;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__ADMIN_DATA = 12;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__INTRODUCTION = 13;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__ANNOTATIONS = 14;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__UUID = 15;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__ALL_EXTENSIONS = 16;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__ECUC_COND = 18;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__LOWER_MULTIPLICITY = 19;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__UPPER_MULTIPLICITY = 20;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__UPPER_MULTIPLICITY_INFINITE = 21;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__CONFIGURATION_CLASS_AFFECTION = 22;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__IMPLEMENTATION_CONFIG_CLASS = 23;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__ORIGIN = 24;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__REQUIRES_INDEX = 25;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = 26;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF__DESTINATION = 27;
    public static final int ECUC_SYMBOLIC_NAME_REFERENCE_DEF_FEATURE_COUNT = 28;
    public static final int ECUC_CONFIGURATION_CLASS_ENUM = 42;
    public static final int ECUC_CONFIGURATION_VARIANT_ENUM = 43;
    public static final int ECUC_AFFECTION_ENUM = 44;

    public EClass getEcucAbstractStringParamDef();

    public EClass getEcucParameterDef();

    public EReference getEcucParameterDef_EcucParamConfContainerDef();

    public EReference getEcucParameterDef_Derivation();

    public EAttribute getEcucParameterDef_SymbolicNameValue();

    public EAttribute getEcucParameterDef_WithAuto();

    public EClass getEcucCommonAttributes();

    public EReference getEcucCommonAttributes_ConfigurationClassAffection();

    public EReference getEcucCommonAttributes_ImplementationConfigClass();

    public EAttribute getEcucCommonAttributes_Origin();

    public EAttribute getEcucCommonAttributes_RequiresIndex();

    public EClass getEcucDefinitionElement();

    public EReference getEcucDefinitionElement_EcucCond();

    public EReference getEcucDefinitionElement_LowerMultiplicity();

    public EReference getEcucDefinitionElement_UpperMultiplicity();

    public EReference getEcucDefinitionElement_UpperMultiplicityInfinite();

    public EClass getEcucConditionSpecification();

    public EReference getEcucConditionSpecification_ConditionFormula();

    public EReference getEcucConditionSpecification_EcucQueries();

    public EReference getEcucConditionSpecification_InformalFormula();

    public EClass getEcucQuery();

    public EReference getEcucQuery_EcucQueryExpression();

    public EClass getEcucQueryExpression();

    public EAttribute getEcucQueryExpression_Mixed();

    public EReference getEcucQueryExpression_EcucQuery();

    public EReference getEcucQueryExpression_ConfigElementDefGlobals();

    public EReference getEcucQueryExpression_ConfigElementDefLocals();

    public EClass getEcucConditionFormula();

    public EReference getEcucConditionFormula_EcucConditionSpecification();

    public EReference getEcucConditionFormula_EcucQueries();

    public EReference getEcucConditionFormula_EcucQueryStrings();

    public EClass getEcucImplementationConfigurationClass();

    public EReference getEcucImplementationConfigurationClass_EcucCommonAttributes();

    public EAttribute getEcucImplementationConfigurationClass_ConfigClass();

    public EAttribute getEcucImplementationConfigurationClass_ConfigVariant();

    public EClass getEcucConfigurationClassAffection();

    public EReference getEcucConfigurationClassAffection_EcucCommonAttributes();

    public EReference getEcucConfigurationClassAffection_Affecteds();

    public EAttribute getEcucConfigurationClassAffection_AffectionKind();

    public EClass getEcucDerivationSpecification();

    public EReference getEcucDerivationSpecification_EcucParameterDef();

    public EReference getEcucDerivationSpecification_CalculationFormula();

    public EReference getEcucDerivationSpecification_EcucQueries();

    public EReference getEcucDerivationSpecification_InformalFormula();

    public EClass getEcucParameterDerivationFormula();

    public EReference getEcucParameterDerivationFormula_EcucDerivationSpecification();

    public EReference getEcucParameterDerivationFormula_EcucQueries();

    public EReference getEcucParameterDerivationFormula_EcucQueryStrings();

    public EClass getEcucAddInfoParamDef();

    public EClass getEcucBooleanParamDef();

    public EReference getEcucBooleanParamDef_DefaultValue();

    public EClass getEcucChoiceContainerDef();

    public EReference getEcucChoiceContainerDef_Choices();

    public EClass getEcucContainerDef();

    public EAttribute getEcucContainerDef_PostBuildChangeable();

    public EClass getEcucParamConfContainerDef();

    public EReference getEcucParamConfContainerDef_EcucChoiceContainerDef();

    public EAttribute getEcucParamConfContainerDef_MultipleConfigurationContainer();

    public EReference getEcucParamConfContainerDef_Parameters();

    public EReference getEcucParamConfContainerDef_References();

    public EReference getEcucParamConfContainerDef_SubContainers();

    public EClass getEcucChoiceReferenceDef();

    public EReference getEcucChoiceReferenceDef_Destinations();

    public EClass getEcucDefinitionCollection();

    public EReference getEcucDefinitionCollection_Modules();

    public EClass getEcucModuleDef();

    public EAttribute getEcucModuleDef_ApiServicePrefix();

    public EReference getEcucModuleDef_RefinedModuleDef();

    public EAttribute getEcucModuleDef_SupportedConfigVariants();

    public EReference getEcucModuleDef_Containers();

    public EClass getEcucEnumerationLiteralDef();

    public EReference getEcucEnumerationLiteralDef_EcucEnumerationParamDef();

    public EReference getEcucEnumerationLiteralDef_EcucCond();

    public EAttribute getEcucEnumerationLiteralDef_Origin();

    public EClass getEcucEnumerationParamDef();

    public EAttribute getEcucEnumerationParamDef_DefaultValue();

    public EReference getEcucEnumerationParamDef_Literals();

    public EClass getEcucFloatParamDef();

    public EReference getEcucFloatParamDef_DefaultValue();

    public EReference getEcucFloatParamDef_Max();

    public EReference getEcucFloatParamDef_Min();

    public EClass getEcucForeignReferenceDef();

    public EAttribute getEcucForeignReferenceDef_DestinationType();

    public EClass getEcucFunctionNameDef();

    public EReference getEcucFunctionNameDef_EcucFunctionNameDefVariants();

    public EClass getEcucFunctionNameDefConditional();

    public EReference getEcucFunctionNameDefConditional_EcucFunctionNameDef();

    public EReference getEcucFunctionNameDefConditional_VariationPoint();

    public EClass getEcucFunctionNameDefContent();

    public EClass getEcucAbstractStringParamDefContent();

    public EAttribute getEcucAbstractStringParamDefContent_DefaultValue();

    public EAttribute getEcucAbstractStringParamDefContent_MaxLength();

    public EAttribute getEcucAbstractStringParamDefContent_MinLength();

    public EAttribute getEcucAbstractStringParamDefContent_RegularExpression();

    public EClass getEcucInstanceReferenceDef();

    public EAttribute getEcucInstanceReferenceDef_DestinationContext();

    public EAttribute getEcucInstanceReferenceDef_DestinationType();

    public EClass getEcucIntegerParamDef();

    public EReference getEcucIntegerParamDef_DefaultValue();

    public EReference getEcucIntegerParamDef_Max();

    public EReference getEcucIntegerParamDef_Min();

    public EClass getEcucLinkerSymbolDef();

    public EReference getEcucLinkerSymbolDef_EcucLinkerSymbolDefVariants();

    public EClass getEcucLinkerSymbolDefConditional();

    public EReference getEcucLinkerSymbolDefConditional_EcucLinkerSymbolDef();

    public EReference getEcucLinkerSymbolDefConditional_VariationPoint();

    public EClass getEcucLinkerSymbolDefContent();

    public EClass getEcucMultilineStringParamDef();

    public EReference getEcucMultilineStringParamDef_EcucMultilineStringParamDefVariants();

    public EClass getEcucMultilineStringParamDefConditional();

    public EReference getEcucMultilineStringParamDefConditional_EcucMultilineStringParamDef();

    public EReference getEcucMultilineStringParamDefConditional_VariationPoint();

    public EClass getEcucMultilineStringParamDefContent();

    public EClass getEcucReferenceDef();

    public EReference getEcucReferenceDef_Destination();

    public EClass getEcucStringParamDef();

    public EReference getEcucStringParamDef_EcucStringParamDefVariants();

    public EClass getEcucStringParamDefConditional();

    public EReference getEcucStringParamDefConditional_EcucStringParamDef();

    public EReference getEcucStringParamDefConditional_VariationPoint();

    public EClass getEcucStringParamDefContent();

    public EClass getEcucSymbolicNameReferenceDef();

    public EReference getEcucSymbolicNameReferenceDef_Destination();

    public EClass getEcucAbstractReferenceDef();

    public EReference getEcucAbstractReferenceDef_EcucParamConfContainerDef();

    public EEnum getEcucConfigurationClassEnum();

    public EEnum getEcucConfigurationVariantEnum();

    public EEnum getEcucAffectionEnum();

    public EcucparameterdefFactory getEcucparameterdefFactory();

    public static interface Literals {
        public static final EClass ECUC_ABSTRACT_STRING_PARAM_DEF = eINSTANCE.getEcucAbstractStringParamDef();
        public static final EClass ECUC_PARAMETER_DEF = eINSTANCE.getEcucParameterDef();
        public static final EReference ECUC_PARAMETER_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = eINSTANCE.getEcucParameterDef_EcucParamConfContainerDef();
        public static final EReference ECUC_PARAMETER_DEF__DERIVATION = eINSTANCE.getEcucParameterDef_Derivation();
        public static final EAttribute ECUC_PARAMETER_DEF__SYMBOLIC_NAME_VALUE = eINSTANCE.getEcucParameterDef_SymbolicNameValue();
        public static final EAttribute ECUC_PARAMETER_DEF__WITH_AUTO = eINSTANCE.getEcucParameterDef_WithAuto();
        public static final EClass ECUC_COMMON_ATTRIBUTES = eINSTANCE.getEcucCommonAttributes();
        public static final EReference ECUC_COMMON_ATTRIBUTES__CONFIGURATION_CLASS_AFFECTION = eINSTANCE.getEcucCommonAttributes_ConfigurationClassAffection();
        public static final EReference ECUC_COMMON_ATTRIBUTES__IMPLEMENTATION_CONFIG_CLASS = eINSTANCE.getEcucCommonAttributes_ImplementationConfigClass();
        public static final EAttribute ECUC_COMMON_ATTRIBUTES__ORIGIN = eINSTANCE.getEcucCommonAttributes_Origin();
        public static final EAttribute ECUC_COMMON_ATTRIBUTES__REQUIRES_INDEX = eINSTANCE.getEcucCommonAttributes_RequiresIndex();
        public static final EClass ECUC_DEFINITION_ELEMENT = eINSTANCE.getEcucDefinitionElement();
        public static final EReference ECUC_DEFINITION_ELEMENT__ECUC_COND = eINSTANCE.getEcucDefinitionElement_EcucCond();
        public static final EReference ECUC_DEFINITION_ELEMENT__LOWER_MULTIPLICITY = eINSTANCE.getEcucDefinitionElement_LowerMultiplicity();
        public static final EReference ECUC_DEFINITION_ELEMENT__UPPER_MULTIPLICITY = eINSTANCE.getEcucDefinitionElement_UpperMultiplicity();
        public static final EReference ECUC_DEFINITION_ELEMENT__UPPER_MULTIPLICITY_INFINITE = eINSTANCE.getEcucDefinitionElement_UpperMultiplicityInfinite();
        public static final EClass ECUC_CONDITION_SPECIFICATION = eINSTANCE.getEcucConditionSpecification();
        public static final EReference ECUC_CONDITION_SPECIFICATION__CONDITION_FORMULA = eINSTANCE.getEcucConditionSpecification_ConditionFormula();
        public static final EReference ECUC_CONDITION_SPECIFICATION__ECUC_QUERIES = eINSTANCE.getEcucConditionSpecification_EcucQueries();
        public static final EReference ECUC_CONDITION_SPECIFICATION__INFORMAL_FORMULA = eINSTANCE.getEcucConditionSpecification_InformalFormula();
        public static final EClass ECUC_QUERY = eINSTANCE.getEcucQuery();
        public static final EReference ECUC_QUERY__ECUC_QUERY_EXPRESSION = eINSTANCE.getEcucQuery_EcucQueryExpression();
        public static final EClass ECUC_QUERY_EXPRESSION = eINSTANCE.getEcucQueryExpression();
        public static final EAttribute ECUC_QUERY_EXPRESSION__MIXED = eINSTANCE.getEcucQueryExpression_Mixed();
        public static final EReference ECUC_QUERY_EXPRESSION__ECUC_QUERY = eINSTANCE.getEcucQueryExpression_EcucQuery();
        public static final EReference ECUC_QUERY_EXPRESSION__CONFIG_ELEMENT_DEF_GLOBALS = eINSTANCE.getEcucQueryExpression_ConfigElementDefGlobals();
        public static final EReference ECUC_QUERY_EXPRESSION__CONFIG_ELEMENT_DEF_LOCALS = eINSTANCE.getEcucQueryExpression_ConfigElementDefLocals();
        public static final EClass ECUC_CONDITION_FORMULA = eINSTANCE.getEcucConditionFormula();
        public static final EReference ECUC_CONDITION_FORMULA__ECUC_CONDITION_SPECIFICATION = eINSTANCE.getEcucConditionFormula_EcucConditionSpecification();
        public static final EReference ECUC_CONDITION_FORMULA__ECUC_QUERIES = eINSTANCE.getEcucConditionFormula_EcucQueries();
        public static final EReference ECUC_CONDITION_FORMULA__ECUC_QUERY_STRINGS = eINSTANCE.getEcucConditionFormula_EcucQueryStrings();
        public static final EClass ECUC_IMPLEMENTATION_CONFIGURATION_CLASS = eINSTANCE.getEcucImplementationConfigurationClass();
        public static final EReference ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__ECUC_COMMON_ATTRIBUTES = eINSTANCE.getEcucImplementationConfigurationClass_EcucCommonAttributes();
        public static final EAttribute ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__CONFIG_CLASS = eINSTANCE.getEcucImplementationConfigurationClass_ConfigClass();
        public static final EAttribute ECUC_IMPLEMENTATION_CONFIGURATION_CLASS__CONFIG_VARIANT = eINSTANCE.getEcucImplementationConfigurationClass_ConfigVariant();
        public static final EClass ECUC_CONFIGURATION_CLASS_AFFECTION = eINSTANCE.getEcucConfigurationClassAffection();
        public static final EReference ECUC_CONFIGURATION_CLASS_AFFECTION__ECUC_COMMON_ATTRIBUTES = eINSTANCE.getEcucConfigurationClassAffection_EcucCommonAttributes();
        public static final EReference ECUC_CONFIGURATION_CLASS_AFFECTION__AFFECTEDS = eINSTANCE.getEcucConfigurationClassAffection_Affecteds();
        public static final EAttribute ECUC_CONFIGURATION_CLASS_AFFECTION__AFFECTION_KIND = eINSTANCE.getEcucConfigurationClassAffection_AffectionKind();
        public static final EClass ECUC_DERIVATION_SPECIFICATION = eINSTANCE.getEcucDerivationSpecification();
        public static final EReference ECUC_DERIVATION_SPECIFICATION__ECUC_PARAMETER_DEF = eINSTANCE.getEcucDerivationSpecification_EcucParameterDef();
        public static final EReference ECUC_DERIVATION_SPECIFICATION__CALCULATION_FORMULA = eINSTANCE.getEcucDerivationSpecification_CalculationFormula();
        public static final EReference ECUC_DERIVATION_SPECIFICATION__ECUC_QUERIES = eINSTANCE.getEcucDerivationSpecification_EcucQueries();
        public static final EReference ECUC_DERIVATION_SPECIFICATION__INFORMAL_FORMULA = eINSTANCE.getEcucDerivationSpecification_InformalFormula();
        public static final EClass ECUC_PARAMETER_DERIVATION_FORMULA = eINSTANCE.getEcucParameterDerivationFormula();
        public static final EReference ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_DERIVATION_SPECIFICATION = eINSTANCE.getEcucParameterDerivationFormula_EcucDerivationSpecification();
        public static final EReference ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_QUERIES = eINSTANCE.getEcucParameterDerivationFormula_EcucQueries();
        public static final EReference ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_QUERY_STRINGS = eINSTANCE.getEcucParameterDerivationFormula_EcucQueryStrings();
        public static final EClass ECUC_ADD_INFO_PARAM_DEF = eINSTANCE.getEcucAddInfoParamDef();
        public static final EClass ECUC_BOOLEAN_PARAM_DEF = eINSTANCE.getEcucBooleanParamDef();
        public static final EReference ECUC_BOOLEAN_PARAM_DEF__DEFAULT_VALUE = eINSTANCE.getEcucBooleanParamDef_DefaultValue();
        public static final EClass ECUC_CHOICE_CONTAINER_DEF = eINSTANCE.getEcucChoiceContainerDef();
        public static final EReference ECUC_CHOICE_CONTAINER_DEF__CHOICES = eINSTANCE.getEcucChoiceContainerDef_Choices();
        public static final EClass ECUC_CONTAINER_DEF = eINSTANCE.getEcucContainerDef();
        public static final EAttribute ECUC_CONTAINER_DEF__POST_BUILD_CHANGEABLE = eINSTANCE.getEcucContainerDef_PostBuildChangeable();
        public static final EClass ECUC_PARAM_CONF_CONTAINER_DEF = eINSTANCE.getEcucParamConfContainerDef();
        public static final EReference ECUC_PARAM_CONF_CONTAINER_DEF__ECUC_CHOICE_CONTAINER_DEF = eINSTANCE.getEcucParamConfContainerDef_EcucChoiceContainerDef();
        public static final EAttribute ECUC_PARAM_CONF_CONTAINER_DEF__MULTIPLE_CONFIGURATION_CONTAINER = eINSTANCE.getEcucParamConfContainerDef_MultipleConfigurationContainer();
        public static final EReference ECUC_PARAM_CONF_CONTAINER_DEF__PARAMETERS = eINSTANCE.getEcucParamConfContainerDef_Parameters();
        public static final EReference ECUC_PARAM_CONF_CONTAINER_DEF__REFERENCES = eINSTANCE.getEcucParamConfContainerDef_References();
        public static final EReference ECUC_PARAM_CONF_CONTAINER_DEF__SUB_CONTAINERS = eINSTANCE.getEcucParamConfContainerDef_SubContainers();
        public static final EClass ECUC_CHOICE_REFERENCE_DEF = eINSTANCE.getEcucChoiceReferenceDef();
        public static final EReference ECUC_CHOICE_REFERENCE_DEF__DESTINATIONS = eINSTANCE.getEcucChoiceReferenceDef_Destinations();
        public static final EClass ECUC_DEFINITION_COLLECTION = eINSTANCE.getEcucDefinitionCollection();
        public static final EReference ECUC_DEFINITION_COLLECTION__MODULES = eINSTANCE.getEcucDefinitionCollection_Modules();
        public static final EClass ECUC_MODULE_DEF = eINSTANCE.getEcucModuleDef();
        public static final EAttribute ECUC_MODULE_DEF__API_SERVICE_PREFIX = eINSTANCE.getEcucModuleDef_ApiServicePrefix();
        public static final EReference ECUC_MODULE_DEF__REFINED_MODULE_DEF = eINSTANCE.getEcucModuleDef_RefinedModuleDef();
        public static final EAttribute ECUC_MODULE_DEF__SUPPORTED_CONFIG_VARIANTS = eINSTANCE.getEcucModuleDef_SupportedConfigVariants();
        public static final EReference ECUC_MODULE_DEF__CONTAINERS = eINSTANCE.getEcucModuleDef_Containers();
        public static final EClass ECUC_ENUMERATION_LITERAL_DEF = eINSTANCE.getEcucEnumerationLiteralDef();
        public static final EReference ECUC_ENUMERATION_LITERAL_DEF__ECUC_ENUMERATION_PARAM_DEF = eINSTANCE.getEcucEnumerationLiteralDef_EcucEnumerationParamDef();
        public static final EReference ECUC_ENUMERATION_LITERAL_DEF__ECUC_COND = eINSTANCE.getEcucEnumerationLiteralDef_EcucCond();
        public static final EAttribute ECUC_ENUMERATION_LITERAL_DEF__ORIGIN = eINSTANCE.getEcucEnumerationLiteralDef_Origin();
        public static final EClass ECUC_ENUMERATION_PARAM_DEF = eINSTANCE.getEcucEnumerationParamDef();
        public static final EAttribute ECUC_ENUMERATION_PARAM_DEF__DEFAULT_VALUE = eINSTANCE.getEcucEnumerationParamDef_DefaultValue();
        public static final EReference ECUC_ENUMERATION_PARAM_DEF__LITERALS = eINSTANCE.getEcucEnumerationParamDef_Literals();
        public static final EClass ECUC_FLOAT_PARAM_DEF = eINSTANCE.getEcucFloatParamDef();
        public static final EReference ECUC_FLOAT_PARAM_DEF__DEFAULT_VALUE = eINSTANCE.getEcucFloatParamDef_DefaultValue();
        public static final EReference ECUC_FLOAT_PARAM_DEF__MAX = eINSTANCE.getEcucFloatParamDef_Max();
        public static final EReference ECUC_FLOAT_PARAM_DEF__MIN = eINSTANCE.getEcucFloatParamDef_Min();
        public static final EClass ECUC_FOREIGN_REFERENCE_DEF = eINSTANCE.getEcucForeignReferenceDef();
        public static final EAttribute ECUC_FOREIGN_REFERENCE_DEF__DESTINATION_TYPE = eINSTANCE.getEcucForeignReferenceDef_DestinationType();
        public static final EClass ECUC_FUNCTION_NAME_DEF = eINSTANCE.getEcucFunctionNameDef();
        public static final EReference ECUC_FUNCTION_NAME_DEF__ECUC_FUNCTION_NAME_DEF_VARIANTS = eINSTANCE.getEcucFunctionNameDef_EcucFunctionNameDefVariants();
        public static final EClass ECUC_FUNCTION_NAME_DEF_CONDITIONAL = eINSTANCE.getEcucFunctionNameDefConditional();
        public static final EReference ECUC_FUNCTION_NAME_DEF_CONDITIONAL__ECUC_FUNCTION_NAME_DEF = eINSTANCE.getEcucFunctionNameDefConditional_EcucFunctionNameDef();
        public static final EReference ECUC_FUNCTION_NAME_DEF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEcucFunctionNameDefConditional_VariationPoint();
        public static final EClass ECUC_FUNCTION_NAME_DEF_CONTENT = eINSTANCE.getEcucFunctionNameDefContent();
        public static final EClass ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT = eINSTANCE.getEcucAbstractStringParamDefContent();
        public static final EAttribute ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__DEFAULT_VALUE = eINSTANCE.getEcucAbstractStringParamDefContent_DefaultValue();
        public static final EAttribute ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__MAX_LENGTH = eINSTANCE.getEcucAbstractStringParamDefContent_MaxLength();
        public static final EAttribute ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__MIN_LENGTH = eINSTANCE.getEcucAbstractStringParamDefContent_MinLength();
        public static final EAttribute ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT__REGULAR_EXPRESSION = eINSTANCE.getEcucAbstractStringParamDefContent_RegularExpression();
        public static final EClass ECUC_INSTANCE_REFERENCE_DEF = eINSTANCE.getEcucInstanceReferenceDef();
        public static final EAttribute ECUC_INSTANCE_REFERENCE_DEF__DESTINATION_CONTEXT = eINSTANCE.getEcucInstanceReferenceDef_DestinationContext();
        public static final EAttribute ECUC_INSTANCE_REFERENCE_DEF__DESTINATION_TYPE = eINSTANCE.getEcucInstanceReferenceDef_DestinationType();
        public static final EClass ECUC_INTEGER_PARAM_DEF = eINSTANCE.getEcucIntegerParamDef();
        public static final EReference ECUC_INTEGER_PARAM_DEF__DEFAULT_VALUE = eINSTANCE.getEcucIntegerParamDef_DefaultValue();
        public static final EReference ECUC_INTEGER_PARAM_DEF__MAX = eINSTANCE.getEcucIntegerParamDef_Max();
        public static final EReference ECUC_INTEGER_PARAM_DEF__MIN = eINSTANCE.getEcucIntegerParamDef_Min();
        public static final EClass ECUC_LINKER_SYMBOL_DEF = eINSTANCE.getEcucLinkerSymbolDef();
        public static final EReference ECUC_LINKER_SYMBOL_DEF__ECUC_LINKER_SYMBOL_DEF_VARIANTS = eINSTANCE.getEcucLinkerSymbolDef_EcucLinkerSymbolDefVariants();
        public static final EClass ECUC_LINKER_SYMBOL_DEF_CONDITIONAL = eINSTANCE.getEcucLinkerSymbolDefConditional();
        public static final EReference ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__ECUC_LINKER_SYMBOL_DEF = eINSTANCE.getEcucLinkerSymbolDefConditional_EcucLinkerSymbolDef();
        public static final EReference ECUC_LINKER_SYMBOL_DEF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEcucLinkerSymbolDefConditional_VariationPoint();
        public static final EClass ECUC_LINKER_SYMBOL_DEF_CONTENT = eINSTANCE.getEcucLinkerSymbolDefContent();
        public static final EClass ECUC_MULTILINE_STRING_PARAM_DEF = eINSTANCE.getEcucMultilineStringParamDef();
        public static final EReference ECUC_MULTILINE_STRING_PARAM_DEF__ECUC_MULTILINE_STRING_PARAM_DEF_VARIANTS = eINSTANCE.getEcucMultilineStringParamDef_EcucMultilineStringParamDefVariants();
        public static final EClass ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL = eINSTANCE.getEcucMultilineStringParamDefConditional();
        public static final EReference ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__ECUC_MULTILINE_STRING_PARAM_DEF = eINSTANCE.getEcucMultilineStringParamDefConditional_EcucMultilineStringParamDef();
        public static final EReference ECUC_MULTILINE_STRING_PARAM_DEF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEcucMultilineStringParamDefConditional_VariationPoint();
        public static final EClass ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT = eINSTANCE.getEcucMultilineStringParamDefContent();
        public static final EClass ECUC_REFERENCE_DEF = eINSTANCE.getEcucReferenceDef();
        public static final EReference ECUC_REFERENCE_DEF__DESTINATION = eINSTANCE.getEcucReferenceDef_Destination();
        public static final EClass ECUC_STRING_PARAM_DEF = eINSTANCE.getEcucStringParamDef();
        public static final EReference ECUC_STRING_PARAM_DEF__ECUC_STRING_PARAM_DEF_VARIANTS = eINSTANCE.getEcucStringParamDef_EcucStringParamDefVariants();
        public static final EClass ECUC_STRING_PARAM_DEF_CONDITIONAL = eINSTANCE.getEcucStringParamDefConditional();
        public static final EReference ECUC_STRING_PARAM_DEF_CONDITIONAL__ECUC_STRING_PARAM_DEF = eINSTANCE.getEcucStringParamDefConditional_EcucStringParamDef();
        public static final EReference ECUC_STRING_PARAM_DEF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEcucStringParamDefConditional_VariationPoint();
        public static final EClass ECUC_STRING_PARAM_DEF_CONTENT = eINSTANCE.getEcucStringParamDefContent();
        public static final EClass ECUC_SYMBOLIC_NAME_REFERENCE_DEF = eINSTANCE.getEcucSymbolicNameReferenceDef();
        public static final EReference ECUC_SYMBOLIC_NAME_REFERENCE_DEF__DESTINATION = eINSTANCE.getEcucSymbolicNameReferenceDef_Destination();
        public static final EClass ECUC_ABSTRACT_REFERENCE_DEF = eINSTANCE.getEcucAbstractReferenceDef();
        public static final EReference ECUC_ABSTRACT_REFERENCE_DEF__ECUC_PARAM_CONF_CONTAINER_DEF = eINSTANCE.getEcucAbstractReferenceDef_EcucParamConfContainerDef();
        public static final EEnum ECUC_CONFIGURATION_CLASS_ENUM = eINSTANCE.getEcucConfigurationClassEnum();
        public static final EEnum ECUC_CONFIGURATION_VARIANT_ENUM = eINSTANCE.getEcucConfigurationVariantEnum();
        public static final EEnum ECUC_AFFECTION_ENUM = eINSTANCE.getEcucAffectionEnum();
    }
}

