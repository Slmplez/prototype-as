/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.CanNmClusterCoupling;
import autosar40.system.networkmanagement.CanNmEcu;
import autosar40.system.networkmanagement.CanNmNode;
import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.FlexrayNmClusterCoupling;
import autosar40.system.networkmanagement.FlexrayNmEcu;
import autosar40.system.networkmanagement.FlexrayNmNode;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmCoordinator;
import autosar40.system.networkmanagement.NmEcu;
import autosar40.system.networkmanagement.UdpNmCluster;
import autosar40.system.networkmanagement.UdpNmClusterCoupling;
import autosar40.system.networkmanagement.UdpNmEcu;
import autosar40.system.networkmanagement.UdpNmNode;
import autosar40.system.networkmanagement.impl.NetworkmanagementFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface NetworkmanagementFactory
extends EFactory {
    public static final NetworkmanagementFactory eINSTANCE = NetworkmanagementFactoryImpl.init();

    public CanNmCluster createCanNmCluster();

    public NmEcu createNmEcu();

    public NmCoordinator createNmCoordinator();

    public CanNmClusterCoupling createCanNmClusterCoupling();

    public CanNmEcu createCanNmEcu();

    public CanNmNode createCanNmNode();

    public CanNmRangeConfig createCanNmRangeConfig();

    public FlexrayNmCluster createFlexrayNmCluster();

    public FlexrayNmClusterCoupling createFlexrayNmClusterCoupling();

    public FlexrayNmEcu createFlexrayNmEcu();

    public FlexrayNmNode createFlexrayNmNode();

    public NmConfig createNmConfig();

    public UdpNmCluster createUdpNmCluster();

    public UdpNmClusterCoupling createUdpNmClusterCoupling();

    public UdpNmEcu createUdpNmEcu();

    public UdpNmNode createUdpNmNode();

    public NetworkmanagementPackage getNetworkmanagementPackage();
}

