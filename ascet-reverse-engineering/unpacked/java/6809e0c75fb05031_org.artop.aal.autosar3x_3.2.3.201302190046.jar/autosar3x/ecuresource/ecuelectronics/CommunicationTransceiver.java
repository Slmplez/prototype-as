/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.ecuelectronics.BusTermination;
import autosar3x.ecuresource.ecuelectronics.ECUElectronics;
import autosar3x.ecuresource.peripherals.CommunicationArchitectureEnum;
import autosar3x.ecuresource.peripherals.CommunicationFilter;

public interface CommunicationTransceiver
extends ECUElectronics {
    public CommunicationFilter getAcceptanceFilter();

    public void setAcceptanceFilter(CommunicationFilter var1);

    public CommunicationArchitectureEnum getArchitecture();

    public void setArchitecture(CommunicationArchitectureEnum var1);

    public void unsetArchitecture();

    public boolean isSetArchitecture();

    public CommunicationFilter getRejectionFilter();

    public void setRejectionFilter(CommunicationFilter var1);

    public BusTermination getTermination();

    public void setTermination(BusTermination var1);
}

