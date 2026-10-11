/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCluster;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationController;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernettopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EthernettopologyFactory
extends EFactory {
    public static final EthernettopologyFactory eINSTANCE = EthernettopologyFactoryImpl.init();

    public EthernetCluster createEthernetCluster();

    public EthernetClusterConditional createEthernetClusterConditional();

    public EthernetCommunicationController createEthernetCommunicationController();

    public EthernetCommunicationControllerConditional createEthernetCommunicationControllerConditional();

    public EthernetPhysicalChannel createEthernetPhysicalChannel();

    public EthernetCommunicationConnector createEthernetCommunicationConnector();

    public EthernettopologyPackage getEthernettopologyPackage();
}

