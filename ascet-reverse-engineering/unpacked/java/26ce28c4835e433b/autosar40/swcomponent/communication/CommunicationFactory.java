/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.communication;

import autosar40.swcomponent.communication.ClientComSpec;
import autosar40.swcomponent.communication.CommunicationPackage;
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
import autosar40.swcomponent.communication.impl.CommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CommunicationFactory
extends EFactory {
    public static final CommunicationFactory eINSTANCE = CommunicationFactoryImpl.init();

    public ModeSwitchedAckRequest createModeSwitchedAckRequest();

    public ModeSwitchReceiverComSpec createModeSwitchReceiverComSpec();

    public ModeSwitchSenderComSpec createModeSwitchSenderComSpec();

    public NvProvideComSpec createNvProvideComSpec();

    public NvRequireComSpec createNvRequireComSpec();

    public ParameterProvideComSpec createParameterProvideComSpec();

    public ParameterRequireComSpec createParameterRequireComSpec();

    public TransmissionAcknowledgementRequest createTransmissionAcknowledgementRequest();

    public NonqueuedSenderComSpec createNonqueuedSenderComSpec();

    public QueuedSenderComSpec createQueuedSenderComSpec();

    public ServerComSpec createServerComSpec();

    public NonqueuedReceiverComSpec createNonqueuedReceiverComSpec();

    public QueuedReceiverComSpec createQueuedReceiverComSpec();

    public ClientComSpec createClientComSpec();

    public CommunicationPackage getCommunicationPackage();
}

