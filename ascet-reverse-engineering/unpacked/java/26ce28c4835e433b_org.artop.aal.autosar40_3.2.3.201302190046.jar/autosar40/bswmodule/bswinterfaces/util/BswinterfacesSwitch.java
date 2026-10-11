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
package autosar40.bswmodule.bswinterfaces.util;

import autosar40.bswmodule.bswinterfaces.BswModuleDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
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
public class BswinterfacesSwitch<T> {
    protected static BswinterfacesPackage modelPackage;

    public BswinterfacesSwitch() {
        if (modelPackage == null) {
            modelPackage = BswinterfacesPackage.eINSTANCE;
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
                BswModuleEntryRefConditional bswModuleEntryRefConditional = (BswModuleEntryRefConditional)theEObject;
                T result = this.caseBswModuleEntryRefConditional(bswModuleEntryRefConditional);
                if (result == null) {
                    result = this.caseARObject(bswModuleEntryRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleEntryRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                BswModuleDependency bswModuleDependency = (BswModuleDependency)theEObject;
                T result = this.caseBswModuleDependency(bswModuleDependency);
                if (result == null) {
                    result = this.caseIdentifiable(bswModuleDependency);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModuleDependency);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModuleDependency);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModuleDependency);
                }
                if (result == null) {
                    result = this.caseARObject(bswModuleDependency);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModuleDependency);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleDependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BswModuleEntry bswModuleEntry = (BswModuleEntry)theEObject;
                T result = this.caseBswModuleEntry(bswModuleEntry);
                if (result == null) {
                    result = this.caseARElement(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(bswModuleEntry);
                }
                if (result == null) {
                    result = this.casePackageableElement(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseCollectableElement(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseARObject(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModuleEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswModuleEntryRefConditional(BswModuleEntryRefConditional object) {
        return null;
    }

    public T caseBswModuleDependency(BswModuleDependency object) {
        return null;
    }

    public T caseBswModuleEntry(BswModuleEntry object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

