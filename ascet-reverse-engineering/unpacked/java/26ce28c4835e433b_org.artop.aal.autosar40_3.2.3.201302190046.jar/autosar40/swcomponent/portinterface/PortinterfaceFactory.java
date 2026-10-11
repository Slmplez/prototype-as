/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.portinterface.ApplicationCompositeDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import autosar40.swcomponent.portinterface.ClientServerInterfaceMapping;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.ClientServerOperationMapping;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.ImplementationDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.InvalidationPolicy;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;
import autosar40.swcomponent.portinterface.ModeSwitchInterface;
import autosar40.swcomponent.portinterface.NvDataInterface;
import autosar40.swcomponent.portinterface.ParameterInterface;
import autosar40.swcomponent.portinterface.PortInterfaceMappingSet;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.TextTableMapping;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import autosar40.swcomponent.portinterface.TriggerInterface;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;
import autosar40.swcomponent.portinterface.VariableAndParameterInterfaceMapping;
import autosar40.swcomponent.portinterface.impl.PortinterfaceFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortinterfaceFactory
extends EFactory {
    public static final PortinterfaceFactory eINSTANCE = PortinterfaceFactoryImpl.init();

    public ClientServerOperation createClientServerOperation();

    public ArgumentDataPrototype createArgumentDataPrototype();

    public ApplicationError createApplicationError();

    public ApplicationCompositeDataTypeSubElementRef createApplicationCompositeDataTypeSubElementRef();

    public ImplementationDataTypeSubElementRef createImplementationDataTypeSubElementRef();

    public ParameterInterface createParameterInterface();

    public SubElementMapping createSubElementMapping();

    public TextTableMapping createTextTableMapping();

    public TextTableValuePair createTextTableValuePair();

    public NvDataInterface createNvDataInterface();

    public InvalidationPolicy createInvalidationPolicy();

    public ModeSwitchInterface createModeSwitchInterface();

    public SenderReceiverInterface createSenderReceiverInterface();

    public ClientServerInterface createClientServerInterface();

    public TriggerInterface createTriggerInterface();

    public PortInterfaceMappingSet createPortInterfaceMappingSet();

    public VariableAndParameterInterfaceMapping createVariableAndParameterInterfaceMapping();

    public DataPrototypeMapping createDataPrototypeMapping();

    public ModeInterfaceMapping createModeInterfaceMapping();

    public ClientServerInterfaceMapping createClientServerInterfaceMapping();

    public ClientServerOperationMapping createClientServerOperationMapping();

    public TriggerInterfaceMapping createTriggerInterfaceMapping();

    public PortinterfacePackage getPortinterfacePackage();
}

