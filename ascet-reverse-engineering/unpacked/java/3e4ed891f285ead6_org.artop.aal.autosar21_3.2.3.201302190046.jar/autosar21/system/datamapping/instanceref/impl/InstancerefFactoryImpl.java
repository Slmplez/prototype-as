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
package autosar21.system.datamapping.instanceref.impl;

import autosar21.system.datamapping.instanceref.ClientServerArrayElementMappingArrayElement;
import autosar21.system.datamapping.instanceref.ClientServerPrimitiveTypeMappingArgument;
import autosar21.system.datamapping.instanceref.ClientServerRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar21.system.datamapping.instanceref.IndexedArrayElement;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import autosar21.system.datamapping.instanceref.InstancerefFactory;
import autosar21.system.datamapping.instanceref.InstancerefPackage;
import autosar21.system.datamapping.instanceref.SenderRecArrayElementMappingArrayElement;
import autosar21.system.datamapping.instanceref.SenderRecRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar21.system.datamapping.instanceref.impl.ClientServerArrayElementMappingArrayElementImpl;
import autosar21.system.datamapping.instanceref.impl.ClientServerPrimitiveTypeMappingArgumentImpl;
import autosar21.system.datamapping.instanceref.impl.ClientServerRecordElementMappingRecordElementImpl;
import autosar21.system.datamapping.instanceref.impl.ClientServerToSignalGroupMappingMappedOperationImpl;
import autosar21.system.datamapping.instanceref.impl.IndexedArrayElementImpl;
import autosar21.system.datamapping.instanceref.impl.IndexedDataPrototypeImpl;
import autosar21.system.datamapping.instanceref.impl.SenderRecArrayElementMappingArrayElementImpl;
import autosar21.system.datamapping.instanceref.impl.SenderRecRecordElementMappingRecordElementImpl;
import autosar21.system.datamapping.instanceref.impl.SenderReceiverToSignalGroupMappingDataElementImpl;
import autosar21.system.datamapping.instanceref.impl.SenderReceiverToSignalMappingDataElementImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/dm/r");
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
                return this.createClientServerArrayElementMappingArrayElement();
            }
            case 1: {
                return this.createIndexedDataPrototype();
            }
            case 2: {
                return this.createIndexedArrayElement();
            }
            case 3: {
                return this.createClientServerPrimitiveTypeMappingArgument();
            }
            case 4: {
                return this.createClientServerRecordElementMappingRecordElement();
            }
            case 5: {
                return this.createClientServerToSignalGroupMappingMappedOperation();
            }
            case 6: {
                return this.createSenderRecArrayElementMappingArrayElement();
            }
            case 7: {
                return this.createSenderReceiverToSignalGroupMappingDataElement();
            }
            case 8: {
                return this.createSenderReceiverToSignalMappingDataElement();
            }
            case 9: {
                return this.createSenderRecRecordElementMappingRecordElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ClientServerArrayElementMappingArrayElement createClientServerArrayElementMappingArrayElement() {
        ClientServerArrayElementMappingArrayElementImpl clientServerArrayElementMappingArrayElement = new ClientServerArrayElementMappingArrayElementImpl();
        return clientServerArrayElementMappingArrayElement;
    }

    public IndexedDataPrototype createIndexedDataPrototype() {
        IndexedDataPrototypeImpl indexedDataPrototype = new IndexedDataPrototypeImpl();
        return indexedDataPrototype;
    }

    public IndexedArrayElement createIndexedArrayElement() {
        IndexedArrayElementImpl indexedArrayElement = new IndexedArrayElementImpl();
        return indexedArrayElement;
    }

    public ClientServerPrimitiveTypeMappingArgument createClientServerPrimitiveTypeMappingArgument() {
        ClientServerPrimitiveTypeMappingArgumentImpl clientServerPrimitiveTypeMappingArgument = new ClientServerPrimitiveTypeMappingArgumentImpl();
        return clientServerPrimitiveTypeMappingArgument;
    }

    public ClientServerRecordElementMappingRecordElement createClientServerRecordElementMappingRecordElement() {
        ClientServerRecordElementMappingRecordElementImpl clientServerRecordElementMappingRecordElement = new ClientServerRecordElementMappingRecordElementImpl();
        return clientServerRecordElementMappingRecordElement;
    }

    public ClientServerToSignalGroupMappingMappedOperation createClientServerToSignalGroupMappingMappedOperation() {
        ClientServerToSignalGroupMappingMappedOperationImpl clientServerToSignalGroupMappingMappedOperation = new ClientServerToSignalGroupMappingMappedOperationImpl();
        return clientServerToSignalGroupMappingMappedOperation;
    }

    public SenderRecArrayElementMappingArrayElement createSenderRecArrayElementMappingArrayElement() {
        SenderRecArrayElementMappingArrayElementImpl senderRecArrayElementMappingArrayElement = new SenderRecArrayElementMappingArrayElementImpl();
        return senderRecArrayElementMappingArrayElement;
    }

    public SenderReceiverToSignalGroupMappingDataElement createSenderReceiverToSignalGroupMappingDataElement() {
        SenderReceiverToSignalGroupMappingDataElementImpl senderReceiverToSignalGroupMappingDataElement = new SenderReceiverToSignalGroupMappingDataElementImpl();
        return senderReceiverToSignalGroupMappingDataElement;
    }

    public SenderReceiverToSignalMappingDataElement createSenderReceiverToSignalMappingDataElement() {
        SenderReceiverToSignalMappingDataElementImpl senderReceiverToSignalMappingDataElement = new SenderReceiverToSignalMappingDataElementImpl();
        return senderReceiverToSignalMappingDataElement;
    }

    public SenderRecRecordElementMappingRecordElement createSenderRecRecordElementMappingRecordElement() {
        SenderRecRecordElementMappingRecordElementImpl senderRecRecordElementMappingRecordElement = new SenderRecRecordElementMappingRecordElementImpl();
        return senderRecRecordElementMappingRecordElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

