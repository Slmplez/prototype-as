/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.transportprotocols;

import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayIsoTpConnection
extends TpChannel {
    public Boolean getBandwidthLimitation();

    public void setBandwidthLimitation(Boolean var1);

    public void unsetBandwidthLimitation();

    public boolean isSetBandwidthLimitation();

    public IPdu getDirectTpSdu();

    public void setDirectTpSdu(IPdu var1);

    public TpAddress getMulticast();

    public void setMulticast(TpAddress var1);

    public EList<FlexrayIsoTpNode> getReceivers();

    public IPdu getReversedTpSdu();

    public void setReversedTpSdu(IPdu var1);

    public FlexrayIsoTpPduPool getRxPduPool();

    public void setRxPduPool(FlexrayIsoTpPduPool var1);

    public FlexrayIsoTpConnectionControl getTpConnectionControl();

    public void setTpConnectionControl(FlexrayIsoTpConnectionControl var1);

    public FlexrayIsoTpNode getTransmitter();

    public void setTransmitter(FlexrayIsoTpNode var1);

    public FlexrayIsoTpPduPool getTxPduPool();

    public void setTxPduPool(FlexrayIsoTpPduPool var1);
}

