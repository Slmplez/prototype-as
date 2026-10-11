/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationPhysicalMediumEnum;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface CommunicationPhysicalMedium
extends ARObject {
    public CommunicationHWPort getCommunicationHWPort();

    public void setCommunicationHWPort(CommunicationHWPort var1);

    public Integer getPhysicalMediumDataLines();

    public void setPhysicalMediumDataLines(Integer var1);

    public void unsetPhysicalMediumDataLines();

    public boolean isSetPhysicalMediumDataLines();

    public String getPhysicalMediumStandard();

    public void setPhysicalMediumStandard(String var1);

    public void unsetPhysicalMediumStandard();

    public boolean isSetPhysicalMediumStandard();

    public CommunicationPhysicalMediumEnum getPhysicalMediumType();

    public void setPhysicalMediumType(CommunicationPhysicalMediumEnum var1);

    public void unsetPhysicalMediumType();

    public boolean isSetPhysicalMediumType();
}

