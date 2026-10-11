/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.GeneralPurposeTimer;
import autosar3x.ecuresource.peripherals.TimerCountDirectionEnum;
import autosar3x.ecuresource.peripherals.TimerModeEnum;

public interface Timer
extends GeneralPurposeTimer {
    public Boolean getCanBeReInit();

    public void setCanBeReInit(Boolean var1);

    public void unsetCanBeReInit();

    public boolean isSetCanBeReInit();

    public TimerCountDirectionEnum getCountDirection();

    public void setCountDirection(TimerCountDirectionEnum var1);

    public void unsetCountDirection();

    public boolean isSetCountDirection();

    public TimerModeEnum getMode();

    public void setMode(TimerModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();
}

