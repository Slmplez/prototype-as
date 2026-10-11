/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.constants.util;

import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.constants.ArrayValueSpecification;
import autosar40.commonstructure.constants.ConstantReference;
import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMapping;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.NumericalValueSpecification;
import autosar40.commonstructure.constants.RecordValueSpecification;
import autosar40.commonstructure.constants.ReferenceValueSpecification;
import autosar40.commonstructure.constants.TextValueSpecification;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstantsSwitch<T> {
    protected static ConstantsPackage modelPackage;

    public ConstantsSwitch() {
        if (modelPackage == null) {
            modelPackage = ConstantsPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ApplicationValueSpecification applicationValueSpecification = (ApplicationValueSpecification)theEObject;
                T result = this.caseApplicationValueSpecification(applicationValueSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(applicationValueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(applicationValueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(applicationValueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ArrayValueSpecification arrayValueSpecification = (ArrayValueSpecification)theEObject;
                T result = this.caseArrayValueSpecification(arrayValueSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(arrayValueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(arrayValueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(arrayValueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(arrayValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ConstantReference constantReference = (ConstantReference)theEObject;
                T result = this.caseConstantReference(constantReference);
                if (result == null) {
                    result = this.caseValueSpecification(constantReference);
                }
                if (result == null) {
                    result = this.caseARObject(constantReference);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(constantReference);
                }
                if (result == null) {
                    result = this.caseGARObject(constantReference);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ConstantSpecification constantSpecification = (ConstantSpecification)theEObject;
                T result = this.caseConstantSpecification(constantSpecification);
                if (result == null) {
                    result = this.caseARElement(constantSpecification);
                }
                if (result == null) {
                    result = this.casePackageableElement(constantSpecification);
                }
                if (result == null) {
                    result = this.caseCollectableElement(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(constantSpecification);
                }
                if (result == null) {
                    result = this.caseIdentifiable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseReferrable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGReferrable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(constantSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ConstantSpecificationMapping constantSpecificationMapping = (ConstantSpecificationMapping)theEObject;
                T result = this.caseConstantSpecificationMapping(constantSpecificationMapping);
                if (result == null) {
                    result = this.caseARObject(constantSpecificationMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(constantSpecificationMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ConstantSpecificationMappingSet constantSpecificationMappingSet = (ConstantSpecificationMappingSet)theEObject;
                T result = this.caseConstantSpecificationMappingSet(constantSpecificationMappingSet);
                if (result == null) {
                    result = this.caseARElement(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseReferrable(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseARObject(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.caseGARObject(constantSpecificationMappingSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                NumericalValueSpecification numericalValueSpecification = (NumericalValueSpecification)theEObject;
                T result = this.caseNumericalValueSpecification(numericalValueSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(numericalValueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(numericalValueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(numericalValueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(numericalValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                RecordValueSpecification recordValueSpecification = (RecordValueSpecification)theEObject;
                T result = this.caseRecordValueSpecification(recordValueSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(recordValueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(recordValueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(recordValueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(recordValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ReferenceValueSpecification referenceValueSpecification = (ReferenceValueSpecification)theEObject;
                T result = this.caseReferenceValueSpecification(referenceValueSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(referenceValueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(referenceValueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(referenceValueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(referenceValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                TextValueSpecification textValueSpecification = (TextValueSpecification)theEObject;
                T result = this.caseTextValueSpecification(textValueSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(textValueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(textValueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(textValueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(textValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ValueSpecification valueSpecification = (ValueSpecification)theEObject;
                T result = this.caseValueSpecification(valueSpecification);
                if (result == null) {
                    result = this.caseARObject(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(valueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseApplicationValueSpecification(ApplicationValueSpecification object) {
        return null;
    }

    public T caseArrayValueSpecification(ArrayValueSpecification object) {
        return null;
    }

    public T caseConstantReference(ConstantReference object) {
        return null;
    }

    public T caseConstantSpecification(ConstantSpecification object) {
        return null;
    }

    public T caseConstantSpecificationMapping(ConstantSpecificationMapping object) {
        return null;
    }

    public T caseConstantSpecificationMappingSet(ConstantSpecificationMappingSet object) {
        return null;
    }

    public T caseNumericalValueSpecification(NumericalValueSpecification object) {
        return null;
    }

    public T caseRecordValueSpecification(RecordValueSpecification object) {
        return null;
    }

    public T caseReferenceValueSpecification(ReferenceValueSpecification object) {
        return null;
    }

    public T caseTextValueSpecification(TextValueSpecification object) {
        return null;
    }

    public T caseValueSpecification(ValueSpecification object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGValueSpecification(GValueSpecification object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

