/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.ecuresource.util;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwElementRefConditional;
import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Describable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
public class EcuresourceSwitch<T> {
    protected static EcuresourcePackage modelPackage;

    public EcuresourceSwitch() {
        if (modelPackage == null) {
            modelPackage = EcuresourcePackage.eINSTANCE;
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
                HwDescriptionEntity hwDescriptionEntity = (HwDescriptionEntity)theEObject;
                T result = this.caseHwDescriptionEntity(hwDescriptionEntity);
                if (result == null) {
                    result = this.caseReferrable(hwDescriptionEntity);
                }
                if (result == null) {
                    result = this.caseARObject(hwDescriptionEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwDescriptionEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(hwDescriptionEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                HwElementConnector hwElementConnector = (HwElementConnector)theEObject;
                T result = this.caseHwElementConnector(hwElementConnector);
                if (result == null) {
                    result = this.caseDescribable(hwElementConnector);
                }
                if (result == null) {
                    result = this.caseARObject(hwElementConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(hwElementConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                HwPinGroupConnector hwPinGroupConnector = (HwPinGroupConnector)theEObject;
                T result = this.caseHwPinGroupConnector(hwPinGroupConnector);
                if (result == null) {
                    result = this.caseDescribable(hwPinGroupConnector);
                }
                if (result == null) {
                    result = this.caseARObject(hwPinGroupConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPinGroupConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                HwPinGroup hwPinGroup = (HwPinGroup)theEObject;
                T result = this.caseHwPinGroup(hwPinGroup);
                if (result == null) {
                    result = this.caseIdentifiable(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseHwDescriptionEntity(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseARObject(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwPinGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPinGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                HwPinGroupContent hwPinGroupContent = (HwPinGroupContent)theEObject;
                T result = this.caseHwPinGroupContent(hwPinGroupContent);
                if (result == null) {
                    result = this.caseARObject(hwPinGroupContent);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPinGroupContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                HwPin hwPin = (HwPin)theEObject;
                T result = this.caseHwPin(hwPin);
                if (result == null) {
                    result = this.caseIdentifiable(hwPin);
                }
                if (result == null) {
                    result = this.caseHwDescriptionEntity(hwPin);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwPin);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwPin);
                }
                if (result == null) {
                    result = this.caseReferrable(hwPin);
                }
                if (result == null) {
                    result = this.caseARObject(hwPin);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwPin);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPin);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                HwPinConnector hwPinConnector = (HwPinConnector)theEObject;
                T result = this.caseHwPinConnector(hwPinConnector);
                if (result == null) {
                    result = this.caseDescribable(hwPinConnector);
                }
                if (result == null) {
                    result = this.caseARObject(hwPinConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPinConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                HwElementRefConditional hwElementRefConditional = (HwElementRefConditional)theEObject;
                T result = this.caseHwElementRefConditional(hwElementRefConditional);
                if (result == null) {
                    result = this.caseARObject(hwElementRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(hwElementRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                HwElement hwElement = (HwElement)theEObject;
                T result = this.caseHwElement(hwElement);
                if (result == null) {
                    result = this.caseARElement(hwElement);
                }
                if (result == null) {
                    result = this.caseHwDescriptionEntity(hwElement);
                }
                if (result == null) {
                    result = this.casePackageableElement(hwElement);
                }
                if (result == null) {
                    result = this.caseCollectableElement(hwElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(hwElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hwElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwElement);
                }
                if (result == null) {
                    result = this.caseReferrable(hwElement);
                }
                if (result == null) {
                    result = this.caseARObject(hwElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwElement);
                }
                if (result == null) {
                    result = this.caseGARObject(hwElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseHwDescriptionEntity(HwDescriptionEntity object) {
        return null;
    }

    public T caseHwElementConnector(HwElementConnector object) {
        return null;
    }

    public T caseHwPinGroupConnector(HwPinGroupConnector object) {
        return null;
    }

    public T caseHwPinGroup(HwPinGroup object) {
        return null;
    }

    public T caseHwPinGroupContent(HwPinGroupContent object) {
        return null;
    }

    public T caseHwPin(HwPin object) {
        return null;
    }

    public T caseHwPinConnector(HwPinConnector object) {
        return null;
    }

    public T caseHwElementRefConditional(HwElementRefConditional object) {
        return null;
    }

    public T caseHwElement(HwElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseDescribable(Describable object) {
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

