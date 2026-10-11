/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.peripherals.CommunicationArchitectureEnum;
import autosar3x.ecuresource.peripherals.CommunicationFilter;
import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationProtocol;
import autosar3x.ecuresource.peripherals.Peripheral;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationPeripheral
extends Peripheral {
    public CommunicationFilter getAcceptanceFilter();

    public void setAcceptanceFilter(CommunicationFilter var1);

    public CommunicationArchitectureEnum getArchitecture();

    public void setArchitecture(CommunicationArchitectureEnum var1);

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

