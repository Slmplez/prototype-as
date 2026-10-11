/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.TpAddress;

public interface J1939TpNode
extends Identifiable {
    public J1939TpConfig getJ1939TpConfig();

    public void setJ1939TpConfig(J1939TpConfig var1);

    public CommunicationConnector getConnector();

    public void setConnector(CommunicationConnector var1);

    public TpAddress getTpAddress();

    public void setTpAddress(TpAddress var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

