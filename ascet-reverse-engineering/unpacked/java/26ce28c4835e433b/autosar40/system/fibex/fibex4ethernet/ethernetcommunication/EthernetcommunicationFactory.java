/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrame;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrameTriggering;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.EthernetcommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EthernetcommunicationFactory
extends EFactory {
    public static final EthernetcommunicationFactory eINSTANCE = EthernetcommunicationFactoryImpl.init();

    public EthernetFrame createEthernetFrame();

    public EthernetFrameTriggering createEthernetFrameTriggering();

    public LogicAddress createLogicAddress();

    public SoAdConfig createSoAdConfig();

    public SocketAddress createSocketAddress();

    public SocketConnection createSocketConnection();

    public SocketConnectionIpduIdentifier createSocketConnectionIpduIdentifier();

    public EthernetcommunicationPackage getEthernetcommunicationPackage();
}

