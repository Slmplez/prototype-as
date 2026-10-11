/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.gservercall.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GservercallSwitch<T> {
    protected static GservercallPackage modelPackage;

    public GservercallSwitch() {
        if (modelPackage == null) {
            modelPackage = GservercallPackage.eINSTANCE;
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
                GServerCallPoint gServerCallPoint = (GServerCallPoint)theEObject;
                T result = this.caseGServerCallPoint(gServerCallPoint);
                if (result == null) {
                    result = this.caseGIdentifiable(gServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(gServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(gServerCallPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GAsynchronousServerCallPoint gAsynchronousServerCallPoint = (GAsynchronousServerCallPoint)theEObject;
                T result = this.caseGAsynchronousServerCallPoint(gAsynchronousServerCallPoint);
                if (result == null) {
                    result = this.caseGServerCallPoint(gAsynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAsynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAsynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(gAsynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GSynchronousServerCallPoint gSynchronousServerCallPoint = (GSynchronousServerCallPoint)theEObject;
                T result = this.caseGSynchronousServerCallPoint(gSynchronousServerCallPoint);
                if (result == null) {
                    result = this.caseGServerCallPoint(gSynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(gSynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGServerCallPoint(GServerCallPoint object) {
        return null;
    }

    public T caseGAsynchronousServerCallPoint(GAsynchronousServerCallPoint object) {
        return null;
    }

    public T caseGSynchronousServerCallPoint(GSynchronousServerCallPoint object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

