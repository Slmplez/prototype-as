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
package autosar3x.swcomponent.portinterface.impl;

import autosar3x.swcomponent.portinterface.ApplicationError;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.swcomponent.portinterface.ClientServerInterface;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.portinterface.DirectionKind;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.portinterface.PortInterface;
import autosar3x.swcomponent.portinterface.PortinterfaceFactory;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import autosar3x.swcomponent.portinterface.impl.ApplicationErrorImpl;
import autosar3x.swcomponent.portinterface.impl.ArgumentPrototypeImpl;
import autosar3x.swcomponent.portinterface.impl.ClientServerInterfaceImpl;
import autosar3x.swcomponent.portinterface.impl.DataElementPrototypeImpl;
import autosar3x.swcomponent.portinterface.impl.ModeDeclarationGroupPrototypeImpl;
import autosar3x.swcomponent.portinterface.impl.OperationPrototypeImpl;
import autosar3x.swcomponent.portinterface.impl.PortInterfaceImpl;
import autosar3x.swcomponent.portinterface.impl.SenderReceiverInterfaceImpl;
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
            PortinterfaceFactory thePortinterfaceFactory = (PortinterfaceFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/pi");
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
                return this.createApplicationError();
            }
            case 1: {
                return this.createModeDeclarationGroupPrototype();
            }
            case 2: {
                return this.createOperationPrototype();
            }
            case 3: {
                return this.createArgumentPrototype();
            }
            case 4: {
                return this.createPortInterface();
            }
            case 5: {
                return this.createClientServerInterface();
            }
            case 6: {
                return this.createSenderReceiverInterface();
            }
            case 7: {
                return this.createDataElementPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.createDirectionKindFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.convertDirectionKindToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ApplicationError createApplicationError() {
        ApplicationErrorImpl applicationError = new ApplicationErrorImpl();
        return applicationError;
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

