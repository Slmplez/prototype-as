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
package autosar40.ecuresource.hwelementcategory.util;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
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
public class HwelementcategorySwitch<T> {
    protected static HwelementcategoryPackage modelPackage;

    public HwelementcategorySwitch() {
        if (modelPackage == null) {
            modelPackage = HwelementcategoryPackage.eINSTANCE;
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
                HwAttributeDef hwAttributeDef = (HwAttributeDef)theEObject;
                T result = this.caseHwAttributeDef(hwAttributeDef);
                if (result == null) {
                    result = this.caseIdentifiable(hwAttributeDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwAttributeDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwAttributeDef);
                }
                if (result == null) {
                    result = this.caseReferrable(hwAttributeDef);
                }
                if (result == null) {
                    result = this.caseARObject(hwAttributeDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwAttributeDef);
                }
                if (result == null) {
                    result = this.caseGARObject(hwAttributeDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                HwAttributeLiteralDef hwAttributeLiteralDef = (HwAttributeLiteralDef)theEObject;
                T result = this.caseHwAttributeLiteralDef(hwAttributeLiteralDef);
                if (result == null) {
                    result = this.caseIdentifiable(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.caseReferrable(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.caseARObject(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.caseGARObject(hwAttributeLiteralDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                HwAttributeValue hwAttributeValue = (HwAttributeValue)theEObject;
                T result = this.caseHwAttributeValue(hwAttributeValue);
                if (result == null) {
                    result = this.caseARObject(hwAttributeValue);
                }
                if (result == null) {
                    result = this.caseGARObject(hwAttributeValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                HwCategory hwCategory = (HwCategory)theEObject;
                T result = this.caseHwCategory(hwCategory);
                if (result == null) {
                    result = this.caseARElement(hwCategory);
                }
                if (result == null) {
                    result = this.casePackageableElement(hwCategory);
                }
                if (result == null) {
                    result = this.caseCollectableElement(hwCategory);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(hwCategory);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hwCategory);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwCategory);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwCategory);
                }
                if (result == null) {
                    result = this.caseReferrable(hwCategory);
                }
                if (result == null) {
                    result = this.caseARObject(hwCategory);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwCategory);
                }
                if (result == null) {
                    result = this.caseGARObject(hwCategory);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                HwType hwType = (HwType)theEObject;
                T result = this.caseHwType(hwType);
                if (result == null) {
                    result = this.caseARElement(hwType);
                }
                if (result == null) {
                    result = this.caseHwDescriptionEntity(hwType);
                }
                if (result == null) {
                    result = this.casePackageableElement(hwType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(hwType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(hwType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hwType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(hwType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwType);
                }
                if (result == null) {
                    result = this.caseReferrable(hwType);
                }
                if (result == null) {
                    result = this.caseARObject(hwType);
                }
                if (result == null) {
                    result = this.caseGReferrable(hwType);
                }
                if (result == null) {
                    result = this.caseGARObject(hwType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseHwAttributeDef(HwAttributeDef object) {
        return null;
    }

    public T caseHwAttributeLiteralDef(HwAttributeLiteralDef object) {
        return null;
    }

    public T caseHwAttributeValue(HwAttributeValue object) {
        return null;
    }

    public T caseHwCategory(HwCategory object) {
        return null;
    }

    public T caseHwType(HwType object) {
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

    public T caseHwDescriptionEntity(HwDescriptionEntity object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

