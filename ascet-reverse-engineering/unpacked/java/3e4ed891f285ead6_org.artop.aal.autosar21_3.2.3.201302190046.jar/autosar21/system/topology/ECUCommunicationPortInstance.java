/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.topology.ECUInstance;

public interface ECUCommunicationPortInstance
extends Identifiable {
    public ECUInstance getECUInstance();

    public void setECUInstance(ECUInstance var1);

    public Integer getCommPortId();

    public void setCommPortId(Integer var1);

    public void unsetCommPortId();

    public boolean isSetCommPortId();

    public Integer getCommunicationSpeedPort();

    public void setCommunicationSpeedPort(Integer var1);

    public void unsetCommunicationSpeedPort();

    public boolean isSetCommunicationSpeedPort();

    public ECUCommunicationPort getPort();

    public void setPort(ECUCommunicationPort var1);

    public Boolean getWakeUpOnCommPortSupported();

    public void setWakeUpOnCommPortSupported(Boolean var1);

    public void unsetWakeUpOnCommPortSupported();

    public boolean isSetWakeUpOnCommPortSupported();
}

