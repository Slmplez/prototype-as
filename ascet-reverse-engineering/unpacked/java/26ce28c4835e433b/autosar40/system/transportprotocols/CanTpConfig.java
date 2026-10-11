/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpEcu;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.TpConfig;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CanTpConfig
extends TpConfig {
    public EList<CanTpAddress> getTpAddress();

    public EList<CanTpChannel> getTpChannels();

    public EList<CanTpConnection> getTpConnections();

    public EList<CanTpEcu> getTpEcus();

    public EList<CanTpNode> getTpNodes();
}

