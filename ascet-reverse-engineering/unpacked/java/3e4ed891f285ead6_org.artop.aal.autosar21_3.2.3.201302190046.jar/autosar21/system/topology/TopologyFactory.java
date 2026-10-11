/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.topology;

import autosar21.system.topology.CANBus;
import autosar21.system.topology.CANCommunicationPortInstance;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.FlexrayCluster;
import autosar21.system.topology.FlexrayCommunicationPortInstance;
import autosar21.system.topology.Hub;
import autosar21.system.topology.LINCommunicationPortInstance;
import autosar21.system.topology.LINSubBus;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.UnspecifiedConnection;
import autosar21.system.topology.impl.TopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TopologyFactory
extends EFactory {
    public static final TopologyFactory eINSTANCE = TopologyFactoryImpl.init();

    public CANBus createCANBus();

    public CANCommunicationPortInstance createCANCommunicationPortInstance();

    public ECUCommunicationPortInstance createECUCommunicationPortInstance();

    public Connector createConnector();

    public ECUInstance createECUInstance();

    public FlexrayCluster createFlexrayCluster();

    public FlexrayCommunicationPortInstance createFlexrayCommunicationPortInstance();

    public Hub createHub();

    public LINCommunicationPortInstance createLINCommunicationPortInstance();

    public LINSubBus createLINSubBus();

    public PhysicalChannel createPhysicalChannel();

    public PhysicalMediumSegment createPhysicalMediumSegment();

    public SystemTopologyType createSystemTopologyType();

    public UnspecifiedConnection createUnspecifiedConnection();

    public TopologyPackage getTopologyPackage();
}

