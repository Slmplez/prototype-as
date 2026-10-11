/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import autosar40.system.transportprotocols.FlexrayArTpNode;
import autosar40.system.transportprotocols.TpAddress;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayArTpConnection
extends ARObject {
    public FlexrayArTpChannel getFlexrayArTpChannel();

    public void setFlexrayArTpChannel(FlexrayArTpChannel var1);

    public IPdu getDirectTpSdu();

    public void setDirectTpSdu(IPdu var1);

    public NPdu getFlowControlPdu();

    public void setFlowControlPdu(NPdu var1);

    public TpAddress getMulticast();

    public void setMulticast(TpAddress var1);

    public IPdu getReversedTpSdu();

    public void setReversedTpSdu(IPdu var1);

    public FlexrayArTpNode getSource();

    public void setSource(FlexrayArTpNode var1);

    public EList<FlexrayArTpNode> getTargets();

    public EList<NPdu> getTransmitPdus();
}

