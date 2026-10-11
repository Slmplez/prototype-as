/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;

public interface Connector
extends Identifiable {
    public ECUInstance getECUInstance();

    public void setECUInstance(ECUInstance var1);

    public ECUCommunicationPortInstance getCommPort();

    public void setCommPort(ECUCommunicationPortInstance var1);
}

