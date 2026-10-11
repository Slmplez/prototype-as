/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.ServerCallPointOperation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                ServerCallPointOperation serverCallPointOperation = (ServerCallPointOperation)theEObject;
                T result = this.caseServerCallPointOperation(serverCallPointOperation);
                if (result == null) {
                    result = this.caseARObject(serverCallPointOperation);
                }
                if (result == null) {
                    result = this.caseGROperationInAtomicSwcIRef(serverCallPointOperation);
                }
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef((GOperationInAtomicSwcIRef)serverCallPointOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(serverCallPointOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseServerCallPointOperation(ServerCallPointOperation object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

