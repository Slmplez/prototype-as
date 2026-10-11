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
package autosar40.swcomponent.swcinternalbehavior.rteevents.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.BackgroundEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataReceiveErrorEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataSendCompletedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataWriteCompletedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ExternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.InternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
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
                BackgroundEvent backgroundEvent = (BackgroundEvent)theEObject;
                T result = this.caseBackgroundEvent(backgroundEvent);
                if (result == null) {
                    result = this.caseRTEEvent(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseARObject(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(backgroundEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(backgroundEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DataWriteCompletedEvent dataWriteCompletedEvent = (DataWriteCompletedEvent)theEObject;
                T result = this.caseDataWriteCompletedEvent(dataWriteCompletedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataWriteCompletedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ExternalTriggerOccurredEvent externalTriggerOccurredEvent = (ExternalTriggerOccurredEvent)theEObject;
                T result = this.caseExternalTriggerOccurredEvent(externalTriggerOccurredEvent);
                if (result == null) {
                    result = this.caseRTEEvent(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseARObject(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(externalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                InternalTriggerOccurredEvent internalTriggerOccurredEvent = (InternalTriggerOccurredEvent)theEObject;
                T result = this.caseInternalTriggerOccurredEvent(internalTriggerOccurredEvent);
                if (result == null) {
                    result = this.caseRTEEvent(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseARObject(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(internalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ModeSwitchedAckEvent modeSwitchedAckEvent = (ModeSwitchedAckEvent)theEObject;
                T result = this.caseModeSwitchedAckEvent(modeSwitchedAckEvent);
                if (result == null) {
                    result = this.caseRTEEvent(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                AsynchronousServerCallReturnsEvent asynchronousServerCallReturnsEvent = (AsynchronousServerCallReturnsEvent)theEObject;
                T result = this.caseAsynchronousServerCallReturnsEvent(asynchronousServerCallReturnsEvent);
                if (result == null) {
                    result = this.caseRTEEvent(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGAsynchronousServerCallReturnsEvent(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseARObject(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(asynchronousServerCallReturnsEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DataSendCompletedEvent dataSendCompletedEvent = (DataSendCompletedEvent)theEObject;
                T result = this.caseDataSendCompletedEvent(dataSendCompletedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGDataSendCompletedEvent(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataSendCompletedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                DataReceivedEvent dataReceivedEvent = (DataReceivedEvent)theEObject;
                T result = this.caseDataReceivedEvent(dataReceivedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGDataReceivedEvent(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceivedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                DataReceiveErrorEvent dataReceiveErrorEvent = (DataReceiveErrorEvent)theEObject;
                T result = this.caseDataReceiveErrorEvent(dataReceiveErrorEvent);
                if (result == null) {
                    result = this.caseRTEEvent(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGDataReceiveErrorEvent(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseARObject(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceiveErrorEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                TimingEvent timingEvent = (TimingEvent)theEObject;
                T result = this.caseTimingEvent(timingEvent);
                if (result == null) {
                    result = this.caseRTEEvent(timingEvent);
                }
                if (result == null) {
                    result = this.caseGTimingEvent(timingEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(timingEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(timingEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(timingEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(timingEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(timingEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(timingEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timingEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(timingEvent);
                }
                if (result == null) {
                    result = this.caseARObject(timingEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(timingEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(timingEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                OperationInvokedEvent operationInvokedEvent = (OperationInvokedEvent)theEObject;
                T result = this.caseOperationInvokedEvent(operationInvokedEvent);
                if (result == null) {
                    result = this.caseRTEEvent(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGOperationInvokedEvent(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseARObject(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(operationInvokedEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                WaitPoint waitPoint = (WaitPoint)theEObject;
                T result = this.caseWaitPoint(waitPoint);
                if (result == null) {
                    result = this.caseIdentifiable(waitPoint);
                }
                if (result == null) {
                    result = this.caseGWaitPoint(waitPoint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(waitPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(waitPoint);
                }
                if (result == null) {
                    result = this.caseReferrable(waitPoint);
                }
                if (result == null) {
                    result = this.caseARObject(waitPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(waitPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(waitPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                SwcModeSwitchEvent swcModeSwitchEvent = (SwcModeSwitchEvent)theEObject;
                T result = this.caseSwcModeSwitchEvent(swcModeSwitchEvent);
                if (result == null) {
                    result = this.caseRTEEvent(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGSwcModeSwitchEvent(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseARObject(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(swcModeSwitchEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                RTEEvent rteEvent = (RTEEvent)theEObject;
                T result = this.caseRTEEvent(rteEvent);
                if (result == null) {
                    result = this.caseAtpStructureElement(rteEvent);
                }
                if (result == null) {
                    result = this.caseGRTEEvent(rteEvent);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(rteEvent);
                }
                if (result == null) {
                    result = this.caseAtpFeature(rteEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(rteEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(rteEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(rteEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(rteEvent);
                }
                if (result == null) {
                    result = this.caseARObject(rteEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(rteEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(rteEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBackgroundEvent(BackgroundEvent object) {
        return null;
    }

    public T caseDataWriteCompletedEvent(DataWriteCompletedEvent object) {
        return null;
    }

    public T caseExternalTriggerOccurredEvent(ExternalTriggerOccurredEvent object) {
        return null;
    }

    public T caseInternalTriggerOccurredEvent(InternalTriggerOccurredEvent object) {
        return null;
    }

    public T caseModeSwitchedAckEvent(ModeSwitchedAckEvent object) {
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

    public T caseWaitPoint(WaitPoint object) {
        return null;
    }

    public T caseSwcModeSwitchEvent(SwcModeSwitchEvent object) {
        return null;
    }

    public T caseRTEEvent(RTEEvent object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
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

    public T caseGWaitPoint(GWaitPoint object) {
        return null;
    }

    public T caseGSwcModeSwitchEvent(GSwcModeSwitchEvent object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

