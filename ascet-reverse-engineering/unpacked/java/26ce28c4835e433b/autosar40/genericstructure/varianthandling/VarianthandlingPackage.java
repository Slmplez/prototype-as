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
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.varianthandling.VarianthandlingFactory;
import autosar40.genericstructure.varianthandling.impl.VarianthandlingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface VarianthandlingPackage
extends EPackage {
    public static final String eNAME = "varianthandling";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/vh";
    public static final String eNS_PREFIX = "";
    public static final VarianthandlingPackage eINSTANCE = VarianthandlingPackageImpl.init();
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA = 2;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__GCHECKSUM = 0;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__GTIMESTAMP = 1;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__CHECKSUM = 2;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__TIMESTAMP = 3;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__MIXED = 4;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__SYSC_STRINGS = 5;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA__SYSCS = 6;
    public static final int SW_SYSTEMCONST_DEPENDENT_FORMULA_FEATURE_COUNT = 7;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT = 1;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__SD = 10;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int ATTRIBUTE_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT = 0;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__GCHECKSUM = 0;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__CHECKSUM = 2;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__TIMESTAMP = 3;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__MIXED = 4;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__SYSCS = 6;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__BINDING_TIME = 8;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__SD = 10;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int ABSTRACT_NUMERICAL_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int NUMERICAL_VALUE_VARIATION_POINT = 3;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__SD = 10;
    public static final int NUMERICAL_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int NUMERICAL_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT = 4;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__SD = 10;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int POSITIVE_INTEGER_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int INTEGER_VALUE_VARIATION_POINT = 5;
    public static final int INTEGER_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int INTEGER_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int INTEGER_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int INTEGER_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int INTEGER_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int INTEGER_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int INTEGER_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int INTEGER_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int INTEGER_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int INTEGER_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int INTEGER_VALUE_VARIATION_POINT__SD = 10;
    public static final int INTEGER_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int INTEGER_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int CONDITION_BY_FORMULA = 6;
    public static final int CONDITION_BY_FORMULA__GCHECKSUM = 0;
    public static final int CONDITION_BY_FORMULA__GTIMESTAMP = 1;
    public static final int CONDITION_BY_FORMULA__CHECKSUM = 2;
    public static final int CONDITION_BY_FORMULA__TIMESTAMP = 3;
    public static final int CONDITION_BY_FORMULA__MIXED = 4;
    public static final int CONDITION_BY_FORMULA__SYSC_STRINGS = 5;
    public static final int CONDITION_BY_FORMULA__SYSCS = 6;
    public static final int CONDITION_BY_FORMULA__BINDING_TIME = 7;
    public static final int CONDITION_BY_FORMULA_FEATURE_COUNT = 8;
    public static final int BOOLEAN_VALUE_VARIATION_POINT = 7;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__SD = 10;
    public static final int BOOLEAN_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int BOOLEAN_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET = 8;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GCHECKSUM = 0;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GTIMESTAMP = 1;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__CHECKSUM = 2;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__TIMESTAMP = 3;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GSHORT_NAME = 4;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__SHORT_NAME = 5;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__LONG_NAME = 6;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GUUID = 7;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GCATEGORY = 8;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GDESC = 9;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__DESC = 10;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__CATEGORY = 11;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__ADMIN_DATA = 12;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__INTRODUCTION = 13;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__ANNOTATIONS = 14;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__UUID = 15;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__ALL_EXTENSIONS = 16;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__CONTAINED_EXTENSIONS = 17;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__GAR_PACKAGE = 18;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__AR_PACKAGE = 19;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__VARIATION_POINT = 20;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET__SW_SYSTEMCONSTANT_VALUES = 21;
    public static final int SW_SYSTEMCONSTANT_VALUE_SET_FEATURE_COUNT = 22;
    public static final int SW_SYSTEMCONST_VALUE = 9;
    public static final int SW_SYSTEMCONST_VALUE__GCHECKSUM = 0;
    public static final int SW_SYSTEMCONST_VALUE__GTIMESTAMP = 1;
    public static final int SW_SYSTEMCONST_VALUE__CHECKSUM = 2;
    public static final int SW_SYSTEMCONST_VALUE__TIMESTAMP = 3;
    public static final int SW_SYSTEMCONST_VALUE__SW_SYSTEMCONSTANT_VALUE_SET = 4;
    public static final int SW_SYSTEMCONST_VALUE__SW_SYSTEMCONST = 5;
    public static final int SW_SYSTEMCONST_VALUE__VALUE = 6;
    public static final int SW_SYSTEMCONST_VALUE__ANNOTATIONS = 7;
    public static final int SW_SYSTEMCONST_VALUE_FEATURE_COUNT = 8;
    public static final int FLOAT_VALUE_VARIATION_POINT = 10;
    public static final int FLOAT_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int FLOAT_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int FLOAT_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int FLOAT_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int FLOAT_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int FLOAT_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int FLOAT_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int FLOAT_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int FLOAT_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int FLOAT_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int FLOAT_VALUE_VARIATION_POINT__SD = 10;
    public static final int FLOAT_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int FLOAT_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT = 11;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__CHECKSUM = 2;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__TIMESTAMP = 3;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__MIXED = 4;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__SYSC_STRINGS = 5;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__SYSCS = 6;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = 7;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__BINDING_TIME = 8;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = 9;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__SD = 10;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT__SHORT_LABEL = 11;
    public static final int UNLIMITED_INTEGER_VALUE_VARIATION_POINT_FEATURE_COUNT = 12;
    public static final int EVALUATED_VARIANT_SET = 12;
    public static final int EVALUATED_VARIANT_SET__GCHECKSUM = 0;
    public static final int EVALUATED_VARIANT_SET__GTIMESTAMP = 1;
    public static final int EVALUATED_VARIANT_SET__CHECKSUM = 2;
    public static final int EVALUATED_VARIANT_SET__TIMESTAMP = 3;
    public static final int EVALUATED_VARIANT_SET__GSHORT_NAME = 4;
    public static final int EVALUATED_VARIANT_SET__SHORT_NAME = 5;
    public static final int EVALUATED_VARIANT_SET__LONG_NAME = 6;
    public static final int EVALUATED_VARIANT_SET__GUUID = 7;
    public static final int EVALUATED_VARIANT_SET__GCATEGORY = 8;
    public static final int EVALUATED_VARIANT_SET__GDESC = 9;
    public static final int EVALUATED_VARIANT_SET__DESC = 10;
    public static final int EVALUATED_VARIANT_SET__CATEGORY = 11;
    public static final int EVALUATED_VARIANT_SET__ADMIN_DATA = 12;
    public static final int EVALUATED_VARIANT_SET__INTRODUCTION = 13;
    public static final int EVALUATED_VARIANT_SET__ANNOTATIONS = 14;
    public static final int EVALUATED_VARIANT_SET__UUID = 15;
    public static final int EVALUATED_VARIANT_SET__ALL_EXTENSIONS = 16;
    public static final int EVALUATED_VARIANT_SET__CONTAINED_EXTENSIONS = 17;
    public static final int EVALUATED_VARIANT_SET__GAR_PACKAGE = 18;
    public static final int EVALUATED_VARIANT_SET__AR_PACKAGE = 19;
    public static final int EVALUATED_VARIANT_SET__VARIATION_POINT = 20;
    public static final int EVALUATED_VARIANT_SET__APPROVAL_STATUS = 21;
    public static final int EVALUATED_VARIANT_SET__EVALUATED_ELEMENTS = 22;
    public static final int EVALUATED_VARIANT_SET__EVALUATED_VARIANTS = 23;
    public static final int EVALUATED_VARIANT_SET_FEATURE_COUNT = 24;
    public static final int PREDEFINED_VARIANT = 13;
    public static final int PREDEFINED_VARIANT__GCHECKSUM = 0;
    public static final int PREDEFINED_VARIANT__GTIMESTAMP = 1;
    public static final int PREDEFINED_VARIANT__CHECKSUM = 2;
    public static final int PREDEFINED_VARIANT__TIMESTAMP = 3;
    public static final int PREDEFINED_VARIANT__GSHORT_NAME = 4;
    public static final int PREDEFINED_VARIANT__SHORT_NAME = 5;
    public static final int PREDEFINED_VARIANT__LONG_NAME = 6;
    public static final int PREDEFINED_VARIANT__GUUID = 7;
    public static final int PREDEFINED_VARIANT__GCATEGORY = 8;
    public static final int PREDEFINED_VARIANT__GDESC = 9;
    public static final int PREDEFINED_VARIANT__DESC = 10;
    public static final int PREDEFINED_VARIANT__CATEGORY = 11;
    public static final int PREDEFINED_VARIANT__ADMIN_DATA = 12;
    public static final int PREDEFINED_VARIANT__INTRODUCTION = 13;
    public static final int PREDEFINED_VARIANT__ANNOTATIONS = 14;
    public static final int PREDEFINED_VARIANT__UUID = 15;
    public static final int PREDEFINED_VARIANT__ALL_EXTENSIONS = 16;
    public static final int PREDEFINED_VARIANT__CONTAINED_EXTENSIONS = 17;
    public static final int PREDEFINED_VARIANT__GAR_PACKAGE = 18;
    public static final int PREDEFINED_VARIANT__AR_PACKAGE = 19;
    public static final int PREDEFINED_VARIANT__VARIATION_POINT = 20;
    public static final int PREDEFINED_VARIANT__INCLUDED_VARIANTS = 21;
    public static final int PREDEFINED_VARIANT__POST_BUILD_VARIANT_CRITERION_VALUE_SETS = 22;
    public static final int PREDEFINED_VARIANT__SW_SYSTEMCONSTANT_VALUE_SETS = 23;
    public static final int PREDEFINED_VARIANT_FEATURE_COUNT = 24;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET = 14;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GCHECKSUM = 0;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GTIMESTAMP = 1;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__CHECKSUM = 2;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__TIMESTAMP = 3;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GSHORT_NAME = 4;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__SHORT_NAME = 5;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__LONG_NAME = 6;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GUUID = 7;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GCATEGORY = 8;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GDESC = 9;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__DESC = 10;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__CATEGORY = 11;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__ADMIN_DATA = 12;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__INTRODUCTION = 13;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__ANNOTATIONS = 14;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__UUID = 15;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__ALL_EXTENSIONS = 16;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__CONTAINED_EXTENSIONS = 17;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__GAR_PACKAGE = 18;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__AR_PACKAGE = 19;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__VARIATION_POINT = 20;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET__POST_BUILD_VARIANT_CRITERION_VALUES = 21;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_SET_FEATURE_COUNT = 22;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE = 15;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__GCHECKSUM = 0;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__GTIMESTAMP = 1;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__CHECKSUM = 2;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__TIMESTAMP = 3;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__POST_BUILD_VARIANT_CRITERION_VALUE_SET = 4;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__VARIANT_CRITERION = 5;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__VALUE = 6;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE__ANNOTATIONS = 7;
    public static final int POST_BUILD_VARIANT_CRITERION_VALUE_FEATURE_COUNT = 8;
    public static final int POST_BUILD_VARIANT_CRITERION = 16;
    public static final int POST_BUILD_VARIANT_CRITERION__GCHECKSUM = 0;
    public static final int POST_BUILD_VARIANT_CRITERION__GTIMESTAMP = 1;
    public static final int POST_BUILD_VARIANT_CRITERION__CHECKSUM = 2;
    public static final int POST_BUILD_VARIANT_CRITERION__TIMESTAMP = 3;
    public static final int POST_BUILD_VARIANT_CRITERION__GSHORT_NAME = 4;
    public static final int POST_BUILD_VARIANT_CRITERION__SHORT_NAME = 5;
    public static final int POST_BUILD_VARIANT_CRITERION__LONG_NAME = 6;
    public static final int POST_BUILD_VARIANT_CRITERION__GUUID = 7;
    public static final int POST_BUILD_VARIANT_CRITERION__GCATEGORY = 8;
    public static final int POST_BUILD_VARIANT_CRITERION__GDESC = 9;
    public static final int POST_BUILD_VARIANT_CRITERION__DESC = 10;
    public static final int POST_BUILD_VARIANT_CRITERION__CATEGORY = 11;
    public static final int POST_BUILD_VARIANT_CRITERION__ADMIN_DATA = 12;
    public static final int POST_BUILD_VARIANT_CRITERION__INTRODUCTION = 13;
    public static final int POST_BUILD_VARIANT_CRITERION__ANNOTATIONS = 14;
    public static final int POST_BUILD_VARIANT_CRITERION__UUID = 15;
    public static final int POST_BUILD_VARIANT_CRITERION__ALL_EXTENSIONS = 16;
    public static final int POST_BUILD_VARIANT_CRITERION__CONTAINED_EXTENSIONS = 17;
    public static final int POST_BUILD_VARIANT_CRITERION__GAR_PACKAGE = 18;
    public static final int POST_BUILD_VARIANT_CRITERION__AR_PACKAGE = 19;
    public static final int POST_BUILD_VARIANT_CRITERION__VARIATION_POINT = 20;
    public static final int POST_BUILD_VARIANT_CRITERION__COMPU_METHOD = 21;
    public static final int POST_BUILD_VARIANT_CRITERION_FEATURE_COUNT = 22;
    public static final int POST_BUILD_VARIANT_CONDITION = 17;
    public static final int POST_BUILD_VARIANT_CONDITION__GCHECKSUM = 0;
    public static final int POST_BUILD_VARIANT_CONDITION__GTIMESTAMP = 1;
    public static final int POST_BUILD_VARIANT_CONDITION__CHECKSUM = 2;
    public static final int POST_BUILD_VARIANT_CONDITION__TIMESTAMP = 3;
    public static final int POST_BUILD_VARIANT_CONDITION__VARIATION_POINT = 4;
    public static final int POST_BUILD_VARIANT_CONDITION__MATCHING_CRITERION = 5;
    public static final int POST_BUILD_VARIANT_CONDITION__VALUE = 6;
    public static final int POST_BUILD_VARIANT_CONDITION_FEATURE_COUNT = 7;
    public static final int VARIATION_POINT = 18;
    public static final int VARIATION_POINT__GCHECKSUM = 0;
    public static final int VARIATION_POINT__GTIMESTAMP = 1;
    public static final int VARIATION_POINT__CHECKSUM = 2;
    public static final int VARIATION_POINT__TIMESTAMP = 3;
    public static final int VARIATION_POINT__SHORT_LABEL = 4;
    public static final int VARIATION_POINT__DESC = 5;
    public static final int VARIATION_POINT__BLUEPRINT_CONDITION = 6;
    public static final int VARIATION_POINT__SW_SYSCOND = 7;
    public static final int VARIATION_POINT__POST_BUILD_VARIANT_CONDITIONS = 8;
    public static final int VARIATION_POINT__SDG = 9;
    public static final int VARIATION_POINT_FEATURE_COUNT = 10;
    public static final int BINDING_TIME_ENUM = 19;

    public EClass getAbstractNumericalVariationPoint();

    public EClass getAttributeValueVariationPoint();

    public EReference getAttributeValueVariationPoint_VariationPointProxy();

    public EAttribute getAttributeValueVariationPoint_BindingTime();

    public EAttribute getAttributeValueVariationPoint_BlueprintValue();

    public EAttribute getAttributeValueVariationPoint_Sd();

    public EAttribute getAttributeValueVariationPoint_ShortLabel();

    public EClass getSwSystemconstDependentFormula();

    public EReference getSwSystemconstDependentFormula_SyscStrings();

    public EReference getSwSystemconstDependentFormula_Syscs();

    public EClass getNumericalValueVariationPoint();

    public EClass getPositiveIntegerValueVariationPoint();

    public EClass getIntegerValueVariationPoint();

    public EClass getConditionByFormula();

    public EAttribute getConditionByFormula_BindingTime();

    public EClass getBooleanValueVariationPoint();

    public EClass getSwSystemconstantValueSet();

    public EReference getSwSystemconstantValueSet_SwSystemconstantValues();

    public EClass getSwSystemconstValue();

    public EReference getSwSystemconstValue_SwSystemconstantValueSet();

    public EReference getSwSystemconstValue_SwSystemconst();

    public EReference getSwSystemconstValue_Value();

    public EReference getSwSystemconstValue_Annotations();

    public EClass getFloatValueVariationPoint();

    public EClass getUnlimitedIntegerValueVariationPoint();

    public EClass getEvaluatedVariantSet();

    public EAttribute getEvaluatedVariantSet_ApprovalStatus();

    public EReference getEvaluatedVariantSet_EvaluatedElements();

    public EReference getEvaluatedVariantSet_EvaluatedVariants();

    public EClass getPredefinedVariant();

    public EReference getPredefinedVariant_IncludedVariants();

    public EReference getPredefinedVariant_PostBuildVariantCriterionValueSets();

    public EReference getPredefinedVariant_SwSystemconstantValueSets();

    public EClass getPostBuildVariantCriterionValueSet();

    public EReference getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues();

    public EClass getPostBuildVariantCriterionValue();

    public EReference getPostBuildVariantCriterionValue_PostBuildVariantCriterionValueSet();

    public EReference getPostBuildVariantCriterionValue_VariantCriterion();

    public EReference getPostBuildVariantCriterionValue_Value();

    public EReference getPostBuildVariantCriterionValue_Annotations();

    public EClass getPostBuildVariantCriterion();

    public EReference getPostBuildVariantCriterion_CompuMethod();

    public EClass getPostBuildVariantCondition();

    public EReference getPostBuildVariantCondition_VariationPoint();

    public EReference getPostBuildVariantCondition_MatchingCriterion();

    public EReference getPostBuildVariantCondition_Value();

    public EClass getVariationPoint();

    public EAttribute getVariationPoint_ShortLabel();

    public EReference getVariationPoint_Desc();

    public EReference getVariationPoint_BlueprintCondition();

    public EReference getVariationPoint_SwSyscond();

    public EReference getVariationPoint_PostBuildVariantConditions();

    public EReference getVariationPoint_Sdg();

    public EEnum getBindingTimeEnum();

    public VarianthandlingFactory getVarianthandlingFactory();

    public static interface Literals {
        public static final EClass ABSTRACT_NUMERICAL_VARIATION_POINT = eINSTANCE.getAbstractNumericalVariationPoint();
        public static final EClass ATTRIBUTE_VALUE_VARIATION_POINT = eINSTANCE.getAttributeValueVariationPoint();
        public static final EReference ATTRIBUTE_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY = eINSTANCE.getAttributeValueVariationPoint_VariationPointProxy();
        public static final EAttribute ATTRIBUTE_VALUE_VARIATION_POINT__BINDING_TIME = eINSTANCE.getAttributeValueVariationPoint_BindingTime();
        public static final EAttribute ATTRIBUTE_VALUE_VARIATION_POINT__BLUEPRINT_VALUE = eINSTANCE.getAttributeValueVariationPoint_BlueprintValue();
        public static final EAttribute ATTRIBUTE_VALUE_VARIATION_POINT__SD = eINSTANCE.getAttributeValueVariationPoint_Sd();
        public static final EAttribute ATTRIBUTE_VALUE_VARIATION_POINT__SHORT_LABEL = eINSTANCE.getAttributeValueVariationPoint_ShortLabel();
        public static final EClass SW_SYSTEMCONST_DEPENDENT_FORMULA = eINSTANCE.getSwSystemconstDependentFormula();
        public static final EReference SW_SYSTEMCONST_DEPENDENT_FORMULA__SYSC_STRINGS = eINSTANCE.getSwSystemconstDependentFormula_SyscStrings();
        public static final EReference SW_SYSTEMCONST_DEPENDENT_FORMULA__SYSCS = eINSTANCE.getSwSystemconstDependentFormula_Syscs();
        public static final EClass NUMERICAL_VALUE_VARIATION_POINT = eINSTANCE.getNumericalValueVariationPoint();
        public static final EClass POSITIVE_INTEGER_VALUE_VARIATION_POINT = eINSTANCE.getPositiveIntegerValueVariationPoint();
        public static final EClass INTEGER_VALUE_VARIATION_POINT = eINSTANCE.getIntegerValueVariationPoint();
        public static final EClass CONDITION_BY_FORMULA = eINSTANCE.getConditionByFormula();
        public static final EAttribute CONDITION_BY_FORMULA__BINDING_TIME = eINSTANCE.getConditionByFormula_BindingTime();
        public static final EClass BOOLEAN_VALUE_VARIATION_POINT = eINSTANCE.getBooleanValueVariationPoint();
        public static final EClass SW_SYSTEMCONSTANT_VALUE_SET = eINSTANCE.getSwSystemconstantValueSet();
        public static final EReference SW_SYSTEMCONSTANT_VALUE_SET__SW_SYSTEMCONSTANT_VALUES = eINSTANCE.getSwSystemconstantValueSet_SwSystemconstantValues();
        public static final EClass SW_SYSTEMCONST_VALUE = eINSTANCE.getSwSystemconstValue();
        public static final EReference SW_SYSTEMCONST_VALUE__SW_SYSTEMCONSTANT_VALUE_SET = eINSTANCE.getSwSystemconstValue_SwSystemconstantValueSet();
        public static final EReference SW_SYSTEMCONST_VALUE__SW_SYSTEMCONST = eINSTANCE.getSwSystemconstValue_SwSystemconst();
        public static final EReference SW_SYSTEMCONST_VALUE__VALUE = eINSTANCE.getSwSystemconstValue_Value();
        public static final EReference SW_SYSTEMCONST_VALUE__ANNOTATIONS = eINSTANCE.getSwSystemconstValue_Annotations();
        public static final EClass FLOAT_VALUE_VARIATION_POINT = eINSTANCE.getFloatValueVariationPoint();
        public static final EClass UNLIMITED_INTEGER_VALUE_VARIATION_POINT = eINSTANCE.getUnlimitedIntegerValueVariationPoint();
        public static final EClass EVALUATED_VARIANT_SET = eINSTANCE.getEvaluatedVariantSet();
        public static final EAttribute EVALUATED_VARIANT_SET__APPROVAL_STATUS = eINSTANCE.getEvaluatedVariantSet_ApprovalStatus();
        public static final EReference EVALUATED_VARIANT_SET__EVALUATED_ELEMENTS = eINSTANCE.getEvaluatedVariantSet_EvaluatedElements();
        public static final EReference EVALUATED_VARIANT_SET__EVALUATED_VARIANTS = eINSTANCE.getEvaluatedVariantSet_EvaluatedVariants();
        public static final EClass PREDEFINED_VARIANT = eINSTANCE.getPredefinedVariant();
        public static final EReference PREDEFINED_VARIANT__INCLUDED_VARIANTS = eINSTANCE.getPredefinedVariant_IncludedVariants();
        public static final EReference PREDEFINED_VARIANT__POST_BUILD_VARIANT_CRITERION_VALUE_SETS = eINSTANCE.getPredefinedVariant_PostBuildVariantCriterionValueSets();
        public static final EReference PREDEFINED_VARIANT__SW_SYSTEMCONSTANT_VALUE_SETS = eINSTANCE.getPredefinedVariant_SwSystemconstantValueSets();
        public static final EClass POST_BUILD_VARIANT_CRITERION_VALUE_SET = eINSTANCE.getPostBuildVariantCriterionValueSet();
        public static final EReference POST_BUILD_VARIANT_CRITERION_VALUE_SET__POST_BUILD_VARIANT_CRITERION_VALUES = eINSTANCE.getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues();
        public static final EClass POST_BUILD_VARIANT_CRITERION_VALUE = eINSTANCE.getPostBuildVariantCriterionValue();
        public static final EReference POST_BUILD_VARIANT_CRITERION_VALUE__POST_BUILD_VARIANT_CRITERION_VALUE_SET = eINSTANCE.getPostBuildVariantCriterionValue_PostBuildVariantCriterionValueSet();
        public static final EReference POST_BUILD_VARIANT_CRITERION_VALUE__VARIANT_CRITERION = eINSTANCE.getPostBuildVariantCriterionValue_VariantCriterion();
        public static final EReference POST_BUILD_VARIANT_CRITERION_VALUE__VALUE = eINSTANCE.getPostBuildVariantCriterionValue_Value();
        public static final EReference POST_BUILD_VARIANT_CRITERION_VALUE__ANNOTATIONS = eINSTANCE.getPostBuildVariantCriterionValue_Annotations();
        public static final EClass POST_BUILD_VARIANT_CRITERION = eINSTANCE.getPostBuildVariantCriterion();
        public static final EReference POST_BUILD_VARIANT_CRITERION__COMPU_METHOD = eINSTANCE.getPostBuildVariantCriterion_CompuMethod();
        public static final EClass POST_BUILD_VARIANT_CONDITION = eINSTANCE.getPostBuildVariantCondition();
        public static final EReference POST_BUILD_VARIANT_CONDITION__VARIATION_POINT = eINSTANCE.getPostBuildVariantCondition_VariationPoint();
        public static final EReference POST_BUILD_VARIANT_CONDITION__MATCHING_CRITERION = eINSTANCE.getPostBuildVariantCondition_MatchingCriterion();
        public static final EReference POST_BUILD_VARIANT_CONDITION__VALUE = eINSTANCE.getPostBuildVariantCondition_Value();
        public static final EClass VARIATION_POINT = eINSTANCE.getVariationPoint();
        public static final EAttribute VARIATION_POINT__SHORT_LABEL = eINSTANCE.getVariationPoint_ShortLabel();
        public static final EReference VARIATION_POINT__DESC = eINSTANCE.getVariationPoint_Desc();
        public static final EReference VARIATION_POINT__BLUEPRINT_CONDITION = eINSTANCE.getVariationPoint_BlueprintCondition();
        public static final EReference VARIATION_POINT__SW_SYSCOND = eINSTANCE.getVariationPoint_SwSyscond();
        public static final EReference VARIATION_POINT__POST_BUILD_VARIANT_CONDITIONS = eINSTANCE.getVariationPoint_PostBuildVariantConditions();
        public static final EReference VARIATION_POINT__SDG = eINSTANCE.getVariationPoint_Sdg();
        public static final EEnum BINDING_TIME_ENUM = eINSTANCE.getBindingTimeEnum();
    }
}

