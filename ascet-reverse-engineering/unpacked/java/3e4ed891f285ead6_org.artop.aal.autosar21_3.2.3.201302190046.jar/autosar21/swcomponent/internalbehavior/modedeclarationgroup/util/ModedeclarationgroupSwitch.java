/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModedeclarationgroupSwitch<T> {
    protected static ModedeclarationgroupPackage modelPackage;

    public ModedeclarationgroupSwitch() {
        if (modelPackage == null) {
            modelPackage = ModedeclarationgroupPackage.eINSTANCE;
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
                ModeSwitchPoint modeSwitchPoint = (ModeSwitchPoint)theEObject;
                T result = this.caseModeSwitchPoint(modeSwitchPoint);
                if (result == null) {
                    result = this.caseIdentifiable(modeSwitchPoint);
                }
                if (result == null) {
                    result = this.caseGModeSwitchPoint(modeSwitchPoint);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeSwitchPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)modeSwitchPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeSwitchPoint(ModeSwitchPoint object) {
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

    public T caseGModeSwitchPoint(GModeSwitchPoint object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

