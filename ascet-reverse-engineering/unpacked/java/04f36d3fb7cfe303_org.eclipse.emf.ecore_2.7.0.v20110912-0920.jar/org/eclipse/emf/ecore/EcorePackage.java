/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.impl.EcorePackageImpl;

public interface EcorePackage
extends EPackage {
    public static final String eNAME = "ecore";
    public static final String eNS_URI = "http://www.eclipse.org/emf/2002/Ecore";
    public static final String eNS_PREFIX = "ecore";
    public static final String eCONTENT_TYPE = "org.eclipse.emf.ecore";
    public static final EcorePackage eINSTANCE = EcorePackageImpl.init();
    public static final int EOBJECT = 10;
    public static final int EMODEL_ELEMENT = 8;
    public static final int EMODEL_ELEMENT__EANNOTATIONS = 0;
    public static final int EMODEL_ELEMENT_FEATURE_COUNT = 1;
    public static final int EMODEL_ELEMENT___GET_EANNOTATION__STRING = 0;
    public static final int EMODEL_ELEMENT_OPERATION_COUNT = 1;
    public static final int ENAMED_ELEMENT = 9;
    public static final int ENAMED_ELEMENT__EANNOTATIONS = 0;
    public static final int ENAMED_ELEMENT__NAME = 1;
    public static final int ENAMED_ELEMENT_FEATURE_COUNT = 2;
    public static final int ENAMED_ELEMENT___GET_EANNOTATION__STRING = 0;
    public static final int ENAMED_ELEMENT_OPERATION_COUNT = 1;
    public static final int ESTRUCTURAL_FEATURE = 15;
    public static final int EATTRIBUTE = 0;
    public static final int ECLASS = 2;
    public static final int ETYPED_ELEMENT = 16;
    public static final int EDATA_TYPE = 4;
    public static final int EENUM = 5;
    public static final int EENUM_LITERAL = 6;
    public static final int EFACTORY = 7;
    public static final int EOPERATION = 11;
    public static final int EPACKAGE = 12;
    public static final int EPARAMETER = 13;
    public static final int EREFERENCE = 14;
    public static final int ETYPED_ELEMENT__EANNOTATIONS = 0;
    public static final int ETYPED_ELEMENT__NAME = 1;
    public static final int ETYPED_ELEMENT__ORDERED = 2;
    public static final int ETYPED_ELEMENT__UNIQUE = 3;
    public static final int ETYPED_ELEMENT__LOWER_BOUND = 4;
    public static final int ETYPED_ELEMENT__UPPER_BOUND = 5;
    public static final int ETYPED_ELEMENT__MANY = 6;
    public static final int ETYPED_ELEMENT__REQUIRED = 7;
    public static final int ETYPED_ELEMENT__ETYPE = 8;
    public static final int ETYPED_ELEMENT__EGENERIC_TYPE = 9;
    public static final int ETYPED_ELEMENT_FEATURE_COUNT = 10;
    public static final int ETYPED_ELEMENT___GET_EANNOTATION__STRING = 0;
    public static final int ETYPED_ELEMENT_OPERATION_COUNT = 1;
    public static final int ESTRUCTURAL_FEATURE__EANNOTATIONS = 0;
    public static final int ESTRUCTURAL_FEATURE__NAME = 1;
    public static final int ESTRUCTURAL_FEATURE__ORDERED = 2;
    public static final int ESTRUCTURAL_FEATURE__UNIQUE = 3;
    public static final int ESTRUCTURAL_FEATURE__LOWER_BOUND = 4;
    public static final int ESTRUCTURAL_FEATURE__UPPER_BOUND = 5;
    public static final int ESTRUCTURAL_FEATURE__MANY = 6;
    public static final int ESTRUCTURAL_FEATURE__REQUIRED = 7;
    public static final int ESTRUCTURAL_FEATURE__ETYPE = 8;
    public static final int ESTRUCTURAL_FEATURE__EGENERIC_TYPE = 9;
    public static final int ESTRUCTURAL_FEATURE__CHANGEABLE = 10;
    public static final int ESTRUCTURAL_FEATURE__VOLATILE = 11;
    public static final int ESTRUCTURAL_FEATURE__TRANSIENT = 12;
    public static final int ESTRUCTURAL_FEATURE__DEFAULT_VALUE_LITERAL = 13;
    public static final int ESTRUCTURAL_FEATURE__DEFAULT_VALUE = 14;
    public static final int ESTRUCTURAL_FEATURE__UNSETTABLE = 15;
    public static final int ESTRUCTURAL_FEATURE__DERIVED = 16;
    public static final int ESTRUCTURAL_FEATURE__ECONTAINING_CLASS = 17;
    public static final int ESTRUCTURAL_FEATURE_FEATURE_COUNT = 18;
    public static final int ESTRUCTURAL_FEATURE___GET_EANNOTATION__STRING = 0;
    public static final int ESTRUCTURAL_FEATURE___GET_FEATURE_ID = 1;
    public static final int ESTRUCTURAL_FEATURE___GET_CONTAINER_CLASS = 2;
    public static final int ESTRUCTURAL_FEATURE_OPERATION_COUNT = 3;
    public static final int EATTRIBUTE__EANNOTATIONS = 0;
    public static final int EATTRIBUTE__NAME = 1;
    public static final int EATTRIBUTE__ORDERED = 2;
    public static final int EATTRIBUTE__UNIQUE = 3;
    public static final int EATTRIBUTE__LOWER_BOUND = 4;
    public static final int EATTRIBUTE__UPPER_BOUND = 5;
    public static final int EATTRIBUTE__MANY = 6;
    public static final int EATTRIBUTE__REQUIRED = 7;
    public static final int EATTRIBUTE__ETYPE = 8;
    public static final int EATTRIBUTE__EGENERIC_TYPE = 9;
    public static final int EATTRIBUTE__CHANGEABLE = 10;
    public static final int EATTRIBUTE__VOLATILE = 11;
    public static final int EATTRIBUTE__TRANSIENT = 12;
    public static final int EATTRIBUTE__DEFAULT_VALUE_LITERAL = 13;
    public static final int EATTRIBUTE__DEFAULT_VALUE = 14;
    public static final int EATTRIBUTE__UNSETTABLE = 15;
    public static final int EATTRIBUTE__DERIVED = 16;
    public static final int EATTRIBUTE__ECONTAINING_CLASS = 17;
    public static final int EATTRIBUTE__ID = 18;
    public static final int EATTRIBUTE__EATTRIBUTE_TYPE = 19;
    public static final int EATTRIBUTE_FEATURE_COUNT = 20;
    public static final int EATTRIBUTE___GET_EANNOTATION__STRING = 0;
    public static final int EATTRIBUTE___GET_FEATURE_ID = 1;
    public static final int EATTRIBUTE___GET_CONTAINER_CLASS = 2;
    public static final int EATTRIBUTE_OPERATION_COUNT = 3;
    public static final int EANNOTATION = 1;
    public static final int EANNOTATION__EANNOTATIONS = 0;
    public static final int EANNOTATION__SOURCE = 1;
    public static final int EANNOTATION__DETAILS = 2;
    public static final int EANNOTATION__EMODEL_ELEMENT = 3;
    public static final int EANNOTATION__CONTENTS = 4;
    public static final int EANNOTATION__REFERENCES = 5;
    public static final int EANNOTATION_FEATURE_COUNT = 6;
    public static final int EANNOTATION___GET_EANNOTATION__STRING = 0;
    public static final int EANNOTATION_OPERATION_COUNT = 1;
    public static final int ECLASSIFIER = 3;
    public static final int ECLASSIFIER__EANNOTATIONS = 0;
    public static final int ECLASSIFIER__NAME = 1;
    public static final int ECLASSIFIER__INSTANCE_CLASS_NAME = 2;
    public static final int ECLASSIFIER__INSTANCE_CLASS = 3;
    public static final int ECLASSIFIER__DEFAULT_VALUE = 4;
    public static final int ECLASSIFIER__INSTANCE_TYPE_NAME = 5;
    public static final int ECLASSIFIER__EPACKAGE = 6;
    public static final int ECLASSIFIER__ETYPE_PARAMETERS = 7;
    public static final int ECLASSIFIER_FEATURE_COUNT = 8;
    public static final int ECLASSIFIER___GET_EANNOTATION__STRING = 0;
    public static final int ECLASSIFIER___IS_INSTANCE__OBJECT = 1;
    public static final int ECLASSIFIER___GET_CLASSIFIER_ID = 2;
    public static final int ECLASSIFIER_OPERATION_COUNT = 3;
    public static final int ECLASS__EANNOTATIONS = 0;
    public static final int ECLASS__NAME = 1;
    public static final int ECLASS__INSTANCE_CLASS_NAME = 2;
    public static final int ECLASS__INSTANCE_CLASS = 3;
    public static final int ECLASS__DEFAULT_VALUE = 4;
    public static final int ECLASS__INSTANCE_TYPE_NAME = 5;
    public static final int ECLASS__EPACKAGE = 6;
    public static final int ECLASS__ETYPE_PARAMETERS = 7;
    public static final int ECLASS__ABSTRACT = 8;
    public static final int ECLASS__INTERFACE = 9;
    public static final int ECLASS__ESUPER_TYPES = 10;
    public static final int ECLASS__EOPERATIONS = 11;
    public static final int ECLASS__EALL_ATTRIBUTES = 12;
    public static final int ECLASS__EALL_REFERENCES = 13;
    public static final int ECLASS__EREFERENCES = 14;
    public static final int ECLASS__EATTRIBUTES = 15;
    public static final int ECLASS__EALL_CONTAINMENTS = 16;
    public static final int ECLASS__EALL_OPERATIONS = 17;
    public static final int ECLASS__EALL_STRUCTURAL_FEATURES = 18;
    public static final int ECLASS__EALL_SUPER_TYPES = 19;
    public static final int ECLASS__EID_ATTRIBUTE = 20;
    public static final int ECLASS__ESTRUCTURAL_FEATURES = 21;
    public static final int ECLASS__EGENERIC_SUPER_TYPES = 22;
    public static final int ECLASS__EALL_GENERIC_SUPER_TYPES = 23;
    public static final int ECLASS_FEATURE_COUNT = 24;
    public static final int ECLASS___GET_EANNOTATION__STRING = 0;
    public static final int ECLASS___IS_INSTANCE__OBJECT = 1;
    public static final int ECLASS___GET_CLASSIFIER_ID = 2;
    public static final int ECLASS___IS_SUPER_TYPE_OF__ECLASS = 3;
    public static final int ECLASS___GET_FEATURE_COUNT = 4;
    public static final int ECLASS___GET_ESTRUCTURAL_FEATURE__INT = 5;
    public static final int ECLASS___GET_FEATURE_ID__ESTRUCTURALFEATURE = 6;
    public static final int ECLASS___GET_ESTRUCTURAL_FEATURE__STRING = 7;
    public static final int ECLASS___GET_OPERATION_COUNT = 8;
    public static final int ECLASS___GET_EOPERATION__INT = 9;
    public static final int ECLASS___GET_OPERATION_ID__EOPERATION = 10;
    public static final int ECLASS___GET_OVERRIDE__EOPERATION = 11;
    public static final int ECLASS_OPERATION_COUNT = 12;
    public static final int EDATA_TYPE__EANNOTATIONS = 0;
    public static final int EDATA_TYPE__NAME = 1;
    public static final int EDATA_TYPE__INSTANCE_CLASS_NAME = 2;
    public static final int EDATA_TYPE__INSTANCE_CLASS = 3;
    public static final int EDATA_TYPE__DEFAULT_VALUE = 4;
    public static final int EDATA_TYPE__INSTANCE_TYPE_NAME = 5;
    public static final int EDATA_TYPE__EPACKAGE = 6;
    public static final int EDATA_TYPE__ETYPE_PARAMETERS = 7;
    public static final int EDATA_TYPE__SERIALIZABLE = 8;
    public static final int EDATA_TYPE_FEATURE_COUNT = 9;
    public static final int EDATA_TYPE___GET_EANNOTATION__STRING = 0;
    public static final int EDATA_TYPE___IS_INSTANCE__OBJECT = 1;
    public static final int EDATA_TYPE___GET_CLASSIFIER_ID = 2;
    public static final int EDATA_TYPE_OPERATION_COUNT = 3;
    public static final int EENUM__EANNOTATIONS = 0;
    public static final int EENUM__NAME = 1;
    public static final int EENUM__INSTANCE_CLASS_NAME = 2;
    public static final int EENUM__INSTANCE_CLASS = 3;
    public static final int EENUM__DEFAULT_VALUE = 4;
    public static final int EENUM__INSTANCE_TYPE_NAME = 5;
    public static final int EENUM__EPACKAGE = 6;
    public static final int EENUM__ETYPE_PARAMETERS = 7;
    public static final int EENUM__SERIALIZABLE = 8;
    public static final int EENUM__ELITERALS = 9;
    public static final int EENUM_FEATURE_COUNT = 10;
    public static final int EENUM___GET_EANNOTATION__STRING = 0;
    public static final int EENUM___IS_INSTANCE__OBJECT = 1;
    public static final int EENUM___GET_CLASSIFIER_ID = 2;
    public static final int EENUM___GET_EENUM_LITERAL__STRING = 3;
    public static final int EENUM___GET_EENUM_LITERAL__INT = 4;
    public static final int EENUM___GET_EENUM_LITERAL_BY_LITERAL__STRING = 5;
    public static final int EENUM_OPERATION_COUNT = 6;
    public static final int EENUM_LITERAL__EANNOTATIONS = 0;
    public static final int EENUM_LITERAL__NAME = 1;
    public static final int EENUM_LITERAL__VALUE = 2;
    public static final int EENUM_LITERAL__INSTANCE = 3;
    public static final int EENUM_LITERAL__LITERAL = 4;
    public static final int EENUM_LITERAL__EENUM = 5;
    public static final int EENUM_LITERAL_FEATURE_COUNT = 6;
    public static final int EENUM_LITERAL___GET_EANNOTATION__STRING = 0;
    public static final int EENUM_LITERAL_OPERATION_COUNT = 1;
    public static final int EFACTORY__EANNOTATIONS = 0;
    public static final int EFACTORY__EPACKAGE = 1;
    public static final int EFACTORY_FEATURE_COUNT = 2;
    public static final int EFACTORY___GET_EANNOTATION__STRING = 0;
    public static final int EFACTORY___CREATE__ECLASS = 1;
    public static final int EFACTORY___CREATE_FROM_STRING__EDATATYPE_STRING = 2;
    public static final int EFACTORY___CONVERT_TO_STRING__EDATATYPE_OBJECT = 3;
    public static final int EFACTORY_OPERATION_COUNT = 4;
    public static final int EOBJECT_FEATURE_COUNT = 0;
    public static final int EOBJECT___ECLASS = 0;
    public static final int EOBJECT___EIS_PROXY = 1;
    public static final int EOBJECT___ERESOURCE = 2;
    public static final int EOBJECT___ECONTAINER = 3;
    public static final int EOBJECT___ECONTAINING_FEATURE = 4;
    public static final int EOBJECT___ECONTAINMENT_FEATURE = 5;
    public static final int EOBJECT___ECONTENTS = 6;
    public static final int EOBJECT___EALL_CONTENTS = 7;
    public static final int EOBJECT___ECROSS_REFERENCES = 8;
    public static final int EOBJECT___EGET__ESTRUCTURALFEATURE = 9;
    public static final int EOBJECT___EGET__ESTRUCTURALFEATURE_BOOLEAN = 10;
    public static final int EOBJECT___ESET__ESTRUCTURALFEATURE_OBJECT = 11;
    public static final int EOBJECT___EIS_SET__ESTRUCTURALFEATURE = 12;
    public static final int EOBJECT___EUNSET__ESTRUCTURALFEATURE = 13;
    public static final int EOBJECT___EINVOKE__EOPERATION_ELIST = 14;
    public static final int EOBJECT_OPERATION_COUNT = 15;
    public static final int EOPERATION__EANNOTATIONS = 0;
    public static final int EOPERATION__NAME = 1;
    public static final int EOPERATION__ORDERED = 2;
    public static final int EOPERATION__UNIQUE = 3;
    public static final int EOPERATION__LOWER_BOUND = 4;
    public static final int EOPERATION__UPPER_BOUND = 5;
    public static final int EOPERATION__MANY = 6;
    public static final int EOPERATION__REQUIRED = 7;
    public static final int EOPERATION__ETYPE = 8;
    public static final int EOPERATION__EGENERIC_TYPE = 9;
    public static final int EOPERATION__ECONTAINING_CLASS = 10;
    public static final int EOPERATION__ETYPE_PARAMETERS = 11;
    public static final int EOPERATION__EPARAMETERS = 12;
    public static final int EOPERATION__EEXCEPTIONS = 13;
    public static final int EOPERATION__EGENERIC_EXCEPTIONS = 14;
    public static final int EOPERATION_FEATURE_COUNT = 15;
    public static final int EOPERATION___GET_EANNOTATION__STRING = 0;
    public static final int EOPERATION___GET_OPERATION_ID = 1;
    public static final int EOPERATION___IS_OVERRIDE_OF__EOPERATION = 2;
    public static final int EOPERATION_OPERATION_COUNT = 3;
    public static final int EPACKAGE__EANNOTATIONS = 0;
    public static final int EPACKAGE__NAME = 1;
    public static final int EPACKAGE__NS_URI = 2;
    public static final int EPACKAGE__NS_PREFIX = 3;
    public static final int EPACKAGE__EFACTORY_INSTANCE = 4;
    public static final int EPACKAGE__ECLASSIFIERS = 5;
    public static final int EPACKAGE__ESUBPACKAGES = 6;
    public static final int EPACKAGE__ESUPER_PACKAGE = 7;
    public static final int EPACKAGE_FEATURE_COUNT = 8;
    public static final int EPACKAGE___GET_EANNOTATION__STRING = 0;
    public static final int EPACKAGE___GET_ECLASSIFIER__STRING = 1;
    public static final int EPACKAGE_OPERATION_COUNT = 2;
    public static final int EPARAMETER__EANNOTATIONS = 0;
    public static final int EPARAMETER__NAME = 1;
    public static final int EPARAMETER__ORDERED = 2;
    public static final int EPARAMETER__UNIQUE = 3;
    public static final int EPARAMETER__LOWER_BOUND = 4;
    public static final int EPARAMETER__UPPER_BOUND = 5;
    public static final int EPARAMETER__MANY = 6;
    public static final int EPARAMETER__REQUIRED = 7;
    public static final int EPARAMETER__ETYPE = 8;
    public static final int EPARAMETER__EGENERIC_TYPE = 9;
    public static final int EPARAMETER__EOPERATION = 10;
    public static final int EPARAMETER_FEATURE_COUNT = 11;
    public static final int EPARAMETER___GET_EANNOTATION__STRING = 0;
    public static final int EPARAMETER_OPERATION_COUNT = 1;
    public static final int EREFERENCE__EANNOTATIONS = 0;
    public static final int EREFERENCE__NAME = 1;
    public static final int EREFERENCE__ORDERED = 2;
    public static final int EREFERENCE__UNIQUE = 3;
    public static final int EREFERENCE__LOWER_BOUND = 4;
    public static final int EREFERENCE__UPPER_BOUND = 5;
    public static final int EREFERENCE__MANY = 6;
    public static final int EREFERENCE__REQUIRED = 7;
    public static final int EREFERENCE__ETYPE = 8;
    public static final int EREFERENCE__EGENERIC_TYPE = 9;
    public static final int EREFERENCE__CHANGEABLE = 10;
    public static final int EREFERENCE__VOLATILE = 11;
    public static final int EREFERENCE__TRANSIENT = 12;
    public static final int EREFERENCE__DEFAULT_VALUE_LITERAL = 13;
    public static final int EREFERENCE__DEFAULT_VALUE = 14;
    public static final int EREFERENCE__UNSETTABLE = 15;
    public static final int EREFERENCE__DERIVED = 16;
    public static final int EREFERENCE__ECONTAINING_CLASS = 17;
    public static final int EREFERENCE__CONTAINMENT = 18;
    public static final int EREFERENCE__CONTAINER = 19;
    public static final int EREFERENCE__RESOLVE_PROXIES = 20;
    public static final int EREFERENCE__EOPPOSITE = 21;
    public static final int EREFERENCE__EREFERENCE_TYPE = 22;
    public static final int EREFERENCE__EKEYS = 23;
    public static final int EREFERENCE_FEATURE_COUNT = 24;
    public static final int EREFERENCE___GET_EANNOTATION__STRING = 0;
    public static final int EREFERENCE___GET_FEATURE_ID = 1;
    public static final int EREFERENCE___GET_CONTAINER_CLASS = 2;
    public static final int EREFERENCE_OPERATION_COUNT = 3;
    public static final int ESTRING_TO_STRING_MAP_ENTRY = 17;
    public static final int ESTRING_TO_STRING_MAP_ENTRY__KEY = 0;
    public static final int ESTRING_TO_STRING_MAP_ENTRY__VALUE = 1;
    public static final int ESTRING_TO_STRING_MAP_ENTRY_FEATURE_COUNT = 2;
    public static final int ESTRING_TO_STRING_MAP_ENTRY_OPERATION_COUNT = 0;
    public static final int EGENERIC_TYPE = 18;
    public static final int EGENERIC_TYPE__EUPPER_BOUND = 0;
    public static final int EGENERIC_TYPE__ETYPE_ARGUMENTS = 1;
    public static final int EGENERIC_TYPE__ERAW_TYPE = 2;
    public static final int EGENERIC_TYPE__ELOWER_BOUND = 3;
    public static final int EGENERIC_TYPE__ETYPE_PARAMETER = 4;
    public static final int EGENERIC_TYPE__ECLASSIFIER = 5;
    public static final int EGENERIC_TYPE_FEATURE_COUNT = 6;
    public static final int EGENERIC_TYPE_OPERATION_COUNT = 0;
    public static final int ETYPE_PARAMETER = 19;
    public static final int ETYPE_PARAMETER__EANNOTATIONS = 0;
    public static final int ETYPE_PARAMETER__NAME = 1;
    public static final int ETYPE_PARAMETER__EBOUNDS = 2;
    public static final int ETYPE_PARAMETER_FEATURE_COUNT = 3;
    public static final int ETYPE_PARAMETER___GET_EANNOTATION__STRING = 0;
    public static final int ETYPE_PARAMETER_OPERATION_COUNT = 1;
    public static final int EBIG_DECIMAL = 20;
    public static final int EBIG_INTEGER = 21;
    public static final int EE_LIST = 33;
    public static final int ERESOURCE = 46;
    public static final int ERESOURCE_SET = 47;
    public static final int EBOOLEAN_OBJECT = 23;
    public static final int ECHARACTER_OBJECT = 28;
    public static final int EDATE = 29;
    public static final int EDIAGNOSTIC_CHAIN = 30;
    public static final int EDOUBLE_OBJECT = 32;
    public static final int EFLOAT_OBJECT = 38;
    public static final int EINTEGER_OBJECT = 40;
    public static final int EBOOLEAN = 22;
    public static final int EBYTE_OBJECT = 26;
    public static final int EBYTE = 24;
    public static final int EBYTE_ARRAY = 25;
    public static final int ECHAR = 27;
    public static final int EDOUBLE = 31;
    public static final int EFLOAT = 37;
    public static final int EINT = 39;
    public static final int EJAVA_CLASS = 41;
    public static final int EJAVA_OBJECT = 42;
    public static final int ELONG_OBJECT = 44;
    public static final int EMAP = 45;
    public static final int ESHORT_OBJECT = 49;
    public static final int ELONG = 43;
    public static final int ESHORT = 48;
    public static final int ETREE_ITERATOR = 51;
    public static final int EINVOCATION_TARGET_EXCEPTION = 52;
    public static final int EFEATURE_MAP_ENTRY = 36;
    public static final int EENUMERATOR = 34;
    public static final int EFEATURE_MAP = 35;
    public static final int ESTRING = 50;
    public static final boolean _INTERNAL_BOOTSTRAP = Literals.EATTRIBUTE != null && EcorePackageImpl.internalBootstrap();

    public EClass getEAttribute();

    public EAttribute getEAttribute_ID();

    public EReference getEAttribute_EAttributeType();

    public EClass getEAnnotation();

    public EAttribute getEAnnotation_Source();

    public EReference getEAnnotation_Details();

    public EReference getEAnnotation_EModelElement();

    public EReference getEAnnotation_Contents();

    public EReference getEAnnotation_References();

    public EClass getEClass();

    public EAttribute getEClass_Abstract();

    public EAttribute getEClass_Interface();

    public EReference getEClass_ESuperTypes();

    public EReference getEClass_EOperations();

    public EReference getEClass_EAllAttributes();

    public EReference getEClass_EAllReferences();

    public EReference getEClass_EReferences();

    public EReference getEClass_EAttributes();

    public EReference getEClass_EAllContainments();

    public EReference getEClass_EAllOperations();

    public EReference getEClass_EAllStructuralFeatures();

    public EReference getEClass_EAllSuperTypes();

    public EReference getEClass_EIDAttribute();

    public EReference getEClass_EStructuralFeatures();

    public EReference getEClass_EGenericSuperTypes();

    public EReference getEClass_EAllGenericSuperTypes();

    public EOperation getEClass__IsSuperTypeOf__EClass();

    public EOperation getEClass__GetFeatureCount();

    public EOperation getEClass__GetEStructuralFeature__int();

    public EOperation getEClass__GetFeatureID__EStructuralFeature();

    public EOperation getEClass__GetEStructuralFeature__String();

    public EOperation getEClass__GetOperationCount();

    public EOperation getEClass__GetEOperation__int();

    public EOperation getEClass__GetOperationID__EOperation();

    public EOperation getEClass__GetOverride__EOperation();

    public EClass getEDataType();

    public EAttribute getEDataType_Serializable();

    public EClass getEEnum();

    public EReference getEEnum_ELiterals();

    public EOperation getEEnum__GetEEnumLiteral__String();

    public EOperation getEEnum__GetEEnumLiteral__int();

    public EOperation getEEnum__GetEEnumLiteralByLiteral__String();

    public EClass getEEnumLiteral();

    public EAttribute getEEnumLiteral_Value();

    public EAttribute getEEnumLiteral_Instance();

    public EAttribute getEEnumLiteral_Literal();

    public EReference getEEnumLiteral_EEnum();

    public EClass getEFactory();

    public EReference getEFactory_EPackage();

    public EOperation getEFactory__Create__EClass();

    public EOperation getEFactory__CreateFromString__EDataType_String();

    public EOperation getEFactory__ConvertToString__EDataType_Object();

    public EClass getEClassifier();

    public EAttribute getEClassifier_InstanceClassName();

    public EAttribute getEClassifier_InstanceClass();

    public EAttribute getEClassifier_DefaultValue();

    public EAttribute getEClassifier_InstanceTypeName();

    public EReference getEClassifier_EPackage();

    public EReference getEClassifier_ETypeParameters();

    public EOperation getEClassifier__IsInstance__Object();

    public EOperation getEClassifier__GetClassifierID();

    public EClass getEModelElement();

    public EReference getEModelElement_EAnnotations();

    public EOperation getEModelElement__GetEAnnotation__String();

    public EClass getENamedElement();

    public EAttribute getENamedElement_Name();

    public EClass getEObject();

    public EOperation getEObject__EClass();

    public EOperation getEObject__EIsProxy();

    public EOperation getEObject__EResource();

    public EOperation getEObject__EContainer();

    public EOperation getEObject__EContainingFeature();

    public EOperation getEObject__EContainmentFeature();

    public EOperation getEObject__EContents();

    public EOperation getEObject__EAllContents();

    public EOperation getEObject__ECrossReferences();

    public EOperation getEObject__EGet__EStructuralFeature();

    public EOperation getEObject__EGet__EStructuralFeature_boolean();

    public EOperation getEObject__ESet__EStructuralFeature_Object();

    public EOperation getEObject__EIsSet__EStructuralFeature();

    public EOperation getEObject__EUnset__EStructuralFeature();

    public EOperation getEObject__EInvoke__EOperation_EList();

    public EClass getEOperation();

    public EReference getEOperation_EContainingClass();

    public EReference getEOperation_EParameters();

    public EReference getEOperation_EExceptions();

    public EReference getEOperation_EGenericExceptions();

    public EOperation getEOperation__GetOperationID();

    public EOperation getEOperation__IsOverrideOf__EOperation();

    public EReference getEOperation_ETypeParameters();

    public EClass getEPackage();

    public EAttribute getEPackage_NsURI();

    public EAttribute getEPackage_NsPrefix();

    public EReference getEPackage_EFactoryInstance();

    public EReference getEPackage_EClassifiers();

    public EReference getEPackage_ESubpackages();

    public EReference getEPackage_ESuperPackage();

    public EOperation getEPackage__GetEClassifier__String();

    public EClass getEParameter();

    public EReference getEParameter_EOperation();

    public EClass getEReference();

    public EAttribute getEReference_Containment();

    public EAttribute getEReference_Container();

    public EAttribute getEReference_ResolveProxies();

    public EReference getEReference_EOpposite();

    public EReference getEReference_EReferenceType();

    public EReference getEReference_EKeys();

    public EClass getEStructuralFeature();

    public EAttribute getEStructuralFeature_Transient();

    public EAttribute getEStructuralFeature_Volatile();

    public EAttribute getEStructuralFeature_Changeable();

    public EAttribute getEStructuralFeature_DefaultValueLiteral();

    public EAttribute getEStructuralFeature_DefaultValue();

    public EAttribute getEStructuralFeature_Unsettable();

    public EAttribute getEStructuralFeature_Derived();

    public EReference getEStructuralFeature_EContainingClass();

    public EOperation getEStructuralFeature__GetFeatureID();

    public EOperation getEStructuralFeature__GetContainerClass();

    @Deprecated
    public EAttribute getEStructuralFeature_Unique();

    @Deprecated
    public EAttribute getEStructuralFeature_LowerBound();

    @Deprecated
    public EAttribute getEStructuralFeature_UpperBound();

    @Deprecated
    public EAttribute getEStructuralFeature_Many();

    @Deprecated
    public EAttribute getEStructuralFeature_Required();

    public EClass getETypedElement();

    public EAttribute getETypedElement_Ordered();

    public EAttribute getETypedElement_Unique();

    public EAttribute getETypedElement_LowerBound();

    public EAttribute getETypedElement_UpperBound();

    public EAttribute getETypedElement_Many();

    public EAttribute getETypedElement_Required();

    public EReference getETypedElement_EType();

    public EReference getETypedElement_EGenericType();

    public EClass getEStringToStringMapEntry();

    public EAttribute getEStringToStringMapEntry_Key();

    public EAttribute getEStringToStringMapEntry_Value();

    public EClass getEGenericType();

    public EReference getEGenericType_EUpperBound();

    public EReference getEGenericType_ETypeArguments();

    public EReference getEGenericType_ERawType();

    public EReference getEGenericType_ELowerBound();

    public EReference getEGenericType_ETypeParameter();

    public EReference getEGenericType_EClassifier();

    public EClass getETypeParameter();

    public EReference getETypeParameter_EBounds();

    public EDataType getEBigDecimal();

    public EDataType getEBigInteger();

    public EDataType getEEList();

    public EDataType getEResource();

    public EDataType getEResourceSet();

    public EDataType getEBooleanObject();

    public EDataType getECharacterObject();

    public EDataType getEDate();

    public EDataType getEDiagnosticChain();

    public EDataType getEDoubleObject();

    public EDataType getEFloatObject();

    public EDataType getEIntegerObject();

    public EDataType getEBoolean();

    public EDataType getEByteObject();

    public EDataType getEByte();

    public EDataType getEByteArray();

    public EDataType getEChar();

    public EDataType getEDouble();

    public EDataType getEFloat();

    public EDataType getEInt();

    public EDataType getEJavaClass();

    public EDataType getEJavaObject();

    public EDataType getELongObject();

    public EDataType getEMap();

    public EDataType getEShortObject();

    public EDataType getELong();

    public EDataType getEShort();

    public EDataType getETreeIterator();

    public EDataType getEInvocationTargetException();

    public EDataType getEFeatureMapEntry();

    public EDataType getEEnumerator();

    public EDataType getEFeatureMap();

    public EDataType getEString();

    public EcoreFactory getEcoreFactory();

    public static interface Literals {
        public static final EClass EATTRIBUTE = eINSTANCE.getEAttribute();
        public static final EAttribute EATTRIBUTE__ID = eINSTANCE.getEAttribute_ID();
        public static final EReference EATTRIBUTE__EATTRIBUTE_TYPE = eINSTANCE.getEAttribute_EAttributeType();
        public static final EClass EANNOTATION = eINSTANCE.getEAnnotation();
        public static final EAttribute EANNOTATION__SOURCE = eINSTANCE.getEAnnotation_Source();
        public static final EReference EANNOTATION__DETAILS = eINSTANCE.getEAnnotation_Details();
        public static final EReference EANNOTATION__EMODEL_ELEMENT = eINSTANCE.getEAnnotation_EModelElement();
        public static final EReference EANNOTATION__CONTENTS = eINSTANCE.getEAnnotation_Contents();
        public static final EReference EANNOTATION__REFERENCES = eINSTANCE.getEAnnotation_References();
        public static final EClass ECLASS = eINSTANCE.getEClass();
        public static final EAttribute ECLASS__ABSTRACT = eINSTANCE.getEClass_Abstract();
        public static final EAttribute ECLASS__INTERFACE = eINSTANCE.getEClass_Interface();
        public static final EReference ECLASS__ESUPER_TYPES = eINSTANCE.getEClass_ESuperTypes();
        public static final EReference ECLASS__EOPERATIONS = eINSTANCE.getEClass_EOperations();
        public static final EReference ECLASS__EALL_ATTRIBUTES = eINSTANCE.getEClass_EAllAttributes();
        public static final EReference ECLASS__EALL_REFERENCES = eINSTANCE.getEClass_EAllReferences();
        public static final EReference ECLASS__EREFERENCES = eINSTANCE.getEClass_EReferences();
        public static final EReference ECLASS__EATTRIBUTES = eINSTANCE.getEClass_EAttributes();
        public static final EReference ECLASS__EALL_CONTAINMENTS = eINSTANCE.getEClass_EAllContainments();
        public static final EReference ECLASS__EALL_OPERATIONS = eINSTANCE.getEClass_EAllOperations();
        public static final EReference ECLASS__EALL_STRUCTURAL_FEATURES = eINSTANCE.getEClass_EAllStructuralFeatures();
        public static final EReference ECLASS__EALL_SUPER_TYPES = eINSTANCE.getEClass_EAllSuperTypes();
        public static final EReference ECLASS__EID_ATTRIBUTE = eINSTANCE.getEClass_EIDAttribute();
        public static final EReference ECLASS__ESTRUCTURAL_FEATURES = eINSTANCE.getEClass_EStructuralFeatures();
        public static final EReference ECLASS__EGENERIC_SUPER_TYPES = eINSTANCE.getEClass_EGenericSuperTypes();
        public static final EReference ECLASS__EALL_GENERIC_SUPER_TYPES = eINSTANCE.getEClass_EAllGenericSuperTypes();
        public static final EOperation ECLASS___IS_SUPER_TYPE_OF__ECLASS = eINSTANCE.getEClass__IsSuperTypeOf__EClass();
        public static final EOperation ECLASS___GET_FEATURE_COUNT = eINSTANCE.getEClass__GetFeatureCount();
        public static final EOperation ECLASS___GET_ESTRUCTURAL_FEATURE__INT = eINSTANCE.getEClass__GetEStructuralFeature__int();
        public static final EOperation ECLASS___GET_FEATURE_ID__ESTRUCTURALFEATURE = eINSTANCE.getEClass__GetFeatureID__EStructuralFeature();
        public static final EOperation ECLASS___GET_ESTRUCTURAL_FEATURE__STRING = eINSTANCE.getEClass__GetEStructuralFeature__String();
        public static final EOperation ECLASS___GET_OPERATION_COUNT = eINSTANCE.getEClass__GetOperationCount();
        public static final EOperation ECLASS___GET_EOPERATION__INT = eINSTANCE.getEClass__GetEOperation__int();
        public static final EOperation ECLASS___GET_OPERATION_ID__EOPERATION = eINSTANCE.getEClass__GetOperationID__EOperation();
        public static final EOperation ECLASS___GET_OVERRIDE__EOPERATION = eINSTANCE.getEClass__GetOverride__EOperation();
        public static final EClass ECLASSIFIER = eINSTANCE.getEClassifier();
        public static final EAttribute ECLASSIFIER__INSTANCE_CLASS_NAME = eINSTANCE.getEClassifier_InstanceClassName();
        public static final EAttribute ECLASSIFIER__INSTANCE_CLASS = eINSTANCE.getEClassifier_InstanceClass();
        public static final EAttribute ECLASSIFIER__DEFAULT_VALUE = eINSTANCE.getEClassifier_DefaultValue();
        public static final EAttribute ECLASSIFIER__INSTANCE_TYPE_NAME = eINSTANCE.getEClassifier_InstanceTypeName();
        public static final EReference ECLASSIFIER__EPACKAGE = eINSTANCE.getEClassifier_EPackage();
        public static final EReference ECLASSIFIER__ETYPE_PARAMETERS = eINSTANCE.getEClassifier_ETypeParameters();
        public static final EOperation ECLASSIFIER___IS_INSTANCE__OBJECT = eINSTANCE.getEClassifier__IsInstance__Object();
        public static final EOperation ECLASSIFIER___GET_CLASSIFIER_ID = eINSTANCE.getEClassifier__GetClassifierID();
        public static final EClass EDATA_TYPE = eINSTANCE.getEDataType();
        public static final EAttribute EDATA_TYPE__SERIALIZABLE = eINSTANCE.getEDataType_Serializable();
        public static final EClass EENUM = eINSTANCE.getEEnum();
        public static final EReference EENUM__ELITERALS = eINSTANCE.getEEnum_ELiterals();
        public static final EOperation EENUM___GET_EENUM_LITERAL__STRING = eINSTANCE.getEEnum__GetEEnumLiteral__String();
        public static final EOperation EENUM___GET_EENUM_LITERAL__INT = eINSTANCE.getEEnum__GetEEnumLiteral__int();
        public static final EOperation EENUM___GET_EENUM_LITERAL_BY_LITERAL__STRING = eINSTANCE.getEEnum__GetEEnumLiteralByLiteral__String();
        public static final EClass EENUM_LITERAL = eINSTANCE.getEEnumLiteral();
        public static final EAttribute EENUM_LITERAL__VALUE = eINSTANCE.getEEnumLiteral_Value();
        public static final EAttribute EENUM_LITERAL__INSTANCE = eINSTANCE.getEEnumLiteral_Instance();
        public static final EAttribute EENUM_LITERAL__LITERAL = eINSTANCE.getEEnumLiteral_Literal();
        public static final EReference EENUM_LITERAL__EENUM = eINSTANCE.getEEnumLiteral_EEnum();
        public static final EClass EFACTORY = eINSTANCE.getEFactory();
        public static final EReference EFACTORY__EPACKAGE = eINSTANCE.getEFactory_EPackage();
        public static final EOperation EFACTORY___CREATE__ECLASS = eINSTANCE.getEFactory__Create__EClass();
        public static final EOperation EFACTORY___CREATE_FROM_STRING__EDATATYPE_STRING = eINSTANCE.getEFactory__CreateFromString__EDataType_String();
        public static final EOperation EFACTORY___CONVERT_TO_STRING__EDATATYPE_OBJECT = eINSTANCE.getEFactory__ConvertToString__EDataType_Object();
        public static final EClass EMODEL_ELEMENT = eINSTANCE.getEModelElement();
        public static final EReference EMODEL_ELEMENT__EANNOTATIONS = eINSTANCE.getEModelElement_EAnnotations();
        public static final EOperation EMODEL_ELEMENT___GET_EANNOTATION__STRING = eINSTANCE.getEModelElement__GetEAnnotation__String();
        public static final EClass ENAMED_ELEMENT = eINSTANCE.getENamedElement();
        public static final EAttribute ENAMED_ELEMENT__NAME = eINSTANCE.getENamedElement_Name();
        public static final EClass EOBJECT = eINSTANCE.getEObject();
        public static final EOperation EOBJECT___ECLASS = eINSTANCE.getEObject__EClass();
        public static final EOperation EOBJECT___EIS_PROXY = eINSTANCE.getEObject__EIsProxy();
        public static final EOperation EOBJECT___ERESOURCE = eINSTANCE.getEObject__EResource();
        public static final EOperation EOBJECT___ECONTAINER = eINSTANCE.getEObject__EContainer();
        public static final EOperation EOBJECT___ECONTAINING_FEATURE = eINSTANCE.getEObject__EContainingFeature();
        public static final EOperation EOBJECT___ECONTAINMENT_FEATURE = eINSTANCE.getEObject__EContainmentFeature();
        public static final EOperation EOBJECT___ECONTENTS = eINSTANCE.getEObject__EContents();
        public static final EOperation EOBJECT___EALL_CONTENTS = eINSTANCE.getEObject__EAllContents();
        public static final EOperation EOBJECT___ECROSS_REFERENCES = eINSTANCE.getEObject__ECrossReferences();
        public static final EOperation EOBJECT___EGET__ESTRUCTURALFEATURE = eINSTANCE.getEObject__EGet__EStructuralFeature();
        public static final EOperation EOBJECT___EGET__ESTRUCTURALFEATURE_BOOLEAN = eINSTANCE.getEObject__EGet__EStructuralFeature_boolean();
        public static final EOperation EOBJECT___ESET__ESTRUCTURALFEATURE_OBJECT = eINSTANCE.getEObject__ESet__EStructuralFeature_Object();
        public static final EOperation EOBJECT___EIS_SET__ESTRUCTURALFEATURE = eINSTANCE.getEObject__EIsSet__EStructuralFeature();
        public static final EOperation EOBJECT___EUNSET__ESTRUCTURALFEATURE = eINSTANCE.getEObject__EUnset__EStructuralFeature();
        public static final EOperation EOBJECT___EINVOKE__EOPERATION_ELIST = eINSTANCE.getEObject__EInvoke__EOperation_EList();
        public static final EClass EOPERATION = eINSTANCE.getEOperation();
        public static final EReference EOPERATION__ECONTAINING_CLASS = eINSTANCE.getEOperation_EContainingClass();
        public static final EReference EOPERATION__EPARAMETERS = eINSTANCE.getEOperation_EParameters();
        public static final EReference EOPERATION__EEXCEPTIONS = eINSTANCE.getEOperation_EExceptions();
        public static final EReference EOPERATION__EGENERIC_EXCEPTIONS = eINSTANCE.getEOperation_EGenericExceptions();
        public static final EOperation EOPERATION___GET_OPERATION_ID = eINSTANCE.getEOperation__GetOperationID();
        public static final EOperation EOPERATION___IS_OVERRIDE_OF__EOPERATION = eINSTANCE.getEOperation__IsOverrideOf__EOperation();
        public static final EReference EOPERATION__ETYPE_PARAMETERS = eINSTANCE.getEOperation_ETypeParameters();
        public static final EClass EPACKAGE = eINSTANCE.getEPackage();
        public static final EAttribute EPACKAGE__NS_URI = eINSTANCE.getEPackage_NsURI();
        public static final EAttribute EPACKAGE__NS_PREFIX = eINSTANCE.getEPackage_NsPrefix();
        public static final EReference EPACKAGE__EFACTORY_INSTANCE = eINSTANCE.getEPackage_EFactoryInstance();
        public static final EReference EPACKAGE__ECLASSIFIERS = eINSTANCE.getEPackage_EClassifiers();
        public static final EReference EPACKAGE__ESUBPACKAGES = eINSTANCE.getEPackage_ESubpackages();
        public static final EReference EPACKAGE__ESUPER_PACKAGE = eINSTANCE.getEPackage_ESuperPackage();
        public static final EOperation EPACKAGE___GET_ECLASSIFIER__STRING = eINSTANCE.getEPackage__GetEClassifier__String();
        public static final EClass EPARAMETER = eINSTANCE.getEParameter();
        public static final EReference EPARAMETER__EOPERATION = eINSTANCE.getEParameter_EOperation();
        public static final EClass EREFERENCE = eINSTANCE.getEReference();
        public static final EAttribute EREFERENCE__CONTAINMENT = eINSTANCE.getEReference_Containment();
        public static final EAttribute EREFERENCE__CONTAINER = eINSTANCE.getEReference_Container();
        public static final EAttribute EREFERENCE__RESOLVE_PROXIES = eINSTANCE.getEReference_ResolveProxies();
        public static final EReference EREFERENCE__EOPPOSITE = eINSTANCE.getEReference_EOpposite();
        public static final EReference EREFERENCE__EREFERENCE_TYPE = eINSTANCE.getEReference_EReferenceType();
        public static final EReference EREFERENCE__EKEYS = eINSTANCE.getEReference_EKeys();
        public static final EClass ESTRUCTURAL_FEATURE = eINSTANCE.getEStructuralFeature();
        public static final EAttribute ESTRUCTURAL_FEATURE__CHANGEABLE = eINSTANCE.getEStructuralFeature_Changeable();
        public static final EAttribute ESTRUCTURAL_FEATURE__VOLATILE = eINSTANCE.getEStructuralFeature_Volatile();
        public static final EAttribute ESTRUCTURAL_FEATURE__TRANSIENT = eINSTANCE.getEStructuralFeature_Transient();
        public static final EAttribute ESTRUCTURAL_FEATURE__DEFAULT_VALUE_LITERAL = eINSTANCE.getEStructuralFeature_DefaultValueLiteral();
        public static final EAttribute ESTRUCTURAL_FEATURE__DEFAULT_VALUE = eINSTANCE.getEStructuralFeature_DefaultValue();
        public static final EAttribute ESTRUCTURAL_FEATURE__UNSETTABLE = eINSTANCE.getEStructuralFeature_Unsettable();
        public static final EAttribute ESTRUCTURAL_FEATURE__DERIVED = eINSTANCE.getEStructuralFeature_Derived();
        public static final EReference ESTRUCTURAL_FEATURE__ECONTAINING_CLASS = eINSTANCE.getEStructuralFeature_EContainingClass();
        public static final EOperation ESTRUCTURAL_FEATURE___GET_FEATURE_ID = eINSTANCE.getEStructuralFeature__GetFeatureID();
        public static final EOperation ESTRUCTURAL_FEATURE___GET_CONTAINER_CLASS = eINSTANCE.getEStructuralFeature__GetContainerClass();
        public static final EClass ETYPED_ELEMENT = eINSTANCE.getETypedElement();
        public static final EAttribute ETYPED_ELEMENT__ORDERED = eINSTANCE.getETypedElement_Ordered();
        public static final EAttribute ETYPED_ELEMENT__UNIQUE = eINSTANCE.getETypedElement_Unique();
        public static final EAttribute ETYPED_ELEMENT__LOWER_BOUND = eINSTANCE.getETypedElement_LowerBound();
        public static final EAttribute ETYPED_ELEMENT__UPPER_BOUND = eINSTANCE.getETypedElement_UpperBound();
        public static final EAttribute ETYPED_ELEMENT__MANY = eINSTANCE.getETypedElement_Many();
        public static final EAttribute ETYPED_ELEMENT__REQUIRED = eINSTANCE.getETypedElement_Required();
        public static final EReference ETYPED_ELEMENT__ETYPE = eINSTANCE.getETypedElement_EType();
        public static final EReference ETYPED_ELEMENT__EGENERIC_TYPE = eINSTANCE.getETypedElement_EGenericType();
        public static final EClass ESTRING_TO_STRING_MAP_ENTRY = eINSTANCE.getEStringToStringMapEntry();
        public static final EAttribute ESTRING_TO_STRING_MAP_ENTRY__KEY = eINSTANCE.getEStringToStringMapEntry_Key();
        public static final EAttribute ESTRING_TO_STRING_MAP_ENTRY__VALUE = eINSTANCE.getEStringToStringMapEntry_Value();
        public static final EClass EGENERIC_TYPE = eINSTANCE.getEGenericType();
        public static final EReference EGENERIC_TYPE__EUPPER_BOUND = eINSTANCE.getEGenericType_EUpperBound();
        public static final EReference EGENERIC_TYPE__ETYPE_ARGUMENTS = eINSTANCE.getEGenericType_ETypeArguments();
        public static final EReference EGENERIC_TYPE__ERAW_TYPE = eINSTANCE.getEGenericType_ERawType();
        public static final EReference EGENERIC_TYPE__ELOWER_BOUND = eINSTANCE.getEGenericType_ELowerBound();
        public static final EReference EGENERIC_TYPE__ETYPE_PARAMETER = eINSTANCE.getEGenericType_ETypeParameter();
        public static final EReference EGENERIC_TYPE__ECLASSIFIER = eINSTANCE.getEGenericType_EClassifier();
        public static final EClass ETYPE_PARAMETER = eINSTANCE.getETypeParameter();
        public static final EReference ETYPE_PARAMETER__EBOUNDS = eINSTANCE.getETypeParameter_EBounds();
        public static final EDataType EBIG_DECIMAL = eINSTANCE.getEBigDecimal();
        public static final EDataType EBIG_INTEGER = eINSTANCE.getEBigInteger();
        public static final EDataType EBOOLEAN = eINSTANCE.getEBoolean();
        public static final EDataType EBOOLEAN_OBJECT = eINSTANCE.getEBooleanObject();
        public static final EDataType EBYTE = eINSTANCE.getEByte();
        public static final EDataType EBYTE_ARRAY = eINSTANCE.getEByteArray();
        public static final EDataType EBYTE_OBJECT = eINSTANCE.getEByteObject();
        public static final EDataType ECHAR = eINSTANCE.getEChar();
        public static final EDataType ECHARACTER_OBJECT = eINSTANCE.getECharacterObject();
        public static final EDataType EDATE = eINSTANCE.getEDate();
        public static final EDataType EDIAGNOSTIC_CHAIN = eINSTANCE.getEDiagnosticChain();
        public static final EDataType EDOUBLE = eINSTANCE.getEDouble();
        public static final EDataType EDOUBLE_OBJECT = eINSTANCE.getEDoubleObject();
        public static final EDataType EE_LIST = eINSTANCE.getEEList();
        public static final EDataType EENUMERATOR = eINSTANCE.getEEnumerator();
        public static final EDataType EFEATURE_MAP = eINSTANCE.getEFeatureMap();
        public static final EDataType EFEATURE_MAP_ENTRY = eINSTANCE.getEFeatureMapEntry();
        public static final EDataType EFLOAT = eINSTANCE.getEFloat();
        public static final EDataType EFLOAT_OBJECT = eINSTANCE.getEFloatObject();
        public static final EDataType EINT = eINSTANCE.getEInt();
        public static final EDataType EINTEGER_OBJECT = eINSTANCE.getEIntegerObject();
        public static final EDataType EJAVA_CLASS = eINSTANCE.getEJavaClass();
        public static final EDataType EJAVA_OBJECT = eINSTANCE.getEJavaObject();
        public static final EDataType ELONG = eINSTANCE.getELong();
        public static final EDataType ELONG_OBJECT = eINSTANCE.getELongObject();
        public static final EDataType EMAP = eINSTANCE.getEMap();
        public static final EDataType ERESOURCE = eINSTANCE.getEResource();
        public static final EDataType ERESOURCE_SET = eINSTANCE.getEResourceSet();
        public static final EDataType ESHORT = eINSTANCE.getEShort();
        public static final EDataType ESHORT_OBJECT = eINSTANCE.getEShortObject();
        public static final EDataType ESTRING = eINSTANCE.getEString();
        public static final EDataType ETREE_ITERATOR = eINSTANCE.getETreeIterator();
        public static final EDataType EINVOCATION_TARGET_EXCEPTION = eINSTANCE.getEInvocationTargetException();
    }
}

