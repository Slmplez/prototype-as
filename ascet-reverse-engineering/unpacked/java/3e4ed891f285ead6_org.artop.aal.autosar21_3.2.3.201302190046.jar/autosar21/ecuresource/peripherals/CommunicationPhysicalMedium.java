/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMediumPhysicalMediumTypeEnum;
import autosar21.genericstructure.infrastructure.ARObject;

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

    public CommunicationPhysicalMediumPhysicalMediumTypeEnum getPhysicalMediumType();

    public void setPhysicalMediumType(CommunicationPhysicalMediumPhysicalMediumTypeEnum var1);

    public void unsetPhysicalMediumType();

    public boolean isSetPhysicalMediumType();
}

