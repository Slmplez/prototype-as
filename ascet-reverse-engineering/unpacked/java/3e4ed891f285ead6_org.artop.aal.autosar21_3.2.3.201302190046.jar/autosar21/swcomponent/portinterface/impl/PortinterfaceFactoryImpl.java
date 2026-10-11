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
package autosar21.swcomponent.portinterface.impl;

import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.swcomponent.portinterface.DirectionKind;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortInterface;
import autosar21.swcomponent.portinterface.PortinterfaceFactory;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
import autosar21.swcomponent.portinterface.impl.ArgumentPrototypeImpl;
import autosar21.swcomponent.portinterface.impl.ClientServerInterfaceImpl;
import autosar21.swcomponent.portinterface.impl.DataElementPrototypeImpl;
import autosar21.swcomponent.portinterface.impl.ModeDeclarationGroupPrototypeImpl;
import autosar21.swcomponent.portinterface.impl.OperationPrototypeImpl;
import autosar21.swcomponent.portinterface.impl.PortInterfaceImpl;
import autosar21.swcomponent.portinterface.impl.SenderReceiverInterfaceImpl;
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
            PortinterfaceFactory thePortinterfaceFactory = (PortinterfaceFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/pi");
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
                return this.createModeDeclarationGroupPrototype();
            }
            case 1: {
                return this.createOperationPrototype();
            }
            case 2: {
                return this.createArgumentPrototype();
            }
            case 3: {
                return this.createPortInterface();
            }
            case 4: {
                return this.createClientServerInterface();
            }
            case 5: {
                return this.createSenderReceiverInterface();
            }
            case 6: {
                return this.createDataElementPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createDirectionKindFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertDirectionKindToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ModeDeclarationGroupPrototype createModeDeclarationGroupPrototype() {
        ModeDeclarationGroupPrototypeImpl modeDeclarationGroupPrototype = new ModeDeclarationGroupPrototypeImpl();
        return modeDeclarationGroupPrototype;
    }

    public OperationPrototype createOperationPrototype() {
        OperationPrototypeImpl operationPrototype = new OperationPrototypeImpl();
        return operationPrototype;
    }

    public ArgumentPrototype createArgumentPrototype() {
        ArgumentPrototypeImpl argumentPrototype = new ArgumentPrototypeImpl();
        return argumentPrototype;
    }

    public PortInterface createPortInterface() {
        PortInterfaceImpl portInterface = new PortInterfaceImpl();
        return portInterface;
    }

    public ClientServerInterface createClientServerInterface() {
        ClientServerInterfaceImpl clientServerInterface = new ClientServerInterfaceImpl();
        return clientServerInterface;
    }

    public SenderReceiverInterface createSenderReceiverInterface() {
        SenderReceiverInterfaceImpl senderReceiverInterface = new SenderReceiverInterfaceImpl();
        return senderReceiverInterface;
    }

    public DataElementPrototype createDataElementPrototype() {
        DataElementPrototypeImpl dataElementPrototype = new DataElementPrototypeImpl();
        return dataElementPrototype;
    }

    public DirectionKind createDirectionKindFromString(EDataType eDataType, String initialValue) {
        DirectionKind result = DirectionKind.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDirectionKindToString(EDataType eDataType, Object instanceValue) {
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

