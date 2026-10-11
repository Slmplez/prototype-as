/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.topology;

import autosar21.ecuresource.ECU;
import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstancePowerSupplyEnum;
import autosar21.system.topology.TopologyElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ECUInstance
extends TopologyElement {
    public Double getCOMProcessingPeriod();

    public void setCOMProcessingPeriod(Double var1);

    public void unsetCOMProcessingPeriod();

    public boolean isSetCOMProcessingPeriod();

    public EList<ECUCommunicationPortInstance> getCommPorts();

    public EList<Connector> getConnectors();

    public Integer getEcuAddress();

    public void setEcuAddress(Integer var1);

    public void unsetEcuAddress();

    public boolean isSetEcuAddress();

    public ECU getEcu();

    public void setEcu(ECU var1);

    public ECUInstancePowerSupplyEnum getPowerSupply();

    public void setPowerSupply(ECUInstancePowerSupplyEnum var1);

    public void unsetPowerSupply();

    public boolean isSetPowerSupply();

    public ByteOrderEnum getProcessingUnitEndianness();

    public void setProcessingUnitEndianness(ByteOrderEnum var1);

    public void unsetProcessingUnitEndianness();

    public boolean isSetProcessingUnitEndianness();

    public Boolean getSleepModeSupported();

    public void setSleepModeSupported(Boolean var1);

    public void unsetSleepModeSupported();

    public boolean isSetSleepModeSupported();

    public Boolean getWakeUpOnInternalSupported();

    public void setWakeUpOnInternalSupported(Boolean var1);

    public void unsetWakeUpOnInternalSupported();

    public boolean isSetWakeUpOnInternalSupported();

    public Boolean getWakeUpOnIoSupported();

    public void setWakeUpOnIoSupported(Boolean var1);

    public void unsetWakeUpOnIoSupported();

    public boolean isSetWakeUpOnIoSupported();
}

