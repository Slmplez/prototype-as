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
package autosar3x.system.datamapping.instanceref.impl;

import autosar3x.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar3x.system.datamapping.instanceref.InstancerefFactory;
import autosar3x.system.datamapping.instanceref.InstancerefPackage;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar3x.system.datamapping.instanceref.impl.ClientServerToSignalGroupMappingMappedOperationImpl;
import autosar3x.system.datamapping.instanceref.impl.SenderReceiverToSignalGroupMappingDataElementImpl;
import autosar3x.system.datamapping.instanceref.impl.SenderReceiverToSignalMappingDataElementImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/dm/r");
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
                return this.createSenderReceiverToSignalGroupMappingDataElement();
            }
            case 1: {
                return this.createSenderReceiverToSignalMappingDataElement();
            }
            case 2: {
                return this.createClientServerToSignalGroupMappingMappedOperation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SenderReceiverToSignalGroupMappingDataElement createSenderReceiverToSignalGroupMappingDataElement() {
        SenderReceiverToSignalGroupMappingDataElementImpl senderReceiverToSignalGroupMappingDataElement = new SenderReceiverToSignalGroupMappingDataElementImpl();
        return senderReceiverToSignalGroupMappingDataElement;
    }

    public SenderReceiverToSignalMappingDataElement createSenderReceiverToSignalMappingDataElement() {
        SenderReceiverToSignalMappingDataElementImpl senderReceiverToSignalMappingDataElement = new SenderReceiverToSignalMappingDataElementImpl();
        return senderReceiverToSignalMappingDataElement;
    }

    public ClientServerToSignalGroupMappingMappedOperation createClientServerToSignalGroupMappingMappedOperation() {
        ClientServerToSignalGroupMappingMappedOperationImpl clientServerToSignalGroupMappingMappedOperation = new ClientServerToSignalGroupMappingMappedOperationImpl();
        return clientServerToSignalGroupMappingMappedOperation;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

