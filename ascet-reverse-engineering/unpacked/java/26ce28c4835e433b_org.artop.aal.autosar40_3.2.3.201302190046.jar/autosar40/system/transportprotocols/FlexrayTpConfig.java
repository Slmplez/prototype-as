/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpEcu;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TpConfig;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayTpConfig
extends TpConfig {
    public EList<FlexrayTpPduPool> getPduPools();

    public EList<TpAddress> getTpAddress();

    public EList<FlexrayTpConnection> getTpConnections();

    public EList<FlexrayTpConnectionControl> getTpConnectionControls();

    public EList<FlexrayTpEcu> getTpEcus();

    public EList<FlexrayTpNode> getTpNodes();
}

