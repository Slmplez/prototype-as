/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.communication.CommunicationFactory;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.HandleInvalidType;
import autosar21.swcomponent.communication.ModeSwitchComSpec;
import autosar21.swcomponent.communication.ModeSwitchedAckRequest;
import autosar21.swcomponent.communication.QueuedReceiverComSpec;
import autosar21.swcomponent.communication.QueuedSenderComSpec;
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar21.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar21.swcomponent.communication.UnqueuedSenderComSpec;
import autosar21.swcomponent.communication.impl.ClientComSpecImpl;
import autosar21.swcomponent.communication.impl.ClientServerConnectorComSpecImpl;
import autosar21.swcomponent.communication.impl.ModeSwitchComSpecImpl;
import autosar21.swcomponent.communication.impl.ModeSwitchedAckRequestImpl;
import autosar21.swcomponent.communication.impl.QueuedReceiverComSpecImpl;
import autosar21.swcomponent.communication.impl.QueuedSenderComSpecImpl;
import autosar21.swcomponent.communication.impl.SenderReceiverConnectorComSpecImpl;
import autosar21.swcomponent.communication.impl.ServerComSpecImpl;
import autosar21.swcomponent.communication.impl.TransmissionAcknowledgementRequestImpl;
import autosar21.swcomponent.communication.impl.UnqueuedReceiverComSpecImpl;
import autosar21.swcomponent.communication.impl.UnqueuedSenderComSpecImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CommunicationFactoryImpl
extends EFactoryImpl
implements CommunicationFactory {
    public static CommunicationFactory init() {
        try {
            CommunicationFactory theCommunicationFactory = (CommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/communication");
            if (theCommunicationFactory != null) {
                return theCommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createModeSwitchComSpec();
            }
            case 2: {
                return this.createModeSwitchedAckRequest();
            }
            case 4: {
                return this.createTransmissionAcknowledgementRequest();
            }
            case 5: {
                return this.createUnqueuedSenderComSpec();
            }
            case 6: {
                return this.createQueuedSenderComSpec();
            }
            case 7: {
                return this.createServerComSpec();
            }
            case 9: {
                return this.createUnqueuedReceiverComSpec();
            }
            case 10: {
                return this.createQueuedReceiverComSpec();
            }
            case 11: {
                return this.createClientComSpec();
            }
            case 13: {
                return this.createSenderReceiverConnectorComSpec();
            }
            case 14: {
                return this.createClientServerConnectorComSpec();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 16: {
                return this.createHandleInvalidTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 16: {
                return this.convertHandleInvalidTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ModeSwitchComSpec createModeSwitchComSpec() {
        ModeSwitchComSpecImpl modeSwitchComSpec = new ModeSwitchComSpecImpl();
        return modeSwitchComSpec;
    }

    public ModeSwitchedAckRequest createModeSwitchedAckRequest() {
        ModeSwitchedAckRequestImpl modeSwitchedAckRequest = new ModeSwitchedAckRequestImpl();
        return modeSwitchedAckRequest;
    }

    public TransmissionAcknowledgementRequest createTransmissionAcknowledgementRequest() {
        TransmissionAcknowledgementRequestImpl transmissionAcknowledgementRequest = new TransmissionAcknowledgementRequestImpl();
        return transmissionAcknowledgementRequest;
    }

    public UnqueuedSenderComSpec createUnqueuedSenderComSpec() {
        UnqueuedSenderComSpecImpl unqueuedSenderComSpec = new UnqueuedSenderComSpecImpl();
        return unqueuedSenderComSpec;
    }

    public QueuedSenderComSpec createQueuedSenderComSpec() {
        QueuedSenderComSpecImpl queuedSenderComSpec = new QueuedSenderComSpecImpl();
        return queuedSenderComSpec;
    }

    public ServerComSpec createServerComSpec() {
        ServerComSpecImpl serverComSpec = new ServerComSpecImpl();
        return serverComSpec;
    }

    public UnqueuedReceiverComSpec createUnqueuedReceiverComSpec() {
        UnqueuedReceiverComSpecImpl unqueuedReceiverComSpec = new UnqueuedReceiverComSpecImpl();
        return unqueuedReceiverComSpec;
    }

    public QueuedReceiverComSpec createQueuedReceiverComSpec() {
        QueuedReceiverComSpecImpl queuedReceiverComSpec = new QueuedReceiverComSpecImpl();
        return queuedReceiverComSpec;
    }

    public ClientComSpec createClientComSpec() {
        ClientComSpecImpl clientComSpec = new ClientComSpecImpl();
        return clientComSpec;
    }

    public SenderReceiverConnectorComSpec createSenderReceiverConnectorComSpec() {
        SenderReceiverConnectorComSpecImpl senderReceiverConnectorComSpec = new SenderReceiverConnectorComSpecImpl();
        return senderReceiverConnectorComSpec;
    }

    public ClientServerConnectorComSpec createClientServerConnectorComSpec() {
        ClientServerConnectorComSpecImpl clientServerConnectorComSpec = new ClientServerConnectorComSpecImpl();
        return clientServerConnectorComSpec;
    }

    public HandleInvalidType createHandleInvalidTypeFromString(EDataType eDataType, String initialValue) {
        HandleInvalidType result = HandleInvalidType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHandleInvalidTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationPackage getCommunicationPackage() {
        return (CommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static CommunicationPackage getPackage() {
        return CommunicationPackage.eINSTANCE;
    }
}

