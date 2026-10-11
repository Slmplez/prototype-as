/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TpConfig;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface J1939TpConfig
extends TpConfig {
    public EList<TpAddress> getTpAddress();

    public EList<J1939TpConnection> getTpConnections();

    public EList<J1939TpNode> getTpNodes();
}

