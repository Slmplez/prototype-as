/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationSpeed;
import autosar21.ecuresource.peripherals.PeripheralHWPort;

public interface CommunicationHWPort
extends PeripheralHWPort {
    public CommunicationPeripheral getCommunicationPeripheral();

    public void setCommunicationPeripheral(CommunicationPeripheral var1);

    public CommunicationPhysicalMedium getPhysicalLayer();

    public void setPhysicalLayer(CommunicationPhysicalMedium var1);

    public CommunicationSpeed getSpeed();

    public void setSpeed(CommunicationSpeed var1);
}

