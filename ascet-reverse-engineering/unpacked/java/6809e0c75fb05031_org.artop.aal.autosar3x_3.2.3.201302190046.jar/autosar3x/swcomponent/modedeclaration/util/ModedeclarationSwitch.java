/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.modedeclaration.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar3x.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
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
                    result = this.caseIdentifiable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGModeDeclaration(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseARObject(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeDeclaration);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)modeDeclaration);
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
                ModeDisablingDependency modeDisablingDependency = (ModeDisablingDependency)theEObject;
                T result = this.caseModeDisablingDependency(modeDisablingDependency);
                if (result == null) {
                    result = this.caseARObject(modeDisablingDependency);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDisablingDependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ModeDeclarationGroup modeDeclarationGroup = (ModeDeclarationGroup)theEObject;
                T result = this.caseModeDeclarationGroup(modeDeclarationGroup);
                if (result == null) {
                    result = this.caseARElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGModeDeclarationGroup(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseARObject(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)modeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclarationGroup);
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

    public T caseModeDisablingDependency(ModeDisablingDependency object) {
        return null;
    }

    public T caseModeDeclarationGroup(ModeDeclarationGroup object) {
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

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGModeDeclaration(GModeDeclaration object) {
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

    public T caseGModeDeclarationGroup(GModeDeclarationGroup object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

