/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.CommunicationSpeed;

public interface CommunicationSpeedFixed
extends CommunicationSpeed {
    public Integer getFixSpeed();

    public void setFixSpeed(Integer var1);

    public void unsetFixSpeed();

    public boolean isSetFixSpeed();
}

