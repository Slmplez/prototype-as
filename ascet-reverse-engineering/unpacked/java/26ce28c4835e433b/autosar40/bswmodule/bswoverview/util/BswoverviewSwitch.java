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
package autosar40.bswmodule.bswoverview.util;

import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.bswmodule.bswoverview.BswoverviewPackage;
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
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
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
public class BswoverviewSwitch<T> {
    protected static BswoverviewPackage modelPackage;

    public BswoverviewSwitch() {
        if (modelPackage == null) {
            modelPackage = BswoverviewPackage.eINSTANCE;
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
                BswModuleDescription bswModuleDescription = (BswModuleDescription)theEObject;
                T result = this.caseBswModuleDescription(bswModuleDescription);
                if (result == null) {
                    result = this.caseARElement(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(bswModuleDescription);
                }
                if (result == null) {
                    result = this.casePackageableElement(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseAtpFeature(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseCollectableElement(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseARObject(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModuleDescription);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleDescription);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswModuleDescription(BswModuleDescription object) {
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

    public T caseAtpBlueprintable(AtpBlueprintable object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

