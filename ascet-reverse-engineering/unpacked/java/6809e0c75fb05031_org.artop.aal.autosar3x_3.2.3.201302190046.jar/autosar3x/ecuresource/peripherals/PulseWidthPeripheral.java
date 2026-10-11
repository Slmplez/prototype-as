/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.Peripheral;

public interface PulseWidthPeripheral
extends Peripheral {
    public Integer getResolution();

    public void setResolution(Integer var1);

    public void unsetResolution();

    public boolean isSetResolution();
}

