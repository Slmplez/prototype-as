/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
 *  gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec
 *  gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec
 *  gautosar.gswcomponents.gcommunication.GPPortComSpec
 *  gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec
 *  gautosar.gswcomponents.gcommunication.GQueuedSenderComSpec
 *  gautosar.gswcomponents.gcommunication.GRPortComSpec
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 *  gautosar.gswcomponents.gcommunication.GSenderComSpec
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.communication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.communication.ClientComSpec;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.ModeSwitchComSpec;
import autosar3x.swcomponent.communication.ModeSwitchedAckRequest;
import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.communication.ParameterProvideComSpec;
import autosar3x.swcomponent.communication.ParameterRequireComSpec;
import autosar3x.swcomponent.communication.QueuedReceiverComSpec;
import autosar3x.swcomponent.communication.QueuedSenderComSpec;
import autosar3x.swcomponent.communication.RPortComSpec;
import autosar3x.swcomponent.communication.ReceiverComSpec;
import autosar3x.swcomponent.communication.SenderComSpec;
import autosar3x.swcomponent.communication.ServerComSpec;
import autosar3x.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar3x.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar3x.swcomponent.communication.UnqueuedSenderComSpec;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.InitValueAssignment;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcommunication.GClientComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GPPortComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommunicationSwitch<T> {
    protected static CommunicationPackage modelPackage;

    public CommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = CommunicationPackage.eINSTANCE;
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
                ModeSwitchComSpec modeSwitchComSpec = (ModeSwitchComSpec)theEObject;
                T result = this.caseModeSwitchComSpec(modeSwitchComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(modeSwitchComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(modeSwitchComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PPortComSpec pPortComSpec = (PPortComSpec)theEObject;
                T result = this.casePPortComSpec(pPortComSpec);
                if (result == null) {
                    result = this.caseARObject(pPortComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(pPortComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(pPortComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ModeSwitchedAckRequest modeSwitchedAckRequest = (ModeSwitchedAckRequest)theEObject;
                T result = this.caseModeSwitchedAckRequest(modeSwitchedAckRequest);
                if (result == null) {
                    result = this.caseARObject(modeSwitchedAckRequest);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchedAckRequest);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ParameterProvideComSpec parameterProvideComSpec = (ParameterProvideComSpec)theEObject;
                T result = this.caseParameterProvideComSpec(parameterProvideComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(parameterProvideComSpec);
                }
                if (result == null) {
                    result = this.caseInitValueAssignment(parameterProvideComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(parameterProvideComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(parameterProvideComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterProvideComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ParameterRequireComSpec parameterRequireComSpec = (ParameterRequireComSpec)theEObject;
                T result = this.caseParameterRequireComSpec(parameterRequireComSpec);
                if (result == null) {
                    result = this.caseRPortComSpec(parameterRequireComSpec);
                }
                if (result == null) {
                    result = this.caseInitValueAssignment(parameterRequireComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(parameterRequireComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(parameterRequireComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterRequireComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SenderComSpec senderComSpec = (SenderComSpec)theEObject;
                T result = this.caseSenderComSpec(senderComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(senderComSpec);
                }
                if (result == null) {
                    result = this.caseGSenderComSpec(senderComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(senderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(senderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(senderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                TransmissionAcknowledgementRequest transmissionAcknowledgementRequest = (TransmissionAcknowledgementRequest)theEObject;
                T result = this.caseTransmissionAcknowledgementRequest(transmissionAcknowledgementRequest);
                if (result == null) {
                    result = this.caseARObject(transmissionAcknowledgementRequest);
                }
                if (result == null) {
                    result = this.caseGARObject(transmissionAcknowledgementRequest);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                UnqueuedSenderComSpec unqueuedSenderComSpec = (UnqueuedSenderComSpec)theEObject;
                T result = this.caseUnqueuedSenderComSpec(unqueuedSenderComSpec);
                if (result == null) {
                    result = this.caseSenderComSpec(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGNonqueuedSenderComSpec(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.casePPortComSpec(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGSenderComSpec(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(unqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                QueuedSenderComSpec queuedSenderComSpec = (QueuedSenderComSpec)theEObject;
                T result = this.caseQueuedSenderComSpec(queuedSenderComSpec);
                if (result == null) {
                    result = this.caseSenderComSpec(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGQueuedSenderComSpec(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.casePPortComSpec(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGSenderComSpec(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(queuedSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ServerComSpec serverComSpec = (ServerComSpec)theEObject;
                T result = this.caseServerComSpec(serverComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(serverComSpec);
                }
                if (result == null) {
                    result = this.caseGServerComSpec(serverComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(serverComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(serverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(serverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ReceiverComSpec receiverComSpec = (ReceiverComSpec)theEObject;
                T result = this.caseReceiverComSpec(receiverComSpec);
                if (result == null) {
                    result = this.caseRPortComSpec(receiverComSpec);
                }
                if (result == null) {
                    result = this.caseGReceiverComSpec(receiverComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(receiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(receiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(receiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                UnqueuedReceiverComSpec unqueuedReceiverComSpec = (UnqueuedReceiverComSpec)theEObject;
                T result = this.caseUnqueuedReceiverComSpec(unqueuedReceiverComSpec);
                if (result == null) {
                    result = this.caseReceiverComSpec(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGNonqueuedReceiverComSpec(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseRPortComSpec(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGReceiverComSpec(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(unqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                QueuedReceiverComSpec queuedReceiverComSpec = (QueuedReceiverComSpec)theEObject;
                T result = this.caseQueuedReceiverComSpec(queuedReceiverComSpec);
                if (result == null) {
                    result = this.caseReceiverComSpec(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGQueuedReceiverComSpec(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseRPortComSpec(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGReceiverComSpec(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(queuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                ClientComSpec clientComSpec = (ClientComSpec)theEObject;
                T result = this.caseClientComSpec(clientComSpec);
                if (result == null) {
                    result = this.caseRPortComSpec(clientComSpec);
                }
                if (result == null) {
                    result = this.caseGClientComSpec(clientComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(clientComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(clientComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(clientComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                RPortComSpec rPortComSpec = (RPortComSpec)theEObject;
                T result = this.caseRPortComSpec(rPortComSpec);
                if (result == null) {
                    result = this.caseARObject(rPortComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(rPortComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(rPortComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeSwitchComSpec(ModeSwitchComSpec object) {
        return null;
    }

    public T casePPortComSpec(PPortComSpec object) {
        return null;
    }

    public T caseModeSwitchedAckRequest(ModeSwitchedAckRequest object) {
        return null;
    }

    public T caseParameterProvideComSpec(ParameterProvideComSpec object) {
        return null;
    }

    public T caseParameterRequireComSpec(ParameterRequireComSpec object) {
        return null;
    }

    public T caseSenderComSpec(SenderComSpec object) {
        return null;
    }

    public T caseTransmissionAcknowledgementRequest(TransmissionAcknowledgementRequest object) {
        return null;
    }

    public T caseUnqueuedSenderComSpec(UnqueuedSenderComSpec object) {
        return null;
    }

    public T caseQueuedSenderComSpec(QueuedSenderComSpec object) {
        return null;
    }

    public T caseServerComSpec(ServerComSpec object) {
        return null;
    }

    public T caseReceiverComSpec(ReceiverComSpec object) {
        return null;
    }

    public T caseUnqueuedReceiverComSpec(UnqueuedReceiverComSpec object) {
        return null;
    }

    public T caseQueuedReceiverComSpec(QueuedReceiverComSpec object) {
        return null;
    }

    public T caseClientComSpec(ClientComSpec object) {
        return null;
    }

    public T caseRPortComSpec(RPortComSpec object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGPPortComSpec(GPPortComSpec object) {
        return null;
    }

    public T caseInitValueAssignment(InitValueAssignment object) {
        return null;
    }

    public T caseGRPortComSpec(GRPortComSpec object) {
        return null;
    }

    public T caseGSenderComSpec(GSenderComSpec object) {
        return null;
    }

    public T caseGNonqueuedSenderComSpec(GNonqueuedSenderComSpec object) {
        return null;
    }

    public T caseGQueuedSenderComSpec(GQueuedSenderComSpec object) {
        return null;
    }

    public T caseGServerComSpec(GServerComSpec object) {
        return null;
    }

    public T caseGReceiverComSpec(GReceiverComSpec object) {
        return null;
    }

    public T caseGNonqueuedReceiverComSpec(GNonqueuedReceiverComSpec object) {
        return null;
    }

    public T caseGQueuedReceiverComSpec(GQueuedReceiverComSpec object) {
        return null;
    }

    public T caseGClientComSpec(GClientComSpec object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

