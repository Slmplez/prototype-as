/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiverArchitectureEnum;
import autosar21.ecuresource.ecuelectronics.ECUElectronics;
import autosar21.ecuresource.peripherals.CommunicationFilter;

public interface CommunicationTransceiver
extends ECUElectronics {
    public CommunicationFilter getAcceptanceFilter();

    public void setAcceptanceFilter(CommunicationFilter var1);

    public CommunicationTransceiverArchitectureEnum getArchitecture();

    public void setArchitecture(CommunicationTransceiverArchitectureEnum var1);

    public void unsetArchitecture();

    public boolean isSetArchitecture();

    public CommunicationFilter getRejectionFilter();

    public void setRejectionFilter(CommunicationFilter var1);

    public BusTermination getTermination();

    public void setTermination(BusTermination var1);
}

