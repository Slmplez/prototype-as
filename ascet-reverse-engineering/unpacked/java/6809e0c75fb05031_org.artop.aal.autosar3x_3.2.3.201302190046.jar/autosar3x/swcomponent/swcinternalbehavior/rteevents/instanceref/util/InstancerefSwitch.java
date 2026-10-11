/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceivedEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
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
                DataReceiveErrorEventData dataReceiveErrorEventData = (DataReceiveErrorEventData)theEObject;
                T result = this.caseDataReceiveErrorEventData(dataReceiveErrorEventData);
                if (result == null) {
                    result = this.caseARObject(dataReceiveErrorEventData);
                }
                if (result == null) {
                    result = this.caseGRVariableInAtomicSwcIRef(dataReceiveErrorEventData);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef((GVariableInAtomicSwcIRef)dataReceiveErrorEventData);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceiveErrorEventData);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ModeSwitchEventMode modeSwitchEventMode = (ModeSwitchEventMode)theEObject;
                T result = this.caseModeSwitchEventMode(modeSwitchEventMode);
                if (result == null) {
                    result = this.caseARObject(modeSwitchEventMode);
                }
                if (result == null) {
                    result = this.caseGRModeInAtomicSwcIRef(modeSwitchEventMode);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchEventMode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                OperationInvokedEventOperation operationInvokedEventOperation = (OperationInvokedEventOperation)theEObject;
                T result = this.caseOperationInvokedEventOperation(operationInvokedEventOperation);
                if (result == null) {
                    result = this.caseARObject(operationInvokedEventOperation);
                }
                if (result == null) {
                    result = this.caseGPOperationInAtomicSwcIRef(operationInvokedEventOperation);
                }
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef((GOperationInAtomicSwcIRef)operationInvokedEventOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(operationInvokedEventOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DataReceivedEventData dataReceivedEventData = (DataReceivedEventData)theEObject;
                T result = this.caseDataReceivedEventData(dataReceivedEventData);
                if (result == null) {
                    result = this.caseARObject(dataReceivedEventData);
                }
                if (result == null) {
                    result = this.caseGRVariableInAtomicSwcIRef(dataReceivedEventData);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef((GVariableInAtomicSwcIRef)dataReceivedEventData);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceivedEventData);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDataReceiveErrorEventData(DataReceiveErrorEventData object) {
        return null;
    }

    public T caseModeSwitchEventMode(ModeSwitchEventMode object) {
        return null;
    }

    public T caseOperationInvokedEventOperation(OperationInvokedEventOperation object) {
        return null;
    }

    public T caseDataReceivedEventData(DataReceivedEventData object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef object) {
        return null;
    }

    public T caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

