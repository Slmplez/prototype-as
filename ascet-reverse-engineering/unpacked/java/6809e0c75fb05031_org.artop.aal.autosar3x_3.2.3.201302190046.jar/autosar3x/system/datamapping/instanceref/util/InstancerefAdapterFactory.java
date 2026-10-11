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
package autosar3x.system.datamapping.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar3x.system.datamapping.instanceref.InstancerefPackage;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar3x.system.datamapping.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefPackage modelPackage;
    protected InstancerefSwitch<Adapter> modelSwitch = new InstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseSenderReceiverToSignalGroupMappingDataElement(SenderReceiverToSignalGroupMappingDataElement object) {
            return InstancerefAdapterFactory.this.createSenderReceiverToSignalGroupMappingDataElementAdapter();
        }

        @Override
        public Adapter caseSenderReceiverToSignalMappingDataElement(SenderReceiverToSignalMappingDataElement object) {
            return InstancerefAdapterFactory.this.createSenderReceiverToSignalMappingDataElementAdapter();
        }

        @Override
        public Adapter caseClientServerToSignalGroupMappingMappedOperation(ClientServerToSignalGroupMappingMappedOperation object) {
            return InstancerefAdapterFactory.this.createClientServerToSignalGroupMappingMappedOperationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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

    public Adapter createSenderReceiverToSignalGroupMappingDataElementAdapter() {
        return null;
    }

    public Adapter createSenderReceiverToSignalMappingDataElementAdapter() {
        return null;
    }

    public Adapter createClientServerToSignalGroupMappingMappedOperationAdapter() {
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

