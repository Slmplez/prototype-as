/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gmodedeclaration.util;

import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
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
public class GmodedeclarationSwitch<T> {
    protected static GmodedeclarationPackage modelPackage;

    public GmodedeclarationSwitch() {
        if (modelPackage == null) {
            modelPackage = GmodedeclarationPackage.eINSTANCE;
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
                GModeDeclarationGroupPrototype gModeDeclarationGroupPrototype = (GModeDeclarationGroupPrototype)theEObject;
                T result = this.caseGModeDeclarationGroupPrototype(gModeDeclarationGroupPrototype);
                if (result == null) {
                    result = this.caseGIdentifiable(gModeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gModeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gModeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GModeDeclarationGroup gModeDeclarationGroup = (GModeDeclarationGroup)theEObject;
                T result = this.caseGModeDeclarationGroup(gModeDeclarationGroup);
                if (result == null) {
                    result = this.caseGPackageableElement(gModeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gModeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(gModeDeclarationGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(gModeDeclarationGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GModeDeclaration gModeDeclaration = (GModeDeclaration)theEObject;
                T result = this.caseGModeDeclaration(gModeDeclaration);
                if (result == null) {
                    result = this.caseGIdentifiable(gModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGReferrable(gModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGARObject(gModeDeclaration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype object) {
        return null;
    }

    public T caseGModeDeclarationGroup(GModeDeclarationGroup object) {
        return null;
    }

    public T caseGModeDeclaration(GModeDeclaration object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

