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
package autosar21.system.communication.instanceref.impl;

import autosar21.system.communication.instanceref.CommunicationMatrixTypeCommunicationCluster;
import autosar21.system.communication.instanceref.FrameReceiver;
import autosar21.system.communication.instanceref.FrameTransmitter;
import autosar21.system.communication.instanceref.FrameUsedPhysicalChannel;
import autosar21.system.communication.instanceref.GatewayTypeGatewayLocation;
import autosar21.system.communication.instanceref.InstancerefFactory;
import autosar21.system.communication.instanceref.InstancerefPackage;
import autosar21.system.communication.instanceref.PDUGatewayEntryDestinationPDU;
import autosar21.system.communication.instanceref.PDUGatewayEntrySourcePDU;
import autosar21.system.communication.instanceref.SignalGatewayEntryDestinationClusterSignal;
import autosar21.system.communication.instanceref.SignalGatewayEntrySourceClusterSignal;
import autosar21.system.communication.instanceref.impl.CommunicationMatrixTypeCommunicationClusterImpl;
import autosar21.system.communication.instanceref.impl.FrameReceiverImpl;
import autosar21.system.communication.instanceref.impl.FrameTransmitterImpl;
import autosar21.system.communication.instanceref.impl.FrameUsedPhysicalChannelImpl;
import autosar21.system.communication.instanceref.impl.GatewayTypeGatewayLocationImpl;
import autosar21.system.communication.instanceref.impl.PDUGatewayEntryDestinationPDUImpl;
import autosar21.system.communication.instanceref.impl.PDUGatewayEntrySourcePDUImpl;
import autosar21.system.communication.instanceref.impl.SignalGatewayEntryDestinationClusterSignalImpl;
import autosar21.system.communication.instanceref.impl.SignalGatewayEntrySourceClusterSignalImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/c/r");
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
                return this.createCommunicationMatrixTypeCommunicationCluster();
            }
            case 1: {
                return this.createFrameReceiver();
            }
            case 2: {
                return this.createFrameTransmitter();
            }
            case 3: {
                return this.createFrameUsedPhysicalChannel();
            }
            case 4: {
                return this.createGatewayTypeGatewayLocation();
            }
            case 5: {
                return this.createPDUGatewayEntryDestinationPDU();
            }
            case 6: {
                return this.createPDUGatewayEntrySourcePDU();
            }
            case 7: {
                return this.createSignalGatewayEntryDestinationClusterSignal();
            }
            case 8: {
                return this.createSignalGatewayEntrySourceClusterSignal();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CommunicationMatrixTypeCommunicationCluster createCommunicationMatrixTypeCommunicationCluster() {
        CommunicationMatrixTypeCommunicationClusterImpl communicationMatrixTypeCommunicationCluster = new CommunicationMatrixTypeCommunicationClusterImpl();
        return communicationMatrixTypeCommunicationCluster;
    }

    public FrameReceiver createFrameReceiver() {
        FrameReceiverImpl frameReceiver = new FrameReceiverImpl();
        return frameReceiver;
    }

    public FrameTransmitter createFrameTransmitter() {
        FrameTransmitterImpl frameTransmitter = new FrameTransmitterImpl();
        return frameTransmitter;
    }

    public FrameUsedPhysicalChannel createFrameUsedPhysicalChannel() {
        FrameUsedPhysicalChannelImpl frameUsedPhysicalChannel = new FrameUsedPhysicalChannelImpl();
        return frameUsedPhysicalChannel;
    }

    public GatewayTypeGatewayLocation createGatewayTypeGatewayLocation() {
        GatewayTypeGatewayLocationImpl gatewayTypeGatewayLocation = new GatewayTypeGatewayLocationImpl();
        return gatewayTypeGatewayLocation;
    }

    public PDUGatewayEntryDestinationPDU createPDUGatewayEntryDestinationPDU() {
        PDUGatewayEntryDestinationPDUImpl pduGatewayEntryDestinationPDU = new PDUGatewayEntryDestinationPDUImpl();
        return pduGatewayEntryDestinationPDU;
    }

    public PDUGatewayEntrySourcePDU createPDUGatewayEntrySourcePDU() {
        PDUGatewayEntrySourcePDUImpl pduGatewayEntrySourcePDU = new PDUGatewayEntrySourcePDUImpl();
        return pduGatewayEntrySourcePDU;
    }

    public SignalGatewayEntryDestinationClusterSignal createSignalGatewayEntryDestinationClusterSignal() {
        SignalGatewayEntryDestinationClusterSignalImpl signalGatewayEntryDestinationClusterSignal = new SignalGatewayEntryDestinationClusterSignalImpl();
        return signalGatewayEntryDestinationClusterSignal;
    }

    public SignalGatewayEntrySourceClusterSignal createSignalGatewayEntrySourceClusterSignal() {
        SignalGatewayEntrySourceClusterSignalImpl signalGatewayEntrySourceClusterSignal = new SignalGatewayEntrySourceClusterSignalImpl();
        return signalGatewayEntrySourceClusterSignal;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

