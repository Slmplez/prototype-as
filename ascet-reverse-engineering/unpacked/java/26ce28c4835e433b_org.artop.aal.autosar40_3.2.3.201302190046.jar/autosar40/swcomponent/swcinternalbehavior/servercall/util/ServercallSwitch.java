/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.servercall.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServercallSwitch<T> {
    protected static ServercallPackage modelPackage;

    public ServercallSwitch() {
        if (modelPackage == null) {
            modelPackage = ServercallPackage.eINSTANCE;
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
                AsynchronousServerCallPoint asynchronousServerCallPoint = (AsynchronousServerCallPoint)theEObject;
                T result = this.caseAsynchronousServerCallPoint(asynchronousServerCallPoint);
                if (result == null) {
                    result = this.caseServerCallPoint(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGAsynchronousServerCallPoint(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseIdentifiable(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGServerCallPoint(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseReferrable(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseARObject(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(asynchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ServerCallPoint serverCallPoint = (ServerCallPoint)theEObject;
                T result = this.caseServerCallPoint(serverCallPoint);
                if (result == null) {
                    result = this.caseIdentifiable(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseGServerCallPoint(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseReferrable(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseARObject(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(serverCallPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(serverCallPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SynchronousServerCallPoint synchronousServerCallPoint = (SynchronousServerCallPoint)theEObject;
                T result = this.caseSynchronousServerCallPoint(synchronousServerCallPoint);
                if (result == null) {
                    result = this.caseServerCallPoint(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGSynchronousServerCallPoint(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseIdentifiable(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGServerCallPoint(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseReferrable(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseARObject(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(synchronousServerCallPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                AsynchronousServerCallResultPoint asynchronousServerCallResultPoint = (AsynchronousServerCallResultPoint)theEObject;
                T result = this.caseAsynchronousServerCallResultPoint(asynchronousServerCallResultPoint);
                if (result == null) {
                    result = this.caseIdentifiable(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.caseReferrable(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.caseARObject(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(asynchronousServerCallResultPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAsynchronousServerCallPoint(AsynchronousServerCallPoint object) {
        return null;
    }

    public T caseServerCallPoint(ServerCallPoint object) {
        return null;
    }

    public T caseSynchronousServerCallPoint(SynchronousServerCallPoint object) {
        return null;
    }

    public T caseAsynchronousServerCallResultPoint(AsynchronousServerCallResultPoint object) {
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

    public T caseGServerCallPoint(GServerCallPoint object) {
        return null;
    }

    public T caseGAsynchronousServerCallPoint(GAsynchronousServerCallPoint object) {
        return null;
    }

    public T caseGSynchronousServerCallPoint(GSynchronousServerCallPoint object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

