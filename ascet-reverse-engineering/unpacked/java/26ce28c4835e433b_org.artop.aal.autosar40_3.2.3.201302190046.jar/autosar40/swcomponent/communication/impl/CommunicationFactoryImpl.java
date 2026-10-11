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
package autosar40.swcomponent.communication.impl;

import autosar40.swcomponent.communication.ClientComSpec;
import autosar40.swcomponent.communication.CommunicationFactory;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.HandleInvalidEnum;
import autosar40.swcomponent.communication.HandleOutOfRangeEnum;
import autosar40.swcomponent.communication.HandleOutOfRangeStatusEnum;
import autosar40.swcomponent.communication.HandleTimeoutEnum;
import autosar40.swcomponent.communication.ModeSwitchReceiverComSpec;
import autosar40.swcomponent.communication.ModeSwitchSenderComSpec;
import autosar40.swcomponent.communication.ModeSwitchedAckRequest;
import autosar40.swcomponent.communication.NonqueuedReceiverComSpec;
import autosar40.swcomponent.communication.NonqueuedSenderComSpec;
import autosar40.swcomponent.communication.NvProvideComSpec;
import autosar40.swcomponent.communication.NvRequireComSpec;
import autosar40.swcomponent.communication.ParameterProvideComSpec;
import autosar40.swcomponent.communication.ParameterRequireComSpec;
import autosar40.swcomponent.communication.QueuedReceiverComSpec;
import autosar40.swcomponent.communication.QueuedSenderComSpec;
import autosar40.swcomponent.communication.ServerComSpec;
import autosar40.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar40.swcomponent.communication.impl.ClientComSpecImpl;
import autosar40.swcomponent.communication.impl.ModeSwitchReceiverComSpecImpl;
import autosar40.swcomponent.communication.impl.ModeSwitchSenderComSpecImpl;
import autosar40.swcomponent.communication.impl.ModeSwitchedAckRequestImpl;
import autosar40.swcomponent.communication.impl.NonqueuedReceiverComSpecImpl;
import autosar40.swcomponent.communication.impl.NonqueuedSenderComSpecImpl;
import autosar40.swcomponent.communication.impl.NvProvideComSpecImpl;
import autosar40.swcomponent.communication.impl.NvRequireComSpecImpl;
import autosar40.swcomponent.communication.impl.ParameterProvideComSpecImpl;
import autosar40.swcomponent.communication.impl.ParameterRequireComSpecImpl;
import autosar40.swcomponent.communication.impl.QueuedReceiverComSpecImpl;
import autosar40.swcomponent.communication.impl.QueuedSenderComSpecImpl;
import autosar40.swcomponent.communication.impl.ServerComSpecImpl;
import autosar40.swcomponent.communication.impl.TransmissionAcknowledgementRequestImpl;
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
            CommunicationFactory theCommunicationFactory = (CommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/communication");
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
                return this.createModeSwitchedAckRequest();
            }
            case 1: {
                return this.createModeSwitchReceiverComSpec();
            }
            case 3: {
                return this.createModeSwitchSenderComSpec();
            }
            case 4: {
                return this.createNvProvideComSpec();
            }
            case 5: {
                return this.createNvRequireComSpec();
            }
            case 6: {
                return this.createParameterProvideComSpec();
            }
            case 7: {
                return this.createParameterRequireComSpec();
            }
            case 9: {
                return this.createTransmissionAcknowledgementRequest();
            }
            case 10: {
                return this.createNonqueuedSenderComSpec();
            }
            case 11: {
                return this.createQueuedSenderComSpec();
            }
            case 12: {
                return this.createServerComSpec();
            }
            case 14: {
                return this.createNonqueuedReceiverComSpec();
            }
            case 15: {
                return this.createQueuedReceiverComSpec();
            }
            case 16: {
                return this.createClientComSpec();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 18: {
                return this.createHandleInvalidEnumFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createHandleOutOfRangeEnumFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createHandleOutOfRangeStatusEnumFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createHandleTimeoutEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 18: {
                return this.convertHandleInvalidEnumToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertHandleOutOfRangeEnumToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertHandleOutOfRangeStatusEnumToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertHandleTimeoutEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ModeSwitchedAckRequest createModeSwitchedAckRequest() {
        ModeSwitchedAckRequestImpl modeSwitchedAckRequest = new ModeSwitchedAckRequestImpl();
        return modeSwitchedAckRequest;
    }

    public ModeSwitchReceiverComSpec createModeSwitchReceiverComSpec() {
        ModeSwitchReceiverComSpecImpl modeSwitchReceiverComSpec = new ModeSwitchReceiverComSpecImpl();
        return modeSwitchReceiverComSpec;
    }

    public ModeSwitchSenderComSpec createModeSwitchSenderComSpec() {
        ModeSwitchSenderComSpecImpl modeSwitchSenderComSpec = new ModeSwitchSenderComSpecImpl();
        return modeSwitchSenderComSpec;
    }

    public NvProvideComSpec createNvProvideComSpec() {
        NvProvideComSpecImpl nvProvideComSpec = new NvProvideComSpecImpl();
        return nvProvideComSpec;
    }

    public NvRequireComSpec createNvRequireComSpec() {
        NvRequireComSpecImpl nvRequireComSpec = new NvRequireComSpecImpl();
        return nvRequireComSpec;
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

    public NonqueuedSenderComSpec createNonqueuedSenderComSpec() {
        NonqueuedSenderComSpecImpl nonqueuedSenderComSpec = new NonqueuedSenderComSpecImpl();
        return nonqueuedSenderComSpec;
    }

    public QueuedSenderComSpec createQueuedSenderComSpec() {
        QueuedSenderComSpecImpl queuedSenderComSpec = new QueuedSenderComSpecImpl();
        return queuedSenderComSpec;
    }

    public ServerComSpec createServerComSpec() {
        ServerComSpecImpl serverComSpec = new ServerComSpecImpl();
        return serverComSpec;
    }

    public NonqueuedReceiverComSpec createNonqueuedReceiverComSpec() {
        NonqueuedReceiverComSpecImpl nonqueuedReceiverComSpec = new NonqueuedReceiverComSpecImpl();
        return nonqueuedReceiverComSpec;
    }

    public QueuedReceiverComSpec createQueuedReceiverComSpec() {
        QueuedReceiverComSpecImpl queuedReceiverComSpec = new QueuedReceiverComSpecImpl();
        return queuedReceiverComSpec;
    }

    public ClientComSpec createClientComSpec() {
        ClientComSpecImpl clientComSpec = new ClientComSpecImpl();
        return clientComSpec;
    }

    public HandleInvalidEnum createHandleInvalidEnumFromString(EDataType eDataType, String initialValue) {
        HandleInvalidEnum result = HandleInvalidEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHandleInvalidEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public HandleOutOfRangeEnum createHandleOutOfRangeEnumFromString(EDataType eDataType, String initialValue) {
        HandleOutOfRangeEnum result = HandleOutOfRangeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHandleOutOfRangeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public HandleOutOfRangeStatusEnum createHandleOutOfRangeStatusEnumFromString(EDataType eDataType, String initialValue) {
        HandleOutOfRangeStatusEnum result = HandleOutOfRangeStatusEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHandleOutOfRangeStatusEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public HandleTimeoutEnum createHandleTimeoutEnumFromString(EDataType eDataType, String initialValue) {
        HandleTimeoutEnum result = HandleTimeoutEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHandleTimeoutEnumToString(EDataType eDataType, Object instanceValue) {
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

