/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.CcuModeEnum;
import autosar3x.ecuresource.peripherals.GeneralPurposeTimer;

public interface CCU
extends GeneralPurposeTimer {
    public CcuModeEnum getMode();

    public void setMode(CcuModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();
}

