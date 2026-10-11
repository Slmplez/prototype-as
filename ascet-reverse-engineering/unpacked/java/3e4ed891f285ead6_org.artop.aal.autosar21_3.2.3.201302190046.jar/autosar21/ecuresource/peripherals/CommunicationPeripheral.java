/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.peripherals.CommunicationFilter;
import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPeripheralArchitectureEnum;
import autosar21.ecuresource.peripherals.CommunicationProtocol;
import autosar21.ecuresource.peripherals.Peripheral;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationPeripheral
extends Peripheral {
    public CommunicationFilter getAcceptanceFilter();

    public void setAcceptanceFilter(CommunicationFilter var1);

    public CommunicationPeripheralArchitectureEnum getArchitecture();

    public void setArchitecture(CommunicationPeripheralArchitectureEnum var1);

    public void unsetArchitecture();

    public boolean isSetArchitecture();

    public Clock getClock();

    public void setClock(Clock var1);

    public ErrorDetectionCorrection getErrorDetection();

    public void setErrorDetection(ErrorDetectionCorrection var1);

    public EList<CommunicationHWPort> getHwPorts();

    public Boolean getMonitor();

    public void setMonitor(Boolean var1);

    public void unsetMonitor();

    public boolean isSetMonitor();

    public EList<CommunicationProtocol> getProtocols();

    public CommunicationFilter getRejectionFilter();

    public void setRejectionFilter(CommunicationFilter var1);

    public Boolean getTimestampAvailable();

    public void setTimestampAvailable(Boolean var1);

    public void unsetTimestampAvailable();

    public boolean isSetTimestampAvailable();
}

