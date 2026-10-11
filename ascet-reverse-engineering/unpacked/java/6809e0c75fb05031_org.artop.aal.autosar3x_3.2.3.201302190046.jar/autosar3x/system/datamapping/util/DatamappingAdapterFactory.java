/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.datamapping.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.datamapping.ApplicationErrorMapping;
import autosar3x.system.datamapping.ClientIdMapping;
import autosar3x.system.datamapping.ClientServerArrayElementMapping;
import autosar3x.system.datamapping.ClientServerArrayTypeMapping;
import autosar3x.system.datamapping.ClientServerCompositeTypeMapping;
import autosar3x.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar3x.system.datamapping.ClientServerRecordElementMapping;
import autosar3x.system.datamapping.ClientServerRecordTypeMapping;
import autosar3x.system.datamapping.ClientServerToSignalGroupMapping;
import autosar3x.system.datamapping.DataMapping;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.EmptySignalMapping;
import autosar3x.system.datamapping.IndexedArrayElement;
import autosar3x.system.datamapping.SenderRecArrayElementMapping;
import autosar3x.system.datamapping.SenderRecArrayTypeMapping;
import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
import autosar3x.system.datamapping.SenderRecRecordElementMapping;
import autosar3x.system.datamapping.SenderRecRecordTypeMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalMapping;
import autosar3x.system.datamapping.SequenceCounterMapping;
import autosar3x.system.datamapping.util.DatamappingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DatamappingAdapterFactory
extends AdapterFactoryImpl {
    protected static DatamappingPackage modelPackage;
    protected DatamappingSwitch<Adapter> modelSwitch = new DatamappingSwitch<Adapter>(){

        @Override
        public Adapter caseApplicationErrorMapping(ApplicationErrorMapping object) {
            return DatamappingAdapterFactory.this.createApplicationErrorMappingAdapter();
        }

        @Override
        public Adapter caseClientIdMapping(ClientIdMapping object) {
            return DatamappingAdapterFactory.this.createClientIdMappingAdapter();
        }

        @Override
        public Adapter caseClientServerArrayElementMapping(ClientServerArrayElementMapping object) {
            return DatamappingAdapterFactory.this.createClientServerArrayElementMappingAdapter();
        }

        @Override
        public Adapter caseClientServerCompositeTypeMapping(ClientServerCompositeTypeMapping object) {
            return DatamappingAdapterFactory.this.createClientServerCompositeTypeMappingAdapter();
        }

        @Override
        public Adapter caseIndexedArrayElement(IndexedArrayElement object) {
            return DatamappingAdapterFactory.this.createIndexedArrayElementAdapter();
        }

        @Override
        public Adapter caseClientServerArrayTypeMapping(ClientServerArrayTypeMapping object) {
            return DatamappingAdapterFactory.this.createClientServerArrayTypeMappingAdapter();
        }

        @Override
        public Adapter caseClientServerPrimitiveTypeMapping(ClientServerPrimitiveTypeMapping object) {
            return DatamappingAdapterFactory.this.createClientServerPrimitiveTypeMappingAdapter();
        }

        @Override
        public Adapter caseClientServerRecordElementMapping(ClientServerRecordElementMapping object) {
            return DatamappingAdapterFactory.this.createClientServerRecordElementMappingAdapter();
        }

        @Override
        public Adapter caseClientServerRecordTypeMapping(ClientServerRecordTypeMapping object) {
            return DatamappingAdapterFactory.this.createClientServerRecordTypeMappingAdapter();
        }

        @Override
        public Adapter caseClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping object) {
            return DatamappingAdapterFactory.this.createClientServerToSignalGroupMappingAdapter();
        }

        @Override
        public Adapter caseSequenceCounterMapping(SequenceCounterMapping object) {
            return DatamappingAdapterFactory.this.createSequenceCounterMappingAdapter();
        }

        @Override
        public Adapter caseEmptySignalMapping(EmptySignalMapping object) {
            return DatamappingAdapterFactory.this.createEmptySignalMappingAdapter();
        }

        @Override
        public Adapter caseSenderRecArrayElementMapping(SenderRecArrayElementMapping object) {
            return DatamappingAdapterFactory.this.createSenderRecArrayElementMappingAdapter();
        }

        @Override
        public Adapter caseSenderRecCompositeTypeMapping(SenderRecCompositeTypeMapping object) {
            return DatamappingAdapterFactory.this.createSenderRecCompositeTypeMappingAdapter();
        }

        @Override
        public Adapter caseSenderRecArrayTypeMapping(SenderRecArrayTypeMapping object) {
            return DatamappingAdapterFactory.this.createSenderRecArrayTypeMappingAdapter();
        }

        @Override
        public Adapter caseSenderReceiverToSignalGroupMapping(SenderReceiverToSignalGroupMapping object) {
            return DatamappingAdapterFactory.this.createSenderReceiverToSignalGroupMappingAdapter();
        }

        @Override
        public Adapter caseSenderReceiverToSignalMapping(SenderReceiverToSignalMapping object) {
            return DatamappingAdapterFactory.this.createSenderReceiverToSignalMappingAdapter();
        }

        @Override
        public Adapter caseSenderRecRecordElementMapping(SenderRecRecordElementMapping object) {
            return DatamappingAdapterFactory.this.createSenderRecRecordElementMappingAdapter();
        }

        @Override
        public Adapter caseSenderRecRecordTypeMapping(SenderRecRecordTypeMapping object) {
            return DatamappingAdapterFactory.this.createSenderRecRecordTypeMappingAdapter();
        }

        @Override
        public Adapter caseDataMapping(DataMapping object) {
            return DatamappingAdapterFactory.this.createDataMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DatamappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DatamappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DatamappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DatamappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DatamappingPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createApplicationErrorMappingAdapter() {
        return null;
    }

    public Adapter createClientIdMappingAdapter() {
        return null;
    }

    public Adapter createClientServerArrayElementMappingAdapter() {
        return null;
    }

    public Adapter createClientServerCompositeTypeMappingAdapter() {
        return null;
    }

    public Adapter createIndexedArrayElementAdapter() {
        return null;
    }

    public Adapter createClientServerArrayTypeMappingAdapter() {
        return null;
    }

    public Adapter createClientServerPrimitiveTypeMappingAdapter() {
        return null;
    }

    public Adapter createClientServerRecordElementMappingAdapter() {
        return null;
    }

    public Adapter createClientServerRecordTypeMappingAdapter() {
        return null;
    }

    public Adapter createClientServerToSignalGroupMappingAdapter() {
        return null;
    }

    public Adapter createSequenceCounterMappingAdapter() {
        return null;
    }

    public Adapter createEmptySignalMappingAdapter() {
        return null;
    }

    public Adapter createSenderRecArrayElementMappingAdapter() {
        return null;
    }

    public Adapter createSenderRecCompositeTypeMappingAdapter() {
        return null;
    }

    public Adapter createSenderRecArrayTypeMappingAdapter() {
        return null;
    }

    public Adapter createSenderReceiverToSignalGroupMappingAdapter() {
        return null;
    }

    public Adapter createSenderReceiverToSignalMappingAdapter() {
        return null;
    }

    public Adapter createSenderRecRecordElementMappingAdapter() {
        return null;
    }

    public Adapter createSenderRecRecordTypeMappingAdapter() {
        return null;
    }

    public Adapter createDataMappingAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

