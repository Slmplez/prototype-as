/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.transportprotocols;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
import autosar3x.system.transportprotocols.FlexrayTpNode;
import autosar3x.system.transportprotocols.TpAddress;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexRayTpConnection
extends ARObject {
    public FlexrayTpChannel getFlexrayTpChannel();

    public void setFlexrayTpChannel(FlexrayTpChannel var1);

    public IPdu getDirectTpSdu();

    public void setDirectTpSdu(IPdu var1);

    public NPdu getFlowControlPdu();

    public void setFlowControlPdu(NPdu var1);

    public TpAddress getMulticast();

    public void setMulticast(TpAddress var1);

    public IPdu getReversedTpSdu();

    public void setReversedTpSdu(IPdu var1);

    public FlexrayTpNode getSource();

    public void setSource(FlexrayTpNode var1);

    public EList<FlexrayTpNode> getTargets();

    public EList<NPdu> getTransmitPdus();
}

