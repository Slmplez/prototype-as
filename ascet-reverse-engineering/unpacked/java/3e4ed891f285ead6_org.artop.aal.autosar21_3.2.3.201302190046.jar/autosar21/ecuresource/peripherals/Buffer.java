/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.BufferTypeEnum;
import autosar21.ecuresource.peripherals.PeripheralHWPort;
import autosar21.genericstructure.infrastructure.ARObject;

public interface Buffer
extends ARObject {
    public PeripheralHWPort getPeripheralHWPort();

    public void setPeripheralHWPort(PeripheralHWPort var1);

    public Integer getNumber();

    public void setNumber(Integer var1);

    public void unsetNumber();

    public boolean isSetNumber();

    public Integer getSize();

    public void setSize(Integer var1);

    public void unsetSize();

    public boolean isSetSize();

    public BufferTypeEnum getType();

    public void setType(BufferTypeEnum var1);

    public void unsetType();

    public boolean isSetType();
}

