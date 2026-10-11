/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.PulseWidthPeripheral;
import autosar3x.ecuresource.peripherals.PwdModeEnum;

public interface PWD
extends PulseWidthPeripheral {
    public PwdModeEnum getMode();

    public void setMode(PwdModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();

    public Boolean getPhaseDetection();

    public void setPhaseDetection(Boolean var1);

    public void unsetPhaseDetection();

    public boolean isSetPhaseDetection();
}

