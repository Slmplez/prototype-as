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
package autosar3x.swcomponent.communication.impl;

import autosar3x.swcomponent.communication.ClientComSpec;
import autosar3x.swcomponent.communication.CommunicationFactory;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.HandleInvalidType;
import autosar3x.swcomponent.communication.ModeSwitchComSpec;
import autosar3x.swcomponent.communication.ModeSwitchedAckRequest;
import autosar3x.swcomponent.communication.ParameterProvideComSpec;
import autosar3x.swcomponent.communication.ParameterRequireComSpec;
import autosar3x.swcomponent.communication.QueuedReceiverComSpec;
import autosar3x.swcomponent.communication.QueuedSenderComSpec;
import autosar3x.swcomponent.communication.ServerComSpec;
import autosar3x.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar3x.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar3x.swcomponent.communication.UnqueuedSenderComSpec;
import autosar3x.swcomponent.communication.impl.ClientComSpecImpl;
import autosar3x.swcomponent.communication.impl.ModeSwitchComSpecImpl;
import autosar3x.swcomponent.communication.impl.ModeSwitchedAckRequestImpl;
import autosar3x.swcomponent.communication.impl.ParameterProvideComSpecImpl;
import autosar3x.swcomponent.communication.impl.ParameterRequireComSpecImpl;
import autosar3x.swcomponent.communication.impl.QueuedReceiverComSpecImpl;
import autosar3x.swcomponent.communication.impl.QueuedSenderComSpecImpl;
import autosar3x.swcomponent.communication.impl.ServerComSpecImpl;
import autosar3x.swcomponent.communication.impl.TransmissionAcknowledgementRequestImpl;
import autosar3x.swcomponent.communication.impl.UnqueuedReceiverComSpecImpl;
import autosar3x.swcomponent.communication.impl.UnqueuedSenderComSpecImpl;
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
            CommunicationFactory theCommunicationFactory = (CommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/communication");
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
            case 3: {
                return this.createParameterProvideComSpec();
            }
            case 4: {
                return this.createParameterRequireComSpec();
            }
            case 6: {
                return this.createTransmissionAcknowledgementRequest();
            }
            case 7: {
                return this.createUnqueuedSenderComSpec();
            }
            case 8: {
                return this.createQueuedSenderComSpec();
            }
            case 9: {
                return this.createServerComSpec();
            }
            case 11: {
                return this.createUnqueuedReceiverComSpec();
            }
            case 12: {
                return this.createQueuedReceiverComSpec();
            }
            case 13: {
                return this.createClientComSpec();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 15: {
                return this.createHandleInvalidTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 15: {
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

    public ParameterProvideComSpec createParameterProvideComSpec() {
        ParameterProvideComSpecImpl parameterProvideComSpec = new ParameterProvideComSpecImpl();
        return parameterProvideComSpec;
    }

    public ParameterRequireComSpec createParameterRequireComSpec() {
        ParameterRequireComSpecImpl parameterRequireComSpec = new ParameterRequireComSpecImpl();
        return parameterRequireComSpec;
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

