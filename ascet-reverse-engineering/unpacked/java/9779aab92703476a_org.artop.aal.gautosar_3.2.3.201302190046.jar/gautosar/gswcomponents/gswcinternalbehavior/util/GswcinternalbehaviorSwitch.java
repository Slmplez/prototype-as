/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.util;

import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GswcinternalbehaviorSwitch<T> {
    protected static GswcinternalbehaviorPackage modelPackage;

    public GswcinternalbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = GswcinternalbehaviorPackage.eINSTANCE;
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
                GSwcInternalBehavior gSwcInternalBehavior = (GSwcInternalBehavior)theEObject;
                T result = this.caseGSwcInternalBehavior(gSwcInternalBehavior);
                if (result == null) {
                    result = this.caseGInternalBehavior(gSwcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSwcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSwcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwcInternalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GRunnableEntity gRunnableEntity = (GRunnableEntity)theEObject;
                T result = this.caseGRunnableEntity(gRunnableEntity);
                if (result == null) {
                    result = this.caseGExecutableEntity(gRunnableEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gRunnableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(gRunnableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(gRunnableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGSwcInternalBehavior(GSwcInternalBehavior object) {
        return null;
    }

    public T caseGRunnableEntity(GRunnableEntity object) {
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

    public T caseGInternalBehavior(GInternalBehavior object) {
        return null;
    }

    public T caseGExecutableEntity(GExecutableEntity object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

