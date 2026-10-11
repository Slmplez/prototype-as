/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.swcinternalbehavior.util;

import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcinternalbehaviorSwitch<T> {
    protected static SwcinternalbehaviorPackage modelPackage;

    public SwcinternalbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = SwcinternalbehaviorPackage.eINSTANCE;
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
                InternalBehavior internalBehavior = (InternalBehavior)theEObject;
                T result = this.caseInternalBehavior(internalBehavior);
                if (result == null) {
                    result = this.caseARElement(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGSwcInternalBehavior(internalBehavior);
                }
                if (result == null) {
                    result = this.casePackageableElement(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGInternalBehavior((GInternalBehavior)internalBehavior);
                }
                if (result == null) {
                    result = this.caseIdentifiable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(internalBehavior);
                }
                if (result == null) {
                    result = this.caseARObject(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)internalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(internalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RunnableEntity runnableEntity = (RunnableEntity)theEObject;
                T result = this.caseRunnableEntity(runnableEntity);
                if (result == null) {
                    result = this.caseExecutableEntity(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGRunnableEntity(runnableEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity((GExecutableEntity)runnableEntity);
                }
                if (result == null) {
                    result = this.caseARObject(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)runnableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(runnableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseInternalBehavior(InternalBehavior object) {
        return null;
    }

    public T caseRunnableEntity(RunnableEntity object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseGInternalBehavior(GInternalBehavior object) {
        return null;
    }

    public T caseGSwcInternalBehavior(GSwcInternalBehavior object) {
        return null;
    }

    public T caseExecutableEntity(ExecutableEntity object) {
        return null;
    }

    public T caseGExecutableEntity(GExecutableEntity object) {
        return null;
    }

    public T caseGRunnableEntity(GRunnableEntity object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

