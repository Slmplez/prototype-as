/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.portinterface;

import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
import autosar21.swcomponent.portinterface.impl.PortinterfaceFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortinterfaceFactory
extends EFactory {
    public static final PortinterfaceFactory eINSTANCE = PortinterfaceFactoryImpl.init();

    public ModeDeclarationGroupPrototype createModeDeclarationGroupPrototype();

    public OperationPrototype createOperationPrototype();

    public ArgumentPrototype createArgumentPrototype();

    public ClientServerInterface createClientServerInterface();

    public SenderReceiverInterface createSenderReceiverInterface();

    public DataElementPrototype createDataElementPrototype();

    public PortinterfacePackage getPortinterfacePackage();
}

