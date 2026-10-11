/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.system.topology.CANBusCanAddressingModeEnum;
import autosar21.system.topology.CommunicationCluster;

public interface CANBus
extends CommunicationCluster {
    public CANBusCanAddressingModeEnum getCanAddressingMode();

    public void setCanAddressingMode(CANBusCanAddressingModeEnum var1);

    public void unsetCanAddressingMode();

    public boolean isSetCanAddressingMode();
}

