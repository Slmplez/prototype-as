/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.common.util.TreeIterator
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.common.util.TreeIterator;
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
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EGenericTypeImpl;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreValidator;
import org.eclipse.emf.ecore.util.FeatureMap;

public class EcorePackageImpl
extends EPackageImpl
implements EcorePackage {
    private static boolean isInited = false;
    private EClass eAttributeEClass = null;
    private EClass eAnnotationEClass = null;
    private EClass eClassEClass = null;
    private EClass eDataTypeEClass = null;
    private EClass eEnumEClass = null;
    private EClass eEnumLiteralEClass = null;
    private EClass eFactoryEClass = null;
    private EClass eClassifierEClass = null;
    private EClass eModelElementEClass = null;
    private EClass eNamedElementEClass = null;
    private EClass eObjectEClass = null;
    private EClass eOperationEClass = null;
    private EClass ePackageEClass = null;
    private EClass eParameterEClass = null;
    private EClass eReferenceEClass = null;
    private EClass eStructuralFeatureEClass = null;
    private EClass eTypedElementEClass = null;
    private EClass eStringToStringMapEntryEClass = null;
    private EClass eGenericTypeEClass = null;
    private EClass eTypeParameterEClass = null;
    private EDataType eBigDecimalEDataType = null;
    private EDataType eBigIntegerEDataType = null;
    private EDataType eBooleanObjectEDataType = null;
    private EDataType eCharacterObjectEDataType = null;
    private EDataType eDateEDataType = null;
    private EDataType eDiagnosticChainEDataType = null;
    private EDataType eDoubleObjectEDataType = null;
    private EDataType eFloatObjectEDataType = null;
    private EDataType eIntegerObjectEDataType = null;
    private EDataType eBooleanEDataType = null;
    private EDataType eByteObjectEDataType = null;
    private EDataType eByteEDataType = null;
    private EDataType eByteArrayEDataType = null;
    private EDataType eCharEDataType = null;
    private EDataType eDoubleEDataType = null;
    private EDataType eFloatEDataType = null;
    private EDataType eIntEDataType = null;
    private EDataType eJavaClassEDataType = null;
    private EDataType eJavaObjectEDataType = null;
    private EDataType eLongObjectEDataType = null;
    private EDataType eMapEDataType = null;
    private EDataType eShortObjectEDataType = null;
    private EDataType eLongEDataType = null;
    private EDataType eShortEDataType = null;
    private EDataType eTreeIteratorEDataType = null;
    private EDataType eInvocationTargetExceptionEDataType = null;
    private EDataType eFeatureMapEntryEDataType = null;
    private EDataType eEnumeratorEDataType = null;
    private EDataType eFeatureMapEDataType = null;
    private EDataType eStringEDataType = null;
    private EDataType eeListEDataType = null;
    private EDataType eResourceEDataType = null;
    private EDataType eResourceSetEDataType = null;
    private static ArrayList<EGenericTypeImpl> eGenericTypes = new ArrayList();
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private EcorePackageImpl() {
        super("http://www.eclipse.org/emf/2002/Ecore", EcoreFactory.eINSTANCE);
    }

    public static EcorePackage init() {
        if (isInited) {
            return (EcorePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2002/Ecore");
        }
        EcorePackageImpl theEcorePackage = EPackage.Registry.INSTANCE.get("http://www.eclipse.org/emf/2002/Ecore") instanceof EcorePackageImpl ? EPackage.Registry.INSTANCE.get("http://www.eclipse.org/emf/2002/Ecore") : new EcorePackageImpl();
        isInited = true;
        theEcorePackage.createPackageContents();
        theEcorePackage.initializePackageContents();
        EValidator.Registry.INSTANCE.put(theEcorePackage, new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return EcoreValidator.INSTANCE;
            }
        });
        EPackage.Registry.INSTANCE.put("http://www.eclipse.org/emf/2002/Ecore", theEcorePackage);
        return theEcorePackage;
    }

    protected EGenericType createEGenericType() {
        EGenericTypeImpl eGenericType = (EGenericTypeImpl)super.createEGenericType();
        eGenericTypes.add(eGenericType);
        return eGenericType;
    }

    public static boolean internalBootstrap() {
        ((EcorePackageImpl)EcorePackage.eINSTANCE).createExtendedMetaDataAnnotations();
        ((EPackageImpl)((Object)EcorePackage.eINSTANCE)).freeze();
        EGenericTypeImpl.eJavaObject = EcorePackage.Literals.EJAVA_OBJECT;
        for (EGenericTypeImpl eGenericType : eGenericTypes) {
            eGenericType.setERawType(EcorePackage.Literals.EJAVA_OBJECT, null);
        }
        return true;
    }

    public EClass getEClass() {
        return this.eClassEClass;
    }

    public EAttribute getEClass_Abstract() {
        return (EAttribute)this.eClassEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEClass_Interface() {
        return (EAttribute)this.eClassEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEClass_ESuperTypes() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEClass_EOperations() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEClass_EAllAttributes() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(4);
    }

    public EReference getEClass_EAllReferences() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(5);
    }

    public EReference getEClass_EReferences() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(6);
    }

    public EReference getEClass_EAttributes() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(7);
    }

    public EReference getEClass_EAllContainments() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(8);
    }

    public EReference getEClass_EAllOperations() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(9);
    }

    public EReference getEClass_EAllStructuralFeatures() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(10);
    }

    public EReference getEClass_EAllSuperTypes() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(11);
    }

    public EReference getEClass_EIDAttribute() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(12);
    }

    public EReference getEClass_EStructuralFeatures() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(13);
    }

    public EReference getEClass_EGenericSuperTypes() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(14);
    }

    public EReference getEClass_EAllGenericSuperTypes() {
        return (EReference)this.eClassEClass.getEStructuralFeatures().get(15);
    }

    public EOperation getEClass__IsSuperTypeOf__EClass() {
        return (EOperation)this.eClassEClass.getEOperations().get(0);
    }

    public EOperation getEClass__GetFeatureCount() {
        return (EOperation)this.eClassEClass.getEOperations().get(1);
    }

    public EOperation getEClass__GetEStructuralFeature__int() {
        return (EOperation)this.eClassEClass.getEOperations().get(2);
    }

    public EOperation getEClass__GetFeatureID__EStructuralFeature() {
        return (EOperation)this.eClassEClass.getEOperations().get(3);
    }

    public EOperation getEClass__GetEStructuralFeature__String() {
        return (EOperation)this.eClassEClass.getEOperations().get(4);
    }

    public EOperation getEClass__GetOperationCount() {
        return (EOperation)this.eClassEClass.getEOperations().get(5);
    }

    public EOperation getEClass__GetEOperation__int() {
        return (EOperation)this.eClassEClass.getEOperations().get(6);
    }

    public EOperation getEClass__GetOperationID__EOperation() {
        return (EOperation)this.eClassEClass.getEOperations().get(7);
    }

    public EOperation getEClass__GetOverride__EOperation() {
        return (EOperation)this.eClassEClass.getEOperations().get(8);
    }

    public EClass getEDataType() {
        return this.eDataTypeEClass;
    }

    public EAttribute getEDataType_Serializable() {
        return (EAttribute)this.eDataTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getEClassifier() {
        return this.eClassifierEClass;
    }

    public EAttribute getEClassifier_InstanceClassName() {
        return (EAttribute)this.eClassifierEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEClassifier_InstanceClass() {
        return (EAttribute)this.eClassifierEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getEClassifier_DefaultValue() {
        return (EAttribute)this.eClassifierEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getEClassifier_InstanceTypeName() {
        return (EAttribute)this.eClassifierEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEClassifier_EPackage() {
        return (EReference)this.eClassifierEClass.getEStructuralFeatures().get(4);
    }

    public EReference getEClassifier_ETypeParameters() {
        return (EReference)this.eClassifierEClass.getEStructuralFeatures().get(5);
    }

    public EOperation getEClassifier__IsInstance__Object() {
        return (EOperation)this.eClassifierEClass.getEOperations().get(0);
    }

    public EOperation getEClassifier__GetClassifierID() {
        return (EOperation)this.eClassifierEClass.getEOperations().get(1);
    }

    public EClass getENamedElement() {
        return this.eNamedElementEClass;
    }

    public EAttribute getENamedElement_Name() {
        return (EAttribute)this.eNamedElementEClass.getEStructuralFeatures().get(0);
    }

    public EClass getEOperation() {
        return this.eOperationEClass;
    }

    public EReference getEOperation_EContainingClass() {
        return (EReference)this.eOperationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEOperation_EParameters() {
        return (EReference)this.eOperationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEOperation_EExceptions() {
        return (EReference)this.eOperationEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEOperation_EGenericExceptions() {
        return (EReference)this.eOperationEClass.getEStructuralFeatures().get(4);
    }

    public EOperation getEOperation__GetOperationID() {
        return (EOperation)this.eOperationEClass.getEOperations().get(0);
    }

    public EOperation getEOperation__IsOverrideOf__EOperation() {
        return (EOperation)this.eOperationEClass.getEOperations().get(1);
    }

    public EReference getEOperation_ETypeParameters() {
        return (EReference)this.eOperationEClass.getEStructuralFeatures().get(1);
    }

    public EClass getEModelElement() {
        return this.eModelElementEClass;
    }

    public EReference getEModelElement_EAnnotations() {
        return (EReference)this.eModelElementEClass.getEStructuralFeatures().get(0);
    }

    public EOperation getEModelElement__GetEAnnotation__String() {
        return (EOperation)this.eModelElementEClass.getEOperations().get(0);
    }

    public EClass getEStructuralFeature() {
        return this.eStructuralFeatureEClass;
    }

    public EAttribute getEStructuralFeature_Transient() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getEStructuralFeature_Volatile() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getEStructuralFeature_Changeable() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEStructuralFeature_DefaultValueLiteral() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getEStructuralFeature_DefaultValue() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getEStructuralFeature_Unsettable() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getEStructuralFeature_Derived() {
        return (EAttribute)this.eStructuralFeatureEClass.getEStructuralFeatures().get(6);
    }

    public EReference getEStructuralFeature_EContainingClass() {
        return (EReference)this.eStructuralFeatureEClass.getEStructuralFeatures().get(7);
    }

    public EOperation getEStructuralFeature__GetFeatureID() {
        return (EOperation)this.eStructuralFeatureEClass.getEOperations().get(0);
    }

    public EOperation getEStructuralFeature__GetContainerClass() {
        return (EOperation)this.eStructuralFeatureEClass.getEOperations().get(1);
    }

    @Deprecated
    public EAttribute getEStructuralFeature_Unique() {
        return this.getETypedElement_Unique();
    }

    @Deprecated
    public EAttribute getEStructuralFeature_LowerBound() {
        return this.getETypedElement_LowerBound();
    }

    @Deprecated
    public EAttribute getEStructuralFeature_UpperBound() {
        return this.getETypedElement_UpperBound();
    }

    @Deprecated
    public EAttribute getEStructuralFeature_Many() {
        return this.getETypedElement_Many();
    }

    @Deprecated
    public EAttribute getEStructuralFeature_Required() {
        return this.getETypedElement_Required();
    }

    public EClass getEAttribute() {
        return this.eAttributeEClass;
    }

    public EAttribute getEAttribute_ID() {
        return (EAttribute)this.eAttributeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEAttribute_EAttributeType() {
        return (EReference)this.eAttributeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getEAnnotation() {
        return this.eAnnotationEClass;
    }

    public EAttribute getEAnnotation_Source() {
        return (EAttribute)this.eAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEAnnotation_Details() {
        return (EReference)this.eAnnotationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEAnnotation_EModelElement() {
        return (EReference)this.eAnnotationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEAnnotation_Contents() {
        return (EReference)this.eAnnotationEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEAnnotation_References() {
        return (EReference)this.eAnnotationEClass.getEStructuralFeatures().get(4);
    }

    public EClass getEReference() {
        return this.eReferenceEClass;
    }

    public EAttribute getEReference_Containment() {
        return (EAttribute)this.eReferenceEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEReference_Container() {
        return (EAttribute)this.eReferenceEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getEReference_ResolveProxies() {
        return (EAttribute)this.eReferenceEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEReference_EOpposite() {
        return (EReference)this.eReferenceEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEReference_EReferenceType() {
        return (EReference)this.eReferenceEClass.getEStructuralFeatures().get(4);
    }

    public EReference getEReference_EKeys() {
        return (EReference)this.eReferenceEClass.getEStructuralFeatures().get(5);
    }

    public EDataType getEEList() {
        return this.eeListEDataType;
    }

    public EDataType getEResource() {
        return this.eResourceEDataType;
    }

    public EDataType getEResourceSet() {
        return this.eResourceSetEDataType;
    }

    public EDataType getEBooleanObject() {
        return this.eBooleanObjectEDataType;
    }

    public EDataType getECharacterObject() {
        return this.eCharacterObjectEDataType;
    }

    public EDataType getEDate() {
        return this.eDateEDataType;
    }

    public EDataType getEDiagnosticChain() {
        return this.eDiagnosticChainEDataType;
    }

    public EDataType getEDoubleObject() {
        return this.eDoubleObjectEDataType;
    }

    public EDataType getEFloatObject() {
        return this.eFloatObjectEDataType;
    }

    public EDataType getEIntegerObject() {
        return this.eIntegerObjectEDataType;
    }

    public EClass getETypedElement() {
        return this.eTypedElementEClass;
    }

    public EAttribute getETypedElement_Ordered() {
        return (EAttribute)this.eTypedElementEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getETypedElement_Unique() {
        return (EAttribute)this.eTypedElementEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getETypedElement_LowerBound() {
        return (EAttribute)this.eTypedElementEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getETypedElement_UpperBound() {
        return (EAttribute)this.eTypedElementEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getETypedElement_Many() {
        return (EAttribute)this.eTypedElementEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getETypedElement_Required() {
        return (EAttribute)this.eTypedElementEClass.getEStructuralFeatures().get(5);
    }

    public EReference getETypedElement_EType() {
        return (EReference)this.eTypedElementEClass.getEStructuralFeatures().get(6);
    }

    public EReference getETypedElement_EGenericType() {
        return (EReference)this.eTypedElementEClass.getEStructuralFeatures().get(7);
    }

    public EClass getEStringToStringMapEntry() {
        return this.eStringToStringMapEntryEClass;
    }

    public EAttribute getEStringToStringMapEntry_Key() {
        return (EAttribute)this.eStringToStringMapEntryEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEStringToStringMapEntry_Value() {
        return (EAttribute)this.eStringToStringMapEntryEClass.getEStructuralFeatures().get(1);
    }

    public EClass getEGenericType() {
        return this.eGenericTypeEClass;
    }

    public EReference getEGenericType_EUpperBound() {
        return (EReference)this.eGenericTypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEGenericType_ETypeArguments() {
        return (EReference)this.eGenericTypeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEGenericType_ERawType() {
        return (EReference)this.eGenericTypeEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEGenericType_ELowerBound() {
        return (EReference)this.eGenericTypeEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEGenericType_ETypeParameter() {
        return (EReference)this.eGenericTypeEClass.getEStructuralFeatures().get(4);
    }

    public EReference getEGenericType_EClassifier() {
        return (EReference)this.eGenericTypeEClass.getEStructuralFeatures().get(5);
    }

    public EClass getETypeParameter() {
        return this.eTypeParameterEClass;
    }

    public EReference getETypeParameter_EBounds() {
        return (EReference)this.eTypeParameterEClass.getEStructuralFeatures().get(0);
    }

    public EDataType getEBigDecimal() {
        return this.eBigDecimalEDataType;
    }

    public EDataType getEBigInteger() {
        return this.eBigIntegerEDataType;
    }

    public EClass getEParameter() {
        return this.eParameterEClass;
    }

    public EReference getEParameter_EOperation() {
        return (EReference)this.eParameterEClass.getEStructuralFeatures().get(0);
    }

    public EClass getEObject() {
        return this.eObjectEClass;
    }

    public EOperation getEObject__EClass() {
        return (EOperation)this.eObjectEClass.getEOperations().get(0);
    }

    public EOperation getEObject__EIsProxy() {
        return (EOperation)this.eObjectEClass.getEOperations().get(1);
    }

    public EOperation getEObject__EResource() {
        return (EOperation)this.eObjectEClass.getEOperations().get(2);
    }

    public EOperation getEObject__EContainer() {
        return (EOperation)this.eObjectEClass.getEOperations().get(3);
    }

    public EOperation getEObject__EContainingFeature() {
        return (EOperation)this.eObjectEClass.getEOperations().get(4);
    }

    public EOperation getEObject__EContainmentFeature() {
        return (EOperation)this.eObjectEClass.getEOperations().get(5);
    }

    public EOperation getEObject__EContents() {
        return (EOperation)this.eObjectEClass.getEOperations().get(6);
    }

    public EOperation getEObject__EAllContents() {
        return (EOperation)this.eObjectEClass.getEOperations().get(7);
    }

    public EOperation getEObject__ECrossReferences() {
        return (EOperation)this.eObjectEClass.getEOperations().get(8);
    }

    public EOperation getEObject__EGet__EStructuralFeature() {
        return (EOperation)this.eObjectEClass.getEOperations().get(9);
    }

    public EOperation getEObject__EGet__EStructuralFeature_boolean() {
        return (EOperation)this.eObjectEClass.getEOperations().get(10);
    }

    public EOperation getEObject__ESet__EStructuralFeature_Object() {
        return (EOperation)this.eObjectEClass.getEOperations().get(11);
    }

    public EOperation getEObject__EIsSet__EStructuralFeature() {
        return (EOperation)this.eObjectEClass.getEOperations().get(12);
    }

    public EOperation getEObject__EUnset__EStructuralFeature() {
        return (EOperation)this.eObjectEClass.getEOperations().get(13);
    }

    public EOperation getEObject__EInvoke__EOperation_EList() {
        return (EOperation)this.eObjectEClass.getEOperations().get(14);
    }

    public EClass getEPackage() {
        return this.ePackageEClass;
    }

    public EAttribute getEPackage_NsURI() {
        return (EAttribute)this.ePackageEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEPackage_NsPrefix() {
        return (EAttribute)this.ePackageEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEPackage_EFactoryInstance() {
        return (EReference)this.ePackageEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEPackage_EClassifiers() {
        return (EReference)this.ePackageEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEPackage_ESubpackages() {
        return (EReference)this.ePackageEClass.getEStructuralFeatures().get(4);
    }

    public EReference getEPackage_ESuperPackage() {
        return (EReference)this.ePackageEClass.getEStructuralFeatures().get(5);
    }

    public EOperation getEPackage__GetEClassifier__String() {
        return (EOperation)this.ePackageEClass.getEOperations().get(0);
    }

    public EClass getEEnum() {
        return this.eEnumEClass;
    }

    public EReference getEEnum_ELiterals() {
        return (EReference)this.eEnumEClass.getEStructuralFeatures().get(0);
    }

    public EOperation getEEnum__GetEEnumLiteral__String() {
        return (EOperation)this.eEnumEClass.getEOperations().get(0);
    }

    public EOperation getEEnum__GetEEnumLiteral__int() {
        return (EOperation)this.eEnumEClass.getEOperations().get(1);
    }

    public EOperation getEEnum__GetEEnumLiteralByLiteral__String() {
        return (EOperation)this.eEnumEClass.getEOperations().get(2);
    }

    public EClass getEEnumLiteral() {
        return this.eEnumLiteralEClass;
    }

    public EAttribute getEEnumLiteral_Value() {
        return (EAttribute)this.eEnumLiteralEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEEnumLiteral_Instance() {
        return (EAttribute)this.eEnumLiteralEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getEEnumLiteral_Literal() {
        return (EAttribute)this.eEnumLiteralEClass.getEStructuralFeatures().get(2);
    }

    public EReference getEEnumLiteral_EEnum() {
        return (EReference)this.eEnumLiteralEClass.getEStructuralFeatures().get(3);
    }

    public EDataType getEBoolean() {
        return this.eBooleanEDataType;
    }

    public EDataType getEByteObject() {
        return this.eByteObjectEDataType;
    }

    public EDataType getEJavaClass() {
        return this.eJavaClassEDataType;
    }

    public EDataType getEJavaObject() {
        return this.eJavaObjectEDataType;
    }

    public EDataType getELongObject() {
        return this.eLongObjectEDataType;
    }

    public EDataType getEMap() {
        return this.eMapEDataType;
    }

    public EDataType getEShortObject() {
        return this.eShortObjectEDataType;
    }

    public EDataType getEString() {
        return this.eStringEDataType;
    }

    public EDataType getEInt() {
        return this.eIntEDataType;
    }

    public EDataType getEFloat() {
        return this.eFloatEDataType;
    }

    public EDataType getELong() {
        return this.eLongEDataType;
    }

    public EDataType getEDouble() {
        return this.eDoubleEDataType;
    }

    public EDataType getEShort() {
        return this.eShortEDataType;
    }

    public EDataType getETreeIterator() {
        return this.eTreeIteratorEDataType;
    }

    public EDataType getEInvocationTargetException() {
        return this.eInvocationTargetExceptionEDataType;
    }

    public EDataType getEFeatureMapEntry() {
        return this.eFeatureMapEntryEDataType;
    }

    public EDataType getEEnumerator() {
        return this.eEnumeratorEDataType;
    }

    public EDataType getEFeatureMap() {
        return this.eFeatureMapEDataType;
    }

    public EDataType getEChar() {
        return this.eCharEDataType;
    }

    public EDataType getEByte() {
        return this.eByteEDataType;
    }

    public EDataType getEByteArray() {
        return this.eByteArrayEDataType;
    }

    public EcoreFactory getEcoreFactory() {
        return (EcoreFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.eAttributeEClass = this.createEClass(0);
        this.createEAttribute(this.eAttributeEClass, 18);
        this.createEReference(this.eAttributeEClass, 19);
        this.eAnnotationEClass = this.createEClass(1);
        this.createEAttribute(this.eAnnotationEClass, 1);
        this.createEReference(this.eAnnotationEClass, 2);
        this.createEReference(this.eAnnotationEClass, 3);
        this.createEReference(this.eAnnotationEClass, 4);
        this.createEReference(this.eAnnotationEClass, 5);
        this.eClassEClass = this.createEClass(2);
        this.createEAttribute(this.eClassEClass, 8);
        this.createEAttribute(this.eClassEClass, 9);
        this.createEReference(this.eClassEClass, 10);
        this.createEReference(this.eClassEClass, 11);
        this.createEReference(this.eClassEClass, 12);
        this.createEReference(this.eClassEClass, 13);
        this.createEReference(this.eClassEClass, 14);
        this.createEReference(this.eClassEClass, 15);
        this.createEReference(this.eClassEClass, 16);
        this.createEReference(this.eClassEClass, 17);
        this.createEReference(this.eClassEClass, 18);
        this.createEReference(this.eClassEClass, 19);
        this.createEReference(this.eClassEClass, 20);
        this.createEReference(this.eClassEClass, 21);
        this.createEReference(this.eClassEClass, 22);
        this.createEReference(this.eClassEClass, 23);
        this.createEOperation(this.eClassEClass, 3);
        this.createEOperation(this.eClassEClass, 4);
        this.createEOperation(this.eClassEClass, 5);
        this.createEOperation(this.eClassEClass, 6);
        this.createEOperation(this.eClassEClass, 7);
        this.createEOperation(this.eClassEClass, 8);
        this.createEOperation(this.eClassEClass, 9);
        this.createEOperation(this.eClassEClass, 10);
        this.createEOperation(this.eClassEClass, 11);
        this.eClassifierEClass = this.createEClass(3);
        this.createEAttribute(this.eClassifierEClass, 2);
        this.createEAttribute(this.eClassifierEClass, 3);
        this.createEAttribute(this.eClassifierEClass, 4);
        this.createEAttribute(this.eClassifierEClass, 5);
        this.createEReference(this.eClassifierEClass, 6);
        this.createEReference(this.eClassifierEClass, 7);
        this.createEOperation(this.eClassifierEClass, 1);
        this.createEOperation(this.eClassifierEClass, 2);
        this.eDataTypeEClass = this.createEClass(4);
        this.createEAttribute(this.eDataTypeEClass, 8);
        this.eEnumEClass = this.createEClass(5);
        this.createEReference(this.eEnumEClass, 9);
        this.createEOperation(this.eEnumEClass, 3);
        this.createEOperation(this.eEnumEClass, 4);
        this.createEOperation(this.eEnumEClass, 5);
        this.eEnumLiteralEClass = this.createEClass(6);
        this.createEAttribute(this.eEnumLiteralEClass, 2);
        this.createEAttribute(this.eEnumLiteralEClass, 3);
        this.createEAttribute(this.eEnumLiteralEClass, 4);
        this.createEReference(this.eEnumLiteralEClass, 5);
        this.eFactoryEClass = this.createEClass(7);
        this.createEReference(this.eFactoryEClass, 1);
        this.createEOperation(this.eFactoryEClass, 1);
        this.createEOperation(this.eFactoryEClass, 2);
        this.createEOperation(this.eFactoryEClass, 3);
        this.eModelElementEClass = this.createEClass(8);
        this.createEReference(this.eModelElementEClass, 0);
        this.createEOperation(this.eModelElementEClass, 0);
        this.eNamedElementEClass = this.createEClass(9);
        this.createEAttribute(this.eNamedElementEClass, 1);
        this.eObjectEClass = this.createEClass(10);
        this.createEOperation(this.eObjectEClass, 0);
        this.createEOperation(this.eObjectEClass, 1);
        this.createEOperation(this.eObjectEClass, 2);
        this.createEOperation(this.eObjectEClass, 3);
        this.createEOperation(this.eObjectEClass, 4);
        this.createEOperation(this.eObjectEClass, 5);
        this.createEOperation(this.eObjectEClass, 6);
        this.createEOperation(this.eObjectEClass, 7);
        this.createEOperation(this.eObjectEClass, 8);
        this.createEOperation(this.eObjectEClass, 9);
        this.createEOperation(this.eObjectEClass, 10);
        this.createEOperation(this.eObjectEClass, 11);
        this.createEOperation(this.eObjectEClass, 12);
        this.createEOperation(this.eObjectEClass, 13);
        this.createEOperation(this.eObjectEClass, 14);
        this.eOperationEClass = this.createEClass(11);
        this.createEReference(this.eOperationEClass, 10);
        this.createEReference(this.eOperationEClass, 11);
        this.createEReference(this.eOperationEClass, 12);
        this.createEReference(this.eOperationEClass, 13);
        this.createEReference(this.eOperationEClass, 14);
        this.createEOperation(this.eOperationEClass, 1);
        this.createEOperation(this.eOperationEClass, 2);
        this.ePackageEClass = this.createEClass(12);
        this.createEAttribute(this.ePackageEClass, 2);
        this.createEAttribute(this.ePackageEClass, 3);
        this.createEReference(this.ePackageEClass, 4);
        this.createEReference(this.ePackageEClass, 5);
        this.createEReference(this.ePackageEClass, 6);
        this.createEReference(this.ePackageEClass, 7);
        this.createEOperation(this.ePackageEClass, 1);
        this.eParameterEClass = this.createEClass(13);
        this.createEReference(this.eParameterEClass, 10);
        this.eReferenceEClass = this.createEClass(14);
        this.createEAttribute(this.eReferenceEClass, 18);
        this.createEAttribute(this.eReferenceEClass, 19);
        this.createEAttribute(this.eReferenceEClass, 20);
        this.createEReference(this.eReferenceEClass, 21);
        this.createEReference(this.eReferenceEClass, 22);
        this.createEReference(this.eReferenceEClass, 23);
        this.eStructuralFeatureEClass = this.createEClass(15);
        this.createEAttribute(this.eStructuralFeatureEClass, 10);
        this.createEAttribute(this.eStructuralFeatureEClass, 11);
        this.createEAttribute(this.eStructuralFeatureEClass, 12);
        this.createEAttribute(this.eStructuralFeatureEClass, 13);
        this.createEAttribute(this.eStructuralFeatureEClass, 14);
        this.createEAttribute(this.eStructuralFeatureEClass, 15);
        this.createEAttribute(this.eStructuralFeatureEClass, 16);
        this.createEReference(this.eStructuralFeatureEClass, 17);
        this.createEOperation(this.eStructuralFeatureEClass, 1);
        this.createEOperation(this.eStructuralFeatureEClass, 2);
        this.eTypedElementEClass = this.createEClass(16);
        this.createEAttribute(this.eTypedElementEClass, 2);
        this.createEAttribute(this.eTypedElementEClass, 3);
        this.createEAttribute(this.eTypedElementEClass, 4);
        this.createEAttribute(this.eTypedElementEClass, 5);
        this.createEAttribute(this.eTypedElementEClass, 6);
        this.createEAttribute(this.eTypedElementEClass, 7);
        this.createEReference(this.eTypedElementEClass, 8);
        this.createEReference(this.eTypedElementEClass, 9);
        this.eStringToStringMapEntryEClass = this.createEClass(17);
        this.createEAttribute(this.eStringToStringMapEntryEClass, 0);
        this.createEAttribute(this.eStringToStringMapEntryEClass, 1);
        this.eGenericTypeEClass = this.createEClass(18);
        this.createEReference(this.eGenericTypeEClass, 0);
        this.createEReference(this.eGenericTypeEClass, 1);
        this.createEReference(this.eGenericTypeEClass, 2);
        this.createEReference(this.eGenericTypeEClass, 3);
        this.createEReference(this.eGenericTypeEClass, 4);
        this.createEReference(this.eGenericTypeEClass, 5);
        this.eTypeParameterEClass = this.createEClass(19);
        this.createEReference(this.eTypeParameterEClass, 2);
        this.eBigDecimalEDataType = this.createEDataType(20);
        this.eBigIntegerEDataType = this.createEDataType(21);
        this.eBooleanEDataType = this.createEDataType(22);
        this.eBooleanObjectEDataType = this.createEDataType(23);
        this.eByteEDataType = this.createEDataType(24);
        this.eByteArrayEDataType = this.createEDataType(25);
        this.eByteObjectEDataType = this.createEDataType(26);
        this.eCharEDataType = this.createEDataType(27);
        this.eCharacterObjectEDataType = this.createEDataType(28);
        this.eDateEDataType = this.createEDataType(29);
        this.eDiagnosticChainEDataType = this.createEDataType(30);
        this.eDoubleEDataType = this.createEDataType(31);
        this.eDoubleObjectEDataType = this.createEDataType(32);
        this.eeListEDataType = this.createEDataType(33);
        this.eEnumeratorEDataType = this.createEDataType(34);
        this.eFeatureMapEDataType = this.createEDataType(35);
        this.eFeatureMapEntryEDataType = this.createEDataType(36);
        this.eFloatEDataType = this.createEDataType(37);
        this.eFloatObjectEDataType = this.createEDataType(38);
        this.eIntEDataType = this.createEDataType(39);
        this.eIntegerObjectEDataType = this.createEDataType(40);
        this.eJavaClassEDataType = this.createEDataType(41);
        this.eJavaObjectEDataType = this.createEDataType(42);
        this.eLongEDataType = this.createEDataType(43);
        this.eLongObjectEDataType = this.createEDataType(44);
        this.eMapEDataType = this.createEDataType(45);
        this.eResourceEDataType = this.createEDataType(46);
        this.eResourceSetEDataType = this.createEDataType(47);
        this.eShortEDataType = this.createEDataType(48);
        this.eShortObjectEDataType = this.createEDataType(49);
        this.eStringEDataType = this.createEDataType(50);
        this.eTreeIteratorEDataType = this.createEDataType(51);
        this.eInvocationTargetExceptionEDataType = this.createEDataType(52);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ecore");
        this.setNsPrefix("ecore");
        this.setNsURI("http://www.eclipse.org/emf/2002/Ecore");
        this.addETypeParameter(this.eeListEDataType, "E");
        this.addETypeParameter(this.eJavaClassEDataType, "T");
        this.addETypeParameter(this.eMapEDataType, "K");
        this.addETypeParameter(this.eMapEDataType, "V");
        this.addETypeParameter(this.eTreeIteratorEDataType, "E");
        this.eAttributeEClass.getESuperTypes().add((Object)this.getEStructuralFeature());
        this.eAnnotationEClass.getESuperTypes().add((Object)this.getEModelElement());
        this.eClassEClass.getESuperTypes().add((Object)this.getEClassifier());
        this.eClassifierEClass.getESuperTypes().add((Object)this.getENamedElement());
        this.eDataTypeEClass.getESuperTypes().add((Object)this.getEClassifier());
        this.eEnumEClass.getESuperTypes().add((Object)this.getEDataType());
        this.eEnumLiteralEClass.getESuperTypes().add((Object)this.getENamedElement());
        this.eFactoryEClass.getESuperTypes().add((Object)this.getEModelElement());
        this.eNamedElementEClass.getESuperTypes().add((Object)this.getEModelElement());
        this.eOperationEClass.getESuperTypes().add((Object)this.getETypedElement());
        this.ePackageEClass.getESuperTypes().add((Object)this.getENamedElement());
        this.eParameterEClass.getESuperTypes().add((Object)this.getETypedElement());
        this.eReferenceEClass.getESuperTypes().add((Object)this.getEStructuralFeature());
        this.eStructuralFeatureEClass.getESuperTypes().add((Object)this.getETypedElement());
        this.eTypedElementEClass.getESuperTypes().add((Object)this.getENamedElement());
        this.eTypeParameterEClass.getESuperTypes().add((Object)this.getENamedElement());
        this.initEClass(this.eAttributeEClass, EAttribute.class, "EAttribute", false, false, true);
        this.initEAttribute(this.getEAttribute_ID(), this.getEBoolean(), "iD", null, 0, 1, EAttribute.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEAttribute_EAttributeType(), this.getEDataType(), null, "eAttributeType", null, 1, 1, EAttribute.class, true, true, false, false, true, false, true, true, true);
        this.initEClass(this.eAnnotationEClass, EAnnotation.class, "EAnnotation", false, false, true);
        this.initEAttribute(this.getEAnnotation_Source(), this.getEString(), "source", null, 0, 1, EAnnotation.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEAnnotation_Details(), this.getEStringToStringMapEntry(), null, "details", null, 0, -1, EAnnotation.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEAnnotation_EModelElement(), this.getEModelElement(), this.getEModelElement_EAnnotations(), "eModelElement", null, 0, 1, EAnnotation.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getEAnnotation_Contents(), this.getEObject(), null, "contents", null, 0, -1, EAnnotation.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEAnnotation_References(), this.getEObject(), null, "references", null, 0, -1, EAnnotation.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.eClassEClass, EClass.class, "EClass", false, false, true);
        this.initEAttribute(this.getEClass_Abstract(), this.getEBoolean(), "abstract", null, 0, 1, EClass.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEClass_Interface(), this.getEBoolean(), "interface", null, 0, 1, EClass.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEClass_ESuperTypes(), this.getEClass(), null, "eSuperTypes", null, 0, -1, EClass.class, false, false, true, false, true, true, true, false, true);
        this.initEReference(this.getEClass_EOperations(), this.getEOperation(), this.getEOperation_EContainingClass(), "eOperations", null, 0, -1, EClass.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEClass_EAllAttributes(), this.getEAttribute(), null, "eAllAttributes", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EAllReferences(), this.getEReference(), null, "eAllReferences", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EReferences(), this.getEReference(), null, "eReferences", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EAttributes(), this.getEAttribute(), null, "eAttributes", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EAllContainments(), this.getEReference(), null, "eAllContainments", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EAllOperations(), this.getEOperation(), null, "eAllOperations", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EAllStructuralFeatures(), this.getEStructuralFeature(), null, "eAllStructuralFeatures", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EAllSuperTypes(), this.getEClass(), null, "eAllSuperTypes", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEClass_EIDAttribute(), this.getEAttribute(), null, "eIDAttribute", null, 0, 1, EClass.class, true, true, false, false, false, false, true, true, true);
        this.initEReference(this.getEClass_EStructuralFeatures(), this.getEStructuralFeature(), this.getEStructuralFeature_EContainingClass(), "eStructuralFeatures", null, 0, -1, EClass.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEClass_EGenericSuperTypes(), this.getEGenericType(), null, "eGenericSuperTypes", null, 0, -1, EClass.class, false, false, true, true, false, true, true, false, true);
        this.initEReference(this.getEClass_EAllGenericSuperTypes(), this.getEGenericType(), null, "eAllGenericSuperTypes", null, 0, -1, EClass.class, true, true, false, false, true, false, true, true, true);
        EOperation op = this.initEOperation(this.getEClass__IsSuperTypeOf__EClass(), this.getEBoolean(), "isSuperTypeOf", 0, 1, true, true);
        this.addEParameter(op, this.getEClass(), "someClass", 0, 1, true, true);
        this.initEOperation(this.getEClass__GetFeatureCount(), this.getEInt(), "getFeatureCount", 0, 1, true, true);
        op = this.initEOperation(this.getEClass__GetEStructuralFeature__int(), this.getEStructuralFeature(), "getEStructuralFeature", 0, 1, true, true);
        this.addEParameter(op, this.getEInt(), "featureID", 0, 1, true, true);
        op = this.initEOperation(this.getEClass__GetFeatureID__EStructuralFeature(), this.getEInt(), "getFeatureID", 0, 1, true, true);
        this.addEParameter(op, this.getEStructuralFeature(), "feature", 0, 1, true, true);
        op = this.initEOperation(this.getEClass__GetEStructuralFeature__String(), this.getEStructuralFeature(), "getEStructuralFeature", 0, 1, true, true);
        this.addEParameter(op, this.getEString(), "featureName", 0, 1, true, true);
        this.initEOperation(this.getEClass__GetOperationCount(), this.getEInt(), "getOperationCount", 0, 1, true, true);
        op = this.initEOperation(this.getEClass__GetEOperation__int(), this.getEOperation(), "getEOperation", 0, 1, true, true);
        this.addEParameter(op, this.getEInt(), "operationID", 0, 1, true, true);
        op = this.initEOperation(this.getEClass__GetOperationID__EOperation(), this.getEInt(), "getOperationID", 0, 1, true, true);
        this.addEParameter(op, this.getEOperation(), "operation", 0, 1, true, true);
        op = this.initEOperation(this.getEClass__GetOverride__EOperation(), this.getEOperation(), "getOverride", 0, 1, true, true);
        this.addEParameter(op, this.getEOperation(), "operation", 0, 1, true, true);
        this.initEClass(this.eClassifierEClass, EClassifier.class, "EClassifier", true, false, true);
        this.initEAttribute(this.getEClassifier_InstanceClassName(), this.getEString(), "instanceClassName", null, 0, 1, EClassifier.class, false, true, true, true, false, true, false, true);
        EGenericType g1 = this.createEGenericType(this.getEJavaClass());
        EGenericType g2 = this.createEGenericType();
        g1.getETypeArguments().add((Object)g2);
        this.initEAttribute(this.getEClassifier_InstanceClass(), g1, "instanceClass", null, 0, 1, EClassifier.class, true, true, false, false, false, true, true, true);
        this.initEAttribute(this.getEClassifier_DefaultValue(), this.getEJavaObject(), "defaultValue", null, 0, 1, EClassifier.class, true, true, false, false, false, true, true, true);
        this.initEAttribute(this.getEClassifier_InstanceTypeName(), this.getEString(), "instanceTypeName", null, 0, 1, EClassifier.class, false, true, true, true, false, true, false, true);
        this.initEReference(this.getEClassifier_EPackage(), this.getEPackage(), this.getEPackage_EClassifiers(), "ePackage", null, 0, 1, EClassifier.class, true, false, false, false, true, false, true, false, true);
        this.initEReference(this.getEClassifier_ETypeParameters(), this.getETypeParameter(), null, "eTypeParameters", null, 0, -1, EClassifier.class, false, false, true, true, true, false, true, false, true);
        op = this.initEOperation(this.getEClassifier__IsInstance__Object(), this.getEBoolean(), "isInstance", 0, 1, true, true);
        this.addEParameter(op, this.getEJavaObject(), "object", 0, 1, true, true);
        this.initEOperation(this.getEClassifier__GetClassifierID(), this.getEInt(), "getClassifierID", 0, 1, true, true);
        this.initEClass(this.eDataTypeEClass, EDataType.class, "EDataType", false, false, true);
        this.initEAttribute(this.getEDataType_Serializable(), this.getEBoolean(), "serializable", "true", 0, 1, EDataType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.eEnumEClass, EEnum.class, "EEnum", false, false, true);
        this.initEReference(this.getEEnum_ELiterals(), this.getEEnumLiteral(), this.getEEnumLiteral_EEnum(), "eLiterals", null, 0, -1, EEnum.class, false, false, true, true, false, false, true, false, true);
        op = this.initEOperation(this.getEEnum__GetEEnumLiteral__String(), this.getEEnumLiteral(), "getEEnumLiteral", 0, 1, true, true);
        this.addEParameter(op, this.getEString(), "name", 0, 1, true, true);
        op = this.initEOperation(this.getEEnum__GetEEnumLiteral__int(), this.getEEnumLiteral(), "getEEnumLiteral", 0, 1, true, true);
        this.addEParameter(op, this.getEInt(), "value", 0, 1, true, true);
        op = this.initEOperation(this.getEEnum__GetEEnumLiteralByLiteral__String(), this.getEEnumLiteral(), "getEEnumLiteralByLiteral", 0, 1, true, true);
        this.addEParameter(op, this.getEString(), "literal", 0, 1, true, true);
        this.initEClass(this.eEnumLiteralEClass, EEnumLiteral.class, "EEnumLiteral", false, false, true);
        this.initEAttribute(this.getEEnumLiteral_Value(), this.getEInt(), "value", null, 0, 1, EEnumLiteral.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEEnumLiteral_Instance(), this.getEEnumerator(), "instance", null, 0, 1, EEnumLiteral.class, true, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEEnumLiteral_Literal(), this.getEString(), "literal", null, 0, 1, EEnumLiteral.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEEnumLiteral_EEnum(), this.getEEnum(), this.getEEnum_ELiterals(), "eEnum", null, 0, 1, EEnumLiteral.class, true, false, false, false, false, false, true, false, true);
        this.initEClass(this.eFactoryEClass, EFactory.class, "EFactory", false, false, true);
        this.initEReference(this.getEFactory_EPackage(), this.getEPackage(), this.getEPackage_EFactoryInstance(), "ePackage", null, 1, 1, EFactory.class, true, false, true, false, false, false, true, false, true);
        op = this.initEOperation(this.getEFactory__Create__EClass(), this.getEObject(), "create", 0, 1, true, true);
        this.addEParameter(op, this.getEClass(), "eClass", 0, 1, true, true);
        op = this.initEOperation(this.getEFactory__CreateFromString__EDataType_String(), this.getEJavaObject(), "createFromString", 0, 1, true, true);
        this.addEParameter(op, this.getEDataType(), "eDataType", 0, 1, true, true);
        this.addEParameter(op, this.getEString(), "literalValue", 0, 1, true, true);
        op = this.initEOperation(this.getEFactory__ConvertToString__EDataType_Object(), this.getEString(), "convertToString", 0, 1, true, true);
        this.addEParameter(op, this.getEDataType(), "eDataType", 0, 1, true, true);
        this.addEParameter(op, this.getEJavaObject(), "instanceValue", 0, 1, true, true);
        this.initEClass(this.eModelElementEClass, EModelElement.class, "EModelElement", true, false, true);
        this.initEReference(this.getEModelElement_EAnnotations(), this.getEAnnotation(), this.getEAnnotation_EModelElement(), "eAnnotations", null, 0, -1, EModelElement.class, false, false, true, true, false, false, true, false, true);
        op = this.initEOperation(this.getEModelElement__GetEAnnotation__String(), this.getEAnnotation(), "getEAnnotation", 0, 1, true, true);
        this.addEParameter(op, this.getEString(), "source", 0, 1, true, true);
        this.initEClass(this.eNamedElementEClass, ENamedElement.class, "ENamedElement", true, false, true);
        this.initEAttribute(this.getENamedElement_Name(), this.getEString(), "name", null, 0, 1, ENamedElement.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.eObjectEClass, EObject.class, "EObject", false, false, true);
        this.initEOperation(this.getEObject__EClass(), this.getEClass(), "eClass", 0, 1, true, true);
        this.initEOperation(this.getEObject__EIsProxy(), this.getEBoolean(), "eIsProxy", 0, 1, true, true);
        this.initEOperation(this.getEObject__EResource(), this.getEResource(), "eResource", 0, 1, true, true);
        this.initEOperation(this.getEObject__EContainer(), this.getEObject(), "eContainer", 0, 1, true, true);
        this.initEOperation(this.getEObject__EContainingFeature(), this.getEStructuralFeature(), "eContainingFeature", 0, 1, true, true);
        this.initEOperation(this.getEObject__EContainmentFeature(), this.getEReference(), "eContainmentFeature", 0, 1, true, true);
        op = this.initEOperation(this.getEObject__EContents(), null, "eContents", 0, 1, true, true);
        g1 = this.createEGenericType(this.getEEList());
        g2 = this.createEGenericType(this.getEObject());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.initEOperation(this.getEObject__EAllContents(), null, "eAllContents", 0, 1, true, true);
        g1 = this.createEGenericType(this.getETreeIterator());
        g2 = this.createEGenericType(this.getEObject());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.initEOperation(this.getEObject__ECrossReferences(), null, "eCrossReferences", 0, 1, true, true);
        g1 = this.createEGenericType(this.getEEList());
        g2 = this.createEGenericType(this.getEObject());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.initEOperation(this.getEObject__EGet__EStructuralFeature(), this.getEJavaObject(), "eGet", 0, 1, true, true);
        this.addEParameter(op, this.getEStructuralFeature(), "feature", 0, 1, true, true);
        op = this.initEOperation(this.getEObject__EGet__EStructuralFeature_boolean(), this.getEJavaObject(), "eGet", 0, 1, true, true);
        this.addEParameter(op, this.getEStructuralFeature(), "feature", 0, 1, true, true);
        this.addEParameter(op, this.getEBoolean(), "resolve", 0, 1, true, true);
        op = this.initEOperation(this.getEObject__ESet__EStructuralFeature_Object(), null, "eSet", 0, 1, true, true);
        this.addEParameter(op, this.getEStructuralFeature(), "feature", 0, 1, true, true);
        this.addEParameter(op, this.getEJavaObject(), "newValue", 0, 1, true, true);
        op = this.initEOperation(this.getEObject__EIsSet__EStructuralFeature(), this.getEBoolean(), "eIsSet", 0, 1, true, true);
        this.addEParameter(op, this.getEStructuralFeature(), "feature", 0, 1, true, true);
        op = this.initEOperation(this.getEObject__EUnset__EStructuralFeature(), null, "eUnset", 0, 1, true, true);
        this.addEParameter(op, this.getEStructuralFeature(), "feature", 0, 1, true, true);
        op = this.initEOperation(this.getEObject__EInvoke__EOperation_EList(), this.getEJavaObject(), "eInvoke", 0, 1, true, true);
        this.addEParameter(op, this.getEOperation(), "operation", 0, 1, true, true);
        g1 = this.createEGenericType(this.getEEList());
        g2 = this.createEGenericType();
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "arguments", 0, 1, true, true);
        this.addEException(op, this.getEInvocationTargetException());
        this.initEClass(this.eOperationEClass, EOperation.class, "EOperation", false, false, true);
        this.initEReference(this.getEOperation_EContainingClass(), this.getEClass(), this.getEClass_EOperations(), "eContainingClass", null, 0, 1, EOperation.class, true, false, false, false, false, false, true, false, true);
        this.initEReference(this.getEOperation_ETypeParameters(), this.getETypeParameter(), null, "eTypeParameters", null, 0, -1, EOperation.class, false, false, true, true, true, false, true, false, true);
        this.initEReference(this.getEOperation_EParameters(), this.getEParameter(), this.getEParameter_EOperation(), "eParameters", null, 0, -1, EOperation.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEOperation_EExceptions(), this.getEClassifier(), null, "eExceptions", null, 0, -1, EOperation.class, false, false, true, false, true, true, true, false, true);
        this.initEReference(this.getEOperation_EGenericExceptions(), this.getEGenericType(), null, "eGenericExceptions", null, 0, -1, EOperation.class, false, false, true, true, false, true, true, false, true);
        this.initEOperation(this.getEOperation__GetOperationID(), this.getEInt(), "getOperationID", 0, 1, true, true);
        op = this.initEOperation(this.getEOperation__IsOverrideOf__EOperation(), this.getEBoolean(), "isOverrideOf", 0, 1, true, true);
        this.addEParameter(op, this.getEOperation(), "someOperation", 0, 1, true, true);
        this.initEClass(this.ePackageEClass, EPackage.class, "EPackage", false, false, true);
        this.initEAttribute(this.getEPackage_NsURI(), this.getEString(), "nsURI", null, 0, 1, EPackage.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEPackage_NsPrefix(), this.getEString(), "nsPrefix", null, 0, 1, EPackage.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEPackage_EFactoryInstance(), this.getEFactory(), this.getEFactory_EPackage(), "eFactoryInstance", null, 1, 1, EPackage.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getEPackage_EClassifiers(), this.getEClassifier(), this.getEClassifier_EPackage(), "eClassifiers", null, 0, -1, EPackage.class, false, false, true, true, true, false, true, false, true);
        this.initEReference(this.getEPackage_ESubpackages(), this.getEPackage(), this.getEPackage_ESuperPackage(), "eSubpackages", null, 0, -1, EPackage.class, false, false, true, true, true, false, true, false, true);
        this.initEReference(this.getEPackage_ESuperPackage(), this.getEPackage(), this.getEPackage_ESubpackages(), "eSuperPackage", null, 0, 1, EPackage.class, true, false, false, false, true, false, true, false, true);
        op = this.initEOperation(this.getEPackage__GetEClassifier__String(), this.getEClassifier(), "getEClassifier", 0, 1, true, true);
        this.addEParameter(op, this.getEString(), "name", 0, 1, true, true);
        this.initEClass(this.eParameterEClass, EParameter.class, "EParameter", false, false, true);
        this.initEReference(this.getEParameter_EOperation(), this.getEOperation(), this.getEOperation_EParameters(), "eOperation", null, 0, 1, EParameter.class, true, false, false, false, false, false, true, false, true);
        this.initEClass(this.eReferenceEClass, EReference.class, "EReference", false, false, true);
        this.initEAttribute(this.getEReference_Containment(), this.getEBoolean(), "containment", null, 0, 1, EReference.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEReference_Container(), this.getEBoolean(), "container", null, 0, 1, EReference.class, true, true, false, false, false, true, true, true);
        this.initEAttribute(this.getEReference_ResolveProxies(), this.getEBoolean(), "resolveProxies", "true", 0, 1, EReference.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEReference_EOpposite(), this.getEReference(), null, "eOpposite", null, 0, 1, EReference.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEReference_EReferenceType(), this.getEClass(), null, "eReferenceType", null, 1, 1, EReference.class, true, true, false, false, true, false, true, true, true);
        this.initEReference(this.getEReference_EKeys(), this.getEAttribute(), null, "eKeys", null, 0, -1, EReference.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.eStructuralFeatureEClass, EStructuralFeature.class, "EStructuralFeature", true, false, true);
        this.initEAttribute(this.getEStructuralFeature_Changeable(), this.getEBoolean(), "changeable", "true", 0, 1, EStructuralFeature.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEStructuralFeature_Volatile(), this.getEBoolean(), "volatile", null, 0, 1, EStructuralFeature.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEStructuralFeature_Transient(), this.getEBoolean(), "transient", null, 0, 1, EStructuralFeature.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEStructuralFeature_DefaultValueLiteral(), this.getEString(), "defaultValueLiteral", null, 0, 1, EStructuralFeature.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEStructuralFeature_DefaultValue(), this.getEJavaObject(), "defaultValue", null, 0, 1, EStructuralFeature.class, true, true, false, false, false, true, true, true);
        this.initEAttribute(this.getEStructuralFeature_Unsettable(), this.getEBoolean(), "unsettable", null, 0, 1, EStructuralFeature.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEStructuralFeature_Derived(), this.getEBoolean(), "derived", null, 0, 1, EStructuralFeature.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getEStructuralFeature_EContainingClass(), this.getEClass(), this.getEClass_EStructuralFeatures(), "eContainingClass", null, 0, 1, EStructuralFeature.class, true, false, false, false, false, false, true, false, true);
        this.initEOperation(this.getEStructuralFeature__GetFeatureID(), this.getEInt(), "getFeatureID", 0, 1, true, true);
        op = this.initEOperation(this.getEStructuralFeature__GetContainerClass(), null, "getContainerClass", 0, 1, true, true);
        g1 = this.createEGenericType(this.getEJavaClass());
        g2 = this.createEGenericType();
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.initEClass(this.eTypedElementEClass, ETypedElement.class, "ETypedElement", true, false, true);
        this.initEAttribute(this.getETypedElement_Ordered(), this.getEBoolean(), "ordered", "true", 0, 1, ETypedElement.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getETypedElement_Unique(), this.getEBoolean(), "unique", "true", 0, 1, ETypedElement.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getETypedElement_LowerBound(), this.getEInt(), "lowerBound", null, 0, 1, ETypedElement.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getETypedElement_UpperBound(), this.getEInt(), "upperBound", "1", 0, 1, ETypedElement.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getETypedElement_Many(), this.getEBoolean(), "many", null, 0, 1, ETypedElement.class, true, true, false, false, false, true, true, true);
        this.initEAttribute(this.getETypedElement_Required(), this.getEBoolean(), "required", null, 0, 1, ETypedElement.class, true, true, false, false, false, true, true, true);
        this.initEReference(this.getETypedElement_EType(), this.getEClassifier(), null, "eType", null, 0, 1, ETypedElement.class, false, true, true, false, true, true, true, false, true);
        this.initEReference(this.getETypedElement_EGenericType(), this.getEGenericType(), null, "eGenericType", null, 0, 1, ETypedElement.class, false, true, true, true, false, true, true, false, true);
        this.initEClass(this.eStringToStringMapEntryEClass, Map.Entry.class, "EStringToStringMapEntry", false, false, false);
        this.initEAttribute(this.getEStringToStringMapEntry_Key(), this.getEString(), "key", null, 0, 1, Map.Entry.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEStringToStringMapEntry_Value(), this.getEString(), "value", null, 0, 1, Map.Entry.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.eGenericTypeEClass, EGenericType.class, "EGenericType", false, false, true);
        this.initEReference(this.getEGenericType_EUpperBound(), this.getEGenericType(), null, "eUpperBound", null, 0, 1, EGenericType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEGenericType_ETypeArguments(), this.getEGenericType(), null, "eTypeArguments", null, 0, -1, EGenericType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEGenericType_ERawType(), this.getEClassifier(), null, "eRawType", null, 1, 1, EGenericType.class, true, false, false, false, true, false, true, true, true);
        this.initEReference(this.getEGenericType_ELowerBound(), this.getEGenericType(), null, "eLowerBound", null, 0, 1, EGenericType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getEGenericType_ETypeParameter(), this.getETypeParameter(), null, "eTypeParameter", null, 0, 1, EGenericType.class, false, false, true, false, false, false, true, false, true);
        this.initEReference(this.getEGenericType_EClassifier(), this.getEClassifier(), null, "eClassifier", null, 0, 1, EGenericType.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.eTypeParameterEClass, ETypeParameter.class, "ETypeParameter", false, false, true);
        this.initEReference(this.getETypeParameter_EBounds(), this.getEGenericType(), null, "eBounds", null, 0, -1, ETypeParameter.class, false, false, true, true, false, false, true, false, true);
        this.initEDataType(this.eBigDecimalEDataType, BigDecimal.class, "EBigDecimal", true, false);
        this.initEDataType(this.eBigIntegerEDataType, BigInteger.class, "EBigInteger", true, false);
        this.initEDataType(this.eBooleanEDataType, Boolean.TYPE, "EBoolean", true, false);
        this.initEDataType(this.eBooleanObjectEDataType, Boolean.class, "EBooleanObject", true, false);
        this.initEDataType(this.eByteEDataType, Byte.TYPE, "EByte", true, false);
        this.initEDataType(this.eByteArrayEDataType, byte[].class, "EByteArray", true, false);
        this.initEDataType(this.eByteObjectEDataType, Byte.class, "EByteObject", true, false);
        this.initEDataType(this.eCharEDataType, Character.TYPE, "EChar", true, false);
        this.initEDataType(this.eCharacterObjectEDataType, Character.class, "ECharacterObject", true, false);
        this.initEDataType(this.eDateEDataType, Date.class, "EDate", true, false);
        this.initEDataType(this.eDiagnosticChainEDataType, DiagnosticChain.class, "EDiagnosticChain", false, false);
        this.initEDataType(this.eDoubleEDataType, Double.TYPE, "EDouble", true, false);
        this.initEDataType(this.eDoubleObjectEDataType, Double.class, "EDoubleObject", true, false);
        this.initEDataType(this.eeListEDataType, EList.class, "EEList", false, false);
        this.initEDataType(this.eEnumeratorEDataType, Enumerator.class, "EEnumerator", false, false);
        this.initEDataType(this.eFeatureMapEDataType, FeatureMap.class, "EFeatureMap", false, false);
        this.initEDataType(this.eFeatureMapEntryEDataType, FeatureMap.Entry.class, "EFeatureMapEntry", false, false);
        this.initEDataType(this.eFloatEDataType, Float.TYPE, "EFloat", true, false);
        this.initEDataType(this.eFloatObjectEDataType, Float.class, "EFloatObject", true, false);
        this.initEDataType(this.eIntEDataType, Integer.TYPE, "EInt", true, false);
        this.initEDataType(this.eIntegerObjectEDataType, Integer.class, "EIntegerObject", true, false);
        this.initEDataType(this.eJavaClassEDataType, Class.class, "EJavaClass", true, false);
        this.initEDataType(this.eJavaObjectEDataType, Object.class, "EJavaObject", true, false);
        this.initEDataType(this.eLongEDataType, Long.TYPE, "ELong", true, false);
        this.initEDataType(this.eLongObjectEDataType, Long.class, "ELongObject", true, false);
        this.initEDataType(this.eMapEDataType, Map.class, "EMap", false, false);
        this.initEDataType(this.eResourceEDataType, Resource.class, "EResource", false, false);
        this.initEDataType(this.eResourceSetEDataType, ResourceSet.class, "EResourceSet", false, false);
        this.initEDataType(this.eShortEDataType, Short.TYPE, "EShort", true, false);
        this.initEDataType(this.eShortObjectEDataType, Short.class, "EShortObject", true, false);
        this.initEDataType(this.eStringEDataType, String.class, "EString", true, false);
        this.initEDataType(this.eTreeIteratorEDataType, TreeIterator.class, "ETreeIterator", false, false);
        this.initEDataType(this.eInvocationTargetExceptionEDataType, InvocationTargetException.class, "EInvocationTargetException", false, false);
        this.createResource("http://www.eclipse.org/emf/2002/Ecore");
    }

    protected void createEcoreAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/Ecore";
        this.addAnnotation(this.eAttributeEClass, source, new String[]{"constraints", "ConsistentTransient"});
        this.addAnnotation(this.eAnnotationEClass, source, new String[]{"constraints", "WellFormedSourceURI"});
        this.addAnnotation(this.eClassEClass, source, new String[]{"constraints", "InterfaceIsAbstract AtMostOneID UniqueFeatureNames UniqueOperationSignatures NoCircularSuperTypes WellFormedMapEntryClass ConsistentSuperTypes DisjointFeatureAndOperationSignatures"});
        this.addAnnotation(this.eClassifierEClass, source, new String[]{"constraints", "WellFormedInstanceTypeName UniqueTypeParameterNames"});
        this.addAnnotation(this.eEnumEClass, source, new String[]{"constraints", "UniqueEnumeratorNames UniqueEnumeratorLiterals"});
        this.addAnnotation(this.eNamedElementEClass, source, new String[]{"constraints", "WellFormedName"});
        this.addAnnotation(this.eOperationEClass, source, new String[]{"constraints", "UniqueParameterNames UniqueTypeParameterNames NoRepeatingVoid"});
        this.addAnnotation(this.ePackageEClass, source, new String[]{"constraints", "WellFormedNsURI WellFormedNsPrefix UniqueSubpackageNames UniqueClassifierNames UniqueNsURIs"});
        this.addAnnotation(this.eReferenceEClass, source, new String[]{"constraints", "ConsistentOpposite SingleContainer ConsistentKeys ConsistentUnique ConsistentContainer"});
        this.addAnnotation(this.eStructuralFeatureEClass, source, new String[]{"constraints", "ValidDefaultValueLiteral"});
        this.addAnnotation(this.eTypedElementEClass, source, new String[]{"constraints", "ValidLowerBound ValidUpperBound ConsistentBounds ValidType"});
        this.addAnnotation(this.eGenericTypeEClass, source, new String[]{"constraints", "ConsistentType ConsistentBounds ConsistentArguments"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation(this.eBigDecimalEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#decimal"});
        this.addAnnotation(this.eBigIntegerEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#integer"});
        this.addAnnotation(this.eBooleanEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#boolean"});
        this.addAnnotation(this.eBooleanObjectEDataType, source, new String[]{"baseType", "EBoolean", "name", "EBoolean:Object"});
        this.addAnnotation(this.eByteEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#byte"});
        this.addAnnotation(this.eByteArrayEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#hexBinary"});
        this.addAnnotation(this.eByteObjectEDataType, source, new String[]{"baseType", "EByte", "name", "EByte:Object"});
        this.addAnnotation(this.eCharacterObjectEDataType, source, new String[]{"baseType", "EChar", "name", "EChar:Object"});
        this.addAnnotation(this.eDoubleEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#double"});
        this.addAnnotation(this.eDoubleObjectEDataType, source, new String[]{"baseType", "EDouble", "name", "EDouble:Object"});
        this.addAnnotation(this.eFloatEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#float"});
        this.addAnnotation(this.eFloatObjectEDataType, source, new String[]{"baseType", "EFloat", "name", "EFloat:Object"});
        this.addAnnotation(this.eIntEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#int"});
        this.addAnnotation(this.eIntegerObjectEDataType, source, new String[]{"baseType", "EInt", "name", "EInt:Object"});
        this.addAnnotation(this.eLongEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#long"});
        this.addAnnotation(this.eLongObjectEDataType, source, new String[]{"baseType", "ELong", "name", "ELong:Object"});
        this.addAnnotation(this.eShortEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#short"});
        this.addAnnotation(this.eShortObjectEDataType, source, new String[]{"baseType", "EShort", "name", "EShort:Object"});
        this.addAnnotation(this.eStringEDataType, source, new String[]{"baseType", "http://www.w3.org/2001/XMLSchema#string"});
    }

    public EClass getEFactory() {
        return this.eFactoryEClass;
    }

    public EReference getEFactory_EPackage() {
        return (EReference)this.eFactoryEClass.getEStructuralFeatures().get(0);
    }

    public EOperation getEFactory__Create__EClass() {
        return (EOperation)this.eFactoryEClass.getEOperations().get(0);
    }

    public EOperation getEFactory__CreateFromString__EDataType_String() {
        return (EOperation)this.eFactoryEClass.getEOperations().get(1);
    }

    public EOperation getEFactory__ConvertToString__EDataType_Object() {
        return (EOperation)this.eFactoryEClass.getEOperations().get(2);
    }
}

