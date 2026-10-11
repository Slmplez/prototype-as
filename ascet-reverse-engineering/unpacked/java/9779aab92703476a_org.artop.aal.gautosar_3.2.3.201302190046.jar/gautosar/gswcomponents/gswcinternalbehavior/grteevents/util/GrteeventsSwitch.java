/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents.util;

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
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GrteeventsSwitch<T> {
    protected static GrteeventsPackage modelPackage;

    public GrteeventsSwitch() {
        if (modelPackage == null) {
            modelPackage = GrteeventsPackage.eINSTANCE;
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
                GRTEEvent grteEvent = (GRTEEvent)theEObject;
                T result = this.caseGRTEEvent(grteEvent);
                if (result == null) {
                    result = this.caseGIdentifiable(grteEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(grteEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(grteEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GDataReceivedEvent gDataReceivedEvent = (GDataReceivedEvent)theEObject;
                T result = this.caseGDataReceivedEvent(gDataReceivedEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gDataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gDataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gDataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gDataReceivedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GSwcModeSwitchEvent gSwcModeSwitchEvent = (GSwcModeSwitchEvent)theEObject;
                T result = this.caseGSwcModeSwitchEvent(gSwcModeSwitchEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gSwcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSwcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSwcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GTimingEvent gTimingEvent = (GTimingEvent)theEObject;
                T result = this.caseGTimingEvent(gTimingEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gTimingEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gTimingEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gTimingEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gTimingEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GWaitPoint gWaitPoint = (GWaitPoint)theEObject;
                T result = this.caseGWaitPoint(gWaitPoint);
                if (result == null) {
                    result = this.caseGIdentifiable(gWaitPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(gWaitPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(gWaitPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GDataReceiveErrorEvent gDataReceiveErrorEvent = (GDataReceiveErrorEvent)theEObject;
                T result = this.caseGDataReceiveErrorEvent(gDataReceiveErrorEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gDataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gDataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gDataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gDataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GOperationInvokedEvent gOperationInvokedEvent = (GOperationInvokedEvent)theEObject;
                T result = this.caseGOperationInvokedEvent(gOperationInvokedEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gOperationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gOperationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gOperationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gOperationInvokedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GAsynchronousServerCallReturnsEvent gAsynchronousServerCallReturnsEvent = (GAsynchronousServerCallReturnsEvent)theEObject;
                T result = this.caseGAsynchronousServerCallReturnsEvent(gAsynchronousServerCallReturnsEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gAsynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAsynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAsynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gAsynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GDataSendCompletedEvent gDataSendCompletedEvent = (GDataSendCompletedEvent)theEObject;
                T result = this.caseGDataSendCompletedEvent(gDataSendCompletedEvent);
                if (result == null) {
                    result = this.caseGRTEEvent(gDataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gDataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(gDataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(gDataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGRTEEvent(GRTEEvent object) {
        return null;
    }

    public T caseGDataReceivedEvent(GDataReceivedEvent object) {
        return null;
    }

    public T caseGSwcModeSwitchEvent(GSwcModeSwitchEvent object) {
        return null;
    }

    public T caseGTimingEvent(GTimingEvent object) {
        return null;
    }

    public T caseGWaitPoint(GWaitPoint object) {
        return null;
    }

    public T caseGDataReceiveErrorEvent(GDataReceiveErrorEvent object) {
        return null;
    }

    public T caseGOperationInvokedEvent(GOperationInvokedEvent object) {
        return null;
    }

    public T caseGAsynchronousServerCallReturnsEvent(GAsynchronousServerCallReturnsEvent object) {
        return null;
    }

    public T caseGDataSendCompletedEvent(GDataSendCompletedEvent object) {
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

