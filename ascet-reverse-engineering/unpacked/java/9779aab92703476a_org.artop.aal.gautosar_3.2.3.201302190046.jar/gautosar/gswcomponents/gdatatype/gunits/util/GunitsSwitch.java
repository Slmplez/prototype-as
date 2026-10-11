/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gunits.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GunitsSwitch<T> {
    protected static GunitsPackage modelPackage;

    public GunitsSwitch() {
        if (modelPackage == null) {
            modelPackage = GunitsPackage.eINSTANCE;
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
                GUnit gUnit = (GUnit)theEObject;
                T result = this.caseGUnit(gUnit);
                if (result == null) {
                    result = this.caseGPackageableElement(gUnit);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gUnit);
                }
                if (result == null) {
                    result = this.caseGReferrable(gUnit);
                }
                if (result == null) {
                    result = this.caseGARObject(gUnit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GPhysicalDimension gPhysicalDimension = (GPhysicalDimension)theEObject;
                T result = this.caseGPhysicalDimension(gPhysicalDimension);
                if (result == null) {
                    result = this.caseGPackageableElement(gPhysicalDimension);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gPhysicalDimension);
                }
                if (result == null) {
                    result = this.caseGReferrable(gPhysicalDimension);
                }
                if (result == null) {
                    result = this.caseGARObject(gPhysicalDimension);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGUnit(GUnit object) {
        return null;
    }

    public T caseGPhysicalDimension(GPhysicalDimension object) {
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

