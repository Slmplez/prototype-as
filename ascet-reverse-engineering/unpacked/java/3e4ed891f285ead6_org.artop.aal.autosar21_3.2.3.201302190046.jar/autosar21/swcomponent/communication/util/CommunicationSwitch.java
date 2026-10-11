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
package autosar21.swcomponent.communication.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.ConnectorComSpec;
import autosar21.swcomponent.communication.ModeSwitchComSpec;
import autosar21.swcomponent.communication.ModeSwitchedAckRequest;
import autosar21.swcomponent.communication.PPortComSpec;
import autosar21.swcomponent.communication.QueuedReceiverComSpec;
import autosar21.swcomponent.communication.QueuedSenderComSpec;
import autosar21.swcomponent.communication.RPortComSpec;
import autosar21.swcomponent.communication.ReceiverComSpec;
import autosar21.swcomponent.communication.SenderComSpec;
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar21.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar21.swcomponent.communication.UnqueuedSenderComSpec;
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
            case 4: {
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
            case 5: {
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
            case 6: {
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
            case 7: {
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
            case 8: {
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
            case 9: {
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
            case 10: {
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
            case 11: {
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
            case 12: {
                ConnectorComSpec connectorComSpec = (ConnectorComSpec)theEObject;
                T result = this.caseConnectorComSpec(connectorComSpec);
                if (result == null) {
                    result = this.caseARObject(connectorComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(connectorComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SenderReceiverConnectorComSpec senderReceiverConnectorComSpec = (SenderReceiverConnectorComSpec)theEObject;
                T result = this.caseSenderReceiverConnectorComSpec(senderReceiverConnectorComSpec);
                if (result == null) {
                    result = this.caseConnectorComSpec(senderReceiverConnectorComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverConnectorComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverConnectorComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ClientServerConnectorComSpec clientServerConnectorComSpec = (ClientServerConnectorComSpec)theEObject;
                T result = this.caseClientServerConnectorComSpec(clientServerConnectorComSpec);
                if (result == null) {
                    result = this.caseConnectorComSpec(clientServerConnectorComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerConnectorComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerConnectorComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
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

    public T caseConnectorComSpec(ConnectorComSpec object) {
        return null;
    }

    public T caseSenderReceiverConnectorComSpec(SenderReceiverConnectorComSpec object) {
        return null;
    }

    public T caseClientServerConnectorComSpec(ClientServerConnectorComSpec object) {
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

    public T caseGRPortComSpec(GRPortComSpec object) {
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

