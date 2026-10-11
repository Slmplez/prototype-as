/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.genericstructure.infrastructure.ARObject;

public interface CommunicationSpeed
extends ARObject {
    public CommunicationHWPort getCommunicationHWPort();

    public void setCommunicationHWPort(CommunicationHWPort var1);

    public Double getTolerance();

    public void setTolerance(Double var1);

    public void unsetTolerance();

    public boolean isSetTolerance();
}

