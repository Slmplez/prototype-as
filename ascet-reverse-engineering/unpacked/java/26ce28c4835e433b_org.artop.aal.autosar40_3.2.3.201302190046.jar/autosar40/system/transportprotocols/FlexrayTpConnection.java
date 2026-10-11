/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.TpAddress;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayTpConnection
extends ARObject {
    public FlexrayTpConfig getFlexrayTpConfig();

    public void setFlexrayTpConfig(FlexrayTpConfig var1);

    public Boolean getBandwidthLimitation();

    public void setBandwidthLimitation(Boolean var1);

    public void unsetBandwidthLimitation();

    public boolean isSetBandwidthLimitation();

    public IPdu getDirectTpSdu();

    public void setDirectTpSdu(IPdu var1);

    public TpAddress getMulticast();

    public void setMulticast(TpAddress var1);

    public EList<FlexrayTpNode> getReceivers();

    public IPdu getReversedTpSdu();

    public void setReversedTpSdu(IPdu var1);

    public FlexrayTpPduPool getRxPduPool();

    public void setRxPduPool(FlexrayTpPduPool var1);

    public FlexrayTpConnectionControl getTpConnectionControl();

    public void setTpConnectionControl(FlexrayTpConnectionControl var1);

    public FlexrayTpNode getTransmitter();

    public void setTransmitter(FlexrayTpNode var1);

    public FlexrayTpPduPool getTxPduPool();

    public void setTxPduPool(FlexrayTpPduPool var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

