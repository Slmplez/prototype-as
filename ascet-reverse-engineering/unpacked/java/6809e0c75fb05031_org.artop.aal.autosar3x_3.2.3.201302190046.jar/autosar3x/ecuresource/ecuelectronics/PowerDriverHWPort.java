/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.HWPort;

public interface PowerDriverHWPort
extends HWPort {
    public Double getPwmMaxFrequency();

    public void setPwmMaxFrequency(Double var1);

    public void unsetPwmMaxFrequency();

    public boolean isSetPwmMaxFrequency();

    public Double getPwmMinOffTime();

    public void setPwmMinOffTime(Double var1);

    public void unsetPwmMinOffTime();

    public boolean isSetPwmMinOffTime();

    public Double getPwmMinOnTime();

    public void setPwmMinOnTime(Double var1);

    public void unsetPwmMinOnTime();

    public boolean isSetPwmMinOnTime();
}

