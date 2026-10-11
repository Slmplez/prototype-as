/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ModeSwitchComSpecModeDeclarationGroupPrototype;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import autosar21.swcomponent.communication.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ClientComSpecOperation createClientComSpecOperation();

    public ClientServerConnectorComSpecOperation createClientServerConnectorComSpecOperation();

    public ModeSwitchComSpecModeDeclarationGroupPrototype createModeSwitchComSpecModeDeclarationGroupPrototype();

    public ReceiverComSpecDataElement createReceiverComSpecDataElement();

    public SenderComSpecDataElement createSenderComSpecDataElement();

    public SenderReceiverConnectorComSpecDataElement createSenderReceiverConnectorComSpecDataElement();

    public ServerComSpecOperation createServerComSpecOperation();

    public InstancerefPackage getInstancerefPackage();
}

