/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectValidator
implements EValidator {
    public static final EObjectValidator INSTANCE = new EObjectValidator();
    public static final String DIAGNOSTIC_SOURCE = "org.eclipse.emf.ecore";
    public static final int EOBJECT__EVERY_MULTIPCITY_CONFORMS = 1;
    public static final int EOBJECT__EVERY_DATA_VALUE_CONFORMS = 2;
    public static final int EOBJECT__EVERY_REFERENCE_IS_CONTAINED = 3;
    public static final int EOBJECT__EVERY_PROXY_RESOLVES = 4;
    public static final int DATA_VALUE__VALUE_IN_RANGE = 5;
    public static final int DATA_VALUE__LENGTH_IN_RANGE = 6;
    public static final int DATA_VALUE__TYPE_CORRECT = 7;
    public static final int DATA_VALUE__VALUE_IN_ENUMERATION = 8;
    public static final int DATA_VALUE__MATCHES_PATTERN = 9;
    public static final int DATA_VALUE__TOTAL_DIGITS_IN_RANGE = 10;
    public static final int DATA_VALUE__FRACTION_DIGITS_IN_RANGE = 11;
    public static final int EOBJECT__UNIQUE_ID = 12;
    public static final int EOBJECT__EVERY_KEY_UNIQUE = 13;
    public static final int EOBJECT__EVERY_MAP_ENTRY_UNIQUE = 14;
    public static final int EOBJECT__NO_CIRCULAR_CONTAINMENT = 15;
    public static final int EOBJECT__EVERY_BIDIRECTIONAL_REFERENCE_IS_PAIRED = 16;
    static final int EOBJECT_DIAGNOSTIC_CODE_COUNT = 15;
    public static final String ROOT_OBJECT = "org.eclipse.emf.ecore.EObject_NoCircularContainment";

    public static String getObjectLabel(EObject eObject, Map<Object, Object> context) {
        EValidator.SubstitutionLabelProvider substitutionlabelProvider;
        if (context != null && (substitutionlabelProvider = (EValidator.SubstitutionLabelProvider)context.get(EValidator.SubstitutionLabelProvider.class)) != null) {
            return substitutionlabelProvider.getObjectLabel(eObject);
        }
        return EcoreUtil.getIdentification(eObject);
    }

    public static String getFeatureLabel(EStructuralFeature eStructuralFeature, Map<Object, Object> context) {
        EValidator.SubstitutionLabelProvider substitutionlabelProvider;
        if (context != null && (substitutionlabelProvider = (EValidator.SubstitutionLabelProvider)context.get(EValidator.SubstitutionLabelProvider.class)) != null) {
            return substitutionlabelProvider.getFeatureLabel(eStructuralFeature);
        }
        return eStructuralFeature.getName();
    }

    public static String getValueLabel(EDataType eDataType, Object value, Map<Object, Object> context) {
        EValidator.SubstitutionLabelProvider substitutionlabelProvider;
        if (context != null && (substitutionlabelProvider = (EValidator.SubstitutionLabelProvider)context.get(EValidator.SubstitutionLabelProvider.class)) != null) {
            return substitutionlabelProvider.getValueLabel(eDataType, value);
        }
        return EcoreUtil.convertToString(eDataType, value);
    }

    protected EPackage getEPackage() {
        return EcorePackage.eINSTANCE;
    }

    protected EValidator getRootEValidator(Map<Object, Object> context) {
        EValidator result;
        if (context != null && (result = (EValidator)context.get(EValidator.class)) != null) {
            return result;
        }
        return Diagnostician.INSTANCE;
    }

    protected static EValidator.ValidationDelegate.Registry getValidationDelegateRegistry(Map<Object, Object> context) {
        EValidator.ValidationDelegate.Registry result;
        if (context != null && (result = (EValidator.ValidationDelegate.Registry)context.get(EValidator.ValidationDelegate.Registry.class)) != null) {
            return result;
        }
        return EValidator.ValidationDelegate.Registry.INSTANCE;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean validate(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, String validationDelegate, EOperation invariant, String expression, int severity, String source, int code) {
        EValidator.ValidationDelegate delegate = EObjectValidator.getValidationDelegateRegistry(context).getValidationDelegate(validationDelegate);
        if (delegate != null) {
            try {
                if (delegate.validate(eClass, eObject, context, invariant, expression)) return true;
                if (diagnostics == null) return false;
                EObjectValidator.reportInvariantDelegateViolation(eClass, eObject, diagnostics, context, invariant, severity, source, code);
                return false;
            }
            catch (Throwable throwable) {
                if (diagnostics == null) return true;
                EObjectValidator.reportInvariantDelegateException(eClass, eObject, diagnostics, context, invariant, severity, source, code, throwable);
                return true;
            }
        } else {
            if (diagnostics == null) return true;
            EObjectValidator.reportInvariantDelegateNotFound(eClass, eObject, diagnostics, context, invariant, severity, source, code, validationDelegate);
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean validate(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, String validationDelegate, String constraint, String expression, int severity, String source, int code) {
        EValidator.ValidationDelegate delegate = EObjectValidator.getValidationDelegateRegistry(context).getValidationDelegate(validationDelegate);
        if (delegate != null) {
            try {
                if (delegate.validate(eClass, eObject, context, constraint, expression)) return true;
                if (diagnostics == null) return false;
                this.reportConstraintDelegateViolation(eClass, eObject, diagnostics, context, constraint, severity, source, code);
                return false;
            }
            catch (Throwable throwable) {
                if (diagnostics == null) return true;
                this.reportConstraintDelegateException(eClass, eObject, diagnostics, context, constraint, severity, source, code, throwable);
                return true;
            }
        } else {
            if (diagnostics == null) return true;
            this.reportConstraintDelegateNotFound(eClass, eObject, diagnostics, context, constraint, severity, source, code, validationDelegate);
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean validate(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context, String validationDelegate, String constraint, String expression, int severity, String source, int code) {
        EValidator.ValidationDelegate delegate = EObjectValidator.getValidationDelegateRegistry(context).getValidationDelegate(validationDelegate);
        if (delegate != null) {
            try {
                if (delegate.validate(eDataType, value, context, constraint, expression)) return true;
                if (diagnostics == null) return false;
                this.reportConstraintDelegateViolation(eDataType, value, diagnostics, context, constraint, severity, source, code);
                return false;
            }
            catch (Throwable throwable) {
                if (diagnostics == null) return true;
                this.reportConstraintDelegateException(eDataType, value, diagnostics, context, constraint, severity, source, code, throwable);
                return true;
            }
        } else {
            if (diagnostics == null) return true;
            this.reportConstraintDelegateNotFound(eDataType, value, diagnostics, context, constraint, severity, source, code, validationDelegate);
        }
        return true;
    }

    @Override
    public boolean validate(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate(eObject.eClass(), eObject, diagnostics, context);
    }

    @Override
    public boolean validate(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (eObject.eIsProxy()) {
            if (context != null && context.get(ROOT_OBJECT) != null) {
                if (diagnostics != null) {
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 4, "_UI_UnresolvedProxy_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eObject.eContainmentFeature(), context), EObjectValidator.getObjectLabel(eObject.eContainer(), context), EObjectValidator.getObjectLabel(eObject, context)}, new Object[]{eObject.eContainer(), eObject.eContainmentFeature(), eObject}, context));
                }
                return false;
            }
            return true;
        }
        if (eClass.eContainer() == this.getEPackage()) {
            return this.validate(eClass.getClassifierID(), (Object)eObject, diagnostics, context);
        }
        return new DynamicEClassValidator(){}.validate(eClass, eObject, diagnostics, context);
    }

    protected boolean validate(int classifierID, Object object, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return classifierID != 10 || this.validate_EveryDefaultConstraint((EObject)object, diagnostics, context);
    }

    public boolean validate_EveryDefaultConstraint(EObject object, DiagnosticChain theDiagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment(object, theDiagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms(object, theDiagnostics, context);
        if (result || theDiagnostics != null) {
            result &= this.validate_EveryProxyResolves(object, theDiagnostics, context);
        }
        if (result || theDiagnostics != null) {
            result &= this.validate_EveryReferenceIsContained(object, theDiagnostics, context);
        }
        if (result || theDiagnostics != null) {
            result &= this.validate_EveryBidirectionalReferenceIsPaired(object, theDiagnostics, context);
        }
        if (result || theDiagnostics != null) {
            result &= this.validate_EveryDataValueConforms(object, theDiagnostics, context);
        }
        if (result || theDiagnostics != null) {
            result &= this.validate_UniqueID(object, theDiagnostics, context);
        }
        if (result || theDiagnostics != null) {
            result &= this.validate_EveryKeyUnique(object, theDiagnostics, context);
        }
        if (result || theDiagnostics != null) {
            result &= this.validate_EveryMapEntryUnique(object, theDiagnostics, context);
        }
        return result;
    }

    public boolean validate_NoCircularContainment(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (context != null) {
            Object root = context.get(ROOT_OBJECT);
            if (root == null) {
                context.put(ROOT_OBJECT, eObject);
            } else if (root == eObject) {
                if (diagnostics != null) {
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 15, "_UI_CircularContainment_diagnostic", new Object[]{EObjectValidator.getObjectLabel(eObject, context)}, new Object[]{eObject}, context));
                }
                return false;
            }
        }
        return true;
    }

    public boolean validate_EveryBidirectionalReferenceIsPaired(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        for (EReference eReference : eObject.eClass().getEAllReferences()) {
            EReference eOpposite;
            if (!eReference.isResolveProxies() || (eOpposite = eReference.getEOpposite()) == null || (result &= this.validate_BidirectionalReferenceIsPaired(eObject, eReference, eOpposite, diagnostics, context)) || diagnostics != null) continue;
            return false;
        }
        return result;
    }

    public boolean validate_BidirectionalReferenceIsPaired(EObject eObject, EReference eReference, EReference eOpposite, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        Object value = eObject.eGet(eReference);
        if (eReference.isMany()) {
            List values = (List)value;
            if (eOpposite.isMany()) {
                for (EObject oppositeEObject : values) {
                    List oppositeValues = (List)oppositeEObject.eGet(eOpposite);
                    if (oppositeValues.contains(eObject)) continue;
                    result = false;
                    if (diagnostics != null) {
                        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 16, "_UI_UnpairedBidirectionalReference_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eReference, context), EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getFeatureLabel(eOpposite, context), EObjectValidator.getObjectLabel(oppositeEObject, context)}, new Object[]{eObject, eReference, oppositeEObject, eOpposite}, context));
                        continue;
                    }
                    break;
                }
            } else {
                for (EObject oppositeEObject : values) {
                    if (oppositeEObject.eGet(eOpposite) == eObject) continue;
                    result = false;
                    if (diagnostics != null) {
                        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 16, "_UI_UnpairedBidirectionalReference_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eReference, context), EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getFeatureLabel(eOpposite, context), EObjectValidator.getObjectLabel(oppositeEObject, context)}, new Object[]{eObject, eReference, oppositeEObject, eOpposite}, context));
                        continue;
                    }
                    break;
                }
            }
        } else {
            EObject oppositeEObject = (EObject)value;
            if (oppositeEObject != null) {
                if (eOpposite.isMany()) {
                    List oppositeValues = (List)oppositeEObject.eGet(eOpposite);
                    if (!oppositeValues.contains(eObject)) {
                        result = false;
                        if (diagnostics != null) {
                            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 16, "_UI_UnpairedBidirectionalReference_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eReference, context), EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getFeatureLabel(eOpposite, context), EObjectValidator.getObjectLabel(oppositeEObject, context)}, new Object[]{eObject, eReference, oppositeEObject, eOpposite}, context));
                        }
                    }
                } else if (oppositeEObject.eGet(eOpposite) != eObject) {
                    result = false;
                    if (diagnostics != null) {
                        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 16, "_UI_UnpairedBidirectionalReference_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eReference, context), EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getFeatureLabel(eOpposite, context), EObjectValidator.getObjectLabel(oppositeEObject, context)}, new Object[]{eObject, eReference, oppositeEObject, eOpposite}, context));
                    }
                }
            }
        }
        return result;
    }

    public boolean validate_EveryMultiplicityConforms(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EClass eClass = eObject.eClass();
        int i = 0;
        int size = eClass.getFeatureCount();
        while (i < size) {
            if (!(result &= this.validate_MultiplicityConforms(eObject, eClass.getEStructuralFeature(i), diagnostics, context)) && diagnostics == null) {
                return false;
            }
            ++i;
        }
        return result;
    }

    protected boolean validate_MultiplicityConforms(EObject eObject, EStructuralFeature eStructuralFeature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        if (eStructuralFeature.isMany()) {
            if (FeatureMapUtil.isFeatureMap(eStructuralFeature) && ExtendedMetaData.INSTANCE.isDocumentRoot(eObject.eClass())) {
                FeatureMap featureMap = (FeatureMap)eObject.eGet(eStructuralFeature);
                int count = 0;
                int i = 0;
                int size = featureMap.size();
                while (i < size) {
                    EStructuralFeature feature = featureMap.getEStructuralFeature(i);
                    int kind = ExtendedMetaData.INSTANCE.getFeatureKind(feature);
                    if (kind == 4 && feature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA && feature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT && feature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT && feature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION && ++count > 1) {
                        result = false;
                        break;
                    }
                    ++i;
                }
                if (count != 1) {
                    result = false;
                    if (diagnostics != null) {
                        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 1, "_UI_DocumentRootMustHaveOneElement_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eStructuralFeature, context), EObjectValidator.getObjectLabel(eObject, context), count}, new Object[]{eObject, eStructuralFeature}, context));
                    }
                }
            } else {
                int lowerBound = eStructuralFeature.getLowerBound();
                if (lowerBound > 0) {
                    int upperBound;
                    int size = ((List)eObject.eGet(eStructuralFeature)).size();
                    if (size < lowerBound) {
                        result = false;
                        if (diagnostics != null) {
                            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 1, "_UI_FeatureHasTooFewValues_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eStructuralFeature, context), EObjectValidator.getObjectLabel(eObject, context), size, lowerBound}, new Object[]{eObject, eStructuralFeature}, context));
                        }
                    }
                    if ((upperBound = eStructuralFeature.getUpperBound()) > 0 && size > upperBound) {
                        result = false;
                        if (diagnostics != null) {
                            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 1, "_UI_FeatureHasTooManyValues_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eStructuralFeature, context), EObjectValidator.getObjectLabel(eObject, context), size, upperBound}, new Object[]{eObject, eStructuralFeature}, context));
                        }
                    }
                } else {
                    int size;
                    int upperBound = eStructuralFeature.getUpperBound();
                    if (upperBound > 0 && (size = ((List)eObject.eGet(eStructuralFeature)).size()) > upperBound) {
                        result = false;
                        if (diagnostics != null) {
                            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 1, "_UI_FeatureHasTooManyValues_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eStructuralFeature, context), EObjectValidator.getObjectLabel(eObject, context), size, upperBound}, new Object[]{eObject, eStructuralFeature}, context));
                        }
                    }
                }
            }
        } else if (eStructuralFeature.isRequired() && (eStructuralFeature.isUnsettable() ? !eObject.eIsSet(eStructuralFeature) : eObject.eGet(eStructuralFeature, false) == null)) {
            result = false;
            if (diagnostics != null) {
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 1, "_UI_RequiredFeatureMustBeSet_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eStructuralFeature, context), EObjectValidator.getObjectLabel(eObject, context)}, new Object[]{eObject, eStructuralFeature}, context));
            }
        }
        return result;
    }

    public boolean validate_EveryProxyResolves(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EContentsEList.FeatureIterator i = (EContentsEList.FeatureIterator)eObject.eCrossReferences().iterator();
        while (i.hasNext()) {
            EObject eCrossReferenceObject = (EObject)i.next();
            if (!eCrossReferenceObject.eIsProxy()) continue;
            result = false;
            if (diagnostics == null) break;
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 4, "_UI_UnresolvedProxy_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(i.feature(), context), EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getObjectLabel(eCrossReferenceObject, context)}, new Object[]{eObject, i.feature(), eCrossReferenceObject}, context));
        }
        return result;
    }

    public boolean validate_EveryReferenceIsContained(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        if (eObject.eResource() != null) {
            EContentsEList.FeatureIterator i = (EContentsEList.FeatureIterator)eObject.eCrossReferences().iterator();
            while (i.hasNext()) {
                EObject eCrossReferenceObject = (EObject)i.next();
                if (eCrossReferenceObject.eResource() != null || eCrossReferenceObject.eIsProxy() || i.feature().isTransient()) continue;
                result = false;
                if (diagnostics == null) break;
                diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 3, "_UI_DanglingReference_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(i.feature(), context), EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getObjectLabel(eCrossReferenceObject, context)}, new Object[]{eObject, i.feature(), eCrossReferenceObject}, context));
            }
        }
        return result;
    }

    public boolean validate_EveryDataValueConforms(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        for (EAttribute eAttribute : eObject.eClass().getEAllAttributes()) {
            if ((result &= this.validate_DataValueConforms(eObject, eAttribute, diagnostics, context)) || diagnostics != null) continue;
            return false;
        }
        return result;
    }

    protected boolean validate_DataValueConforms(EObject eObject, EAttribute eAttribute, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!eObject.eIsSet(eAttribute)) {
            return true;
        }
        boolean result = true;
        EDataType eDataType = eAttribute.getEAttributeType();
        EValidator rootValidator = this.getRootEValidator(context);
        Object value = eObject.eGet(eAttribute);
        if (FeatureMapUtil.isFeatureMap(eAttribute)) {
            Collection featureMap = (Collection)value;
            EClass eClass = eObject.eClass();
            HashMap<EStructuralFeature, DiagnosticChain> entryFeatureToDiagnosticChainMap = null;
            Iterator i = featureMap.iterator();
            while (i.hasNext() && (result || diagnostics != null)) {
                DiagnosticChain entryFeatureDiagnostic;
                Object entryValue;
                EDataType entryType;
                boolean entryIsValid;
                FeatureMap.Entry entry = (FeatureMap.Entry)i.next();
                EStructuralFeature entryFeature = entry.getEStructuralFeature();
                if (!(entryFeature instanceof EAttribute) || ExtendedMetaData.INSTANCE.getAffiliation(eClass, entryFeature) != eAttribute || (entryIsValid = rootValidator.validate(entryType = (EDataType)entryFeature.getEType(), entryValue = entry.getValue(), null, context))) continue;
                result = false;
                if (diagnostics == null) continue;
                if (entryFeatureToDiagnosticChainMap == null) {
                    entryFeatureToDiagnosticChainMap = new HashMap<EStructuralFeature, DiagnosticChain>();
                }
                if ((entryFeatureDiagnostic = (DiagnosticChain)entryFeatureToDiagnosticChainMap.get(entryFeature)) == null) {
                    entryFeatureDiagnostic = this.createBadDataValueDiagnostic(eObject, (EAttribute)entryFeature, diagnostics, context);
                    entryFeatureToDiagnosticChainMap.put(entryFeature, entryFeatureDiagnostic);
                }
                rootValidator.validate(entryType, entryValue, entryFeatureDiagnostic, context);
            }
        } else if (eAttribute.isMany()) {
            Iterator i = ((List)value).iterator();
            while (i.hasNext() && result) {
                result &= rootValidator.validate(eDataType, i.next(), null, context);
            }
            if (!result && diagnostics != null) {
                DiagnosticChain diagnostic = this.createBadDataValueDiagnostic(eObject, eAttribute, diagnostics, context);
                Iterator i2 = ((List)value).iterator();
                while (i2.hasNext()) {
                    rootValidator.validate(eDataType, i2.next(), diagnostic, context);
                }
            }
        } else if (value != null && !(result = rootValidator.validate(eDataType, value, null, context)) && diagnostics != null) {
            DiagnosticChain diagnostic = this.createBadDataValueDiagnostic(eObject, eAttribute, diagnostics, context);
            rootValidator.validate(eDataType, value, diagnostic, context);
        }
        return result;
    }

    protected DiagnosticChain createBadDataValueDiagnostic(EObject eObject, EAttribute eAttribute, DiagnosticChain diagnostics, Map<Object, Object> context) {
        BasicDiagnostic diagnostic = this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 2, "_UI_BadDataValue_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eAttribute, context), EObjectValidator.getObjectLabel(eObject, context)}, new Object[]{eObject, eAttribute}, context);
        diagnostics.add((Diagnostic)diagnostic);
        return diagnostic;
    }

    protected boolean validatePattern(EDataType eDataType, Object value, EValidator.PatternMatcher[][] patterns, DiagnosticChain diagnostics, Map<Object, Object> context) {
        String literal = EcoreUtil.convertToString(eDataType, value);
        int i = 0;
        while (i < patterns.length) {
            EValidator.PatternMatcher[] children = patterns[i];
            boolean matches = false;
            int j = 0;
            while (j < children.length) {
                if (children[j].matches(literal)) {
                    matches = true;
                    break;
                }
                ++j;
            }
            if (!matches) {
                if (diagnostics != null) {
                    this.reportDataValuePatternViolation(eDataType, value, children, diagnostics, context);
                }
                return false;
            }
            ++i;
        }
        return true;
    }

    @Override
    public boolean validate(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!eDataType.isInstance(value)) {
            if (value == null) {
                return true;
            }
            if (diagnostics != null) {
                this.reportDataValueTypeViolation(eDataType, value, diagnostics, context);
            }
            return false;
        }
        if (eDataType.eContainer() == this.getEPackage()) {
            return this.validate(eDataType.getClassifierID(), value, diagnostics, context);
        }
        return new DynamicEDataTypeValidator(eDataType){}.validate(eDataType, value, diagnostics, context);
    }

    protected void reportMinViolation(EDataType eDataType, Object value, Object bound, boolean isInclusive, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 5, isInclusive ? "_UI_MinInclusiveConstraint_diagnostic" : "_UI_MinExclusiveConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), isInclusive ? ">=" : ">", EObjectValidator.getValueLabel(eDataType, bound, context)}, new Object[]{value, bound, isInclusive ? Boolean.TRUE : Boolean.FALSE}, context));
    }

    protected void reportMaxViolation(EDataType eDataType, Object value, Object bound, boolean isInclusive, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 5, isInclusive ? "_UI_MaxInclusiveConstraint_diagnostic" : "_UI_MaxExclusiveConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), "<", EObjectValidator.getValueLabel(eDataType, bound, context)}, new Object[]{value, bound, isInclusive ? Boolean.TRUE : Boolean.FALSE}, context));
    }

    protected void reportMinLengthViolation(EDataType eDataType, Object value, int length, int bound, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 6, "_UI_MinLengthConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), Integer.toString(length), Integer.toString(bound)}, new Object[]{value, eDataType, length, bound}, context));
    }

    protected void reportMaxLengthViolation(EDataType eDataType, Object value, int length, int bound, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 6, "_UI_MaxLengthConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), Integer.toString(length), Integer.toString(bound)}, new Object[]{value, eDataType, length, bound}, context));
    }

    protected void reportTotalDigitsViolation(EDataType eDataType, Object value, int totalDigits, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 10, "_UI_TotalDigitsConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), totalDigits}, new Object[]{value, eDataType, totalDigits}, context));
    }

    protected void reportFractionDigitsViolation(EDataType eDataType, Object value, int fractionDigits, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 11, "_UI_FractionDigitsConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), fractionDigits}, new Object[]{value, eDataType, fractionDigits}, context));
    }

    protected void reportEnumerationViolation(EDataType eDataType, Object value, Collection<?> values, DiagnosticChain diagnostics, Map<Object, Object> context) {
        String valueLiterals = "";
        Iterator<?> i = values.iterator();
        if (i.hasNext()) {
            valueLiterals = this.getEcoreResourceLocator().getString("_UI_ListHead_composition", new Object[]{EObjectValidator.getValueLabel(eDataType, i.next(), context)});
            while (i.hasNext()) {
                valueLiterals = this.getEcoreResourceLocator().getString("_UI_ListTail_composition", new Object[]{valueLiterals, EObjectValidator.getValueLabel(eDataType, i.next(), context)});
            }
        }
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 8, "_UI_EnumerationConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), valueLiterals}, new Object[]{value, eDataType, values}, context));
    }

    protected void reportDataValuePatternViolation(EDataType eDataType, Object value, EValidator.PatternMatcher[] patterns, DiagnosticChain diagnostics, Map<Object, Object> context) {
        String patternLiterals = "";
        if (patterns.length > 0) {
            patternLiterals = this.getEcoreResourceLocator().getString("_UI_ListHead_composition", new Object[]{patterns[0]});
            int i = 1;
            while (i < patterns.length) {
                patternLiterals = this.getEcoreResourceLocator().getString("_UI_ListTail_composition", new Object[]{patternLiterals, patterns[i]});
                ++i;
            }
        }
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 9, "_UI_PatternConstraint_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), patternLiterals}, new Object[]{value, eDataType, patterns}, context));
    }

    protected void reportDataValueTypeViolation(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 7, "_UI_BadDataValueType_diagnostic", new Object[]{EObjectValidator.getValueLabel(eDataType, value, context), value == null ? "<null>" : value.getClass().getName(), eDataType.getInstanceClass().getName()}, new Object[]{value, eDataType}, context));
    }

    protected void reportConstraintDelegateViolation(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context, String constraint, int severity, String source, int code) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, this.getString("_UI_GenericConstraint_diagnostic", new Object[]{constraint, EObjectValidator.getValueLabel(eDataType, value, context)}), new Object[]{value}));
    }

    protected void reportConstraintDelegateException(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context, String constraint, int severity, String source, int code, Throwable throwable) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, this.getString("_UI_ConstraintDelegateException_diagnostic", new Object[]{constraint, EObjectValidator.getValueLabel(eDataType, value, context), throwable.getLocalizedMessage()}), new Object[]{value}));
    }

    protected void reportConstraintDelegateNotFound(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context, String constraint, int severity, String source, int code, String validationDelegate) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, this.getString("_UI_ConstraintDelegateNotFound_diagnostic", new Object[]{constraint, EObjectValidator.getValueLabel(eDataType, value, context), validationDelegate}), new Object[]{value}));
    }

    protected void reportConstraintDelegateViolation(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, String constraint, int severity, String source, int code) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, this.getString("_UI_GenericConstraint_diagnostic", new Object[]{constraint, EObjectValidator.getObjectLabel(eObject, context)}), new Object[]{eObject}));
    }

    protected void reportConstraintDelegateException(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, String constraint, int severity, String source, int code, Throwable throwable) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, this.getString("_UI_ConstraintDelegateException_diagnostic", new Object[]{constraint, EObjectValidator.getObjectLabel(eObject, context), throwable.getLocalizedMessage()}), new Object[]{eObject}));
    }

    protected void reportConstraintDelegateNotFound(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, String constraint, int severity, String source, int code, String validationDelegate) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, this.getString("_UI_ConstraintDelegateNotFound_diagnostic", new Object[]{constraint, EObjectValidator.getObjectLabel(eObject, context), validationDelegate}), new Object[]{eObject}));
    }

    protected static void reportInvariantDelegateViolation(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, EOperation invariant, int severity, String source, int code) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[]{invariant.getName(), EObjectValidator.getObjectLabel(eObject, context)}), new Object[]{eObject}));
    }

    protected static void reportInvariantDelegateException(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, EOperation invariant, int severity, String source, int code, Throwable throwable) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, EcorePlugin.INSTANCE.getString("_UI_InvariantDelegateException_diagnostic", new Object[]{invariant.getName(), EObjectValidator.getObjectLabel(eObject, context), throwable.getLocalizedMessage()}), new Object[]{eObject}));
    }

    protected static void reportInvariantDelegateNotFound(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context, EOperation invariant, int severity, String source, int code, String validationDelegate) {
        diagnostics.add((Diagnostic)new BasicDiagnostic(severity, source, code, EcorePlugin.INSTANCE.getString("_UI_InvariantDelegateNotFound_diagnostic", new Object[]{invariant.getName(), EObjectValidator.getObjectLabel(eObject, context), validationDelegate}), new Object[]{eObject}));
    }

    protected static Collection<Object> wrapEnumerationValues(Object[] values) {
        return Arrays.asList(values);
    }

    public boolean validate_UniqueID(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        EObject otherEObject;
        Resource resource;
        boolean result = true;
        String id = EcoreUtil.getID(eObject);
        if (id != null && (resource = eObject.eResource()) != null && eObject != (otherEObject = resource.getEObject(id)) && otherEObject != null) {
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 12, "_UI_DuplicateID_diagnostic", new Object[]{id, EObjectValidator.getObjectLabel(eObject, context), EObjectValidator.getObjectLabel(otherEObject, context)}, new Object[]{eObject, otherEObject, id}, context));
        }
        return result;
    }

    public boolean validate_EveryKeyUnique(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EClass eClass = eObject.eClass();
        int i = 0;
        int size = eClass.getFeatureCount();
        while (i < size) {
            EReference eReference;
            EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
            if (eStructuralFeature instanceof EReference && (eReference = (EReference)eStructuralFeature).isMany() && !eReference.getEKeys().isEmpty() && !(result &= this.validate_KeyUnique(eObject, eReference, diagnostics, context)) && diagnostics == null) {
                return false;
            }
            ++i;
        }
        return result;
    }

    protected boolean validate_KeyUnique(EObject eObject, EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        HashMap keys = new HashMap();
        EAttribute[] eAttributes = (EAttribute[])((BasicEList)eReference.getEKeys()).data();
        List values = (List)eObject.eGet(eReference);
        for (EObject value : values) {
            ArrayList<Object> key = new ArrayList<Object>();
            int i = 0;
            int size = eAttributes.length;
            while (i < size) {
                EAttribute eAttribute = eAttributes[i];
                if (eAttribute == null) break;
                key.add(value.eGet(eAttribute));
                ++i;
            }
            EObject otherValue = keys.put(key, value);
            if (otherValue == null) continue;
            result = false;
            if (diagnostics == null) break;
            String uriFragmentSegment = ((InternalEObject)eObject).eURIFragmentSegment(eReference, value);
            int index = uriFragmentSegment.indexOf(91, 0);
            if (index != -1) {
                uriFragmentSegment = uriFragmentSegment.substring(index);
            }
            diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 13, "_UI_DuplicateKey_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eReference, context), uriFragmentSegment, EObjectValidator.getObjectLabel(value, context), EObjectValidator.getObjectLabel(otherValue, context)}, new Object[]{eObject, eReference, value, otherValue}, context));
        }
        return result;
    }

    public boolean validate_EveryMapEntryUnique(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        EClass eClass = eObject.eClass();
        int i = 0;
        int size = eClass.getFeatureCount();
        while (i < size) {
            EReference eReference;
            EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
            if (eStructuralFeature.getEType().getInstanceClassName() == "java.util.Map$Entry" && eStructuralFeature instanceof EReference && !(result &= this.validate_MapEntryUnique(eObject, eReference = (EReference)eStructuralFeature, diagnostics, context)) && diagnostics == null) {
                return false;
            }
            ++i;
        }
        return result;
    }

    protected boolean validate_MapEntryUnique(EObject eObject, EReference eReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        Object value = eObject.eGet(eReference);
        if (value instanceof EMap) {
            EMap eMap = (EMap)value;
            int i = 0;
            int size = eMap.size();
            while (i < size) {
                Map.Entry entry = (Map.Entry)eMap.get(i);
                Object key = entry.getKey();
                int index = eMap.indexOfKey(key);
                if (index != i) {
                    result = false;
                    if (diagnostics == null) break;
                    diagnostics.add((Diagnostic)this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 14, "_UI_DuplicateMapEntry_diagnostic", new Object[]{EObjectValidator.getFeatureLabel(eReference, context), i, index}, new Object[]{eObject, eReference, entry, eMap.get(index)}, context));
                }
                ++i;
            }
        }
        return result;
    }

    protected BasicDiagnostic createDiagnostic(int severity, String source, int code, String messageKey, Object[] messageSubstitutions, Object[] data, Map<Object, Object> context) {
        String message = DIAGNOSTIC_SOURCE.equals(source) ? this.getEcoreString(messageKey, messageSubstitutions) : this.getString(messageKey, messageSubstitutions);
        return new BasicDiagnostic(severity, source, code, message, data);
    }

    protected String getEcoreString(String key, Object[] substitutions) {
        return this.getString(this.getEcoreResourceLocator(), key, substitutions);
    }

    protected ResourceLocator getEcoreResourceLocator() {
        return EcorePlugin.INSTANCE;
    }

    protected boolean isEcoreString(String key) {
        return "_UI_GenericConstraint_diagnostic".equals(key) || "_UI_GenericInvariant_diagnostic".equals(key) || "_UI_ConstraintDelegateException_diagnostic".equals(key) || "_UI_InvariantDelegateException_diagnostic".equals(key) || "_UI_ConstraintDelegateNotFound_diagnostic".equals(key) || "_UI_InvariantDelegateNotFound_diagnostic".equals(key);
    }

    protected String getString(String key, Object[] substitutions) {
        return this.getString(this.isEcoreString(key) ? this.getEcoreResourceLocator() : this.getResourceLocator(), key, substitutions);
    }

    protected ResourceLocator getResourceLocator() {
        return this.getEcoreResourceLocator();
    }

    private String getString(ResourceLocator resourceLocator, String key, Object[] substitutions) {
        return substitutions == null ? resourceLocator.getString(key) : resourceLocator.getString(key, substitutions);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class DynamicEClassValidator {
        protected boolean validateDelegatedInvariants(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
            boolean result = true;
            List<String> validationDelegates = EcoreUtil.getValidationDelegates(eClass.getEPackage());
            if (!validationDelegates.isEmpty()) {
                block0: for (EOperation eOperation : eClass.getEOperations()) {
                    if (!EcoreUtil.isInvariant(eOperation)) continue;
                    for (String validationDelegate : validationDelegates) {
                        String expression = EcoreUtil.getAnnotation(eOperation, validationDelegate, "body");
                        if (expression != null && !(result &= EObjectValidator.validate(eClass, eObject, diagnostics, context, validationDelegate, eOperation, expression, 4, EObjectValidator.DIAGNOSTIC_SOURCE, 0)) && diagnostics == null) break block0;
                    }
                }
            }
            return result;
        }

        protected boolean validateDelegatedConstraints(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
            boolean result = true;
            List<String> validationDelegates = EcoreUtil.getValidationDelegates(eClass.getEPackage());
            if (!validationDelegates.isEmpty()) {
                block0: for (String constraint : EcoreUtil.getConstraints(eClass)) {
                    for (String validationDelegate : validationDelegates) {
                        String expression = EcoreUtil.getAnnotation(eClass, validationDelegate, constraint);
                        if (expression != null && !(result &= EObjectValidator.this.validate(eClass, eObject, diagnostics, context, validationDelegate, constraint, expression, 4, EObjectValidator.DIAGNOSTIC_SOURCE, 0)) && diagnostics == null) break block0;
                    }
                }
            }
            return result;
        }

        public boolean validate(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
            boolean result = this.validateDelegatedInvariants(eClass, eObject, diagnostics, context);
            if ((result || diagnostics != null) && ((result &= this.validateDelegatedConstraints(eClass, eObject, diagnostics, context)) || diagnostics != null)) {
                EList<EClass> eSuperTypes = eClass.getESuperTypes();
                result &= eSuperTypes.isEmpty() ? EObjectValidator.this.validate_EveryDefaultConstraint(eObject, diagnostics, context) : (eClass.eContainer() == EObjectValidator.this.getEPackage() ? EObjectValidator.this.validate(eClass.getClassifierID(), (Object)eObject, diagnostics, context) : this.validate((EClass)eSuperTypes.get(0), eObject, diagnostics, context));
            }
            return result;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class DynamicEDataTypeValidator {
        protected List<Object> effectiveEnumeration;
        protected EValidator.PatternMatcher[][] effectivePattern;
        protected int effectiveTotalDigits;
        protected int effectiveFractionDigits;
        protected int effectiveMinLength;
        protected int effectiveMaxLength;
        protected Object effectiveMin;
        protected boolean effectiveMinIsInclusive;
        protected int effectiveTotalDigitsMin;
        protected Object effectiveMax;
        protected boolean effectiveMaxIsInclusive;
        protected int effectiveTotalDigitsMax;
        protected EDataType builtinType;
        protected EDataType itemType;
        protected List<EDataType> memberTypes;

        public DynamicEDataTypeValidator(EDataType eDataType) {
            ArrayList<EValidator.PatternMatcher[]> patterns;
            block32: {
                ExtendedMetaData extendedMetaData;
                block31: {
                    EDataType baseType;
                    ResourceSet resourceSet;
                    this.effectiveTotalDigits = -1;
                    this.effectiveFractionDigits = -1;
                    this.effectiveMinLength = -1;
                    this.effectiveMaxLength = -1;
                    this.effectiveTotalDigitsMin = -1;
                    this.effectiveTotalDigitsMax = -1;
                    extendedMetaData = ExtendedMetaData.INSTANCE;
                    Resource resource = eDataType.eResource();
                    if (resource != null && (resourceSet = resource.getResourceSet()) != null) {
                        extendedMetaData = new BasicExtendedMetaData(resourceSet.getPackageRegistry());
                    }
                    patterns = null;
                    do {
                        List<String> pattern;
                        List<String> enumeration;
                        if (this.effectiveEnumeration == null && !(enumeration = extendedMetaData.getEnumerationFacet(eDataType)).isEmpty()) {
                            this.effectiveEnumeration = new ArrayList<Object>();
                            for (String enumerator : enumeration) {
                                this.effectiveEnumeration.add(EcoreUtil.createFromString(eDataType, enumerator));
                            }
                        }
                        if (!(pattern = extendedMetaData.getPatternFacet(eDataType)).isEmpty()) {
                            if (patterns == null) {
                                patterns = new ArrayList<EValidator.PatternMatcher[]>();
                            }
                            EValidator.PatternMatcher[] children = new EValidator.PatternMatcher[pattern.size()];
                            patterns.add(children);
                            ListIterator<String> i = pattern.listIterator();
                            while (i.hasNext()) {
                                EValidator.PatternMatcher patternMatcher;
                                children[i.previousIndex()] = patternMatcher = XMLTypeUtil.createPatternMatcher(i.next());
                            }
                        }
                        if (this.effectiveTotalDigits == -1) {
                            this.effectiveTotalDigits = extendedMetaData.getTotalDigitsFacet(eDataType);
                        }
                        if (this.effectiveFractionDigits == -1) {
                            this.effectiveFractionDigits = extendedMetaData.getFractionDigitsFacet(eDataType);
                        }
                        if (this.effectiveMinLength == -1) {
                            this.effectiveMinLength = extendedMetaData.getLengthFacet(eDataType);
                            if (this.effectiveMinLength == -1) {
                                this.effectiveMinLength = extendedMetaData.getMinLengthFacet(eDataType);
                            }
                        }
                        if (this.effectiveMaxLength == -1) {
                            this.effectiveMaxLength = extendedMetaData.getLengthFacet(eDataType);
                            if (this.effectiveMaxLength == -1) {
                                this.effectiveMaxLength = extendedMetaData.getMaxLengthFacet(eDataType);
                            }
                        }
                        if (this.effectiveMin == null) {
                            this.effectiveMin = extendedMetaData.getMinExclusiveFacet(eDataType);
                            if (this.effectiveMin == null) {
                                this.effectiveMin = extendedMetaData.getMinInclusiveFacet(eDataType);
                                if (this.effectiveMin != null) {
                                    this.effectiveMin = EcoreUtil.createFromString(eDataType, (String)this.effectiveMin);
                                    this.effectiveMinIsInclusive = true;
                                }
                            } else {
                                this.effectiveMin = EcoreUtil.createFromString(eDataType, (String)this.effectiveMin);
                                this.effectiveMinIsInclusive = false;
                            }
                        }
                        if (this.effectiveMax == null) {
                            this.effectiveMax = extendedMetaData.getMaxExclusiveFacet(eDataType);
                            if (this.effectiveMax == null) {
                                this.effectiveMax = extendedMetaData.getMaxInclusiveFacet(eDataType);
                                if (this.effectiveMax != null) {
                                    this.effectiveMax = EcoreUtil.createFromString(eDataType, (String)this.effectiveMax);
                                    this.effectiveMaxIsInclusive = true;
                                }
                            } else {
                                this.effectiveMax = EcoreUtil.createFromString(eDataType, (String)this.effectiveMax);
                                this.effectiveMaxIsInclusive = false;
                            }
                        }
                        if ((baseType = extendedMetaData.getBaseType(eDataType)) == null) break block31;
                    } while ((eDataType = baseType).getEPackage() != XMLTypePackage.eINSTANCE || eDataType.getInstanceClassName() != "javax.xml.datatype.XMLGregorianCalendar");
                    this.builtinType = eDataType;
                    this.itemType = null;
                    this.memberTypes = Collections.emptyList();
                    break block32;
                }
                this.itemType = extendedMetaData.getItemType(eDataType);
                this.memberTypes = extendedMetaData.getMemberTypes(eDataType);
            }
            if (patterns != null) {
                this.effectivePattern = new EValidator.PatternMatcher[patterns.size()][];
                patterns.toArray((T[])this.effectivePattern);
            }
            if (this.effectiveTotalDigits != -1 && eDataType.getInstanceClassName() != "java.math.BigDecimal") {
                StringBuffer digits = new StringBuffer("1");
                int i = this.effectiveTotalDigits;
                while (i > 0) {
                    digits.append("0");
                    --i;
                }
                try {
                    boolean lowerBounded;
                    Object lowerBound = EcoreUtil.createFromString(eDataType, "-" + digits.toString());
                    boolean bl = this.effectiveMin != null && (this.effectiveMinIsInclusive ? ((Comparable)this.effectiveMin).compareTo(lowerBound) > 0 : ((Comparable)this.effectiveMin).compareTo(lowerBound) >= 0) ? false : (lowerBounded = true);
                    if (lowerBounded) {
                        this.effectiveMinIsInclusive = false;
                        this.effectiveMin = lowerBound;
                        this.effectiveTotalDigitsMin = this.effectiveTotalDigits;
                    }
                }
                catch (NumberFormatException lowerBound) {
                    // empty catch block
                }
                try {
                    boolean upperBounded;
                    Object upperBound = EcoreUtil.createFromString(eDataType, digits.toString());
                    boolean bl = this.effectiveMax != null && (this.effectiveMaxIsInclusive ? ((Comparable)this.effectiveMax).compareTo(upperBound) < 0 : ((Comparable)this.effectiveMax).compareTo(upperBound) <= 0) ? false : (upperBounded = true);
                    if (upperBounded) {
                        this.effectiveMaxIsInclusive = false;
                        this.effectiveMax = upperBound;
                        this.effectiveTotalDigitsMax = this.effectiveTotalDigits;
                    }
                }
                catch (NumberFormatException numberFormatException) {
                    // empty catch block
                }
                this.effectiveTotalDigits = -1;
            }
            if (this.effectiveFractionDigits != -1 && eDataType.getInstanceClassName() != "java.math.BigDecimal") {
                this.effectiveFractionDigits = -1;
            }
        }

        protected boolean validateDelegatedConstraints(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
            boolean result = true;
            List<String> validationDelegates = EcoreUtil.getValidationDelegates(eDataType.getEPackage());
            if (!validationDelegates.isEmpty()) {
                block0: for (String constraint : EcoreUtil.getConstraints(eDataType)) {
                    for (String validationDelegate : validationDelegates) {
                        String expression = EcoreUtil.getAnnotation(eDataType, validationDelegate, constraint);
                        if (expression != null && !(result &= EObjectValidator.this.validate(eDataType, value, diagnostics, context, validationDelegate, constraint, expression, 4, EObjectValidator.DIAGNOSTIC_SOURCE, 0)) && diagnostics == null) break block0;
                    }
                }
            }
            return result;
        }

        protected boolean validateSchemaConstraints(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
            Comparable comparableObject;
            boolean result = true;
            if (this.effectiveEnumeration != null && !this.effectiveEnumeration.contains(value)) {
                if (diagnostics != null) {
                    EObjectValidator.this.reportEnumerationViolation(eDataType, value, this.effectiveEnumeration, diagnostics, context);
                }
                result = false;
            }
            if (this.effectivePattern != null) {
                result = EObjectValidator.this.validatePattern(eDataType, value, this.effectivePattern, diagnostics, context);
            }
            if (this.effectiveMin != null) {
                comparableObject = (Comparable)this.effectiveMin;
                if (this.effectiveMinIsInclusive ? comparableObject.compareTo(value) > 0 : comparableObject.compareTo(value) >= 0) {
                    if (diagnostics != null) {
                        if (this.effectiveTotalDigitsMin != -1) {
                            EObjectValidator.this.reportTotalDigitsViolation(eDataType, value, this.effectiveTotalDigitsMin, diagnostics, context);
                        } else {
                            EObjectValidator.this.reportMinViolation(eDataType, value, this.effectiveMin, this.effectiveMinIsInclusive, diagnostics, context);
                        }
                    }
                    result = false;
                }
            }
            if (this.effectiveMax != null) {
                comparableObject = (Comparable)this.effectiveMax;
                if (this.effectiveMaxIsInclusive ? comparableObject.compareTo(value) < 0 : comparableObject.compareTo(value) <= 0) {
                    if (diagnostics != null) {
                        if (this.effectiveTotalDigitsMax != -1) {
                            EObjectValidator.this.reportTotalDigitsViolation(eDataType, value, this.effectiveTotalDigitsMax, diagnostics, context);
                        } else {
                            EObjectValidator.this.reportMaxViolation(eDataType, value, this.effectiveMax, this.effectiveMaxIsInclusive, diagnostics, context);
                        }
                    }
                    result = false;
                }
            }
            if (this.effectiveMinLength != -1) {
                int length;
                int n = value instanceof String ? ((String)value).length() : (length = value instanceof Collection ? ((Collection)value).size() : Array.getLength(value));
                if (length < this.effectiveMinLength) {
                    if (diagnostics != null) {
                        EObjectValidator.this.reportMinLengthViolation(eDataType, value, length, this.effectiveMinLength, diagnostics, context);
                    }
                    result = false;
                }
            }
            if (this.effectiveMaxLength != -1) {
                int length;
                int n = value instanceof String ? ((String)value).length() : (length = value instanceof Collection ? ((Collection)value).size() : Array.getLength(value));
                if (length > this.effectiveMaxLength) {
                    if (diagnostics != null) {
                        EObjectValidator.this.reportMaxLengthViolation(eDataType, value, length, this.effectiveMaxLength, diagnostics, context);
                    }
                    result = false;
                }
            }
            if (this.effectiveTotalDigits != -1 && value instanceof BigDecimal && ((BigDecimal)value).unscaledValue().abs().toString().length() > this.effectiveTotalDigits) {
                if (diagnostics != null) {
                    EObjectValidator.this.reportTotalDigitsViolation(eDataType, value, this.effectiveTotalDigits, diagnostics, context);
                }
                result = false;
            }
            if (this.effectiveFractionDigits != -1 && value instanceof BigDecimal && ((BigDecimal)value).scale() > this.effectiveFractionDigits) {
                if (diagnostics != null) {
                    EObjectValidator.this.reportFractionDigitsViolation(eDataType, value, this.effectiveFractionDigits, diagnostics, context);
                }
                result = false;
            }
            if (this.builtinType != null) {
                EValidator rootValidator = EObjectValidator.this.getRootEValidator(context);
                result &= rootValidator.validate(this.builtinType, value, diagnostics, context);
            }
            return result;
        }

        public boolean validate(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
            boolean result = this.validateDelegatedConstraints(eDataType, value, diagnostics, context);
            if (result || diagnostics != null) {
                result &= this.validateSchemaConstraints(eDataType, value, diagnostics, context);
                if (this.itemType != null) {
                    EValidator rootValidator = EObjectValidator.this.getRootEValidator(context);
                    Iterator i = ((List)value).iterator();
                    while (i.hasNext() && (result || diagnostics != null)) {
                        result &= rootValidator.validate(this.itemType, i.next(), diagnostics, context);
                    }
                    return result;
                }
                if (!this.memberTypes.isEmpty()) {
                    EValidator rootValidator = EObjectValidator.this.getRootEValidator(context);
                    for (EDataType memberType : this.memberTypes) {
                        if (!rootValidator.validate(memberType, value, null, context)) continue;
                        return true;
                    }
                    for (EDataType memberType : this.memberTypes) {
                        if (!memberType.isInstance(value)) continue;
                        return rootValidator.validate(memberType, value, diagnostics, context);
                    }
                    return false;
                }
                return result;
            }
            return result;
        }
    }
}

