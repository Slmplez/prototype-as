/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import java.util.Map;
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
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.Switch;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcoreSwitch<T>
extends Switch<T> {
    protected static EcorePackage modelPackage;

    public EcoreSwitch() {
        if (modelPackage == null) {
            modelPackage = EcorePackage.eINSTANCE;
        }
    }

    @Override
    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    @Override
    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                EAttribute eAttribute = (EAttribute)theEObject;
                T result = this.caseEAttribute(eAttribute);
                if (result == null) {
                    result = this.caseEStructuralFeature(eAttribute);
                }
                if (result == null) {
                    result = this.caseETypedElement(eAttribute);
                }
                if (result == null) {
                    result = this.caseENamedElement(eAttribute);
                }
                if (result == null) {
                    result = this.caseEModelElement(eAttribute);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EAnnotation eAnnotation = (EAnnotation)theEObject;
                T result = this.caseEAnnotation(eAnnotation);
                if (result == null) {
                    result = this.caseEModelElement(eAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EClass eClass = (EClass)theEObject;
                T result = this.caseEClass(eClass);
                if (result == null) {
                    result = this.caseEClassifier(eClass);
                }
                if (result == null) {
                    result = this.caseENamedElement(eClass);
                }
                if (result == null) {
                    result = this.caseEModelElement(eClass);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                EClassifier eClassifier = (EClassifier)theEObject;
                T result = this.caseEClassifier(eClassifier);
                if (result == null) {
                    result = this.caseENamedElement(eClassifier);
                }
                if (result == null) {
                    result = this.caseEModelElement(eClassifier);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EDataType eDataType = (EDataType)theEObject;
                T result = this.caseEDataType(eDataType);
                if (result == null) {
                    result = this.caseEClassifier(eDataType);
                }
                if (result == null) {
                    result = this.caseENamedElement(eDataType);
                }
                if (result == null) {
                    result = this.caseEModelElement(eDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                EEnum eEnum = (EEnum)theEObject;
                T result = this.caseEEnum(eEnum);
                if (result == null) {
                    result = this.caseEDataType(eEnum);
                }
                if (result == null) {
                    result = this.caseEClassifier(eEnum);
                }
                if (result == null) {
                    result = this.caseENamedElement(eEnum);
                }
                if (result == null) {
                    result = this.caseEModelElement(eEnum);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                EEnumLiteral eEnumLiteral = (EEnumLiteral)theEObject;
                T result = this.caseEEnumLiteral(eEnumLiteral);
                if (result == null) {
                    result = this.caseENamedElement(eEnumLiteral);
                }
                if (result == null) {
                    result = this.caseEModelElement(eEnumLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                EFactory eFactory = (EFactory)theEObject;
                T result = this.caseEFactory(eFactory);
                if (result == null) {
                    result = this.caseEModelElement(eFactory);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                EModelElement eModelElement = (EModelElement)theEObject;
                T result = this.caseEModelElement(eModelElement);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ENamedElement eNamedElement = (ENamedElement)theEObject;
                T result = this.caseENamedElement(eNamedElement);
                if (result == null) {
                    result = this.caseEModelElement(eNamedElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                EOperation eOperation = (EOperation)theEObject;
                T result = this.caseEOperation(eOperation);
                if (result == null) {
                    result = this.caseETypedElement(eOperation);
                }
                if (result == null) {
                    result = this.caseENamedElement(eOperation);
                }
                if (result == null) {
                    result = this.caseEModelElement(eOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                EPackage ePackage = (EPackage)theEObject;
                T result = this.caseEPackage(ePackage);
                if (result == null) {
                    result = this.caseENamedElement(ePackage);
                }
                if (result == null) {
                    result = this.caseEModelElement(ePackage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                EParameter eParameter = (EParameter)theEObject;
                T result = this.caseEParameter(eParameter);
                if (result == null) {
                    result = this.caseETypedElement(eParameter);
                }
                if (result == null) {
                    result = this.caseENamedElement(eParameter);
                }
                if (result == null) {
                    result = this.caseEModelElement(eParameter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                EReference eReference = (EReference)theEObject;
                T result = this.caseEReference(eReference);
                if (result == null) {
                    result = this.caseEStructuralFeature(eReference);
                }
                if (result == null) {
                    result = this.caseETypedElement(eReference);
                }
                if (result == null) {
                    result = this.caseENamedElement(eReference);
                }
                if (result == null) {
                    result = this.caseEModelElement(eReference);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                EStructuralFeature eStructuralFeature = (EStructuralFeature)theEObject;
                T result = this.caseEStructuralFeature(eStructuralFeature);
                if (result == null) {
                    result = this.caseETypedElement(eStructuralFeature);
                }
                if (result == null) {
                    result = this.caseENamedElement(eStructuralFeature);
                }
                if (result == null) {
                    result = this.caseEModelElement(eStructuralFeature);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                ETypedElement eTypedElement = (ETypedElement)theEObject;
                T result = this.caseETypedElement(eTypedElement);
                if (result == null) {
                    result = this.caseENamedElement(eTypedElement);
                }
                if (result == null) {
                    result = this.caseEModelElement(eTypedElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                Map.Entry eStringToStringMapEntry = (Map.Entry)((Object)theEObject);
                T result = this.caseEStringToStringMapEntry(eStringToStringMapEntry);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                EGenericType eGenericType = (EGenericType)theEObject;
                T result = this.caseEGenericType(eGenericType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                ETypeParameter eTypeParameter = (ETypeParameter)theEObject;
                T result = this.caseETypeParameter(eTypeParameter);
                if (result == null) {
                    result = this.caseENamedElement(eTypeParameter);
                }
                if (result == null) {
                    result = this.caseEModelElement(eTypeParameter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEModelElement(EModelElement object) {
        return null;
    }

    public T caseEStructuralFeature(EStructuralFeature object) {
        return null;
    }

    public T caseEAnnotation(EAnnotation object) {
        return null;
    }

    public T caseEAttribute(EAttribute object) {
        return null;
    }

    public T caseEClass(EClass object) {
        return null;
    }

    public T caseEDataType(EDataType object) {
        return null;
    }

    public T caseEClassifier(EClassifier object) {
        return null;
    }

    public T caseENamedElement(ENamedElement object) {
        return null;
    }

    @Override
    public T defaultCase(EObject object) {
        return null;
    }

    public T caseETypedElement(ETypedElement object) {
        return null;
    }

    public T caseEStringToStringMapEntry(Map.Entry<String, String> object) {
        return null;
    }

    public T caseEGenericType(EGenericType object) {
        return null;
    }

    public T caseETypeParameter(ETypeParameter object) {
        return null;
    }

    public T caseEParameter(EParameter object) {
        return null;
    }

    public T caseEOperation(EOperation object) {
        return null;
    }

    public T caseEPackage(EPackage object) {
        return null;
    }

    public T caseEFactory(EFactory object) {
        return null;
    }

    public T caseEEnumLiteral(EEnumLiteral object) {
        return null;
    }

    public T caseEEnum(EEnum object) {
        return null;
    }

    public T caseEReference(EReference object) {
        return null;
    }
}

