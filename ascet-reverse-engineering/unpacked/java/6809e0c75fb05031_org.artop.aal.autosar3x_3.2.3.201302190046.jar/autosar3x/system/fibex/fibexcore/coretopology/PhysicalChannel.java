/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import autosar3x.system.transportprotocols.TpNode;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PhysicalChannel
extends Identifiable {
    public CommunicationCluster getCommunicationCluster();

    public void setCommunicationCluster(CommunicationCluster var1);

    public EList<FrameTriggering> getFrameTriggerings();

    public EList<IPduTriggering> getIPduTriggerings();

    public EList<ISignalTriggering> getISignalTriggerings();

    public EList<TpAddress> getTpAddress();

    public EList<TpChannel> getTpChannels();

    public EList<TpNode> getTpNodes();
}

