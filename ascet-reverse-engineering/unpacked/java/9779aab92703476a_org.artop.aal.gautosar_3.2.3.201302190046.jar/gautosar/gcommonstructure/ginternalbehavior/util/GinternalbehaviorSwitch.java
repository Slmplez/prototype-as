/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.ginternalbehavior.util;

import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GinternalbehaviorSwitch<T> {
    protected static GinternalbehaviorPackage modelPackage;

    public GinternalbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = GinternalbehaviorPackage.eINSTANCE;
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
                GExecutableEntity gExecutableEntity = (GExecutableEntity)theEObject;
                T result = this.caseGExecutableEntity(gExecutableEntity);
                if (result == null) {
                    result = this.caseGIdentifiable(gExecutableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(gExecutableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(gExecutableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GExclusiveArea gExclusiveArea = (GExclusiveArea)theEObject;
                T result = this.caseGExclusiveArea(gExclusiveArea);
                if (result == null) {
                    result = this.caseGIdentifiable(gExclusiveArea);
                }
                if (result == null) {
                    result = this.caseGReferrable(gExclusiveArea);
                }
                if (result == null) {
                    result = this.caseGARObject(gExclusiveArea);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GInternalBehavior gInternalBehavior = (GInternalBehavior)theEObject;
                T result = this.caseGInternalBehavior(gInternalBehavior);
                if (result == null) {
                    result = this.caseGIdentifiable(gInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable(gInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(gInternalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGExecutableEntity(GExecutableEntity object) {
        return null;
    }

    public T caseGExclusiveArea(GExclusiveArea object) {
        return null;
    }

    public T caseGInternalBehavior(GInternalBehavior object) {
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

