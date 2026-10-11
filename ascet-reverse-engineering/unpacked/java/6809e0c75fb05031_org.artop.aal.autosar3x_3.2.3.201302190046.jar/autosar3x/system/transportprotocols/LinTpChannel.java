/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.transportprotocols;

import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.LinTpNode;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinTpChannel
extends TpChannel {
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

    public LinTpNode getSource();

    public void setSource(LinTpNode var1);

    public EList<LinTpNode> getTargets();
}

