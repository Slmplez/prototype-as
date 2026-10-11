/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CommunicationSpeed;

public interface CommunicationSpeedFixed
extends CommunicationSpeed {
    public Integer getFixSpeed();

    public void setFixSpeed(Integer var1);

    public void unsetFixSpeed();

    public boolean isSetFixSpeed();
}

