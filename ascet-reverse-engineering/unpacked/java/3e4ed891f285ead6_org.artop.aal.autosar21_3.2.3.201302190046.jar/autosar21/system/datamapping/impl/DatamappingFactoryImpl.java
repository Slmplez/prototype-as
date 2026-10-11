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
package autosar21.system.datamapping.impl;

import autosar21.system.datamapping.ApplicationErrorMapping;
import autosar21.system.datamapping.ClientIdMapping;
import autosar21.system.datamapping.ClientServerArrayElementMapping;
import autosar21.system.datamapping.ClientServerArrayTypeMapping;
import autosar21.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar21.system.datamapping.ClientServerRecordElementMapping;
import autosar21.system.datamapping.ClientServerRecordTypeMapping;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.datamapping.DatamappingFactory;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.datamapping.EmptySignalMapping;
import autosar21.system.datamapping.SenderRecArrayElementMapping;
import autosar21.system.datamapping.SenderRecArrayTypeMapping;
import autosar21.system.datamapping.SenderRecRecordElementMapping;
import autosar21.system.datamapping.SenderRecRecordTypeMapping;
import autosar21.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar21.system.datamapping.SenderReceiverToSignalMapping;
import autosar21.system.datamapping.SequenceCounterMapping;
import autosar21.system.datamapping.impl.ApplicationErrorMappingImpl;
import autosar21.system.datamapping.impl.ClientIdMappingImpl;
import autosar21.system.datamapping.impl.ClientServerArrayElementMappingImpl;
import autosar21.system.datamapping.impl.ClientServerArrayTypeMappingImpl;
import autosar21.system.datamapping.impl.ClientServerPrimitiveTypeMappingImpl;
import autosar21.system.datamapping.impl.ClientServerRecordElementMappingImpl;
import autosar21.system.datamapping.impl.ClientServerRecordTypeMappingImpl;
import autosar21.system.datamapping.impl.ClientServerToSignalGroupMappingImpl;
import autosar21.system.datamapping.impl.EmptySignalMappingImpl;
import autosar21.system.datamapping.impl.SenderRecArrayElementMappingImpl;
import autosar21.system.datamapping.impl.SenderRecArrayTypeMappingImpl;
import autosar21.system.datamapping.impl.SenderRecRecordElementMappingImpl;
import autosar21.system.datamapping.impl.SenderRecRecordTypeMappingImpl;
import autosar21.system.datamapping.impl.SenderReceiverToSignalGroupMappingImpl;
import autosar21.system.datamapping.impl.SenderReceiverToSignalMappingImpl;
import autosar21.system.datamapping.impl.SequenceCounterMappingImpl;
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
            DatamappingFactory theDatamappingFactory = (DatamappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/dm");
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
                return this.createClientServerArrayTypeMapping();
            }
            case 5: {
                return this.createClientServerPrimitiveTypeMapping();
            }
            case 6: {
                return this.createClientServerRecordElementMapping();
            }
            case 7: {
                return this.createClientServerRecordTypeMapping();
            }
            case 8: {
                return this.createClientServerToSignalGroupMapping();
            }
            case 9: {
                return this.createSequenceCounterMapping();
            }
            case 10: {
                return this.createEmptySignalMapping();
            }
            case 11: {
                return this.createSenderRecArrayElementMapping();
            }
            case 13: {
                return this.createSenderRecArrayTypeMapping();
            }
            case 14: {
                return this.createSenderReceiverToSignalGroupMapping();
            }
            case 15: {
                return this.createSenderReceiverToSignalMapping();
            }
            case 16: {
                return this.createSenderRecRecordElementMapping();
            }
            case 17: {
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

