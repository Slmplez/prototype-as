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
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpNode;
import autosar40.system.transportprotocols.TpAddress;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinTpConnection
extends ARObject {
    public LinTpConfig getLinTpConfig();

    public void setLinTpConfig(LinTpConfig var1);

    public NPdu getDataPdu();

    public void setDataPdu(NPdu var1);

    public Boolean getDropNotRequestedNad();

    public void setDropNotRequestedNad(Boolean var1);

    public void unsetDropNotRequestedNad();

    public boolean isSetDropNotRequestedNad();

    public NPdu getFlowControl();

    public void setFlowControl(NPdu var1);

    public IPdu getLinTpNSdu();

    public void setLinTpNSdu(IPdu var1);

    public TpAddress getMulticast();

    public void setMulticast(TpAddress var1);

    public EList<LinTpNode> getReceivers();

    public Double getTimeoutAs();

    public void setTimeoutAs(Double var1);

    public void unsetTimeoutAs();

    public boolean isSetTimeoutAs();

    public Double getTimeoutCr();

    public void setTimeoutCr(Double var1);

    public void unsetTimeoutCr();

    public boolean isSetTimeoutCr();

    public Double getTimeoutCs();

    public void setTimeoutCs(Double var1);

    public void unsetTimeoutCs();

    public boolean isSetTimeoutCs();

    public LinTpNode getTransmitter();

    public void setTransmitter(LinTpNode var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

