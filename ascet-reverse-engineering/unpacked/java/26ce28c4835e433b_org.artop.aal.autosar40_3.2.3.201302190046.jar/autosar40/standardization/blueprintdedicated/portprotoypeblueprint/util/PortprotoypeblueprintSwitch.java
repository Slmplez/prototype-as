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
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintInitValue;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
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
public class PortprotoypeblueprintSwitch<T> {
    protected static PortprotoypeblueprintPackage modelPackage;

    public PortprotoypeblueprintSwitch() {
        if (modelPackage == null) {
            modelPackage = PortprotoypeblueprintPackage.eINSTANCE;
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
                PortPrototypeBlueprint portPrototypeBlueprint = (PortPrototypeBlueprint)theEObject;
                T result = this.casePortPrototypeBlueprint(portPrototypeBlueprint);
                if (result == null) {
                    result = this.caseARElement(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.casePackageableElement(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseAtpFeature(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseCollectableElement(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseIdentifiable(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseReferrable(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseARObject(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseGReferrable(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.caseGARObject(portPrototypeBlueprint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PortPrototypeBlueprintInitValue portPrototypeBlueprintInitValue = (PortPrototypeBlueprintInitValue)theEObject;
                T result = this.casePortPrototypeBlueprintInitValue(portPrototypeBlueprintInitValue);
                if (result == null) {
                    result = this.caseARObject(portPrototypeBlueprintInitValue);
                }
                if (result == null) {
                    result = this.caseGARObject(portPrototypeBlueprintInitValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                PortPrototypeBlueprintMapping portPrototypeBlueprintMapping = (PortPrototypeBlueprintMapping)theEObject;
                T result = this.casePortPrototypeBlueprintMapping(portPrototypeBlueprintMapping);
                if (result == null) {
                    result = this.caseAtpBlueprintMapping(portPrototypeBlueprintMapping);
                }
                if (result == null) {
                    result = this.caseARObject(portPrototypeBlueprintMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(portPrototypeBlueprintMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePortPrototypeBlueprint(PortPrototypeBlueprint object) {
        return null;
    }

    public T casePortPrototypeBlueprintInitValue(PortPrototypeBlueprintInitValue object) {
        return null;
    }

    public T casePortPrototypeBlueprintMapping(PortPrototypeBlueprintMapping object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseAtpBlueprintMapping(AtpBlueprintMapping object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

