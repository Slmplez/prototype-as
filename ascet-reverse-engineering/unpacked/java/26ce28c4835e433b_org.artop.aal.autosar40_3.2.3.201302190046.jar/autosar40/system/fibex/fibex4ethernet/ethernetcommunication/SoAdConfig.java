/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SoAdConfig
extends ARObject {
    public EthernetPhysicalChannel getEthernetPhysicalChannel();

    public void setEthernetPhysicalChannel(EthernetPhysicalChannel var1);

    public EList<SocketConnection> getConnections();

    public EList<LogicAddress> getLogicAddress();

    public EList<SocketAddress> getSocketAddress();
}

