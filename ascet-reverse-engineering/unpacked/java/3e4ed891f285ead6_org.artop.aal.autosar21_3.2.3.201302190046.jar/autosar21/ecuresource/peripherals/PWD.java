/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.PWDModeEnum;
import autosar21.ecuresource.peripherals.PulseWidthPeripheral;

public interface PWD
extends PulseWidthPeripheral {
    public PWDModeEnum getMode();

    public void setMode(PWDModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();

    public Boolean getPhaseDetection();

    public void setPhaseDetection(Boolean var1);

    public void unsetPhaseDetection();

    public boolean isSetPhaseDetection();
}

