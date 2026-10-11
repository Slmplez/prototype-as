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
package autosar40.system.datamapping.impl;

import autosar40.system.datamapping.ApplicationErrorMapping;
import autosar40.system.datamapping.ClientIdMapping;
import autosar40.system.datamapping.ClientServerArrayElementMapping;
import autosar40.system.datamapping.ClientServerArrayTypeMapping;
import autosar40.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar40.system.datamapping.ClientServerRecordElementMapping;
import autosar40.system.datamapping.ClientServerRecordTypeMapping;
import autosar40.system.datamapping.ClientServerToSignalGroupMapping;
import autosar40.system.datamapping.DataTypePolicyEnum;
import autosar40.system.datamapping.DatamappingFactory;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.EmptySignalMapping;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.datamapping.SenderRecArrayElementMapping;
import autosar40.system.datamapping.SenderRecArrayTypeMapping;
import autosar40.system.datamapping.SenderRecRecordElementMapping;
import autosar40.system.datamapping.SenderRecRecordTypeMapping;
import autosar40.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar40.system.datamapping.SenderReceiverToSignalMapping;
import autosar40.system.datamapping.SequenceCounterMapping;
import autosar40.system.datamapping.impl.ApplicationErrorMappingImpl;
import autosar40.system.datamapping.impl.ClientIdMappingImpl;
import autosar40.system.datamapping.impl.ClientServerArrayElementMappingImpl;
import autosar40.system.datamapping.impl.ClientServerArrayTypeMappingImpl;
import autosar40.system.datamapping.impl.ClientServerPrimitiveTypeMappingImpl;
import autosar40.system.datamapping.impl.ClientServerRecordElementMappingImpl;
import autosar40.system.datamapping.impl.ClientServerRecordTypeMappingImpl;
import autosar40.system.datamapping.impl.ClientServerToSignalGroupMappingImpl;
import autosar40.system.datamapping.impl.EmptySignalMappingImpl;
import autosar40.system.datamapping.impl.IndexedArrayElementImpl;
import autosar40.system.datamapping.impl.SenderRecArrayElementMappingImpl;
import autosar40.system.datamapping.impl.SenderRecArrayTypeMappingImpl;
import autosar40.system.datamapping.impl.SenderRecRecordElementMappingImpl;
import autosar40.system.datamapping.impl.SenderRecRecordTypeMappingImpl;
import autosar40.system.datamapping.impl.SenderReceiverToSignalGroupMappingImpl;
import autosar40.system.datamapping.impl.SenderReceiverToSignalMappingImpl;
import autosar40.system.datamapping.impl.SequenceCounterMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DatamappingFactoryImpl
extends EFactoryImpl
implements DatamappingFactory {
    public static DatamappingFactory init() {
        try {
            DatamappingFactory theDatamappingFactory = (DatamappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/dm");
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
            case 3: {
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
            case 11: {
                return this.createEmptySignalMapping();
            }
            case 12: {
                return this.createSequenceCounterMapping();
            }
            case 13: {
                return this.createSenderRecArrayElementMapping();
            }
            case 15: {
                return this.createSenderRecArrayTypeMapping();
            }
            case 16: {
                return this.createSenderReceiverToSignalGroupMapping();
            }
            case 17: {
                return this.createSenderReceiverToSignalMapping();
            }
            case 18: {
                return this.createSenderRecRecordElementMapping();
            }
            case 19: {
                return this.createSenderRecRecordTypeMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.createDataTypePolicyEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.convertDataTypePolicyEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
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

    public EmptySignalMapping createEmptySignalMapping() {
        EmptySignalMappingImpl emptySignalMapping = new EmptySignalMappingImpl();
        return emptySignalMapping;
    }

    public SequenceCounterMapping createSequenceCounterMapping() {
        SequenceCounterMappingImpl sequenceCounterMapping = new SequenceCounterMappingImpl();
        return sequenceCounterMapping;
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

    public DataTypePolicyEnum createDataTypePolicyEnumFromString(EDataType eDataType, String initialValue) {
        DataTypePolicyEnum result = DataTypePolicyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDataTypePolicyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DatamappingPackage getDatamappingPackage() {
        return (DatamappingPackage)this.getEPackage();
    }

    @Deprecated
    public static DatamappingPackage getPackage() {
        return DatamappingPackage.eINSTANCE;
    }
}

