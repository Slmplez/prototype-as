/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.UniqueEList$FastCompare
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcoreValidator
extends EObjectValidator {
    public static final EcoreValidator INSTANCE = new EcoreValidator();
    public static final String STRICT_NAMED_ELEMENT_NAMES = "org.eclipse.emf.ecore.model.ENamedElement_WellFormedName";
    public static final String DIAGNOSTIC_SOURCE = "org.eclipse.emf.ecore.model";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    public static final int AT_MOST_ONE_ID = 1;
    public static final int CONSISTENT_ARGUMENTS_INCORRECT_NUMBER = 2;
    public static final int CONSISTENT_ARGUMENTS_INVALID_SUBSTITUTION = 3;
    public static final int CONSISTENT_ARGUMENTS_NONE = 4;
    public static final int CONSISTENT_ARGUMENTS_NONE_ALLOWED = 5;
    public static final int CONSISTENT_BOUNDS = 6;
    public static final int CONSISTENT_BOUNDS_NOT_ALLOWED = 7;
    public static final int CONSISTENT_BOUNDS_NO_BOUNDS_WITH_TYPE_PARAMETER_OR_CLASSIFIER = 8;
    public static final int CONSISTENT_BOUNDS_NO_LOWER_AND_UPPER = 9;
    public static final int CONSISTENT_KEYS = 10;
    public static final int CONSISTENT_OPPOSITE_BAD_TRANSIENT = 11;
    public static final int CONSISTENT_OPPOSITE_BOTH_CONTAINMENT = 12;
    public static final int CONSISTENT_OPPOSITE_NOT_FROM_TYPE = 13;
    public static final int CONSISTENT_OPPOSITE_NOT_MATCHING = 14;
    public static final int CONSISTENT_SUPER_TYPES_CONFLICT = 15;
    public static final int CONSISTENT_SUPER_TYPES_DUPLICATE = 16;
    public static final int CONSISTENT_TRANSIENT = 17;
    public static final int CONSISTENT_TYPE_CLASS_REQUIRED = 18;
    public static final int CONSISTENT_TYPE_CLASS_NOT_PERMITTED = 19;
    public static final int CONSISTENT_TYPE_DATA_TYPE_NOT_PERMITTED = 20;
    public static final int CONSISTENT_TYPE_NO_TYPE_PARAMETER_AND_CLASSIFIER = 21;
    public static final int CONSISTENT_TYPE_PRIMITIVE_TYPE_NOT_PERMITTED = 22;
    public static final int CONSISTENT_TYPE_TYPE_PARAMETER_NOT_IN_SCOPE = 23;
    public static final int CONSISTENT_TYPE_WILDCARD_NOT_PERMITTED = 24;
    public static final int INTERFACE_IS_ABSTRACT = 25;
    public static final int NO_CIRCULAR_SUPER_TYPES = 26;
    public static final int NO_REPEATING_VOID = 27;
    public static final int SINGLE_CONTAINER = 28;
    public static final int UNIQUE_CLASSIFIER_NAMES = 29;
    public static final int UNIQUE_ENUMERATOR_LITERALS = 30;
    public static final int UNIQUE_ENUMERATOR_NAMES = 31;
    public static final int UNIQUE_FEATURE_NAMES = 32;
    public static final int UNIQUE_NS_URIS = 33;
    public static final int UNIQUE_OPERATION_SIGNATURES = 34;
    public static final int UNIQUE_PARAMETER_NAMES = 35;
    public static final int UNIQUE_SUBPACKAGE_NAMES = 36;
    public static final int UNIQUE_TYPE_PARAMETER_NAMES = 37;
    public static final int VALID_DEFAULT_VALUE_LITERAL = 38;
    public static final int VALID_LOWER_BOUND = 39;
    public static final int VALID_TYPE = 40;
    public static final int VALID_UPPER_BOUND = 41;
    public static final int WELL_FORMED_INSTANCE_TYPE_NAME = 42;
    public static final int WELL_FORMED_MAP_ENTRY_CLASS = 43;
    public static final int WELL_FORMED_NAME = 44;
    public static final int WELL_FORMED_NS_PREFIX = 45;
    public static final int WELL_FORMED_NS_URI = 46;
    public static final int WELL_FORMED_SOURCE_URI = 47;
    public static final int DISJOINT_FEATURE_AND_OPERATION_SIGNATURES = 48;
    public static final int WELL_FORMED_MAP_ENTRY_NO_INSTANCE_CLASS_NAME = 49;
    public static final int CONSISTENT_UNIQUE = 50;
    public static final int CONSISTENT_CONTAINER = 51;
    protected static final int DIAGNOSTIC_CODE_COUNT = 51;
    protected XMLTypeValidator xmlTypeValidator;
    private final EOperationSignatureValidator uniqueOperationSignaturesValidator = new EOperationSignatureValidator("_UI_EClassUniqueEOperationSignatures_diagnostic", 34);

    public EcoreValidator() {
        this.xmlTypeValidator = XMLTypeValidator.INSTANCE;
    }

    @Override
    protected EPackage getEPackage() {
        return EcorePackage.eINSTANCE;
    }

    @Override
    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateEAttribute((EAttribute)value, diagnostics, context);
            }
            case 1: {
                return this.validateEAnnotation((EAnnotation)value, diagnostics, context);
            }
            case 2: {
                return this.validateEClass((EClass)value, diagnostics, context);
            }
            case 3: {
                return this.validateEClassifier((EClassifier)value, diagnostics, context);
            }
            case 4: {
                return this.validateEDataType((EDataType)value, diagnostics, context);
            }
            case 5: {
                return this.validateEEnum((EEnum)value, diagnostics, context);
            }
            case 6: {
                return this.validateEEnumLiteral((EEnumLiteral)value, diagnostics, context);
            }
            case 7: {
                return this.validateEFactory((EFactory)value, diagnostics, context);
            }
            case 8: {
                return this.validateEModelElement((EModelElement)value, diagnostics, context);
            }
            case 9: {
                return this.validateENamedElement((ENamedElement)value, diagnostics, context);
            }
            case 10: {
                return this.validateEObject((EObject)value, diagnostics, context);
            }
            case 11: {
                return this.validateEOperation((EOperation)value, diagnostics, context);
            }
            case 12: {
                return this.validateEPackage((EPackage)value, diagnostics, context);
            }
            case 13: {
                return this.validateEParameter((EParameter)value, diagnostics, context);
            }
            case 14: {
                return this.validateEReference((EReference)value, diagnostics, context);
            }
            case 15: {
                return this.validateEStructuralFeature((EStructuralFeature)value, diagnostics, context);
            }
            case 16: {
                return this.validateETypedElement((ETypedElement)value, diagnostics, context);
            }
            case 17: {
                return this.validateEStringToStringMapEntry((Map.Entry)value, diagnostics, context);
            }
            case 18: {
                return this.validateEGenericType((EGenericType)value, diagnostics, context);
            }
            case 19: {
                return this.validateETypeParameter((ETypeParameter)value, diagnostics, context);
            }
            case 20: {
                return this.validateEBigDecimal((BigDecimal)value, diagnostics, context);
            }
            case 21: {
                return this.validateEBigInteger((BigInteger)value, diagnostics, context);
            }
            case 22: {
                return this.validateEBoolean((Boolean)value, diagnostics, context);
            }
            case 23: {
                return this.validateEBooleanObject((Boolean)value, diagnostics, context);
            }
            case 24: {
                return this.validateEByte((Byte)value, diagnostics, context);
            }
            case 25: {
                return this.validateEByteArray((byte[])value, diagnostics, context);
            }
            case 26: {
                return this.validateEByteObject((Byte)value, diagnostics, context);
            }
            case 27: {
                return this.validateEChar(((Character)value).charValue(), diagnostics, context);
            }
            case 28: {
                return this.validateECharacterObject((Character)value, diagnostics, context);
            }
            case 29: {
                return this.validateEDate((Date)value, diagnostics, context);
            }
            case 30: {
                return this.validateEDiagnosticChain((DiagnosticChain)value, diagnostics, context);
            }
            case 31: {
                return this.validateEDouble((Double)value, diagnostics, context);
            }
            case 32: {
                return this.validateEDoubleObject((Double)value, diagnostics, context);
            }
            case 33: {
                return this.validateEEList((EList)value, diagnostics, context);
            }
            case 34: {
                return this.validateEEnumerator((Enumerator)value, diagnostics, context);
            }
            case 35: {
                return this.validateEFeatureMap((FeatureMap)value, diagnostics, context);
            }
            case 36: {
                return this.validateEFeatureMapEntry((FeatureMap.Entry)value, diagnostics, context);
            }
            case 37: {
                return this.validateEFloat(((Float)value).floatValue(), diagnostics, context);
            }
            case 38: {
                return this.validateEFloatObject((Float)value, diagnostics, context);
            }
            case 39: {
                return this.validateEInt((Integer)value, diagnostics, context);
            }
            case 40: {
                return this.validateEIntegerObject((Integer)value, diagnostics, context);
            }
            case 41: {
                return this.validateEJavaClass((Class)value, diagnostics, context);
            }
            case 42: {
                return this.validateEJavaObject(value, diagnostics, context);
            }
            case 43: {
                return this.validateELong((Long)value, diagnostics, context);
            }
            case 44: {
                return this.validateELongObject((Long)value, diagnostics, context);
            }
            case 45: {
                return this.validateEMap((Map)value, diagnostics, context);
            }
            case 46: {
                return this.validateEResource((Resource)value, diagnostics, context);
            }
            case 47: {
                return this.validateEResourceSet((ResourceSet)value, diagnostics, context);
            }
            case 48: {
                return this.validateEShort((Short)value, diagnostics, context);
            }
            case 49: {
                return this.validateEShortObject((Short)value, diagnostics, context);
            }
            case 50: {
                return this.validateEString((String)value, diagnostics, context);
            }
            case 51: {
                return this.validateETreeIterator((TreeIterator)value, diagnostics, context);
            }
            case 52: {
                return this.validateEInvocationTargetException((InvocationTargetException)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateEAttribute(EAttribute eAttribute, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eAttribute, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eAttribute, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidLowerBound(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidUpperBound(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ConsistentBounds(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidType(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEStructuralFeature_ValidDefaultValueLiteral(eAttribute, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEAttribute_ConsistentTransient(eAttribute, diagnostics, context);
        }
        return result;
    }

    public boolean validateEAttribute_ConsistentTransient(EAttribute eAttribute, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        EDataType eAttributeType = eAttribute.getEAttributeType();
        boolean bl = result = EcoreValidator.isEffectivelyTransient(eAttribute) || eAttributeType == null || eAttributeType.isSerializable() || FeatureMapUtil.isFeatureMapEntry(eAttributeType);
        if (!result && diagnostics != null) {
            String attributeName = eAttribute.getName();
            if (eAttribute.getEContainingClass() != null) {
                attributeName = String.valueOf(eAttribute.getEContainingClass().getName()) + "." + attributeName;
            }
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 17, "_UI_EAttributeConsistentTransient_diagnostic", new String[]{attributeName}, new Object[]{eAttribute}, context));
        }
        return result;
    }

    private static boolean isEffectivelyTransient(EStructuralFeature eStructuralFeature) {
        if (eStructuralFeature.isTransient()) {
            EStructuralFeature group = ExtendedMetaData.INSTANCE.getGroup(eStructuralFeature);
            return group == null || EcoreValidator.isEffectivelyTransient(group);
        }
        return false;
    }

    public boolean validateEAnnotation(EAnnotation eAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEAnnotation_WellFormedSourceURI(eAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateEAnnotation_WellFormedSourceURI(EAnnotation eAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        String source = eAnnotation.getSource();
        boolean bl = result = source == null || EcoreValidator.isWellFormedURI(source);
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 47, "_UI_EAnnotationSourceURINotWellFormed_diagnostic", new Object[]{source}, new Object[]{eAnnotation}, context));
        }
        return result;
    }

    protected static boolean isWellFormedURI(String uri) {
        try {
            return uri != null && uri.length() != 0 && uri.equals(URI.createURI((String)uri, (boolean)true).toString());
        }
        catch (Throwable exception) {
            return false;
        }
    }

    public boolean validateEClass(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eClass, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eClass, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_WellFormedInstanceTypeName(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_UniqueTypeParameterNames(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_InterfaceIsAbstract(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_AtMostOneID(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_UniqueFeatureNames(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_UniqueOperationSignatures(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_NoCircularSuperTypes(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_WellFormedMapEntryClass(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_ConsistentSuperTypes(eClass, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClass_DisjointFeatureAndOperationSignatures(eClass, diagnostics, context);
        }
        return result;
    }

    public boolean validateEClass_InterfaceIsAbstract(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = !eClass.isInterface() || eClass.isAbstract();
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 25, "_UI_EClassInterfaceNotAbstract_diagnostic", null, new Object[]{eClass}, context));
        }
        return result;
    }

    public boolean validateEClass_AtMostOneID(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EAttribute eIDAttribute = eClass.getEIDAttribute();
        if (eIDAttribute != null && !ExtendedMetaData.INSTANCE.isDocumentRoot(eClass)) {
            block0: for (EAttribute eAttribute : eClass.getEAllAttributes()) {
                if (!eAttribute.isID() || eIDAttribute == eAttribute) continue;
                result = false;
                if (diagnostics == null) break;
                for (EClass eSuperType : eClass.getESuperTypes()) {
                    EList<EStructuralFeature> eAllStructuralFeatures = eSuperType.getEAllStructuralFeatures();
                    if (eAllStructuralFeatures.contains((Object)eIDAttribute) && eAllStructuralFeatures.contains((Object)eAttribute)) continue block0;
                }
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 1, "_UI_EClassAtMostOneID_diagnostic", new Object[]{EcoreValidator.getFeatureLabel(eIDAttribute, context), EcoreValidator.getFeatureLabel(eAttribute, context)}, new Object[]{eClass, eAttribute, eIDAttribute}, context));
            }
        }
        return result;
    }

    public boolean validateEClass_UniqueFeatureNames(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        int size = eClass.getFeatureCount();
        if (size > 0) {
            int start = 0;
            EList<EClass> eSuperTypes = eClass.getESuperTypes();
            if (!eSuperTypes.isEmpty()) {
                start = ((EClass)eSuperTypes.get(0)).getEAllStructuralFeatures().size();
            }
            ArrayList<String> keys = new ArrayList<String>();
            int i = 0;
            while (i < size) {
                block11: {
                    EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
                    String name = eStructuralFeature.getName();
                    if (name == null) {
                        keys.add(null);
                    } else {
                        int index;
                        String key = name.replace("_", "").toLowerCase();
                        if (i >= start && (index = keys.indexOf(key)) != -1) {
                            Object[] objectArray;
                            if (diagnostics == null) {
                                return false;
                            }
                            result = false;
                            EStructuralFeature otherEStructuralFeature = eClass.getEStructuralFeature(index);
                            for (EClass eSuperType : eSuperTypes) {
                                EList<EStructuralFeature> eAllStructuralFeatures = eSuperType.getEAllStructuralFeatures();
                                if (!eAllStructuralFeatures.contains((Object)eStructuralFeature) || !eAllStructuralFeatures.contains((Object)otherEStructuralFeature)) {
                                    continue;
                                }
                                break block11;
                            }
                            String otherName = otherEStructuralFeature.getName();
                            int n = name.equals(otherName) ? 4 : 2;
                            String string = name.equals(otherName) ? "_UI_EClassUniqueEStructuralFeatureName_diagnostic" : "_UI_EClassDissimilarEStructuralFeatureName_diagnostic";
                            if (name.equals(otherName)) {
                                Object[] objectArray2 = new Object[1];
                                objectArray = objectArray2;
                                objectArray2[0] = name;
                            } else {
                                Object[] objectArray3 = new Object[2];
                                objectArray3[0] = name;
                                objectArray = objectArray3;
                                objectArray3[1] = otherName;
                            }
                            diagnostics.add((Diagnostic)this.createDiagnostic(n, DIAGNOSTIC_SOURCE, 32, string, objectArray, new Object[]{eClass, eStructuralFeature, otherEStructuralFeature}, context));
                        }
                        keys.add(key);
                    }
                }
                ++i;
            }
        }
        return result;
    }

    public boolean validateEClass_UniqueOperationSignatures(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.uniqueOperationSignaturesValidator.validateEOperationSignatures(eClass, eClass.getEOperations(), (Collection<EOperation>)eClass.getEOperations(), diagnostics, context);
    }

    private boolean validateEClass_UniqueOperationSignatures2(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EList<EOperation> eAllOperations = eClass.getEAllOperations();
        if (!eAllOperations.isEmpty()) {
            Object eOperations = eAllOperations;
            EList<EClass> eSuperTypes = eClass.getESuperTypes();
            if (!eSuperTypes.isEmpty()) {
                eOperations = eAllOperations.subList(((EClass)eSuperTypes.get(0)).getEAllOperations().size(), eAllOperations.size());
            }
            block0: for (EOperation eOperation : eOperations) {
                String name = eOperation.getName();
                if (name == null) continue;
                EList<EParameter> eParameters = eOperation.getEParameters();
                int eParameterSize = eParameters.size();
                block1: for (EOperation otherEOperation : eAllOperations) {
                    EList<EParameter> otherEParmeters;
                    if (otherEOperation == eOperation) continue block0;
                    String otherName = otherEOperation.getName();
                    if (!name.equals(otherName) || (otherEParmeters = otherEOperation.getEParameters()).size() != eParameterSize) continue;
                    int i = 0;
                    while (i < eParameterSize) {
                        String otherInstanceClassName;
                        String instanceClassName;
                        EClassifier otherEType;
                        EParameter eParameter = (EParameter)eParameters.get(i);
                        EParameter otherEParameter = (EParameter)otherEParmeters.get(i);
                        EClassifier eType = eParameter.getEType();
                        if (eType != (otherEType = otherEParameter.getEType()) && eType != null && otherEType != null && (instanceClassName = eType.getInstanceClassName()) != (otherInstanceClassName = otherEType.getInstanceClassName()) && instanceClassName != null && otherInstanceClassName != null) continue block1;
                        ++i;
                    }
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    for (EClass eSuperType : eClass.getEAllSuperTypes()) {
                        EList<EOperation> superTypeEAllOperations = eSuperType.getEAllOperations();
                        if (superTypeEAllOperations.contains((Object)eOperation) && superTypeEAllOperations.contains((Object)otherEOperation)) continue block1;
                    }
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 34, "_UI_EClassUniqueEOperationSignatures_diagnostic", new Object[]{EcoreValidator.getObjectLabel(eOperation, context), EcoreValidator.getObjectLabel(otherEOperation, context)}, new Object[]{eClass, eOperation, otherEOperation}, context));
                }
            }
        }
        return result;
    }

    public boolean validateEClass_NoCircularSuperTypes(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        EList<EClass> eAllSuperTypes = eClass.getEAllSuperTypes();
        boolean bl = result = !eAllSuperTypes.contains((Object)eClass);
        if (result) {
            for (EClass otherEClass : eAllSuperTypes) {
                if (!otherEClass.getEAllSuperTypes().contains((Object)eClass)) continue;
                result = false;
                break;
            }
        }
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 26, "_UI_EClassNoCircularSuperTypes_diagnostic", null, new Object[]{eClass}, context));
        }
        return result;
    }

    public boolean validateEClass_WellFormedMapEntryClass(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        if (eClass.getInstanceClassName() == "java.util.Map$Entry") {
            EStructuralFeature valueFeature;
            EStructuralFeature keyFeature = eClass.getEStructuralFeature("key");
            if (keyFeature == null) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 43, "_UI_EClassNotWellFormedMapEntry_diagnostic", new Object[]{"key"}, new Object[]{eClass}, context));
            }
            if ((valueFeature = eClass.getEStructuralFeature("value")) == null) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 43, "_UI_EClassNotWellFormedMapEntry_diagnostic", new Object[]{"value"}, new Object[]{eClass}, context));
            }
        } else {
            for (EClass eSuperType : eClass.getEAllSuperTypes()) {
                if (eSuperType.getInstanceClassName() != "java.util.Map$Entry") continue;
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 49, "_UI_EClassNotWellFormedMapEntryNoInstanceClassName_diagnostic", null, new Object[]{eClass}, context));
            }
        }
        return result;
    }

    public boolean validateEClass_ConsistentSuperTypes(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<EClassifier> superTypes = new ArrayList<EClassifier>();
        EList<EGenericType> eGenericSuperTypes = eClass.getEGenericSuperTypes();
        for (EGenericType eGenericSuperType : eGenericSuperTypes) {
            int index;
            EClassifier eClassifier = eGenericSuperType.getEClassifier();
            if (eClassifier instanceof EClass && (index = superTypes.indexOf(eClassifier)) != -1) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 16, "_UI_EClassNoDuplicateSuperTypes_diagnostic", new Object[]{eGenericSuperTypes.indexOf((Object)eGenericSuperType), index}, new Object[]{eClass, eGenericSuperType, eGenericSuperTypes.get(index)}, context));
            }
            superTypes.add(eClassifier);
        }
        if (result) {
            superTypes.clear();
            EList<EGenericType> eAllGenericSuperTypes = eClass.getEAllGenericSuperTypes();
            for (EGenericType eGenericSuperType : eAllGenericSuperTypes) {
                int index;
                EClassifier eClassifier = eGenericSuperType.getEClassifier();
                if (eClassifier instanceof EClass && (index = superTypes.indexOf(eClassifier)) != -1) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 15, "_UI_EClassConsistentSuperTypes_diagnostic", new Object[]{EcoreValidator.getObjectLabel(eClassifier, context)}, new Object[]{eClass, eGenericSuperType, eAllGenericSuperTypes.get(index)}, context));
                }
                superTypes.add(eClassifier);
            }
        }
        return result;
    }

    public boolean validateEClass_DisjointFeatureAndOperationSignatures(EClass eClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EList<EOperation> eOperations = eClass.getEOperations();
        final LinkedHashMap<EOperation, EStructuralFeature> implicitEOperationToEStructuralFeatureMap = new LinkedHashMap<EOperation, EStructuralFeature>();
        if (!eOperations.isEmpty()) {
            for (EStructuralFeature eStructuralFeature : eClass.getEStructuralFeatures()) {
                EOperation eOperation;
                String featureName = eStructuralFeature.getName();
                EClassifier eType = eStructuralFeature.getEType();
                if (featureName == null || featureName.length() == 0 || eType == null) continue;
                featureName = String.valueOf(featureName.substring(0, 1).toUpperCase()) + featureName.substring(1);
                if (!EcoreUtil.isSuppressedVisibility(eStructuralFeature, 0)) {
                    String getAccessor = String.valueOf(eStructuralFeature.isMany() || !"boolean".equals(eType.getInstanceClassName()) ? "get" : "is") + featureName;
                    if ("getClass".equals(getAccessor)) {
                        getAccessor = "getClass_";
                    }
                    eOperation = EcoreFactory.eINSTANCE.createEOperation();
                    eOperation.setName(getAccessor);
                    eOperation.setUpperBound(eStructuralFeature.getUpperBound());
                    eOperation.setOrdered(eStructuralFeature.isOrdered());
                    eOperation.setUnique(eStructuralFeature.isUnique());
                    eOperation.setEType(eType);
                    implicitEOperationToEStructuralFeatureMap.put(eOperation, eStructuralFeature);
                }
                if (!eStructuralFeature.isMany() && eStructuralFeature.isChangeable() && !EcoreUtil.isSuppressedVisibility(eStructuralFeature, 1)) {
                    String setAccessor = "set" + featureName;
                    eOperation = EcoreFactory.eINSTANCE.createEOperation();
                    eOperation.setName(setAccessor);
                    EParameter eParameter = EcoreFactory.eINSTANCE.createEParameter();
                    eParameter.setName(featureName);
                    eParameter.setEType(eType);
                    eOperation.getEParameters().add((Object)eParameter);
                    implicitEOperationToEStructuralFeatureMap.put(eOperation, eStructuralFeature);
                }
                if (!eStructuralFeature.isUnsettable()) continue;
                if (!EcoreUtil.isSuppressedVisibility(eStructuralFeature, 2)) {
                    String isSetAccessor = "isSet" + featureName;
                    eOperation = EcoreFactory.eINSTANCE.createEOperation();
                    eOperation.setName(isSetAccessor);
                    eOperation.setEType(EcorePackage.Literals.EBOOLEAN);
                    implicitEOperationToEStructuralFeatureMap.put(eOperation, eStructuralFeature);
                }
                if (EcoreUtil.isSuppressedVisibility(eStructuralFeature, 3)) continue;
                String unsetAccessor = "unset" + featureName;
                eOperation = EcoreFactory.eINSTANCE.createEOperation();
                eOperation.setName(unsetAccessor);
                implicitEOperationToEStructuralFeatureMap.put(eOperation, eStructuralFeature);
            }
            result = new EOperationSignatureValidator("_UI_EClassDisjointFeatureAndOperationSignatures_diagnostic", 48, true){

                protected EModelElement getTarget(EOperation otherEOperation) {
                    return (EModelElement)implicitEOperationToEStructuralFeatureMap.get(otherEOperation);
                }
            }.validateEOperationSignatures(eClass, eOperations, implicitEOperationToEStructuralFeatureMap.keySet(), diagnostics, context);
        }
        return result;
    }

    public boolean validateEClassifier(EClassifier eClassifier, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eClassifier, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eClassifier, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_WellFormedInstanceTypeName(eClassifier, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_UniqueTypeParameterNames(eClassifier, diagnostics, context);
        }
        return result;
    }

    public boolean validateEClassifier_WellFormedInstanceTypeName(EClassifier eClassifier, DiagnosticChain diagnostics, final Map<Object, Object> context) {
        boolean result;
        String instanceTypeName = eClassifier.getInstanceTypeName();
        Diagnostic typeBuilderDiagnostic = instanceTypeName == null ? null : new EGenericTypeBuilder(){

            protected BasicDiagnostic createDiagnostic(int severity, String source, int code, String messageKey, Object[] messageSubstitutions, Object[] data) {
                return EcoreValidator.this.createDiagnostic(severity, source, code, messageKey, messageSubstitutions, data, context);
            }

            protected ResourceLocator getResourceLocator() {
                return EcoreValidator.this.getResourceLocator();
            }

            protected String getString(String key, Object[] substitutions) {
                return EcoreValidator.this.getString(key, substitutions);
            }

            protected void report(DiagnosticChain diagnostics, String key, Object[] substitutions, int index) {
                EcoreValidator.this.report(diagnostics, key, substitutions, index, context);
            }
        }.parseInstanceTypeName(instanceTypeName);
        String formattedName = null;
        boolean bl = instanceTypeName != null ? typeBuilderDiagnostic.getSeverity() == 0 && instanceTypeName.equals(formattedName = EcoreUtil.toJavaInstanceTypeName((EGenericType)typeBuilderDiagnostic.getData().get(0))) : (result = eClassifier instanceof EClass || eClassifier instanceof EEnum);
        if (!result && diagnostics != null) {
            BasicDiagnostic diagnosic = this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 42, "_UI_EClassifierInstanceTypeNameNotWellFormed_diagnostic", new Object[]{EcoreValidator.getValueLabel(EcorePackage.Literals.ESTRING, instanceTypeName, context)}, new Object[]{eClassifier}, context);
            if (typeBuilderDiagnostic != null) {
                if (!typeBuilderDiagnostic.getChildren().isEmpty()) {
                    diagnosic.addAll(typeBuilderDiagnostic);
                } else if (instanceTypeName != null && formattedName != null) {
                    int i = 0;
                    int length = Math.min(instanceTypeName.length(), formattedName.length());
                    while (i < length) {
                        if (instanceTypeName.codePointAt(i) != formattedName.codePointAt(i)) break;
                        i = Character.offsetByCodePoints(instanceTypeName, i, 1);
                    }
                    diagnosic.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 42, instanceTypeName.codePointAt(i) == 32 ? "_UI_EClassifierInstanceTypeNameUnexpectedSpace_diagnostic" : "_UI_EClassifierInstanceTypeNameExpectedSpace_diagnostic", new Object[]{i}, new Object[]{i}, context));
                }
            }
            diagnostics.add((Diagnostic)diagnosic);
        }
        return result;
    }

    public boolean validateEClassifier_UniqueTypeParameterNames(EClassifier eClassifier, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> names = new ArrayList<String>();
        EList<ETypeParameter> eTypeParameters = eClassifier.getETypeParameters();
        for (ETypeParameter eTypeParameter : eTypeParameters) {
            int index;
            String name = eTypeParameter.getName();
            if (name != null && (index = names.indexOf(name)) != -1) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                ETypeParameter otherETypeParameter = (ETypeParameter)eTypeParameters.get(index);
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 37, "_UI_UniqueTypeParameterNames_diagnostic", new Object[]{name}, new Object[]{eClassifier, eTypeParameter, otherETypeParameter}, context));
            }
            names.add(name);
        }
        return result;
    }

    public boolean validateEDataType(EDataType eDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eDataType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eDataType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_WellFormedInstanceTypeName(eDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_UniqueTypeParameterNames(eDataType, diagnostics, context);
        }
        return result;
    }

    public boolean validateEEnum(EEnum eEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eEnum, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eEnum, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_WellFormedInstanceTypeName(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEClassifier_UniqueTypeParameterNames(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEEnum_UniqueEnumeratorNames(eEnum, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEEnum_UniqueEnumeratorLiterals(eEnum, diagnostics, context);
        }
        return result;
    }

    public boolean validateEEnum_UniqueEnumeratorNames(EEnum eEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> names = new ArrayList<String>();
        EList<EEnumLiteral> eLiterals = eEnum.getELiterals();
        for (EEnumLiteral eEnumLiteral : eLiterals) {
            String name = eEnumLiteral.getName();
            if (name == null) {
                names.add(null);
                continue;
            }
            String key = name.replace("_", "").toUpperCase();
            int index = names.indexOf(key);
            if (index != -1) {
                Object[] objectArray;
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                EEnumLiteral otherEEnumLiteral = (EEnumLiteral)eLiterals.get(index);
                String otherName = otherEEnumLiteral.getName();
                int n = name.equals(otherName) ? 4 : 2;
                String string = name.equals(otherName) ? "_UI_EEnumUniqueEnumeratorNames_diagnostic" : "_UI_EEnumDissimilarEnumeratorNames_diagnostic";
                if (name.equals(otherName)) {
                    Object[] objectArray2 = new Object[1];
                    objectArray = objectArray2;
                    objectArray2[0] = name;
                } else {
                    Object[] objectArray3 = new Object[2];
                    objectArray3[0] = name;
                    objectArray = objectArray3;
                    objectArray3[1] = otherName;
                }
                diagnostics.add((Diagnostic)this.createDiagnostic(n, DIAGNOSTIC_SOURCE, 31, string, objectArray, new Object[]{eEnum, eEnumLiteral, otherEEnumLiteral}, context));
            }
            names.add(key);
        }
        return result;
    }

    public boolean validateEEnum_UniqueEnumeratorLiterals(EEnum eEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> literals = new ArrayList<String>();
        EList<EEnumLiteral> eLiterals = eEnum.getELiterals();
        for (EEnumLiteral eEnumLiteral : eLiterals) {
            int index;
            String literal = eEnumLiteral.getLiteral();
            if (literal != null && (index = literals.indexOf(literal)) != -1) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                EEnumLiteral otherEEnumLiteral = (EEnumLiteral)eLiterals.get(index);
                String name = eEnumLiteral.getName();
                if (name == null || !name.equals(literal) || !name.equals(otherEEnumLiteral.getName())) {
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 30, "_UI_EEnumUniqueEnumeratorLiterals_diagnostic", new Object[]{literal}, new Object[]{eEnum, eEnumLiteral, otherEEnumLiteral}, context));
                }
            }
            literals.add(literal);
        }
        return result;
    }

    public boolean validateEEnumLiteral(EEnumLiteral eEnumLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eEnumLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eEnumLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eEnumLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eEnumLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateEFactory(EFactory eFactory, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eFactory, diagnostics, context);
    }

    public boolean validateEModelElement(EModelElement eModelElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eModelElement, diagnostics, context);
    }

    public boolean validateENamedElement(ENamedElement eNamedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eNamedElement, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eNamedElement, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eNamedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eNamedElement, diagnostics, context);
        }
        return result;
    }

    public boolean validateENamedElement_WellFormedName(ENamedElement eNamedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        int length;
        if (context != null && Boolean.FALSE.equals(context.get(STRICT_NAMED_ELEMENT_NAMES))) {
            return true;
        }
        boolean result = false;
        String name = eNamedElement.getName();
        if (name != null && (length = name.length()) > 0 && Character.isJavaIdentifierStart(name.codePointAt(0))) {
            result = true;
            int i = Character.offsetByCodePoints(name, 0, 1);
            while (i < length) {
                if (!Character.isJavaIdentifierPart(name.codePointAt(i))) {
                    result = false;
                    break;
                }
                i = Character.offsetByCodePoints(name, i, 1);
            }
        }
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 44, "_UI_ENamedElementNameNotWellFormed_diagnostic", new Object[]{EcoreValidator.getValueLabel(EcorePackage.Literals.ESTRING, name, context)}, new Object[]{eNamedElement}, context));
        }
        return result;
    }

    public boolean validateEObject(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eObject, diagnostics, context);
    }

    public boolean validateEOperation(EOperation eOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eOperation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eOperation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidLowerBound(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidUpperBound(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ConsistentBounds(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidType(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEOperation_UniqueParameterNames(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEOperation_UniqueTypeParameterNames(eOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEOperation_NoRepeatingVoid(eOperation, diagnostics, context);
        }
        return result;
    }

    public boolean validateEOperation_UniqueParameterNames(EOperation eOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> names = new ArrayList<String>();
        EList<EParameter> eParameters = eOperation.getEParameters();
        for (EParameter eParameter : eParameters) {
            int index;
            String name = eParameter.getName();
            if (name != null && (index = names.indexOf(name)) != -1) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                EParameter otherEParameter = (EParameter)eParameters.get(index);
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 35, "_UI_EOperationUniqueParameterNames_diagnostic", new Object[]{name}, new Object[]{eOperation, eParameter, otherEParameter}, context));
            }
            names.add(name);
        }
        return result;
    }

    public boolean validateEOperation_UniqueTypeParameterNames(EOperation eOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> names = new ArrayList<String>();
        EList<ETypeParameter> eTypeParameters = eOperation.getETypeParameters();
        for (ETypeParameter eTypeParameter : eTypeParameters) {
            int index;
            String name = eTypeParameter.getName();
            if (name != null && (index = names.indexOf(name)) != -1) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                ETypeParameter otherETypeParameter = (ETypeParameter)eTypeParameters.get(index);
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 37, "_UI_UniqueTypeParameterNames_diagnostic", new Object[]{name}, new Object[]{eOperation, eTypeParameter, otherETypeParameter}, context));
            }
            names.add(name);
        }
        return result;
    }

    public boolean validateEOperation_NoRepeatingVoid(EOperation eOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int upperBound = eOperation.getUpperBound();
        boolean bl = result = upperBound == 1 || eOperation.getEType() != null;
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 27, "_UI_EOperationNoRepeatingVoid_diagnostic", new Object[]{upperBound}, new Object[]{eOperation}, context));
        }
        return result;
    }

    public boolean validateEPackage(EPackage ePackage, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(ePackage, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(ePackage, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEPackage_WellFormedNsURI(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEPackage_WellFormedNsPrefix(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEPackage_UniqueSubpackageNames(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEPackage_UniqueClassifierNames(ePackage, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEPackage_UniqueNsURIs(ePackage, diagnostics, context);
        }
        return result;
    }

    public boolean validateEPackage_WellFormedNsURI(EPackage ePackage, DiagnosticChain diagnostics, Map<Object, Object> context) {
        String nsURI = ePackage.getNsURI();
        boolean result = EcoreValidator.isWellFormedURI(nsURI);
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 46, "_UI_EPackageNsURINotWellFormed_diagnostic", new Object[]{nsURI}, new Object[]{ePackage}, context));
        }
        return result;
    }

    public boolean validateEPackage_WellFormedNsPrefix(EPackage ePackage, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        String nsPrefix = ePackage.getNsPrefix();
        boolean bl = result = "".equals(nsPrefix) || nsPrefix != null && XMLTypeValidator.INSTANCE.validateNCName(nsPrefix, null, context) && (!nsPrefix.toLowerCase().startsWith("xml") || "http://www.w3.org/XML/1998/namespace".equals(ePackage.getNsURI()));
        if (!result && diagnostics != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 45, "_UI_EPackageNsPrefixNotWellFormed_diagnostic", new Object[]{nsPrefix}, new Object[]{ePackage}, context));
        }
        return result;
    }

    public boolean validateEPackage_UniqueSubpackageNames(EPackage ePackage, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> names = new ArrayList<String>();
        EList<EPackage> eSubpackages = ePackage.getESubpackages();
        for (EPackage eSubpackage : eSubpackages) {
            int index;
            String name = eSubpackage.getName();
            if (name != null && (index = names.indexOf(name)) != -1) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                EPackage otherESubpackage = (EPackage)eSubpackages.get(index);
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 36, "_UI_EPackageUniqueSubpackageNames_diagnostic", new Object[]{name}, new Object[]{ePackage, eSubpackage, otherESubpackage}, context));
            }
            names.add(name);
        }
        return result;
    }

    public boolean validateEPackage_UniqueClassifierNames(EPackage ePackage, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        ArrayList<String> names = new ArrayList<String>();
        EList<EClassifier> eClassifiers = ePackage.getEClassifiers();
        for (EClassifier eClassifier : eClassifiers) {
            String name = eClassifier.getName();
            if (name != null) {
                String key = name.replace("_", "").toUpperCase();
                int index = names.indexOf(key);
                if (index != -1) {
                    Object[] objectArray;
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    EClassifier otherEClassifier = (EClassifier)eClassifiers.get(index);
                    String otherName = otherEClassifier.getName();
                    int n = name.equals(otherName) ? 4 : 2;
                    String string = name.equals(otherName) ? "_UI_EPackageUniqueClassifierNames_diagnostic" : "_UI_EPackageDissimilarClassifierNames_diagnostic";
                    if (name.equals(otherName)) {
                        Object[] objectArray2 = new Object[1];
                        objectArray = objectArray2;
                        objectArray2[0] = name;
                    } else {
                        Object[] objectArray3 = new Object[2];
                        objectArray3[0] = name;
                        objectArray = objectArray3;
                        objectArray3[1] = otherName;
                    }
                    diagnostics.add((Diagnostic)this.createDiagnostic(n, DIAGNOSTIC_SOURCE, 29, string, objectArray, new Object[]{ePackage, eClassifier, otherEClassifier}, context));
                }
                names.add(key);
                continue;
            }
            names.add(null);
        }
        return result;
    }

    public boolean validateEPackage_UniqueNsURIs(EPackage ePackage, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        String nsURI = ePackage.getNsURI();
        if (nsURI != null) {
            EPackage rootEPackage = ePackage;
            EPackage eSuperPackage = ePackage.getESuperPackage();
            while (eSuperPackage != null) {
                rootEPackage = eSuperPackage;
                eSuperPackage = eSuperPackage.getESuperPackage();
            }
            UniqueEList.FastCompare ePackages = new UniqueEList.FastCompare();
            ePackages.add((Object)rootEPackage);
            int i = 0;
            while (i < ePackages.size()) {
                ePackages.addAll(((EPackage)ePackages.get(i)).getESubpackages());
                ++i;
            }
            ePackages.remove((Object)ePackage);
            for (EPackage otherEPackage : ePackages) {
                if (!nsURI.equals(otherEPackage.getNsURI())) continue;
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 33, "_UI_EPackageUniqueNsURIs_diagnostic", new Object[]{nsURI}, new Object[]{ePackage, otherEPackage}, context));
            }
        }
        return result;
    }

    public boolean validateEParameter(EParameter eParameter, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eParameter, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eParameter, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidLowerBound(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidUpperBound(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ConsistentBounds(eParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidType(eParameter, diagnostics, context);
        }
        return result;
    }

    public boolean validateEReference(EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eReference, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eReference, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidLowerBound(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidUpperBound(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ConsistentBounds(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidType(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEStructuralFeature_ValidDefaultValueLiteral(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEReference_ConsistentOpposite(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEReference_SingleContainer(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEReference_ConsistentKeys(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEReference_ConsistentUnique(eReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEReference_ConsistentContainer(eReference, diagnostics, context);
        }
        return result;
    }

    public boolean validateEReference_ConsistentOpposite(EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EReference eOpposite = eReference.getEOpposite();
        if (eOpposite != null) {
            if (eReference.getEContainingClass() != null) {
                EClass oppositeEContainingClass;
                EClassifier eType;
                EReference oppositeEOpposite = eOpposite.getEOpposite();
                if (oppositeEOpposite != eReference) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 14, "_UI_EReferenceOppositeOfOppositeInconsistent_diagnostic", null, new Object[]{eReference, eOpposite, oppositeEOpposite}, context));
                }
                if ((eType = eReference.getEType()) != null && (oppositeEContainingClass = eOpposite.getEContainingClass()) != null && oppositeEContainingClass != eType) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 13, "_UI_EReferenceOppositeNotFeatureOfType_diagnostic", null, new Object[]{eReference, eOpposite, eType}, context));
                }
            }
            if (result) {
                boolean bl = result = !EcoreValidator.isEffectivelyTransient(eReference) || EcoreValidator.isEffectivelyTransient(eOpposite) || !eOpposite.isResolveProxies() || eOpposite.isContainment();
                if (diagnostics != null && !result) {
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 11, "_UI_EReferenceTransientOppositeNotTransient_diagnostic", null, new Object[]{eReference, eOpposite}, context));
                }
            }
            if (result) {
                boolean bl = result = !eReference.isContainment() || !eOpposite.isContainment();
                if (diagnostics != null && !result) {
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 12, "_UI_EReferenceOppositeBothContainment_diagnostic", null, new Object[]{eReference, eOpposite}, context));
                }
            }
        }
        return result;
    }

    public boolean validateEReference_SingleContainer(EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = !eReference.isContainer() || eReference.getUpperBound() == 1;
        if (diagnostics != null && !result) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 28, "_UI_EReferenceSingleContainer_diagnostic", new Object[]{eReference.getUpperBound()}, new Object[]{eReference}, context));
        }
        return result;
    }

    public boolean validateEReference_ConsistentKeys(EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        EClass eClass;
        boolean result = true;
        EList<EAttribute> eKeys = eReference.getEKeys();
        if (!eKeys.isEmpty() && (eClass = eReference.getEReferenceType()) != null) {
            for (EAttribute eAttribute : eKeys) {
                if (eClass.getFeatureID(eAttribute) != -1) continue;
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 10, "_UI_EReferenceConsistentKeys_diagnostic", new Object[]{EcoreValidator.getObjectLabel(eAttribute, context)}, new Object[]{eReference, eAttribute}, context));
            }
        }
        return result;
    }

    public boolean validateEReference_ConsistentUnique(EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        if (eReference.isMany() && (eReference.isContainment() || eReference.getEOpposite() != null) && !eReference.isUnique()) {
            result = false;
            if (diagnostics != null) {
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 50, "_UI_EReferenceConsistentUnique_diagnostic", null, new Object[]{eReference}, context));
            }
        }
        return result;
    }

    public boolean validateEReference_ConsistentContainer(EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        EClass eClass;
        if (eReference.isContainment() && eReference.getEContainingClass() != null && (eClass = eReference.getEReferenceType()) != null) {
            for (EReference otherEReference : eClass.getEAllReferences()) {
                if (!otherEReference.isRequired() || !otherEReference.isContainer() || otherEReference.getEOpposite() == eReference) continue;
                if (diagnostics != null) {
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 51, "_UI_EReferenceConsistentContainer_diagnostic", new Object[]{EcoreValidator.getObjectLabel(otherEReference, context)}, new Object[]{eReference, otherEReference}, context));
                }
                return false;
            }
        }
        return true;
    }

    public boolean validateEStructuralFeature(EStructuralFeature eStructuralFeature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eStructuralFeature, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eStructuralFeature, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidLowerBound(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidUpperBound(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ConsistentBounds(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidType(eStructuralFeature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEStructuralFeature_ValidDefaultValueLiteral(eStructuralFeature, diagnostics, context);
        }
        return result;
    }

    public boolean validateEStructuralFeature_ValidDefaultValueLiteral(EStructuralFeature eStructuralFeature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        String defaultValueLiteral = eStructuralFeature.getDefaultValueLiteral();
        Object defaultValue = null;
        EDataType eDataType = null;
        boolean result = true;
        if (defaultValueLiteral != null) {
            EClassifier eType = eStructuralFeature.getEType();
            if (eType instanceof EDataType) {
                eDataType = (EDataType)eType;
                defaultValue = eStructuralFeature.getDefaultValue();
                result = defaultValue == null ? !this.isBuiltinEDataType(eDataType) : this.getRootEValidator(context).validate(eDataType, defaultValue, null, context);
            } else {
                result = false;
            }
        }
        if (diagnostics != null && !result) {
            BasicDiagnostic diagnostic = this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 39, "_UI_EStructuralFeatureValidDefaultValueLiteral_diagnostic", new Object[]{defaultValueLiteral}, new Object[]{eStructuralFeature}, context);
            if (defaultValue != null) {
                this.getRootEValidator(context).validate(eDataType, defaultValue, (DiagnosticChain)diagnostic, context);
            }
            diagnostics.add((Diagnostic)diagnostic);
        }
        return result;
    }

    protected boolean isBuiltinEDataType(EDataType eDataType) {
        EPackage ePackage = eDataType.getEPackage();
        if (ePackage == EcorePackage.eINSTANCE || ePackage == XMLTypePackage.eINSTANCE || ePackage == XMLNamespacePackage.eINSTANCE) {
            return true;
        }
        EDataType baseType = ExtendedMetaData.INSTANCE.getBaseType(eDataType);
        if (baseType != null) {
            return this.isBuiltinEDataType(baseType);
        }
        EDataType itemType = ExtendedMetaData.INSTANCE.getItemType(eDataType);
        if (itemType != null) {
            return this.isBuiltinEDataType(itemType);
        }
        List<EDataType> memberTypes = ExtendedMetaData.INSTANCE.getMemberTypes(eDataType);
        if (!memberTypes.isEmpty()) {
            for (EDataType memberType : memberTypes) {
                if (this.isBuiltinEDataType(memberType)) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    public boolean validateETypedElement(ETypedElement eTypedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eTypedElement, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eTypedElement, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidLowerBound(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidUpperBound(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ConsistentBounds(eTypedElement, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateETypedElement_ValidType(eTypedElement, diagnostics, context);
        }
        return result;
    }

    public boolean validateETypedElement_ValidLowerBound(ETypedElement eTypedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int lowerBound = eTypedElement.getLowerBound();
        boolean bl = result = lowerBound >= 0;
        if (diagnostics != null && !result) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 39, "_UI_ETypedElementValidLowerBound_diagnostic", new Object[]{lowerBound}, new Object[]{eTypedElement}, context));
        }
        return result;
    }

    public boolean validateETypedElement_ValidUpperBound(ETypedElement eTypedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int upperBound = eTypedElement.getUpperBound();
        boolean bl = result = upperBound > 0 || upperBound == -2 || upperBound == -1;
        if (diagnostics != null && !result) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 41, "_UI_ETypedElementValidUpperBound_diagnostic", new Object[]{upperBound}, new Object[]{eTypedElement}, context));
        }
        return result;
    }

    public boolean validateETypedElement_ConsistentBounds(ETypedElement eTypedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int lowerBound = eTypedElement.getLowerBound();
        int upperBound = eTypedElement.getUpperBound();
        boolean bl = result = upperBound < 0 || lowerBound <= upperBound;
        if (diagnostics != null && !result) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 6, "_UI_ETypedElementConsistentBounds_diagnostic", new Object[]{lowerBound, upperBound}, new Object[]{eTypedElement}, context));
        }
        return result;
    }

    public boolean validateETypedElement_ValidType(ETypedElement eTypedElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EGenericType eGenericType = eTypedElement.getEGenericType();
        if (eGenericType == null && !(eTypedElement instanceof EOperation)) {
            result = false;
            if (diagnostics != null) {
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 40, "_UI_ETypedElementNoType_diagnostic", null, new Object[]{eTypedElement}, context));
            }
        }
        return result;
    }

    public boolean validateEStringToStringMapEntry(Map.Entry<?, ?> eStringToStringMapEntry, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)((Object)eStringToStringMapEntry), diagnostics, context);
    }

    public boolean validateEGenericType(EGenericType eGenericType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eGenericType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eGenericType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEGenericType_ConsistentType(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEGenericType_ConsistentBounds(eGenericType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateEGenericType_ConsistentArguments(eGenericType, diagnostics, context);
        }
        return result;
    }

    public boolean validateEGenericType_ConsistentType(EGenericType eGenericType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        String instanceClassName;
        EReference eContainmentFeature;
        boolean result = true;
        ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
        EClassifier eClassifier = eGenericType.getEClassifier();
        if (eTypeParameter != null) {
            EObject scope;
            boolean inScope;
            if (eClassifier != null) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 21, "_UI_EGenericTypeNoTypeParameterAndClassifier_diagnostic", null, new Object[]{eGenericType}, context));
            }
            if (inScope = EcoreUtil.isAncestor(scope = eTypeParameter.eContainer(), (EObject)eGenericType)) {
                List typeParameters = (List)scope.eGet(eTypeParameter.eContainmentFeature());
                EObject usage = eGenericType;
                EObject container = usage.eContainer();
                while (container != scope) {
                    usage = container;
                    container = container.eContainer();
                }
                int index = typeParameters.indexOf(usage);
                int eTypeParameterIndex = typeParameters.indexOf(eTypeParameter);
                boolean bl = inScope = index == -1 || index > eTypeParameterIndex || index == eTypeParameterIndex && eGenericType.eContainingFeature() != EcorePackage.Literals.ETYPE_PARAMETER__EBOUNDS;
            }
            if (!inScope) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 23, "_UI_EGenericTypeOutOfScopeTypeParameter_diagnostic", null, new Object[]{eGenericType}, context));
            }
        }
        if ((eContainmentFeature = eGenericType.eContainmentFeature()) == EcorePackage.Literals.ECLASS__EGENERIC_SUPER_TYPES) {
            if (!(eGenericType.getEClassifier() instanceof EClass)) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 18, "_UI_EGenericTypeNoClass_diagnostic", null, new Object[]{eGenericType}, context));
            }
        } else if (eContainmentFeature == EcorePackage.Literals.EGENERIC_TYPE__ETYPE_ARGUMENTS) {
            if (eGenericType.eContainer().eContainmentFeature() == EcorePackage.Literals.ECLASS__EGENERIC_SUPER_TYPES && eClassifier == null && eTypeParameter == null) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 24, "_UI_EGenericTypeNoTypeParameterOrClassifier_diagnostic", null, new Object[]{eGenericType}, context));
            }
        } else if (eContainmentFeature != null) {
            EObject eContainer;
            if (eClassifier == null && eTypeParameter == null) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 24, "_UI_EGenericTypeNoTypeParameterOrClassifier_diagnostic", null, new Object[]{eGenericType}, context));
            } else if (eClassifier != null && (eContainer = eGenericType.eContainer()) instanceof EStructuralFeature) {
                if (eClassifier instanceof EClass) {
                    if (eContainer instanceof EAttribute) {
                        if (diagnostics == null) {
                            return false;
                        }
                        result = false;
                        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 19, "_UI_EAttributeNoDataType_diagnostic", null, new Object[]{eGenericType}, context));
                    }
                } else if (eClassifier instanceof EDataType && eContainer instanceof EReference) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 20, "_UI_EReferenceNoClass_diagnostic", null, new Object[]{eGenericType}, context));
                }
            }
        }
        if (eClassifier != null && eContainmentFeature != null && eContainmentFeature != EcorePackage.Literals.ETYPED_ELEMENT__EGENERIC_TYPE && ((instanceClassName = eClassifier.getInstanceClassName()) == "boolean" || instanceClassName == "byte" || instanceClassName == "char" || instanceClassName == "double" || instanceClassName == "float" || instanceClassName == "int" || instanceClassName == "long" || instanceClassName == "short")) {
            if (diagnostics == null) {
                return false;
            }
            result = false;
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 22, "_UI_EGenericTypeInvalidPrimitiveType_diagnostic", new Object[]{instanceClassName}, new Object[]{eGenericType}, context));
        }
        return result;
    }

    public boolean validateEGenericType_ConsistentBounds(EGenericType eGenericType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EGenericType eLowerBound = eGenericType.getELowerBound();
        EGenericType eUpperBound = eGenericType.getEUpperBound();
        if (eLowerBound != null || eUpperBound != null) {
            EReference eContainmentFeature = eGenericType.eContainmentFeature();
            if (eContainmentFeature == EcorePackage.Literals.EGENERIC_TYPE__ETYPE_ARGUMENTS) {
                if (eLowerBound != null && eUpperBound != null) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 9, "_UI_EGenericTypeNoUpperAndLowerBound_diagnostic", null, new Object[]{eGenericType}, context));
                }
                if (eGenericType.getEClassifier() != null || eGenericType.getETypeParameter() != null) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 8, "_UI_EGenericTypeNoTypeParameterOrClassifierAndBound_diagnostic", null, new Object[]{eGenericType}, context));
                }
            } else {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 7, "_UI_EGenericTypeBoundsOnlyForTypeArgument_diagnostic", null, new Object[]{eGenericType}, context));
            }
        }
        return result;
    }

    public boolean validateEGenericType_ConsistentArguments(EGenericType eGenericType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EClassifier eClassifier = eGenericType.getEClassifier();
        EList<EGenericType> eTypeArguments = eGenericType.getETypeArguments();
        int eTypeArgumentSize = eTypeArguments.size();
        if (eClassifier == null) {
            if (eTypeArgumentSize != 0) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 5, "_UI_EGenericTypeNoArguments_diagnostic", null, new Object[]{eGenericType}, context));
            }
        } else {
            EList<ETypeParameter> eTypeParameters = eClassifier.getETypeParameters();
            int eTypeParameterSize = eTypeParameters.size();
            if (eTypeArgumentSize == 0) {
                if (eTypeParameterSize > 0) {
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)this.createDiagnostic(2, DIAGNOSTIC_SOURCE, 4, "_UI_EGenericTypeArgumentsNeeded_diagnostic", new Object[]{eClassifier.getName(), eTypeParameterSize}, new Object[]{eGenericType}, context));
                }
            } else if (eTypeArgumentSize != eTypeParameters.size()) {
                if (diagnostics == null) {
                    return false;
                }
                result = false;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 2, "_UI_EGenericTypeIncorrectArguments_diagnostic", new Object[]{eClassifier.getName(), eTypeArgumentSize, eTypeParameterSize}, new Object[]{eGenericType}, context));
            } else {
                HashMap<ETypeParameter, EGenericType> substitutions = new HashMap<ETypeParameter, EGenericType>();
                int i = 0;
                while (i < eTypeParameterSize) {
                    ETypeParameter eTypeParameter = (ETypeParameter)eTypeParameters.get(i);
                    EGenericType eTypeArgument = (EGenericType)eTypeArguments.get(i);
                    substitutions.put(eTypeParameter, eTypeArgument);
                    if (!this.isValidSubstitution(eTypeArgument, eTypeParameter, substitutions)) {
                        if (diagnostics == null) {
                            return false;
                        }
                        result = false;
                        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 3, "_UI_EGenericTypeArgumentInvalidSubstitution_diagnostic", new Object[]{EcoreValidator.getObjectLabel(eTypeArgument, context), EcoreValidator.getObjectLabel(eTypeParameter, context)}, new Object[]{eGenericType, eTypeArgument, eTypeParameter}, context));
                    }
                    ++i;
                }
            }
        }
        return result;
    }

    protected boolean isValidSubstitution(EGenericType eTypeArgument, ETypeParameter eTypeParameter, Map<ETypeParameter, EGenericType> substitutions) {
        EList<EGenericType> eBounds = eTypeParameter.getEBounds();
        if (!eBounds.isEmpty()) {
            if (eTypeArgument.getEClassifier() == null && eTypeArgument.getETypeParameter() == null && eTypeArgument.getEUpperBound() == null && eTypeArgument.getELowerBound() == null) {
                return true;
            }
            for (EGenericType eBound : eBounds) {
                if (EcoreValidator.isBounded(eTypeArgument, eBound, substitutions)) continue;
                return false;
            }
        }
        return true;
    }

    public static boolean isBounded(EGenericType eGenericType, EGenericType eBound, Map<? extends ETypeParameter, ? extends EGenericType> substitutions) {
        if (eGenericType == eBound) {
            return true;
        }
        EClassifier eBoundEClassifier = eBound.getEClassifier();
        if (eBoundEClassifier != null) {
            EClassifier eClassifier = eGenericType.getEClassifier();
            if (eClassifier != null) {
                if (eBoundEClassifier != eClassifier) {
                    if (eBoundEClassifier instanceof EClass && eClassifier instanceof EClass) {
                        EClass eClass = (EClass)eClassifier;
                        if (INSTANCE.validateEClass_NoCircularSuperTypes(eClass, null, null)) {
                            for (EGenericType eGenericSuperType : eClass.getEGenericSuperTypes()) {
                                EList<EGenericType> eTypeArguments;
                                Map<? extends ETypeParameter, ? extends EGenericType> localSubstitutions = substitutions;
                                EList<ETypeParameter> eTypeParameters = eClass.getETypeParameters();
                                int size = eTypeParameters.size();
                                if (size > 0 && size == (eTypeArguments = eGenericType.getETypeArguments()).size()) {
                                    HashMap<? extends ETypeParameter, ? extends EGenericType> additionalLocalSubstitutions = new HashMap<ETypeParameter, EGenericType>(substitutions);
                                    int i = 0;
                                    while (i < size) {
                                        additionalLocalSubstitutions.put((ETypeParameter)eTypeParameters.get(i), (EGenericType)eTypeArguments.get(i));
                                        ++i;
                                    }
                                    localSubstitutions = additionalLocalSubstitutions;
                                }
                                if (!EcoreValidator.isBounded(eGenericSuperType, eBound, localSubstitutions)) continue;
                                return true;
                            }
                        }
                        return false;
                    }
                    Class<?> eBoundClass = eBoundEClassifier.getInstanceClass();
                    if (eBoundClass != null) {
                        Class<?> eClassifierClass = eClassifier.getInstanceClass();
                        if (eClassifierClass != null && !eBoundClass.isAssignableFrom(eClassifierClass)) {
                            return false;
                        }
                        if (eClassifier.getETypeParameters().isEmpty()) {
                            return true;
                        }
                    }
                }
                return EcoreValidator.matchingTypeArguments(eGenericType.getETypeArguments(), eBound.getETypeArguments(), substitutions);
            }
            ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
            if (eTypeParameter != null) {
                EGenericType substitution = substitutions.get(eTypeParameter);
                if (substitution == eGenericType) {
                    return true;
                }
                if (substitution != null && substitution.getEUpperBound() != eGenericType && substitution.getELowerBound() != eGenericType) {
                    return EcoreValidator.isBounded(substitution, eBound, substitutions);
                }
                boolean result = false;
                for (EGenericType eTypeParameterBound : eTypeParameter.getEBounds()) {
                    if (!EcoreValidator.isBounded(eTypeParameterBound, eBound, substitutions)) continue;
                    result = true;
                    break;
                }
                return result;
            }
            EGenericType eUpperBound = eGenericType.getEUpperBound();
            if (eUpperBound != null) {
                return EcoreValidator.isBounded(eUpperBound, eBound, substitutions);
            }
            EGenericType eLowerBound = eGenericType.getELowerBound();
            return eLowerBound != null && EcoreValidator.isBounded(eLowerBound, eBound, substitutions);
        }
        ETypeParameter eBoundETypeParameter = eBound.getETypeParameter();
        if (eBoundETypeParameter != null) {
            ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
            if (eTypeParameter == eBoundETypeParameter) {
                return true;
            }
            EGenericType substitution = substitutions.get(eBoundETypeParameter);
            if (substitution != null) {
                return EcoreValidator.isBounded(eGenericType, substitution, substitutions);
            }
            if (eTypeParameter != null) {
                substitution = substitutions.get(eTypeParameter);
                if (substitution == eGenericType) {
                    return true;
                }
                if (substitution != null && substitution.getEUpperBound() != eGenericType && substitution.getELowerBound() != eGenericType) {
                    return EcoreValidator.isBounded(substitution, eBound, substitutions);
                }
                boolean result = false;
                for (EGenericType eTypeParameterEBound : eTypeParameter.getEBounds()) {
                    result = EcoreValidator.isBounded(eTypeParameterEBound, eBound, substitutions);
                    if (!result) {
                        for (EGenericType eBoundETypeParameterEBound : eBoundETypeParameter.getEBounds()) {
                            if (!EcoreValidator.isBounded(eTypeParameterEBound, eBoundETypeParameterEBound, substitutions)) continue;
                            result = true;
                            break;
                        }
                    }
                    if (result) continue;
                    return false;
                }
                return result;
            }
            if (eGenericType.getEUpperBound() != null) {
                return EcoreValidator.isBounded(eGenericType.getEUpperBound(), eBound, substitutions);
            }
            return false;
        }
        if (eGenericType.getETypeParameter() == null && eGenericType.getEClassifier() == null) {
            return false;
        }
        EGenericType eBoundEUpperBound = eBound.getEUpperBound();
        if (eBoundEUpperBound != null) {
            return EcoreValidator.isBounded(eGenericType, eBoundEUpperBound, substitutions);
        }
        EGenericType eBoundELowerBound = eBound.getELowerBound();
        if (eBoundELowerBound != null) {
            return EcoreValidator.isBounded(eBoundELowerBound, eGenericType, substitutions);
        }
        return false;
    }

    public static boolean matchingTypeArguments(EList<EGenericType> eTypeArguments1, EList<EGenericType> eTypeArguments2, Map<? extends ETypeParameter, ? extends EGenericType> substitutions) {
        int size = eTypeArguments1.size();
        if (size != eTypeArguments2.size()) {
            return false;
        }
        int i = 0;
        while (i < size) {
            EGenericType eTypeArgument2;
            EGenericType eTypeArgument1 = (EGenericType)eTypeArguments1.get(i);
            if (!EcoreValidator.isMatching(eTypeArgument1, eTypeArgument2 = (EGenericType)eTypeArguments2.get(i), substitutions)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean isMatching(EGenericType eGenericType, EGenericType eBound, Map<? extends ETypeParameter, ? extends EGenericType> substitutions) {
        if (eGenericType == eBound) {
            return true;
        }
        EClassifier eBoundEClassifier = eBound.getEClassifier();
        if (eBoundEClassifier != null) {
            EClassifier eClassifier = eGenericType.getEClassifier();
            if (eClassifier != null) {
                if (eClassifier != eBoundEClassifier) {
                    String instanceTypeName1 = eClassifier.getInstanceTypeName();
                    String instanceTypeName2 = eBoundEClassifier.getInstanceTypeName();
                    if (instanceTypeName1 == null || !instanceTypeName1.equals(instanceTypeName2)) {
                        return false;
                    }
                }
                return EcoreValidator.equalTypeArguments(eGenericType.getETypeArguments(), eBound.getETypeArguments(), substitutions);
            }
            return false;
        }
        ETypeParameter eBoundETypeParameter = eBound.getETypeParameter();
        if (eBoundETypeParameter != null) {
            ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
            if (eTypeParameter == eBoundETypeParameter) {
                return true;
            }
            EGenericType substitution = substitutions.get(eTypeParameter);
            if (substitution != null) {
                return substitution == eGenericType || EcoreValidator.isMatching(substitution, eBound, substitutions);
            }
            substitution = substitutions.get(eBoundETypeParameter);
            if (substitution != null) {
                return substitution == eBound || EcoreValidator.isMatching(eGenericType, substitution, substitutions);
            }
            return false;
        }
        if (eGenericType.getEClassifier() == null && eGenericType.getETypeParameter() == null) {
            return EcoreValidator.isMatching(eGenericType.getELowerBound(), eBound.getELowerBound(), substitutions) && EcoreValidator.isMatching(eGenericType.getEUpperBound(), eBound.getEUpperBound(), substitutions);
        }
        EGenericType eBoundEUpperBound = eBound.getEUpperBound();
        if (eBoundEUpperBound != null) {
            return EcoreValidator.isBounded(eGenericType, eBoundEUpperBound, substitutions);
        }
        EGenericType eBoundELowerBound = eBound.getELowerBound();
        if (eBoundELowerBound != null) {
            return EcoreValidator.isMatching(eBoundELowerBound, eGenericType, substitutions);
        }
        return true;
    }

    public static boolean equalTypeArguments(EList<EGenericType> eTypeArguments1, EList<EGenericType> eTypeArguments2, Map<? extends ETypeParameter, ? extends EGenericType> substitutions) {
        int size = eTypeArguments1.size();
        if (size != eTypeArguments2.size()) {
            return false;
        }
        int i = 0;
        while (i < size) {
            EGenericType eTypeArgument2;
            EGenericType eTypeArgument1 = (EGenericType)eTypeArguments1.get(i);
            if (!EcoreValidator.equalTypeArguments(eTypeArgument1, eTypeArgument2 = (EGenericType)eTypeArguments2.get(i), substitutions)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equalTypeArguments(EGenericType eGenericType1, EGenericType eGenericType2, Map<? extends ETypeParameter, ? extends EGenericType> substitutions) {
        ETypeParameter eTypeParameter1;
        EGenericType substitution;
        EClassifier eClassifier2;
        if (eGenericType1 == eGenericType2) {
            return true;
        }
        if (eGenericType1 == null || eGenericType2 == null) {
            return false;
        }
        EClassifier eClassifier1 = eGenericType1.getEClassifier();
        if (eClassifier1 != (eClassifier2 = eGenericType2.getEClassifier())) {
            if (eClassifier1 != null && eClassifier2 != null) {
                String instanceTypeName1 = eClassifier1.getInstanceTypeName();
                String instanceTypeName2 = eClassifier2.getInstanceTypeName();
                if (instanceTypeName1 == null || !instanceTypeName1.equals(instanceTypeName2)) {
                    return false;
                }
            } else if (eClassifier1 != null || eClassifier2 != null) {
                return false;
            }
        }
        if ((substitution = substitutions.get(eTypeParameter1 = eGenericType1.getETypeParameter())) != null) {
            return EcoreValidator.equalTypeArguments(substitution, eGenericType2, substitutions);
        }
        ETypeParameter eTypeParameter2 = eGenericType2.getETypeParameter();
        substitution = substitutions.get(eTypeParameter2);
        if (substitution != null) {
            return EcoreValidator.equalTypeArguments(eGenericType1, substitution, substitutions);
        }
        return eTypeParameter1 == eTypeParameter2 && EcoreValidator.equalTypeArguments(eGenericType1.getETypeArguments(), eGenericType2.getETypeArguments(), substitutions) && EcoreValidator.equalTypeArguments(eGenericType1.getELowerBound(), eGenericType2.getELowerBound(), substitutions) && EcoreValidator.equalTypeArguments(eGenericType1.getEUpperBound(), eGenericType2.getEUpperBound(), substitutions);
    }

    public boolean validateETypeParameter(ETypeParameter eTypeParameter, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(eTypeParameter, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(eTypeParameter, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(eTypeParameter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateENamedElement_WellFormedName(eTypeParameter, diagnostics, context);
        }
        return result;
    }

    public boolean validateEBigDecimal(BigDecimal eBigDecimal, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEBigInteger(BigInteger eBigInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEBoolean(boolean eBoolean, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEBooleanObject(Boolean eBooleanObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEByte(byte eByte, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEByteArray(byte[] eByteArray, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEByteObject(Byte eByteObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEChar(char eChar, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateECharacterObject(Character eCharacterObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEDate(Date eDate, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEDiagnosticChain(DiagnosticChain eDiagnosticChain, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEDouble(double eDouble, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEDoubleObject(Double eDoubleObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEEList(EList<?> eeList, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEEnumerator(Enumerator eEnumerator, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEFeatureMap(FeatureMap eFeatureMap, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEFeatureMapEntry(FeatureMap.Entry eFeatureMapEntry, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEFloat(float eFloat, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEFloatObject(Float eFloatObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEInt(int eInt, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEIntegerObject(Integer eIntegerObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEJavaClass(Class<?> eJavaClass, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEJavaObject(Object eJavaObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateELong(long eLong, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateELongObject(Long eLongObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEMap(Map<?, ?> eMap, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEResource(Resource eResource, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEResourceSet(ResourceSet eResourceSet, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEShort(short eShort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEShortObject(Short eShortObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEString(String eString, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateETreeIterator(TreeIterator<?> eTreeIterator, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateEInvocationTargetException(InvocationTargetException eInvocationTargetException, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }

    protected void report(DiagnosticChain diagnostics, String key, Object[] substitutions, int index, Map<Object, Object> context) {
        if (diagnostics != null) {
            diagnostics.add((Diagnostic)new BasicDiagnostic(4, DIAGNOSTIC_SOURCE, 42, this.getString(key, substitutions), new Object[]{index}));
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EGenericTypeBuilder {
        public static final EGenericTypeBuilder INSTANCE = new EGenericTypeBuilder();
        private static final char[] NO_CHARS = new char[0];

        public Diagnostic parseInstanceTypeName(String instanceTypeName) {
            BasicDiagnostic placeholder = new BasicDiagnostic();
            char[] instanceTypeNameCharacterArray = instanceTypeName == null ? NO_CHARS : instanceTypeName.toCharArray();
            EGenericType eGenericType = this.handleInstanceTypeName(instanceTypeNameCharacterArray, 0, instanceTypeNameCharacterArray.length, (DiagnosticChain)placeholder);
            BasicDiagnostic result = this.createDiagnostic(placeholder.getSeverity(), EcoreValidator.DIAGNOSTIC_SOURCE, 42, "_UI_EClassifierInstanceTypeNameAnalysisResult_diagnostic", new Object[]{instanceTypeName}, new Object[]{eGenericType, instanceTypeName});
            result.addAll((Diagnostic)placeholder);
            return result;
        }

        public Diagnostic parseTypeParameterList(String typeParameterList) {
            BasicDiagnostic placeholder = new BasicDiagnostic();
            char[] instanceTypeNameCharacterArray = typeParameterList == null ? NO_CHARS : typeParameterList.toCharArray();
            List<ETypeParameter> eTypeParameters = this.handleTypeParameters(instanceTypeNameCharacterArray, 0, instanceTypeNameCharacterArray.length, (DiagnosticChain)placeholder);
            BasicDiagnostic result = this.createDiagnostic(placeholder.getSeverity(), EcoreValidator.DIAGNOSTIC_SOURCE, 42, "_UI_EClassifierInstanceTypeNameAnalysisResult_diagnostic", new Object[]{typeParameterList}, new Object[]{eTypeParameters, typeParameterList});
            result.addAll((Diagnostic)placeholder);
            return result;
        }

        public Diagnostic parseTypeArgumentList(String typeArgumentList) {
            BasicDiagnostic placeholder = new BasicDiagnostic();
            char[] instanceTypeNameCharacterArray = typeArgumentList == null ? NO_CHARS : typeArgumentList.toCharArray();
            List<EGenericType> eTypeArguments = this.handleTypeArguments(instanceTypeNameCharacterArray, 0, instanceTypeNameCharacterArray.length, (DiagnosticChain)placeholder);
            BasicDiagnostic result = this.createDiagnostic(placeholder.getSeverity(), EcoreValidator.DIAGNOSTIC_SOURCE, 42, "_UI_EClassifierInstanceTypeNameAnalysisResult_diagnostic", new Object[]{typeArgumentList}, new Object[]{eTypeArguments, typeArgumentList});
            result.addAll((Diagnostic)placeholder);
            return result;
        }

        public Diagnostic parseTypeParameter(String typeParameter) {
            BasicDiagnostic placeholder = new BasicDiagnostic();
            char[] instanceTypeNameCharacterArray = typeParameter == null ? NO_CHARS : typeParameter.toCharArray();
            ETypeParameter eTypeParameter = this.handleTypeParameter(instanceTypeNameCharacterArray, 0, instanceTypeNameCharacterArray.length, (DiagnosticChain)placeholder);
            BasicDiagnostic result = this.createDiagnostic(placeholder.getSeverity(), EcoreValidator.DIAGNOSTIC_SOURCE, 42, "_UI_EClassifierInstanceTypeNameAnalysisResult_diagnostic", new Object[]{typeParameter}, new Object[]{eTypeParameter, typeParameter});
            result.addAll((Diagnostic)placeholder);
            return result;
        }

        protected EClassifier resolveEClassifier(String instanceTypeName) {
            EDataType eDataType = EcoreFactory.eINSTANCE.createEDataType();
            eDataType.setInstanceTypeName(instanceTypeName);
            return eDataType;
        }

        protected void report(DiagnosticChain diagnostics, String key, Object[] substitutions, int index) {
            this.report(diagnostics, this.getString(key, substitutions), index);
        }

        protected void report(DiagnosticChain diagnostics, String message, int index) {
            if (diagnostics != null) {
                diagnostics.add((Diagnostic)new BasicDiagnostic(4, EcoreValidator.DIAGNOSTIC_SOURCE, 42, message, new Object[]{index}));
            }
        }

        protected EGenericType handleInstanceTypeName(char[] instanceTypeName, int start, int end, DiagnosticChain diagnostics) {
            EGenericType eGenericType = EcoreFactory.eINSTANCE.createEGenericType();
            StringBuilder qualifiedName = new StringBuilder();
            int identifierStart = -1;
            int identifierLast = -1;
            int brackets = 0;
            List<EGenericType> typeArguments = null;
            int i = start;
            while (i < end) {
                block30: {
                    int j;
                    int codePoint = Character.codePointAt(instanceTypeName, i);
                    if (codePoint == 91) {
                        if (identifierStart == -1 && (qualifiedName.length() == 0 || qualifiedName.charAt(qualifiedName.length() - 1) == '.')) {
                            this.report(diagnostics, "_UI_EClassifierInstanceTypeNameBracketWithoutPrecedingIdentifier_diagnostic", new Object[]{i}, i);
                            return eGenericType;
                        }
                        j = i + 1;
                        while (j < end) {
                            codePoint = Character.codePointAt(instanceTypeName, j);
                            if (codePoint == 93) {
                                i = j;
                                ++brackets;
                                break block30;
                            }
                            if (!Character.isWhitespace(codePoint)) {
                                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameNoClosingBracket2_diagnostic", new Object[]{j, new String(Character.toChars(codePoint))}, j);
                                return eGenericType;
                            }
                            j = Character.offsetByCodePoints(instanceTypeName, 0, instanceTypeName.length, j, 1);
                        }
                        this.report(diagnostics, "_UI_EClassifierInstanceTypeNameNoClosingBracket_diagnostic", new Object[]{end}, end);
                        return eGenericType;
                    }
                    if (brackets > 0) {
                        if (!Character.isWhitespace(codePoint)) {
                            this.report(diagnostics, "_UI_EClassifierInstanceTypeNameBracketExpected_diagnostic", new Object[]{i, new String(Character.toChars(codePoint))}, i);
                            return eGenericType;
                        }
                    } else if (codePoint == 46) {
                        if (identifierStart == -1) {
                            if (qualifiedName.length() == 0 || qualifiedName.charAt(qualifiedName.length() - 1) == '.') {
                                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameDotWithoutPrecedingIdentifier_diagnostic", new Object[]{i}, i);
                                return eGenericType;
                            }
                            qualifiedName.append('.');
                        } else {
                            qualifiedName.append(instanceTypeName, identifierStart, identifierLast - identifierStart + 1);
                            qualifiedName.append('.');
                            identifierStart = -1;
                            identifierLast = -1;
                        }
                    } else if (identifierStart != -1 ? this.isIdentifierPart(codePoint) : this.isIdentifierStart(codePoint)) {
                        if (identifierStart == -1) {
                            if (qualifiedName.length() > 0 && qualifiedName.charAt(qualifiedName.length() - 1) != '.') {
                                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameDotExpectedBeforeIdentifier_diagnostic", new Object[]{i}, i);
                                return eGenericType;
                            }
                            identifierStart = i;
                        }
                        identifierLast = i;
                    } else if (Character.isWhitespace(codePoint)) {
                        if (identifierStart != -1 && (qualifiedName.length() == 0 || qualifiedName.charAt(qualifiedName.length() - 1) == '.')) {
                            qualifiedName.append(instanceTypeName, identifierStart, identifierLast - identifierStart + 1);
                            identifierStart = -1;
                            identifierLast = -1;
                        }
                    } else {
                        if (codePoint == 60) {
                            if (identifierStart == -1 && (qualifiedName.length() == 0 || qualifiedName.charAt(qualifiedName.length() - 1) == '.')) {
                                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameAngleBracketWithoutPrecedingIdentifier_diagnostic", new Object[]{i}, i);
                                return eGenericType;
                            }
                            j = end - 1;
                            while (j > i) {
                                if (instanceTypeName[j] == '>') {
                                    typeArguments = this.handleTypeArguments(instanceTypeName, i + 1, j, diagnostics);
                                    i = j;
                                    break block30;
                                }
                                --j;
                            }
                            this.report(diagnostics, "_UI_EClassifierInstanceTypeNameUnterminatedAngleBracket_diagnostic", new Object[]{i}, i);
                            return eGenericType;
                        }
                        this.report(diagnostics, "_UI_EClassifierInstanceTypeNameUnexpectedCharacter_diagnostic", new Object[]{i, new String(Character.toChars(codePoint))}, i);
                        return eGenericType;
                    }
                }
                i = Character.offsetByCodePoints(instanceTypeName, 0, instanceTypeName.length, i, 1);
            }
            if (identifierStart == -1 && (qualifiedName.length() == 0 || qualifiedName.charAt(qualifiedName.length() - 1) == '.')) {
                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameExpectingIdentifier_diagnostic", new Object[]{end}, end);
            } else {
                if (identifierStart != -1) {
                    qualifiedName.append(instanceTypeName, identifierStart, identifierLast - identifierStart + 1);
                }
                while (brackets-- > 0) {
                    qualifiedName.append("[]");
                }
                String qualifiedNameString = qualifiedName.toString();
                eGenericType.setEClassifier(this.resolveEClassifier(qualifiedNameString));
                if (typeArguments != null) {
                    eGenericType.getETypeArguments().addAll(typeArguments);
                }
            }
            return eGenericType;
        }

        protected boolean isIdentifierStart(int codePoint) {
            return Character.isJavaIdentifierStart(codePoint);
        }

        protected boolean isIdentifierPart(int codePoint) {
            return Character.isJavaIdentifierPart(codePoint);
        }

        protected List<EGenericType> handleTypeArguments(char[] instanceTypeName, int start, int end, DiagnosticChain diagnostics) {
            ArrayList<EGenericType> result = new ArrayList<EGenericType>();
            int depth = 0;
            int typeArgumentStart = start;
            int i = start;
            while (i < end) {
                int codePoint = Character.codePointAt(instanceTypeName, i);
                switch (codePoint) {
                    case 60: {
                        ++depth;
                        break;
                    }
                    case 62: {
                        --depth;
                        break;
                    }
                    case 44: {
                        if (depth != 0) break;
                        result.add(this.handleTypeArgument(instanceTypeName, typeArgumentStart, i, diagnostics));
                        typeArgumentStart = i + 1;
                        break;
                    }
                    default: {
                        if (typeArgumentStart != -1) break;
                        typeArgumentStart = i;
                    }
                }
                i = Character.offsetByCodePoints(instanceTypeName, 0, instanceTypeName.length, i, 1);
            }
            result.add(this.handleTypeArgument(instanceTypeName, typeArgumentStart, end, diagnostics));
            return result;
        }

        protected EGenericType handleTypeArgument(char[] instanceTypeName, int start, int end, DiagnosticChain diagnostics) {
            EGenericType eGenericType = null;
            int firstNonWhiteSpaceIndex = start;
            int i = start;
            block5: while (i < end) {
                int codePoint = Character.codePointAt(instanceTypeName, i);
                switch (codePoint) {
                    case 63: {
                        if (eGenericType == null) {
                            eGenericType = EcoreFactory.eINSTANCE.createEGenericType();
                            break;
                        }
                        this.report(diagnostics, "_UI_EClassifierInstanceTypeNameTooManyQuestionMarks_diagnostic", new Object[]{i}, i);
                        break block5;
                    }
                    case 101: {
                        if (eGenericType != null) {
                            if (i + 7 < end && instanceTypeName[i + 1] == 'x' && instanceTypeName[i + 2] == 't' && instanceTypeName[i + 3] == 'e' && instanceTypeName[i + 4] == 'n' && instanceTypeName[i + 5] == 'd' && instanceTypeName[i + 6] == 's' && Character.isWhitespace(Character.codePointAt(instanceTypeName, i + 7))) {
                                EGenericType eUpperBound = this.handleInstanceTypeName(instanceTypeName, Character.offsetByCodePoints(instanceTypeName, 0, instanceTypeName.length, i + 6, 1), end, diagnostics);
                                eGenericType.setEUpperBound(eUpperBound);
                                break block5;
                            }
                            this.report(diagnostics, "_UI_EClassifierInstanceTypeNameExpectingExtends_diagnostic", new Object[]{i}, i);
                            break block5;
                        }
                        eGenericType = this.handleInstanceTypeName(instanceTypeName, start, end, diagnostics);
                        break block5;
                    }
                    case 115: {
                        if (eGenericType != null) {
                            if (i + 5 < end && instanceTypeName[i + 1] == 'u' && instanceTypeName[i + 2] == 'p' && instanceTypeName[i + 3] == 'e' && instanceTypeName[i + 4] == 'r' && Character.isWhitespace(Character.codePointAt(instanceTypeName, i + 5))) {
                                EGenericType eLowerBound = this.handleInstanceTypeName(instanceTypeName, Character.offsetByCodePoints(instanceTypeName, 0, instanceTypeName.length, i + 4, 1), end, diagnostics);
                                eGenericType.setELowerBound(eLowerBound);
                                break block5;
                            }
                            this.report(diagnostics, "_UI_EClassifierInstanceTypeNameExpectingSuper_diagnostic", new Object[]{i}, i);
                            break block5;
                        }
                        eGenericType = this.handleInstanceTypeName(instanceTypeName, start, end, diagnostics);
                        break block5;
                    }
                    default: {
                        if (Character.isWhitespace(codePoint)) break;
                        if (eGenericType != null) {
                            this.report(diagnostics, "_UI_EClassifierInstanceTypeNameExpectingExtendsOrSuper_diagnostic", new Object[]{i}, i);
                            break block5;
                        }
                        firstNonWhiteSpaceIndex = i;
                        eGenericType = this.handleInstanceTypeName(instanceTypeName, i, end, diagnostics);
                        break block5;
                    }
                }
                i = Character.offsetByCodePoints(instanceTypeName, 0, instanceTypeName.length, i, 1);
            }
            if (eGenericType == null) {
                eGenericType = EcoreFactory.eINSTANCE.createEGenericType();
                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameTypeArgumentExpected_diagnostic", new Object[]{firstNonWhiteSpaceIndex}, firstNonWhiteSpaceIndex);
            }
            return eGenericType;
        }

        protected List<ETypeParameter> handleTypeParameters(char[] typeParameters, int start, int end, DiagnosticChain diagnostics) {
            ArrayList<ETypeParameter> result = new ArrayList<ETypeParameter>();
            int depth = 0;
            int typeArgumentStart = -1;
            int i = start;
            while (i < end) {
                int codePoint = Character.codePointAt(typeParameters, i);
                switch (codePoint) {
                    case 60: {
                        ++depth;
                        break;
                    }
                    case 62: {
                        if (--depth != 0) break;
                        result.add(this.handleTypeParameter(typeParameters, typeArgumentStart, i, diagnostics));
                        break;
                    }
                    case 44: {
                        if (depth != 1) break;
                        result.add(this.handleTypeParameter(typeParameters, typeArgumentStart, i, diagnostics));
                        typeArgumentStart = i + 1;
                        break;
                    }
                    default: {
                        if (typeArgumentStart != -1) break;
                        typeArgumentStart = i;
                    }
                }
                i = Character.offsetByCodePoints(typeParameters, 0, typeParameters.length, i, 1);
            }
            if (depth != 0) {
                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameUnterminatedAngleBracket_diagnostic", new Object[]{start}, start);
            }
            return result;
        }

        protected ETypeParameter handleTypeParameter(char[] typeParameters, int start, int end, DiagnosticChain diagnostics) {
            ETypeParameter eTypeParameter = EcoreFactory.eINSTANCE.createETypeParameter();
            int identifierStart = -1;
            int identifierLast = -1;
            boolean identifierDone = false;
            int i = start;
            while (i < end) {
                int codePoint = Character.codePointAt(typeParameters, i);
                if (Character.isWhitespace(codePoint)) {
                    if (identifierStart != -1) {
                        identifierDone = true;
                    }
                } else {
                    if (identifierDone) {
                        if (codePoint == 101 && i + 7 < end && typeParameters[i + 1] == 'x' && typeParameters[i + 2] == 't' && typeParameters[i + 3] == 'e' && typeParameters[i + 4] == 'n' && typeParameters[i + 5] == 'd' && typeParameters[i + 6] == 's' && Character.isWhitespace(Character.codePointAt(typeParameters, i + 7))) {
                            int boundStart = i += 7;
                            while (i < end) {
                                char character = typeParameters[i];
                                if (character == '&') {
                                    EGenericType eBound = this.handleInstanceTypeName(typeParameters, boundStart, i, diagnostics);
                                    eTypeParameter.getEBounds().add((Object)eBound);
                                    boundStart = i + 1;
                                }
                                ++i;
                            }
                            EGenericType eBound = this.handleInstanceTypeName(typeParameters, boundStart, i, diagnostics);
                            eTypeParameter.getEBounds().add((Object)eBound);
                            break;
                        }
                        this.report(diagnostics, "_UI_EClassifierInstanceTypeNameExpectingExtends_diagnostic", new Object[]{i}, i);
                        break;
                    }
                    if (identifierStart != -1 ? this.isIdentifierPart(codePoint) : this.isIdentifierStart(codePoint)) {
                        if (identifierStart == -1) {
                            identifierStart = i;
                        }
                        identifierLast = i;
                    } else {
                        this.report(diagnostics, "_UI_EClassifierInstanceTypeNameUnexpectedCharacter_diagnostic", new Object[]{i, new String(Character.toChars(codePoint))}, i);
                        break;
                    }
                }
                i = Character.offsetByCodePoints(typeParameters, 0, typeParameters.length, i, 1);
            }
            if (identifierLast == -1) {
                this.report(diagnostics, "_UI_EClassifierInstanceTypeNameExpectingIdentifier_diagnostic", new Object[]{end}, end);
            } else {
                eTypeParameter.setName(new String(typeParameters, identifierStart, identifierLast - identifierStart + 1));
            }
            return eTypeParameter;
        }

        protected BasicDiagnostic createDiagnostic(int severity, String source, int code, String messageKey, Object[] messageSubstitutions, Object[] data) {
            String message = this.getString(messageKey, messageSubstitutions);
            return new BasicDiagnostic(severity, source, code, message, data);
        }

        protected String getString(String key, Object[] substitutions) {
            ResourceLocator resourceLocator = this.getResourceLocator();
            return substitutions == null ? resourceLocator.getString(key) : resourceLocator.getString(key, substitutions);
        }

        protected ResourceLocator getResourceLocator() {
            return EcorePlugin.INSTANCE;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class EOperationSignatureValidator {
        protected String messageKey;
        protected int messageCode;
        protected boolean ignoreOperationsWithSuppressedVisibility;

        public EOperationSignatureValidator(String messageKey, int messageCode) {
            this.messageKey = messageKey;
            this.messageCode = messageCode;
        }

        public EOperationSignatureValidator(String messageKey, int messageCode, boolean ignoreOperationsWithSuppressedVisibility) {
            this.messageKey = messageKey;
            this.messageCode = messageCode;
            this.ignoreOperationsWithSuppressedVisibility = ignoreOperationsWithSuppressedVisibility;
        }

        public final boolean validateEOperationSignatures(EClass eClass, EList<EOperation> eOperations, Collection<EOperation> otherEOperations, DiagnosticChain diagnostics, Map<Object, Object> context) {
            boolean result = true;
            block0: for (EOperation eOperation : eOperations) {
                String name;
                if (this.ignoreOperationsWithSuppressedVisibility && EcoreUtil.isSuppressedVisibility(eOperation) || (name = eOperation.getName()) == null) continue;
                EList<EParameter> eParameters = eOperation.getEParameters();
                int eParameterSize = eParameters.size();
                block1: for (EOperation otherEOperation : otherEOperations) {
                    EList<EParameter> otherEParmeters;
                    if (otherEOperation == eOperation) continue block0;
                    String otherName = otherEOperation.getName();
                    if (!name.equals(otherName) || (otherEParmeters = otherEOperation.getEParameters()).size() != eParameterSize) continue;
                    int i = 0;
                    while (i < eParameterSize) {
                        String otherInstanceClassName;
                        String instanceClassName;
                        EClassifier otherEType;
                        EParameter eParameter = (EParameter)eParameters.get(i);
                        EParameter otherEParameter = (EParameter)otherEParmeters.get(i);
                        EClassifier eType = eParameter.getEType();
                        if (eType != (otherEType = otherEParameter.getEType()) ? eType == null || otherEType == null || (instanceClassName = eType.getInstanceClassName()) != (otherInstanceClassName = otherEType.getInstanceClassName()) || instanceClassName == null || eParameter.isMany() != otherEParameter.isMany() : eParameter.isMany() != otherEParameter.isMany()) continue block1;
                        ++i;
                    }
                    if (diagnostics == null) {
                        return false;
                    }
                    result = false;
                    diagnostics.add((Diagnostic)EcoreValidator.this.createDiagnostic(4, EcoreValidator.DIAGNOSTIC_SOURCE, this.messageCode, this.messageKey, new Object[]{EcoreValidator.getObjectLabel(eOperation, context), EcoreValidator.getObjectLabel(this.getTarget(otherEOperation), context)}, new Object[]{eClass, eOperation, this.getTarget(otherEOperation)}, context));
                }
            }
            return result;
        }

        protected EModelElement getTarget(EOperation targetEOperation) {
            return targetEOperation;
        }
    }
}

