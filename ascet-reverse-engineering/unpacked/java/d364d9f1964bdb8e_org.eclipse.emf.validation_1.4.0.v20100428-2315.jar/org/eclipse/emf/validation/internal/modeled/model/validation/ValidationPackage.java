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
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationFactory;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ValidationPackageImpl;

public interface ValidationPackage
extends EPackage {
    public static final String eNAME = "validation";
    public static final String eNS_URI = "http://www.eclipse.org/emf/2009/Validation";
    public static final String eNS_PREFIX = "validation";
    public static final ValidationPackage eINSTANCE = ValidationPackageImpl.init();
    public static final int CATEGORY = 0;
    public static final int CATEGORY__SUB_CATEGORIES = 0;
    public static final int CATEGORY__ID = 1;
    public static final int CATEGORY__MANDATORY = 2;
    public static final int CATEGORY__NAME = 3;
    public static final int CATEGORY__PARENT_CATEGORY = 4;
    public static final int CATEGORY_FEATURE_COUNT = 5;
    public static final int CONSTRAINT_PROVIDER = 1;
    public static final int CONSTRAINT_PROVIDER__CACHE = 0;
    public static final int CONSTRAINT_PROVIDER__DESCRIPTION = 1;
    public static final int CONSTRAINT_PROVIDER__TARGET = 2;
    public static final int CONSTRAINT_PROVIDER__MODE = 3;
    public static final int CONSTRAINT_PROVIDER__CLASS_NAME = 4;
    public static final int CONSTRAINT_PROVIDER__CONSTRAINTS = 5;
    public static final int CONSTRAINT_PROVIDER__PACKAGE = 6;
    public static final int CONSTRAINT_PROVIDER__PLUGIN_ID = 7;
    public static final int CONSTRAINT_PROVIDER_FEATURE_COUNT = 8;
    public static final int TARGET = 2;
    public static final int TARGET__FEATURE = 0;
    public static final int TARGET__ECLASS = 1;
    public static final int TARGET_FEATURE_COUNT = 2;
    public static final int EVENT = 3;
    public static final int EVENT__FEATURE = 0;
    public static final int EVENT__ECLASS = 1;
    public static final int EVENT__NAME = 2;
    public static final int EVENT_FEATURE_COUNT = 3;
    public static final int CUSTOM_EVENT = 4;
    public static final int CUSTOM_EVENT__FEATURE = 0;
    public static final int CUSTOM_EVENT__ECLASS = 1;
    public static final int CUSTOM_EVENT__NAME = 2;
    public static final int CUSTOM_EVENT_FEATURE_COUNT = 3;
    public static final int FEATURE = 5;
    public static final int FEATURE_FEATURE_COUNT = 0;
    public static final int CONSTRAINT = 6;
    public static final int CONSTRAINT__ID = 0;
    public static final int CONSTRAINT__NAME = 1;
    public static final int CONSTRAINT__SEVERITY = 2;
    public static final int CONSTRAINT__STATUS_CODE = 3;
    public static final int CONSTRAINT__CLASS_NAME = 4;
    public static final int CONSTRAINT__MODE = 5;
    public static final int CONSTRAINT__IS_ENABLED_BY_DEFAULT = 6;
    public static final int CONSTRAINT__DESCRIPTION = 7;
    public static final int CONSTRAINT__MESSAGE = 8;
    public static final int CONSTRAINT__PARAMETERS = 9;
    public static final int CONSTRAINT__TARGET = 10;
    public static final int CONSTRAINT__LANG = 11;
    public static final int CONSTRAINT_FEATURE_COUNT = 12;
    public static final int PARAMETER = 7;
    public static final int PARAMETER__KEY = 0;
    public static final int PARAMETER__VALUE = 1;
    public static final int PARAMETER_FEATURE_COUNT = 2;
    public static final int CONSTRAINTS = 8;
    public static final int CONSTRAINTS__CONSTRAINTS = 0;
    public static final int CONSTRAINTS__INCLUDE = 1;
    public static final int CONSTRAINTS__CATEGORIES = 2;
    public static final int CONSTRAINTS_FEATURE_COUNT = 3;
    public static final int CONSTRAINTS_BUNDLE = 9;
    public static final int CONSTRAINTS_BUNDLE__PROVIDERS = 0;
    public static final int CONSTRAINTS_BUNDLE__CATEGORIES = 1;
    public static final int CONSTRAINTS_BUNDLE__CONSTRAINT_BINDINGS_BUNDLES = 2;
    public static final int CONSTRAINTS_BUNDLE__PARSERS = 3;
    public static final int CONSTRAINTS_BUNDLE__MESSAGE_BUNDLE_PATH = 4;
    public static final int CONSTRAINTS_BUNDLE_FEATURE_COUNT = 5;
    public static final int UNPARSED_CONSTRAINT = 10;
    public static final int UNPARSED_CONSTRAINT__ID = 0;
    public static final int UNPARSED_CONSTRAINT__NAME = 1;
    public static final int UNPARSED_CONSTRAINT__SEVERITY = 2;
    public static final int UNPARSED_CONSTRAINT__STATUS_CODE = 3;
    public static final int UNPARSED_CONSTRAINT__CLASS_NAME = 4;
    public static final int UNPARSED_CONSTRAINT__MODE = 5;
    public static final int UNPARSED_CONSTRAINT__IS_ENABLED_BY_DEFAULT = 6;
    public static final int UNPARSED_CONSTRAINT__DESCRIPTION = 7;
    public static final int UNPARSED_CONSTRAINT__MESSAGE = 8;
    public static final int UNPARSED_CONSTRAINT__PARAMETERS = 9;
    public static final int UNPARSED_CONSTRAINT__TARGET = 10;
    public static final int UNPARSED_CONSTRAINT__LANG = 11;
    public static final int UNPARSED_CONSTRAINT__BODY = 12;
    public static final int UNPARSED_CONSTRAINT_FEATURE_COUNT = 13;
    public static final int OCL_CONSTRAINT = 11;
    public static final int OCL_CONSTRAINT_FEATURE_COUNT = 0;
    public static final int PARSER = 12;
    public static final int PARSER__LANGUAGE = 0;
    public static final int PARSER__CLASS_NAME = 1;
    public static final int PARSER_FEATURE_COUNT = 2;
    public static final int TRAVERSAL_STRATEGY = 13;
    public static final int TRAVERSAL_STRATEGY__CLASS = 0;
    public static final int TRAVERSAL_STRATEGY__PACKAGE = 1;
    public static final int TRAVERSAL_STRATEGY_FEATURE_COUNT = 2;
    public static final int CONSTRAINT_BINDINGS_BUNDLE = 14;
    public static final int CONSTRAINT_BINDINGS_BUNDLE__CLIENT_CONTEXTS = 0;
    public static final int CONSTRAINT_BINDINGS_BUNDLE__BINDINGS = 1;
    public static final int CONSTRAINT_BINDINGS_BUNDLE_FEATURE_COUNT = 2;
    public static final int CLIENT_CONTEXT = 15;
    public static final int CLIENT_CONTEXT__ID = 0;
    public static final int CLIENT_CONTEXT__DEFAULT = 1;
    public static final int CLIENT_CONTEXT_FEATURE_COUNT = 2;
    public static final int BINDING = 16;
    public static final int BINDING__CLIENT_CONTEXTS = 0;
    public static final int BINDING__CONSTRAINTS = 1;
    public static final int BINDING__EXCLUDED_CONSTRAINTS = 2;
    public static final int BINDING__CATEGORIES = 3;
    public static final int BINDING__EXCLUDED_CATEGORIES = 4;
    public static final int BINDING_FEATURE_COUNT = 5;
    public static final int ENABLEMENT = 17;
    public static final int ENABLEMENT__ID = 0;
    public static final int ENABLEMENT__DEFAULT = 1;
    public static final int ENABLEMENT__DOM_EXPRESSION = 2;
    public static final int ENABLEMENT_FEATURE_COUNT = 3;
    public static final int SELECTOR = 18;
    public static final int SELECTOR__ID = 0;
    public static final int SELECTOR__DEFAULT = 1;
    public static final int SELECTOR__CLASS_NAME = 2;
    public static final int SELECTOR_FEATURE_COUNT = 3;
    public static final int EVENT_TYPES_ENUM = 19;
    public static final int MODE_ENUM = 20;
    public static final int SEVERITY_ENUM = 21;

    public EClass getCategory();

    public EReference getCategory_SubCategories();

    public EAttribute getCategory_Id();

    public EAttribute getCategory_Mandatory();

    public EAttribute getCategory_Name();

    public EReference getCategory_ParentCategory();

    public EClass getConstraintProvider();

    public EAttribute getConstraintProvider_Cache();

    public EAttribute getConstraintProvider_Description();

    public EReference getConstraintProvider_Target();

    public EAttribute getConstraintProvider_Mode();

    public EAttribute getConstraintProvider_ClassName();

    public EReference getConstraintProvider_Constraints();

    public EReference getConstraintProvider_Package();

    public EAttribute getConstraintProvider_PluginId();

    public EClass getTarget();

    public EReference getTarget_Feature();

    public EReference getTarget_EClass();

    public EClass getEvent();

    public EAttribute getEvent_Name();

    public EClass getCustomEvent();

    public EAttribute getCustomEvent_Name();

    public EClass getFeature();

    public EClass getConstraint();

    public EAttribute getConstraint_Id();

    public EAttribute getConstraint_Name();

    public EAttribute getConstraint_Severity();

    public EAttribute getConstraint_StatusCode();

    public EAttribute getConstraint_ClassName();

    public EAttribute getConstraint_Mode();

    public EAttribute getConstraint_IsEnabledByDefault();

    public EAttribute getConstraint_Description();

    public EAttribute getConstraint_Message();

    public EReference getConstraint_Parameters();

    public EReference getConstraint_Target();

    public EAttribute getConstraint_Lang();

    public EClass getParameter();

    public EAttribute getParameter_Key();

    public EAttribute getParameter_Value();

    public EClass getConstraints();

    public EReference getConstraints_Constraints();

    public EAttribute getConstraints_Include();

    public EReference getConstraints_Categories();

    public EClass getConstraintsBundle();

    public EReference getConstraintsBundle_Providers();

    public EReference getConstraintsBundle_Categories();

    public EReference getConstraintsBundle_ConstraintBindingsBundles();

    public EReference getConstraintsBundle_Parsers();

    public EAttribute getConstraintsBundle_MessageBundlePath();

    public EClass getUnparsedConstraint();

    public EAttribute getUnparsedConstraint_Body();

    public EClass getOclConstraint();

    public EClass getParser();

    public EAttribute getParser_Language();

    public EAttribute getParser_ClassName();

    public EClass getTraversalStrategy();

    public EAttribute getTraversalStrategy_Class();

    public EReference getTraversalStrategy_Package();

    public EClass getConstraintBindingsBundle();

    public EReference getConstraintBindingsBundle_ClientContexts();

    public EReference getConstraintBindingsBundle_Bindings();

    public EClass getClientContext();

    public EAttribute getClientContext_Id();

    public EAttribute getClientContext_Default();

    public EClass getBinding();

    public EReference getBinding_ClientContexts();

    public EReference getBinding_Constraints();

    public EReference getBinding_ExcludedConstraints();

    public EReference getBinding_Categories();

    public EReference getBinding_ExcludedCategories();

    public EClass getEnablement();

    public EAttribute getEnablement_DomExpression();

    public EClass getSelector();

    public EAttribute getSelector_ClassName();

    public EEnum getEventTypesEnum();

    public EEnum getModeEnum();

    public EEnum getSeverityEnum();

    public ValidationFactory getValidationFactory();

    public static interface Literals {
        public static final EClass CATEGORY = eINSTANCE.getCategory();
        public static final EReference CATEGORY__SUB_CATEGORIES = eINSTANCE.getCategory_SubCategories();
        public static final EAttribute CATEGORY__ID = eINSTANCE.getCategory_Id();
        public static final EAttribute CATEGORY__MANDATORY = eINSTANCE.getCategory_Mandatory();
        public static final EAttribute CATEGORY__NAME = eINSTANCE.getCategory_Name();
        public static final EReference CATEGORY__PARENT_CATEGORY = eINSTANCE.getCategory_ParentCategory();
        public static final EClass CONSTRAINT_PROVIDER = eINSTANCE.getConstraintProvider();
        public static final EAttribute CONSTRAINT_PROVIDER__CACHE = eINSTANCE.getConstraintProvider_Cache();
        public static final EAttribute CONSTRAINT_PROVIDER__DESCRIPTION = eINSTANCE.getConstraintProvider_Description();
        public static final EReference CONSTRAINT_PROVIDER__TARGET = eINSTANCE.getConstraintProvider_Target();
        public static final EAttribute CONSTRAINT_PROVIDER__MODE = eINSTANCE.getConstraintProvider_Mode();
        public static final EAttribute CONSTRAINT_PROVIDER__CLASS_NAME = eINSTANCE.getConstraintProvider_ClassName();
        public static final EReference CONSTRAINT_PROVIDER__CONSTRAINTS = eINSTANCE.getConstraintProvider_Constraints();
        public static final EReference CONSTRAINT_PROVIDER__PACKAGE = eINSTANCE.getConstraintProvider_Package();
        public static final EAttribute CONSTRAINT_PROVIDER__PLUGIN_ID = eINSTANCE.getConstraintProvider_PluginId();
        public static final EClass TARGET = eINSTANCE.getTarget();
        public static final EReference TARGET__FEATURE = eINSTANCE.getTarget_Feature();
        public static final EReference TARGET__ECLASS = eINSTANCE.getTarget_EClass();
        public static final EClass EVENT = eINSTANCE.getEvent();
        public static final EAttribute EVENT__NAME = eINSTANCE.getEvent_Name();
        public static final EClass CUSTOM_EVENT = eINSTANCE.getCustomEvent();
        public static final EAttribute CUSTOM_EVENT__NAME = eINSTANCE.getCustomEvent_Name();
        public static final EClass FEATURE = eINSTANCE.getFeature();
        public static final EClass CONSTRAINT = eINSTANCE.getConstraint();
        public static final EAttribute CONSTRAINT__ID = eINSTANCE.getConstraint_Id();
        public static final EAttribute CONSTRAINT__NAME = eINSTANCE.getConstraint_Name();
        public static final EAttribute CONSTRAINT__SEVERITY = eINSTANCE.getConstraint_Severity();
        public static final EAttribute CONSTRAINT__STATUS_CODE = eINSTANCE.getConstraint_StatusCode();
        public static final EAttribute CONSTRAINT__CLASS_NAME = eINSTANCE.getConstraint_ClassName();
        public static final EAttribute CONSTRAINT__MODE = eINSTANCE.getConstraint_Mode();
        public static final EAttribute CONSTRAINT__IS_ENABLED_BY_DEFAULT = eINSTANCE.getConstraint_IsEnabledByDefault();
        public static final EAttribute CONSTRAINT__DESCRIPTION = eINSTANCE.getConstraint_Description();
        public static final EAttribute CONSTRAINT__MESSAGE = eINSTANCE.getConstraint_Message();
        public static final EReference CONSTRAINT__PARAMETERS = eINSTANCE.getConstraint_Parameters();
        public static final EReference CONSTRAINT__TARGET = eINSTANCE.getConstraint_Target();
        public static final EAttribute CONSTRAINT__LANG = eINSTANCE.getConstraint_Lang();
        public static final EClass PARAMETER = eINSTANCE.getParameter();
        public static final EAttribute PARAMETER__KEY = eINSTANCE.getParameter_Key();
        public static final EAttribute PARAMETER__VALUE = eINSTANCE.getParameter_Value();
        public static final EClass CONSTRAINTS = eINSTANCE.getConstraints();
        public static final EReference CONSTRAINTS__CONSTRAINTS = eINSTANCE.getConstraints_Constraints();
        public static final EAttribute CONSTRAINTS__INCLUDE = eINSTANCE.getConstraints_Include();
        public static final EReference CONSTRAINTS__CATEGORIES = eINSTANCE.getConstraints_Categories();
        public static final EClass CONSTRAINTS_BUNDLE = eINSTANCE.getConstraintsBundle();
        public static final EReference CONSTRAINTS_BUNDLE__PROVIDERS = eINSTANCE.getConstraintsBundle_Providers();
        public static final EReference CONSTRAINTS_BUNDLE__CATEGORIES = eINSTANCE.getConstraintsBundle_Categories();
        public static final EReference CONSTRAINTS_BUNDLE__CONSTRAINT_BINDINGS_BUNDLES = eINSTANCE.getConstraintsBundle_ConstraintBindingsBundles();
        public static final EReference CONSTRAINTS_BUNDLE__PARSERS = eINSTANCE.getConstraintsBundle_Parsers();
        public static final EAttribute CONSTRAINTS_BUNDLE__MESSAGE_BUNDLE_PATH = eINSTANCE.getConstraintsBundle_MessageBundlePath();
        public static final EClass UNPARSED_CONSTRAINT = eINSTANCE.getUnparsedConstraint();
        public static final EAttribute UNPARSED_CONSTRAINT__BODY = eINSTANCE.getUnparsedConstraint_Body();
        public static final EClass OCL_CONSTRAINT = eINSTANCE.getOclConstraint();
        public static final EClass PARSER = eINSTANCE.getParser();
        public static final EAttribute PARSER__LANGUAGE = eINSTANCE.getParser_Language();
        public static final EAttribute PARSER__CLASS_NAME = eINSTANCE.getParser_ClassName();
        public static final EClass TRAVERSAL_STRATEGY = eINSTANCE.getTraversalStrategy();
        public static final EAttribute TRAVERSAL_STRATEGY__CLASS = eINSTANCE.getTraversalStrategy_Class();
        public static final EReference TRAVERSAL_STRATEGY__PACKAGE = eINSTANCE.getTraversalStrategy_Package();
        public static final EClass CONSTRAINT_BINDINGS_BUNDLE = eINSTANCE.getConstraintBindingsBundle();
        public static final EReference CONSTRAINT_BINDINGS_BUNDLE__CLIENT_CONTEXTS = eINSTANCE.getConstraintBindingsBundle_ClientContexts();
        public static final EReference CONSTRAINT_BINDINGS_BUNDLE__BINDINGS = eINSTANCE.getConstraintBindingsBundle_Bindings();
        public static final EClass CLIENT_CONTEXT = eINSTANCE.getClientContext();
        public static final EAttribute CLIENT_CONTEXT__ID = eINSTANCE.getClientContext_Id();
        public static final EAttribute CLIENT_CONTEXT__DEFAULT = eINSTANCE.getClientContext_Default();
        public static final EClass BINDING = eINSTANCE.getBinding();
        public static final EReference BINDING__CLIENT_CONTEXTS = eINSTANCE.getBinding_ClientContexts();
        public static final EReference BINDING__CONSTRAINTS = eINSTANCE.getBinding_Constraints();
        public static final EReference BINDING__EXCLUDED_CONSTRAINTS = eINSTANCE.getBinding_ExcludedConstraints();
        public static final EReference BINDING__CATEGORIES = eINSTANCE.getBinding_Categories();
        public static final EReference BINDING__EXCLUDED_CATEGORIES = eINSTANCE.getBinding_ExcludedCategories();
        public static final EClass ENABLEMENT = eINSTANCE.getEnablement();
        public static final EAttribute ENABLEMENT__DOM_EXPRESSION = eINSTANCE.getEnablement_DomExpression();
        public static final EClass SELECTOR = eINSTANCE.getSelector();
        public static final EAttribute SELECTOR__CLASS_NAME = eINSTANCE.getSelector_ClassName();
        public static final EEnum EVENT_TYPES_ENUM = eINSTANCE.getEventTypesEnum();
        public static final EEnum MODE_ENUM = eINSTANCE.getModeEnum();
        public static final EEnum SEVERITY_ENUM = eINSTANCE.getSeverityEnum();
    }
}

