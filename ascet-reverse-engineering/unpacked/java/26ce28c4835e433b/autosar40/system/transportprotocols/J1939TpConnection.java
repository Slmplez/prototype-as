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
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpNode;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface J1939TpConnection
extends ARObject {
    public J1939TpConfig getJ1939TpConfig();

    public void setJ1939TpConfig(J1939TpConfig var1);

    public Boolean getBroadcast();

    public void setBroadcast(Boolean var1);

    public void unsetBroadcast();

    public boolean isSetBroadcast();

    public NPdu getDataPdu();

    public void setDataPdu(NPdu var1);

    public NPdu getDirectPdu();

    public void setDirectPdu(NPdu var1);

    public EList<NPdu> getFlowControlPdus();

    public EList<J1939TpNode> getReceivers();

    public EList<IPdu> getTpSdus();

    public J1939TpNode getTransmitter();

    public void setTransmitter(J1939TpNode var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

