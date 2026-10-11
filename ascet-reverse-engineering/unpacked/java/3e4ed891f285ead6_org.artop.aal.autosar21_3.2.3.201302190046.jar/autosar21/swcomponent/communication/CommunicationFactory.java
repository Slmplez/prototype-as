/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.ModeSwitchComSpec;
import autosar21.swcomponent.communication.ModeSwitchedAckRequest;
import autosar21.swcomponent.communication.QueuedReceiverComSpec;
import autosar21.swcomponent.communication.QueuedSenderComSpec;
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar21.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar21.swcomponent.communication.UnqueuedSenderComSpec;
import autosar21.swcomponent.communication.impl.CommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CommunicationFactory
extends EFactory {
    public static final CommunicationFactory eINSTANCE = CommunicationFactoryImpl.init();

    public ModeSwitchComSpec createModeSwitchComSpec();

    public ModeSwitchedAckRequest createModeSwitchedAckRequest();

    public TransmissionAcknowledgementRequest createTransmissionAcknowledgementRequest();

    public UnqueuedSenderComSpec createUnqueuedSenderComSpec();

    public QueuedSenderComSpec createQueuedSenderComSpec();

    public ServerComSpec createServerComSpec();

    public UnqueuedReceiverComSpec createUnqueuedReceiverComSpec();

    public QueuedReceiverComSpec createQueuedReceiverComSpec();

    public ClientComSpec createClientComSpec();

    public SenderReceiverConnectorComSpec createSenderReceiverConnectorComSpec();

    public ClientServerConnectorComSpec createClientServerConnectorComSpec();

    public CommunicationPackage getCommunicationPackage();
}

