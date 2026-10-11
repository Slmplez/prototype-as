/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.Peripheral;

public interface PulseWidthPeripheral
extends Peripheral {
    public Integer getResolution();

    public void setResolution(Integer var1);

    public void unsetResolution();

    public boolean isSetResolution();
}

