/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar3x.ecuresource.peripherals.CommunicationSpeed;
import autosar3x.ecuresource.peripherals.PeripheralHWPort;

public interface CommunicationHWPort
extends PeripheralHWPort {
    public CommunicationPeripheral getCommunicationPeripheral();

    public void setCommunicationPeripheral(CommunicationPeripheral var1);

    public CommunicationPhysicalMedium getPhysicalLayer();

    public void setPhysicalLayer(CommunicationPhysicalMedium var1);

    public CommunicationSpeed getSpeed();

    public void setSpeed(CommunicationSpeed var1);
}

