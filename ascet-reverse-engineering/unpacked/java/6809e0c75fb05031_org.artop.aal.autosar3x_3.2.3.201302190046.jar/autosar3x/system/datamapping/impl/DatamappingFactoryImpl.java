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
package autosar3x.system.datamapping.impl;

import autosar3x.system.datamapping.ApplicationErrorMapping;
import autosar3x.system.datamapping.ClientIdMapping;
import autosar3x.system.datamapping.ClientServerArrayElementMapping;
import autosar3x.system.datamapping.ClientServerArrayTypeMapping;
import autosar3x.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar3x.system.datamapping.ClientServerRecordElementMapping;
import autosar3x.system.datamapping.ClientServerRecordTypeMapping;
import autosar3x.system.datamapping.ClientServerToSignalGroupMapping;
import autosar3x.system.datamapping.DatamappingFactory;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.EmptySignalMapping;
import autosar3x.system.datamapping.IndexedArrayElement;
import autosar3x.system.datamapping.SenderRecArrayElementMapping;
import autosar3x.system.datamapping.SenderRecArrayTypeMapping;
import autosar3x.system.datamapping.SenderRecRecordElementMapping;
import autosar3x.system.datamapping.SenderRecRecordTypeMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalMapping;
import autosar3x.system.datamapping.SequenceCounterMapping;
import autosar3x.system.datamapping.impl.ApplicationErrorMappingImpl;
import autosar3x.system.datamapping.impl.ClientIdMappingImpl;
import autosar3x.system.datamapping.impl.ClientServerArrayElementMappingImpl;
import autosar3x.system.datamapping.impl.ClientServerArrayTypeMappingImpl;
import autosar3x.system.datamapping.impl.ClientServerPrimitiveTypeMappingImpl;
import autosar3x.system.datamapping.impl.ClientServerRecordElementMappingImpl;
import autosar3x.system.datamapping.impl.ClientServerRecordTypeMappingImpl;
import autosar3x.system.datamapping.impl.ClientServerToSignalGroupMappingImpl;
import autosar3x.system.datamapping.impl.EmptySignalMappingImpl;
import autosar3x.system.datamapping.impl.IndexedArrayElementImpl;
import autosar3x.system.datamapping.impl.SenderRecArrayElementMappingImpl;
import autosar3x.system.datamapping.impl.SenderRecArrayTypeMappingImpl;
import autosar3x.system.datamapping.impl.SenderRecRecordElementMappingImpl;
import autosar3x.system.datamapping.impl.SenderRecRecordTypeMappingImpl;
import autosar3x.system.datamapping.impl.SenderReceiverToSignalGroupMappingImpl;
import autosar3x.system.datamapping.impl.SenderReceiverToSignalMappingImpl;
import autosar3x.system.datamapping.impl.SequenceCounterMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DatamappingFactoryImpl
extends EFactoryImpl
implements DatamappingFactory {
    public static DatamappingFactory init() {
        try {
            DatamappingFactory theDatamappingFactory = (DatamappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/dm");
            if (theDatamappingFactory != null) {
                return theDatamappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DatamappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createApplicationErrorMapping();
            }
            case 1: {
                return this.createClientIdMapping();
            }
            case 2: {
                return this.createClientServerArrayElementMapping();
            }
            case 4: {
                return this.createIndexedArrayElement();
            }
            case 5: {
                return this.createClientServerArrayTypeMapping();
            }
            case 6: {
                return this.createClientServerPrimitiveTypeMapping();
            }
            case 7: {
                return this.createClientServerRecordElementMapping();
            }
            case 8: {
                return this.createClientServerRecordTypeMapping();
            }
            case 9: {
                return this.createClientServerToSignalGroupMapping();
            }
            case 10: {
                return this.createSequenceCounterMapping();
            }
            case 11: {
                return this.createEmptySignalMapping();
            }
            case 12: {
                return this.createSenderRecArrayElementMapping();
            }
            case 14: {
                return this.createSenderRecArrayTypeMapping();
            }
            case 15: {
                return this.createSenderReceiverToSignalGroupMapping();
            }
            case 16: {
                return this.createSenderReceiverToSignalMapping();
            }
            case 17: {
                return this.createSenderRecRecordElementMapping();
            }
            case 18: {
                return this.createSenderRecRecordTypeMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ApplicationErrorMapping createApplicationErrorMapping() {
        ApplicationErrorMappingImpl applicationErrorMapping = new ApplicationErrorMappingImpl();
        return applicationErrorMapping;
    }

    public ClientIdMapping createClientIdMapping() {
        ClientIdMappingImpl clientIdMapping = new ClientIdMappingImpl();
        return clientIdMapping;
    }

    public ClientServerArrayElementMapping createClientServerArrayElementMapping() {
        ClientServerArrayElementMappingImpl clientServerArrayElementMapping = new ClientServerArrayElementMappingImpl();
        return clientServerArrayElementMapping;
    }

    public IndexedArrayElement createIndexedArrayElement() {
        IndexedArrayElementImpl indexedArrayElement = new IndexedArrayElementImpl();
        return indexedArrayElement;
    }

    public ClientServerArrayTypeMapping createClientServerArrayTypeMapping() {
        ClientServerArrayTypeMappingImpl clientServerArrayTypeMapping = new ClientServerArrayTypeMappingImpl();
        return clientServerArrayTypeMapping;
    }

    public ClientServerPrimitiveTypeMapping createClientServerPrimitiveTypeMapping() {
        ClientServerPrimitiveTypeMappingImpl clientServerPrimitiveTypeMapping = new ClientServerPrimitiveTypeMappingImpl();
        return clientServerPrimitiveTypeMapping;
    }

    public ClientServerRecordElementMapping createClientServerRecordElementMapping() {
        ClientServerRecordElementMappingImpl clientServerRecordElementMapping = new ClientServerRecordElementMappingImpl();
        return clientServerRecordElementMapping;
    }

    public ClientServerRecordTypeMapping createClientServerRecordTypeMapping() {
        ClientServerRecordTypeMappingImpl clientServerRecordTypeMapping = new ClientServerRecordTypeMappingImpl();
        return clientServerRecordTypeMapping;
    }

    public ClientServerToSignalGroupMapping createClientServerToSignalGroupMapping() {
        ClientServerToSignalGroupMappingImpl clientServerToSignalGroupMapping = new ClientServerToSignalGroupMappingImpl();
        return clientServerToSignalGroupMapping;
    }

    public SequenceCounterMapping createSequenceCounterMapping() {
        SequenceCounterMappingImpl sequenceCounterMapping = new SequenceCounterMappingImpl();
        return sequenceCounterMapping;
    }

    public EmptySignalMapping createEmptySignalMapping() {
        EmptySignalMappingImpl emptySignalMapping = new EmptySignalMappingImpl();
        return emptySignalMapping;
    }

    public SenderRecArrayElementMapping createSenderRecArrayElementMapping() {
        SenderRecArrayElementMappingImpl senderRecArrayElementMapping = new SenderRecArrayElementMappingImpl();
        return senderRecArrayElementMapping;
    }

    public SenderRecArrayTypeMapping createSenderRecArrayTypeMapping() {
        SenderRecArrayTypeMappingImpl senderRecArrayTypeMapping = new SenderRecArrayTypeMappingImpl();
        return senderRecArrayTypeMapping;
    }

    public SenderReceiverToSignalGroupMapping createSenderReceiverToSignalGroupMapping() {
        SenderReceiverToSignalGroupMappingImpl senderReceiverToSignalGroupMapping = new SenderReceiverToSignalGroupMappingImpl();
        return senderReceiverToSignalGroupMapping;
    }

    public SenderReceiverToSignalMapping createSenderReceiverToSignalMapping() {
        SenderReceiverToSignalMappingImpl senderReceiverToSignalMapping = new SenderReceiverToSignalMappingImpl();
        return senderReceiverToSignalMapping;
    }

    public SenderRecRecordElementMapping createSenderRecRecordElementMapping() {
        SenderRecRecordElementMappingImpl senderRecRecordElementMapping = new SenderRecRecordElementMappingImpl();
        return senderRecRecordElementMapping;
    }

    public SenderRecRecordTypeMapping createSenderRecRecordTypeMapping() {
        SenderRecRecordTypeMappingImpl senderRecRecordTypeMapping = new SenderRecRecordTypeMappingImpl();
        return senderRecRecordTypeMapping;
    }

    public DatamappingPackage getDatamappingPackage() {
        return (DatamappingPackage)this.getEPackage();
    }

    @Deprecated
    public static DatamappingPackage getPackage() {
        return DatamappingPackage.eINSTANCE;
    }
}

