/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.system.topology.CommunicationCluster;

public interface LINSubBus
extends CommunicationCluster {
    public Double getMaxPermittedSlaveJitter();

    public void setMaxPermittedSlaveJitter(Double var1);

    public void unsetMaxPermittedSlaveJitter();

    public boolean isSetMaxPermittedSlaveJitter();
}

