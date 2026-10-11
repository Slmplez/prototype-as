/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.rteevents.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceiveErrorEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceivedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataSendCompletedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar21.swcomponent.internalbehavior.rteevents.OperationInvokedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.TimingEvent;
import autosar21.swcomponent.internalbehavior.rteevents.WaitPoint;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RteeventsSwitch<T> {
    protected static RteeventsPackage modelPackage;

    public RteeventsSwitch() {
        if (modelPackage == null) {
            modelPackage = RteeventsPackage.eINSTANCE;
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
                ModeSwitchedAckEvent modeSwitchedAckEvent = (ModeSwitchedAckEvent)theEObject;
                T result = this.caseModeSwitchedAckEvent(modeSwitchedAckEvent);
                if (result == null) {
                    result = this.caseRTEEvent(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RTEEvent rteEvent = (RTEEvent)theEObject;
                T result = this.caseRTEEvent(rteEvent);
                if (result == null) {
                    result = this.caseIdentifiable(rteEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(rteEvent);
                }
                if (result == null) {
                    result = this.caseARObject(rteEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(rteEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)rteEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(rteEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                AsynchronousServerCallReturnsEvent asynchronousServerCallReturnsEvent = (AsynchronousServerCallReturnsEvent)theEObject;
                T result = this.caseAsynchronousServerCallReturnsEvent(asynchronousServerCallReturnsEvent);
                if (result == null) {
                    result = this.caseRTEEvent(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGAsynchronousServerCallReturnsEvent(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseARObject(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DataSendCompletedEvent dataSendCompletedEvent = (DataSendCompletedEvent)theEObject;
                T result = this.caseDataSendCompletedEvent(dataSendCompletedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGDataSendCompletedEvent(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DataReceivedEvent dataReceivedEvent = (DataReceivedEvent)theEObject;
                T result = this.caseDataReceivedEvent(dataReceivedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGDataReceivedEvent(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                DataReceiveErrorEvent dataReceiveErrorEvent = (DataReceiveErrorEvent)theEObject;
                T result = this.caseDataReceiveErrorEvent(dataReceiveErrorEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGDataReceiveErrorEvent(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                TimingEvent timingEvent = (TimingEvent)theEObject;
                T result = this.caseTimingEvent(timingEvent);
                if (result == null) {
                    result = this.caseRTEEvent(timingEvent);
                }
                if (result == null) {
                    result = this.caseGTimingEvent(timingEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(timingEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(timingEvent);
                }
                if (result == null) {
                    result = this.caseARObject(timingEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timingEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)timingEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(timingEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                OperationInvokedEvent operationInvokedEvent = (OperationInvokedEvent)theEObject;
                T result = this.caseOperationInvokedEvent(operationInvokedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGOperationInvokedEvent(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ModeSwitchEvent modeSwitchEvent = (ModeSwitchEvent)theEObject;
                T result = this.caseModeSwitchEvent(modeSwitchEvent);
                if (result == null) {
                    result = this.caseRTEEvent(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGSwcModeSwitchEvent(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)modeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                WaitPoint waitPoint = (WaitPoint)theEObject;
                T result = this.caseWaitPoint(waitPoint);
                if (result == null) {
                    result = this.caseIdentifiable(waitPoint);
                }
                if (result == null) {
                    result = this.caseGWaitPoint(waitPoint);
                }
                if (result == null) {
                    result = this.caseARObject(waitPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(waitPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)waitPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(waitPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeSwitchedAckEvent(ModeSwitchedAckEvent object) {
        return null;
    }

    public T caseRTEEvent(RTEEvent object) {
        return null;
    }

    public T caseAsynchronousServerCallReturnsEvent(AsynchronousServerCallReturnsEvent object) {
        return null;
    }

    public T caseDataSendCompletedEvent(DataSendCompletedEvent object) {
        return null;
    }

    public T caseDataReceivedEvent(DataReceivedEvent object) {
        return null;
    }

    public T caseDataReceiveErrorEvent(DataReceiveErrorEvent object) {
        return null;
    }

    public T caseTimingEvent(TimingEvent object) {
        return null;
    }

    public T caseOperationInvokedEvent(OperationInvokedEvent object) {
        return null;
    }

    public T caseModeSwitchEvent(ModeSwitchEvent object) {
        return null;
    }

    public T caseWaitPoint(WaitPoint object) {
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

    public T caseGRTEEvent(GRTEEvent object) {
        return null;
    }

    public T caseGAsynchronousServerCallReturnsEvent(GAsynchronousServerCallReturnsEvent object) {
        return null;
    }

    public T caseGDataSendCompletedEvent(GDataSendCompletedEvent object) {
        return null;
    }

    public T caseGDataReceivedEvent(GDataReceivedEvent object) {
        return null;
    }

    public T caseGDataReceiveErrorEvent(GDataReceiveErrorEvent object) {
        return null;
    }

    public T caseGTimingEvent(GTimingEvent object) {
        return null;
    }

    public T caseGOperationInvokedEvent(GOperationInvokedEvent object) {
        return null;
    }

    public T caseGSwcModeSwitchEvent(GSwcModeSwitchEvent object) {
        return null;
    }

    public T caseGWaitPoint(GWaitPoint object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

