/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.fibex.fibex4flexray.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;
import autosar3x.system.fibex.fibex4flexray.CycleCounter;
import autosar3x.system.fibex.fibex4flexray.CycleRepetition;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Fibex4flexraySwitch<T> {
    protected static Fibex4flexrayPackage modelPackage;

    public Fibex4flexraySwitch() {
        if (modelPackage == null) {
            modelPackage = Fibex4flexrayPackage.eINSTANCE;
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
                CommunicationCycle communicationCycle = (CommunicationCycle)theEObject;
                T result = this.caseCommunicationCycle(communicationCycle);
                if (result == null) {
                    result = this.caseARObject(communicationCycle);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationCycle);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CycleCounter cycleCounter = (CycleCounter)theEObject;
                T result = this.caseCycleCounter(cycleCounter);
                if (result == null) {
                    result = this.caseCommunicationCycle(cycleCounter);
                }
                if (result == null) {
                    result = this.caseARObject(cycleCounter);
                }
                if (result == null) {
                    result = this.caseGARObject(cycleCounter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CycleRepetition cycleRepetition = (CycleRepetition)theEObject;
                T result = this.caseCycleRepetition(cycleRepetition);
                if (result == null) {
                    result = this.caseCommunicationCycle(cycleRepetition);
                }
                if (result == null) {
                    result = this.caseARObject(cycleRepetition);
                }
                if (result == null) {
                    result = this.caseGARObject(cycleRepetition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommunicationCycle(CommunicationCycle object) {
        return null;
    }

    public T caseCycleCounter(CycleCounter object) {
        return null;
    }

    public T caseCycleRepetition(CycleRepetition object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

