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
package autosar40.swcomponent.portinterface.impl;

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
import autosar40.swcomponent.portinterface.MappingDirectionEnum;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;
import autosar40.swcomponent.portinterface.ModeSwitchInterface;
import autosar40.swcomponent.portinterface.NvDataInterface;
import autosar40.swcomponent.portinterface.ParameterInterface;
import autosar40.swcomponent.portinterface.PortInterface;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import autosar40.swcomponent.portinterface.PortInterfaceMappingSet;
import autosar40.swcomponent.portinterface.PortinterfaceFactory;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import autosar40.swcomponent.portinterface.ServerArgumentImplPolicyEnum;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.TextTableMapping;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import autosar40.swcomponent.portinterface.TriggerInterface;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;
import autosar40.swcomponent.portinterface.VariableAndParameterInterfaceMapping;
import autosar40.swcomponent.portinterface.impl.ApplicationCompositeDataTypeSubElementRefImpl;
import autosar40.swcomponent.portinterface.impl.ApplicationErrorImpl;
import autosar40.swcomponent.portinterface.impl.ArgumentDataPrototypeImpl;
import autosar40.swcomponent.portinterface.impl.ClientServerInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.ClientServerInterfaceMappingImpl;
import autosar40.swcomponent.portinterface.impl.ClientServerOperationImpl;
import autosar40.swcomponent.portinterface.impl.ClientServerOperationMappingImpl;
import autosar40.swcomponent.portinterface.impl.DataPrototypeMappingImpl;
import autosar40.swcomponent.portinterface.impl.ImplementationDataTypeSubElementRefImpl;
import autosar40.swcomponent.portinterface.impl.InvalidationPolicyImpl;
import autosar40.swcomponent.portinterface.impl.ModeInterfaceMappingImpl;
import autosar40.swcomponent.portinterface.impl.ModeSwitchInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.NvDataInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.ParameterInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.PortInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.PortInterfaceMappingImpl;
import autosar40.swcomponent.portinterface.impl.PortInterfaceMappingSetImpl;
import autosar40.swcomponent.portinterface.impl.SenderReceiverInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.SubElementMappingImpl;
import autosar40.swcomponent.portinterface.impl.TextTableMappingImpl;
import autosar40.swcomponent.portinterface.impl.TextTableValuePairImpl;
import autosar40.swcomponent.portinterface.impl.TriggerInterfaceImpl;
import autosar40.swcomponent.portinterface.impl.TriggerInterfaceMappingImpl;
import autosar40.swcomponent.portinterface.impl.VariableAndParameterInterfaceMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PortinterfaceFactoryImpl
extends EFactoryImpl
implements PortinterfaceFactory {
    public static PortinterfaceFactory init() {
        try {
            PortinterfaceFactory thePortinterfaceFactory = (PortinterfaceFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/pi");
            if (thePortinterfaceFactory != null) {
                return thePortinterfaceFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PortinterfaceFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createClientServerOperation();
            }
            case 1: {
                return this.createArgumentDataPrototype();
            }
            case 2: {
                return this.createApplicationError();
            }
            case 3: {
                return this.createPortInterfaceMapping();
            }
            case 4: {
                return this.createApplicationCompositeDataTypeSubElementRef();
            }
            case 7: {
                return this.createImplementationDataTypeSubElementRef();
            }
            case 8: {
                return this.createParameterInterface();
            }
            case 9: {
                return this.createSubElementMapping();
            }
            case 10: {
                return this.createTextTableMapping();
            }
            case 11: {
                return this.createTextTableValuePair();
            }
            case 12: {
                return this.createNvDataInterface();
            }
            case 13: {
                return this.createInvalidationPolicy();
            }
            case 14: {
                return this.createModeSwitchInterface();
            }
            case 15: {
                return this.createSenderReceiverInterface();
            }
            case 16: {
                return this.createClientServerInterface();
            }
            case 17: {
                return this.createTriggerInterface();
            }
            case 18: {
                return this.createPortInterfaceMappingSet();
            }
            case 19: {
                return this.createVariableAndParameterInterfaceMapping();
            }
            case 20: {
                return this.createDataPrototypeMapping();
            }
            case 21: {
                return this.createModeInterfaceMapping();
            }
            case 22: {
                return this.createClientServerInterfaceMapping();
            }
            case 23: {
                return this.createClientServerOperationMapping();
            }
            case 24: {
                return this.createTriggerInterfaceMapping();
            }
            case 25: {
                return this.createPortInterface();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 26: {
                return this.createServerArgumentImplPolicyEnumFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createMappingDirectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 26: {
                return this.convertServerArgumentImplPolicyEnumToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertMappingDirectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ClientServerOperation createClientServerOperation() {
        ClientServerOperationImpl clientServerOperation = new ClientServerOperationImpl();
        return clientServerOperation;
    }

    public ArgumentDataPrototype createArgumentDataPrototype() {
        ArgumentDataPrototypeImpl argumentDataPrototype = new ArgumentDataPrototypeImpl();
        return argumentDataPrototype;
    }

    public ApplicationError createApplicationError() {
        ApplicationErrorImpl applicationError = new ApplicationErrorImpl();
        return applicationError;
    }

    public PortInterfaceMapping createPortInterfaceMapping() {
        PortInterfaceMappingImpl portInterfaceMapping = new PortInterfaceMappingImpl();
        return portInterfaceMapping;
    }

    public ApplicationCompositeDataTypeSubElementRef createApplicationCompositeDataTypeSubElementRef() {
        ApplicationCompositeDataTypeSubElementRefImpl applicationCompositeDataTypeSubElementRef = new ApplicationCompositeDataTypeSubElementRefImpl();
        return applicationCompositeDataTypeSubElementRef;
    }

    public ImplementationDataTypeSubElementRef createImplementationDataTypeSubElementRef() {
        ImplementationDataTypeSubElementRefImpl implementationDataTypeSubElementRef = new ImplementationDataTypeSubElementRefImpl();
        return implementationDataTypeSubElementRef;
    }

    public ParameterInterface createParameterInterface() {
        ParameterInterfaceImpl parameterInterface = new ParameterInterfaceImpl();
        return parameterInterface;
    }

    public SubElementMapping createSubElementMapping() {
        SubElementMappingImpl subElementMapping = new SubElementMappingImpl();
        return subElementMapping;
    }

    public TextTableMapping createTextTableMapping() {
        TextTableMappingImpl textTableMapping = new TextTableMappingImpl();
        return textTableMapping;
    }

    public TextTableValuePair createTextTableValuePair() {
        TextTableValuePairImpl textTableValuePair = new TextTableValuePairImpl();
        return textTableValuePair;
    }

    public NvDataInterface createNvDataInterface() {
        NvDataInterfaceImpl nvDataInterface = new NvDataInterfaceImpl();
        return nvDataInterface;
    }

    public InvalidationPolicy createInvalidationPolicy() {
        InvalidationPolicyImpl invalidationPolicy = new InvalidationPolicyImpl();
        return invalidationPolicy;
    }

    public ModeSwitchInterface createModeSwitchInterface() {
        ModeSwitchInterfaceImpl modeSwitchInterface = new ModeSwitchInterfaceImpl();
        return modeSwitchInterface;
    }

    public SenderReceiverInterface createSenderReceiverInterface() {
        SenderReceiverInterfaceImpl senderReceiverInterface = new SenderReceiverInterfaceImpl();
        return senderReceiverInterface;
    }

    public ClientServerInterface createClientServerInterface() {
        ClientServerInterfaceImpl clientServerInterface = new ClientServerInterfaceImpl();
        return clientServerInterface;
    }

    public TriggerInterface createTriggerInterface() {
        TriggerInterfaceImpl triggerInterface = new TriggerInterfaceImpl();
        return triggerInterface;
    }

    public PortInterfaceMappingSet createPortInterfaceMappingSet() {
        PortInterfaceMappingSetImpl portInterfaceMappingSet = new PortInterfaceMappingSetImpl();
        return portInterfaceMappingSet;
    }

    public VariableAndParameterInterfaceMapping createVariableAndParameterInterfaceMapping() {
        VariableAndParameterInterfaceMappingImpl variableAndParameterInterfaceMapping = new VariableAndParameterInterfaceMappingImpl();
        return variableAndParameterInterfaceMapping;
    }

    public DataPrototypeMapping createDataPrototypeMapping() {
        DataPrototypeMappingImpl dataPrototypeMapping = new DataPrototypeMappingImpl();
        return dataPrototypeMapping;
    }

    public ModeInterfaceMapping createModeInterfaceMapping() {
        ModeInterfaceMappingImpl modeInterfaceMapping = new ModeInterfaceMappingImpl();
        return modeInterfaceMapping;
    }

    public ClientServerInterfaceMapping createClientServerInterfaceMapping() {
        ClientServerInterfaceMappingImpl clientServerInterfaceMapping = new ClientServerInterfaceMappingImpl();
        return clientServerInterfaceMapping;
    }

    public ClientServerOperationMapping createClientServerOperationMapping() {
        ClientServerOperationMappingImpl clientServerOperationMapping = new ClientServerOperationMappingImpl();
        return clientServerOperationMapping;
    }

    public TriggerInterfaceMapping createTriggerInterfaceMapping() {
        TriggerInterfaceMappingImpl triggerInterfaceMapping = new TriggerInterfaceMappingImpl();
        return triggerInterfaceMapping;
    }

    public PortInterface createPortInterface() {
        PortInterfaceImpl portInterface = new PortInterfaceImpl();
        return portInterface;
    }

    public ServerArgumentImplPolicyEnum createServerArgumentImplPolicyEnumFromString(EDataType eDataType, String initialValue) {
        ServerArgumentImplPolicyEnum result = ServerArgumentImplPolicyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertServerArgumentImplPolicyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MappingDirectionEnum createMappingDirectionEnumFromString(EDataType eDataType, String initialValue) {
        MappingDirectionEnum result = MappingDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMappingDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PortinterfacePackage getPortinterfacePackage() {
        return (PortinterfacePackage)this.getEPackage();
    }

    @Deprecated
    public static PortinterfacePackage getPackage() {
        return PortinterfacePackage.eINSTANCE;
    }
}

