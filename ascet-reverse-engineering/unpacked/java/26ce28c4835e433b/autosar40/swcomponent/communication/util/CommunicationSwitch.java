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
package autosar40.swcomponent.communication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.communication.ClientComSpec;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.ModeSwitchReceiverComSpec;
import autosar40.swcomponent.communication.ModeSwitchSenderComSpec;
import autosar40.swcomponent.communication.ModeSwitchedAckRequest;
import autosar40.swcomponent.communication.NonqueuedReceiverComSpec;
import autosar40.swcomponent.communication.NonqueuedSenderComSpec;
import autosar40.swcomponent.communication.NvProvideComSpec;
import autosar40.swcomponent.communication.NvRequireComSpec;
import autosar40.swcomponent.communication.PPortComSpec;
import autosar40.swcomponent.communication.ParameterProvideComSpec;
import autosar40.swcomponent.communication.ParameterRequireComSpec;
import autosar40.swcomponent.communication.QueuedReceiverComSpec;
import autosar40.swcomponent.communication.QueuedSenderComSpec;
import autosar40.swcomponent.communication.RPortComSpec;
import autosar40.swcomponent.communication.ReceiverComSpec;
import autosar40.swcomponent.communication.SenderComSpec;
import autosar40.swcomponent.communication.ServerComSpec;
import autosar40.swcomponent.communication.TransmissionAcknowledgementRequest;
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
            case 1: {
                ModeSwitchReceiverComSpec modeSwitchReceiverComSpec = (ModeSwitchReceiverComSpec)theEObject;
                T result = this.caseModeSwitchReceiverComSpec(modeSwitchReceiverComSpec);
                if (result == null) {
                    result = this.caseRPortComSpec(modeSwitchReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(modeSwitchReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
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
            case 3: {
                ModeSwitchSenderComSpec modeSwitchSenderComSpec = (ModeSwitchSenderComSpec)theEObject;
                T result = this.caseModeSwitchSenderComSpec(modeSwitchSenderComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(modeSwitchSenderComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(modeSwitchSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                NvProvideComSpec nvProvideComSpec = (NvProvideComSpec)theEObject;
                T result = this.caseNvProvideComSpec(nvProvideComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(nvProvideComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(nvProvideComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(nvProvideComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(nvProvideComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                NvRequireComSpec nvRequireComSpec = (NvRequireComSpec)theEObject;
                T result = this.caseNvRequireComSpec(nvRequireComSpec);
                if (result == null) {
                    result = this.caseRPortComSpec(nvRequireComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(nvRequireComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(nvRequireComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(nvRequireComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ParameterProvideComSpec parameterProvideComSpec = (ParameterProvideComSpec)theEObject;
                T result = this.caseParameterProvideComSpec(parameterProvideComSpec);
                if (result == null) {
                    result = this.casePPortComSpec(parameterProvideComSpec);
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
            case 7: {
                ParameterRequireComSpec parameterRequireComSpec = (ParameterRequireComSpec)theEObject;
                T result = this.caseParameterRequireComSpec(parameterRequireComSpec);
                if (result == null) {
                    result = this.caseRPortComSpec(parameterRequireComSpec);
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
            case 8: {
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
            case 9: {
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
            case 10: {
                NonqueuedSenderComSpec nonqueuedSenderComSpec = (NonqueuedSenderComSpec)theEObject;
                T result = this.caseNonqueuedSenderComSpec(nonqueuedSenderComSpec);
                if (result == null) {
                    result = this.caseSenderComSpec(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGNonqueuedSenderComSpec(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.casePPortComSpec(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGSenderComSpec(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(nonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
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
            case 12: {
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
            case 13: {
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
            case 14: {
                NonqueuedReceiverComSpec nonqueuedReceiverComSpec = (NonqueuedReceiverComSpec)theEObject;
                T result = this.caseNonqueuedReceiverComSpec(nonqueuedReceiverComSpec);
                if (result == null) {
                    result = this.caseReceiverComSpec(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGNonqueuedReceiverComSpec(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseRPortComSpec(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGReceiverComSpec(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseARObject(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(nonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
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
            case 16: {
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
            case 17: {
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeSwitchedAckRequest(ModeSwitchedAckRequest object) {
        return null;
    }

    public T caseModeSwitchReceiverComSpec(ModeSwitchReceiverComSpec object) {
        return null;
    }

    public T caseRPortComSpec(RPortComSpec object) {
        return null;
    }

    public T caseModeSwitchSenderComSpec(ModeSwitchSenderComSpec object) {
        return null;
    }

    public T caseNvProvideComSpec(NvProvideComSpec object) {
        return null;
    }

    public T caseNvRequireComSpec(NvRequireComSpec object) {
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

    public T caseNonqueuedSenderComSpec(NonqueuedSenderComSpec object) {
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

    public T caseNonqueuedReceiverComSpec(NonqueuedReceiverComSpec object) {
        return null;
    }

    public T caseQueuedReceiverComSpec(QueuedReceiverComSpec object) {
        return null;
    }

    public T caseClientComSpec(ClientComSpec object) {
        return null;
    }

    public T casePPortComSpec(PPortComSpec object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGRPortComSpec(GRPortComSpec object) {
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

