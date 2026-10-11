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
package autosar21.system.communication.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.instanceref.CommunicationMatrixTypeCommunicationCluster;
import autosar21.system.communication.instanceref.FrameReceiver;
import autosar21.system.communication.instanceref.FrameTransmitter;
import autosar21.system.communication.instanceref.FrameUsedPhysicalChannel;
import autosar21.system.communication.instanceref.GatewayTypeGatewayLocation;
import autosar21.system.communication.instanceref.InstancerefPackage;
import autosar21.system.communication.instanceref.PDUGatewayEntryDestinationPDU;
import autosar21.system.communication.instanceref.PDUGatewayEntrySourcePDU;
import autosar21.system.communication.instanceref.SignalGatewayEntryDestinationClusterSignal;
import autosar21.system.communication.instanceref.SignalGatewayEntrySourceClusterSignal;
import autosar21.system.communication.instanceref.util.InstancerefSwitch;
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
        public Adapter caseCommunicationMatrixTypeCommunicationCluster(CommunicationMatrixTypeCommunicationCluster object) {
            return InstancerefAdapterFactory.this.createCommunicationMatrixTypeCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseFrameReceiver(FrameReceiver object) {
            return InstancerefAdapterFactory.this.createFrameReceiverAdapter();
        }

        @Override
        public Adapter caseFrameTransmitter(FrameTransmitter object) {
            return InstancerefAdapterFactory.this.createFrameTransmitterAdapter();
        }

        @Override
        public Adapter caseFrameUsedPhysicalChannel(FrameUsedPhysicalChannel object) {
            return InstancerefAdapterFactory.this.createFrameUsedPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseGatewayTypeGatewayLocation(GatewayTypeGatewayLocation object) {
            return InstancerefAdapterFactory.this.createGatewayTypeGatewayLocationAdapter();
        }

        @Override
        public Adapter casePDUGatewayEntryDestinationPDU(PDUGatewayEntryDestinationPDU object) {
            return InstancerefAdapterFactory.this.createPDUGatewayEntryDestinationPDUAdapter();
        }

        @Override
        public Adapter casePDUGatewayEntrySourcePDU(PDUGatewayEntrySourcePDU object) {
            return InstancerefAdapterFactory.this.createPDUGatewayEntrySourcePDUAdapter();
        }

        @Override
        public Adapter caseSignalGatewayEntryDestinationClusterSignal(SignalGatewayEntryDestinationClusterSignal object) {
            return InstancerefAdapterFactory.this.createSignalGatewayEntryDestinationClusterSignalAdapter();
        }

        @Override
        public Adapter caseSignalGatewayEntrySourceClusterSignal(SignalGatewayEntrySourceClusterSignal object) {
            return InstancerefAdapterFactory.this.createSignalGatewayEntrySourceClusterSignalAdapter();
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

    public Adapter createCommunicationMatrixTypeCommunicationClusterAdapter() {
        return null;
    }

    public Adapter createFrameReceiverAdapter() {
        return null;
    }

    public Adapter createFrameTransmitterAdapter() {
        return null;
    }

    public Adapter createFrameUsedPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createGatewayTypeGatewayLocationAdapter() {
        return null;
    }

    public Adapter createPDUGatewayEntryDestinationPDUAdapter() {
        return null;
    }

    public Adapter createPDUGatewayEntrySourcePDUAdapter() {
        return null;
    }

    public Adapter createSignalGatewayEntryDestinationClusterSignalAdapter() {
        return null;
    }

    public Adapter createSignalGatewayEntrySourceClusterSignalAdapter() {
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

