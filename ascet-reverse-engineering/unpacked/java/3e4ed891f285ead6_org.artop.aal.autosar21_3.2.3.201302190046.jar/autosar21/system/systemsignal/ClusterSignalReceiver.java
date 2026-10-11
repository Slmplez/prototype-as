/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.systemsignal;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.instanceref.ClusterSignalReceiverCommunicationPort;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClusterSignalReceiver
extends ARObject {
    public ClusterSignal getClusterSignal();

    public void setClusterSignal(ClusterSignal var1);

    public EList<ClusterSignalReceiverCommunicationPort> getCommunicationPorts();

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

