/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.portinterface;

import autosar3x.swcomponent.portinterface.ApplicationError;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.swcomponent.portinterface.ClientServerInterface;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import autosar3x.swcomponent.portinterface.impl.PortinterfaceFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortinterfaceFactory
extends EFactory {
    public static final PortinterfaceFactory eINSTANCE = PortinterfaceFactoryImpl.init();

    public ApplicationError createApplicationError();

    public ModeDeclarationGroupPrototype createModeDeclarationGroupPrototype();

    public OperationPrototype createOperationPrototype();

    public ArgumentPrototype createArgumentPrototype();

    public ClientServerInterface createClientServerInterface();

    public SenderReceiverInterface createSenderReceiverInterface();

    public DataElementPrototype createDataElementPrototype();

    public PortinterfacePackage getPortinterfacePackage();
}

