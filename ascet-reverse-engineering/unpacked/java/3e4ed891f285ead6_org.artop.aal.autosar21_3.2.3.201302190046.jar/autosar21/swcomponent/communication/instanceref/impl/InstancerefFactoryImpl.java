/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.swcomponent.communication.instanceref.impl;

import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;
import autosar21.swcomponent.communication.instanceref.InstancerefFactory;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ModeSwitchComSpecModeDeclarationGroupPrototype;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import autosar21.swcomponent.communication.instanceref.impl.ClientComSpecOperationImpl;
import autosar21.swcomponent.communication.instanceref.impl.ClientServerConnectorComSpecOperationImpl;
import autosar21.swcomponent.communication.instanceref.impl.ModeSwitchComSpecModeDeclarationGroupPrototypeImpl;
import autosar21.swcomponent.communication.instanceref.impl.ReceiverComSpecDataElementImpl;
import autosar21.swcomponent.communication.instanceref.impl.SenderComSpecDataElementImpl;
import autosar21.swcomponent.communication.instanceref.impl.SenderReceiverConnectorComSpecDataElementImpl;
import autosar21.swcomponent.communication.instanceref.impl.ServerComSpecOperationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/communication/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createClientComSpecOperation();
            }
            case 1: {
                return this.createClientServerConnectorComSpecOperation();
            }
            case 2: {
                return this.createModeSwitchComSpecModeDeclarationGroupPrototype();
            }
            case 3: {
                return this.createReceiverComSpecDataElement();
            }
            case 4: {
                return this.createSenderComSpecDataElement();
            }
            case 5: {
                return this.createSenderReceiverConnectorComSpecDataElement();
            }
            case 6: {
                return this.createServerComSpecOperation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ClientComSpecOperation createClientComSpecOperation() {
        ClientComSpecOperationImpl clientComSpecOperation = new ClientComSpecOperationImpl();
        return clientComSpecOperation;
    }

    public ClientServerConnectorComSpecOperation createClientServerConnectorComSpecOperation() {
        ClientServerConnectorComSpecOperationImpl clientServerConnectorComSpecOperation = new ClientServerConnectorComSpecOperationImpl();
        return clientServerConnectorComSpecOperation;
    }

    public ModeSwitchComSpecModeDeclarationGroupPrototype createModeSwitchComSpecModeDeclarationGroupPrototype() {
        ModeSwitchComSpecModeDeclarationGroupPrototypeImpl modeSwitchComSpecModeDeclarationGroupPrototype = new ModeSwitchComSpecModeDeclarationGroupPrototypeImpl();
        return modeSwitchComSpecModeDeclarationGroupPrototype;
    }

    public ReceiverComSpecDataElement createReceiverComSpecDataElement() {
        ReceiverComSpecDataElementImpl receiverComSpecDataElement = new ReceiverComSpecDataElementImpl();
        return receiverComSpecDataElement;
    }

    public SenderComSpecDataElement createSenderComSpecDataElement() {
        SenderComSpecDataElementImpl senderComSpecDataElement = new SenderComSpecDataElementImpl();
        return senderComSpecDataElement;
    }

    public SenderReceiverConnectorComSpecDataElement createSenderReceiverConnectorComSpecDataElement() {
        SenderReceiverConnectorComSpecDataElementImpl senderReceiverConnectorComSpecDataElement = new SenderReceiverConnectorComSpecDataElementImpl();
        return senderReceiverConnectorComSpecDataElement;
    }

    public ServerComSpecOperation createServerComSpecOperation() {
        ServerComSpecOperationImpl serverComSpecOperation = new ServerComSpecOperationImpl();
        return serverComSpecOperation;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

