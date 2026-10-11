/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.modedeclaration.util;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeRefConditional;
import autosar40.commonstructure.modedeclaration.ModeRequestTypeMap;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
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
public class ModedeclarationSwitch<T> {
    protected static ModedeclarationPackage modelPackage;

    public ModedeclarationSwitch() {
        if (modelPackage == null) {
            modelPackage = ModedeclarationPackage.eINSTANCE;
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
                ModeDeclaration modeDeclaration = (ModeDeclaration)theEObject;
                T result = this.caseModeDeclaration(modeDeclaration);
                if (result == null) {
                    result = this.caseAtpStructureElement(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGModeDeclaration(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseAtpFeature(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseReferrable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseARObject(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGReferrable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclaration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ModeDeclarationGroup modeDeclarationGroup = (ModeDeclarationGroup)theEObject;
                T result = this.caseModeDeclarationGroup(modeDeclarationGroup);
                if (result == null) {
                    result = this.caseARElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseAtpType(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGModeDeclarationGroup(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseCollectableElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseARObject(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ModeDeclarationGroupPrototype modeDeclarationGroupPrototype = (ModeDeclarationGroupPrototype)theEObject;
                T result = this.caseModeDeclarationGroupPrototype(modeDeclarationGroupPrototype);
                if (result == null) {
                    result = this.caseAtpPrototype(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGModeDeclarationGroupPrototype(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ModeDeclarationGroupPrototypeMapping modeDeclarationGroupPrototypeMapping = (ModeDeclarationGroupPrototypeMapping)theEObject;
                T result = this.caseModeDeclarationGroupPrototypeMapping(modeDeclarationGroupPrototypeMapping);
                if (result == null) {
                    result = this.caseARObject(modeDeclarationGroupPrototypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclarationGroupPrototypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ModeDeclarationGroupPrototypeRefConditional modeDeclarationGroupPrototypeRefConditional = (ModeDeclarationGroupPrototypeRefConditional)theEObject;
                T result = this.caseModeDeclarationGroupPrototypeRefConditional(modeDeclarationGroupPrototypeRefConditional);
                if (result == null) {
                    result = this.caseARObject(modeDeclarationGroupPrototypeRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclarationGroupPrototypeRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ModeRequestTypeMap modeRequestTypeMap = (ModeRequestTypeMap)theEObject;
                T result = this.caseModeRequestTypeMap(modeRequestTypeMap);
                if (result == null) {
                    result = this.caseARObject(modeRequestTypeMap);
                }
                if (result == null) {
                    result = this.caseGARObject(modeRequestTypeMap);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeDeclaration(ModeDeclaration object) {
        return null;
    }

    public T caseModeDeclarationGroup(ModeDeclarationGroup object) {
        return null;
    }

    public T caseModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype object) {
        return null;
    }

    public T caseModeDeclarationGroupPrototypeMapping(ModeDeclarationGroupPrototypeMapping object) {
        return null;
    }

    public T caseModeDeclarationGroupPrototypeRefConditional(ModeDeclarationGroupPrototypeRefConditional object) {
        return null;
    }

    public T caseModeRequestTypeMap(ModeRequestTypeMap object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseGModeDeclaration(GModeDeclaration object) {
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

    public T caseAtpType(AtpType object) {
        return null;
    }

    public T caseGModeDeclarationGroup(GModeDeclarationGroup object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
        return null;
    }

    public T caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

