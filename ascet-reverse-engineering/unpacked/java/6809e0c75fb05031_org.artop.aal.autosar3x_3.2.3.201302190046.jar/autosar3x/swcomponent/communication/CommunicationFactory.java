/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.ClientComSpec;
import autosar3x.swcomponent.communication.CommunicationPackage;
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
import autosar3x.swcomponent.communication.impl.CommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CommunicationFactory
extends EFactory {
    public static final CommunicationFactory eINSTANCE = CommunicationFactoryImpl.init();

    public ModeSwitchComSpec createModeSwitchComSpec();

    public ModeSwitchedAckRequest createModeSwitchedAckRequest();

    public ParameterProvideComSpec createParameterProvideComSpec();

    public ParameterRequireComSpec createParameterRequireComSpec();

    public TransmissionAcknowledgementRequest createTransmissionAcknowledgementRequest();

    public UnqueuedSenderComSpec createUnqueuedSenderComSpec();

    public QueuedSenderComSpec createQueuedSenderComSpec();

    public ServerComSpec createServerComSpec();

    public UnqueuedReceiverComSpec createUnqueuedReceiverComSpec();

    public QueuedReceiverComSpec createQueuedReceiverComSpec();

    public ClientComSpec createClientComSpec();

    public CommunicationPackage getCommunicationPackage();
}

