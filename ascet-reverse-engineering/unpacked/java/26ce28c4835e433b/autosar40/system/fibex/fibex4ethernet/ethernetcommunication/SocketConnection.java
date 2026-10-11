/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConnectorType;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdProtocolType;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SocketConnection
extends ARObject {
    public SoAdConfig getSoAdConfig();

    public void setSoAdConfig(SoAdConfig var1);

    public SoAdConnectorType getAutosarConnector();

    public void setAutosarConnector(SoAdConnectorType var1);

    public void unsetAutosarConnector();

    public boolean isSetAutosarConnector();

    public LogicAddress getDoIpSourceAddress();

    public void setDoIpSourceAddress(LogicAddress var1);

    public LogicAddress getDoIpTargetAddress();

    public void setDoIpTargetAddress(LogicAddress var1);

    public SocketAddress getLocalPort();

    public void setLocalPort(SocketAddress var1);

    public NPdu getNPdu();

    public void setNPdu(NPdu var1);

    public EList<SocketConnectionIpduIdentifier> getPdus();

    public SocketAddress getRemotePort();

    public void setRemotePort(SocketAddress var1);

    public SoAdProtocolType getSocketProtocol();

    public void setSocketProtocol(SoAdProtocolType var1);

    public void unsetSocketProtocol();

    public boolean isSetSocketProtocol();
}

