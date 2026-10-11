/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.communication.instanceref;

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
import autosar21.system.communication.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public CommunicationMatrixTypeCommunicationCluster createCommunicationMatrixTypeCommunicationCluster();

    public FrameReceiver createFrameReceiver();

    public FrameTransmitter createFrameTransmitter();

    public FrameUsedPhysicalChannel createFrameUsedPhysicalChannel();

    public GatewayTypeGatewayLocation createGatewayTypeGatewayLocation();

    public PDUGatewayEntryDestinationPDU createPDUGatewayEntryDestinationPDU();

    public PDUGatewayEntrySourcePDU createPDUGatewayEntrySourcePDU();

    public SignalGatewayEntryDestinationClusterSignal createSignalGatewayEntryDestinationClusterSignal();

    public SignalGatewayEntrySourceClusterSignal createSignalGatewayEntrySourceClusterSignal();

    public InstancerefPackage getInstancerefPackage();
}

