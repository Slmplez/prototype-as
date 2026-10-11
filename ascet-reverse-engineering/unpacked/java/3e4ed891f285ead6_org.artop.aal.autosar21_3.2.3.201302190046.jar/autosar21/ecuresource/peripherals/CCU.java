/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CCUModeEnum;
import autosar21.ecuresource.peripherals.GeneralPurposeTimer;

public interface CCU
extends GeneralPurposeTimer {
    public CCUModeEnum getMode();

    public void setMode(CCUModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();
}

