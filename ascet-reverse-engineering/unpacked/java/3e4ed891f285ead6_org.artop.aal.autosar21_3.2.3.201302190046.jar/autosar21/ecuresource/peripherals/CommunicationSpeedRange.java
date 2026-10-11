/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CommunicationSpeed;

public interface CommunicationSpeedRange
extends CommunicationSpeed {
    public Integer getMaxSpeed();

    public void setMaxSpeed(Integer var1);

    public void unsetMaxSpeed();

    public boolean isSetMaxSpeed();

    public Integer getMinSpeed();

    public void setMinSpeed(Integer var1);

    public void unsetMinSpeed();

    public boolean isSetMinSpeed();
}

