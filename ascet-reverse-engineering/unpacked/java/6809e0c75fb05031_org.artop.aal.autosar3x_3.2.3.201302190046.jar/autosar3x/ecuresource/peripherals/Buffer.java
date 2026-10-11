/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.CommunicationDirectionEnum;
import autosar3x.ecuresource.peripherals.PeripheralHWPort;
import autosar3x.genericstructure.infrastructure.ARObject;

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

    public CommunicationDirectionEnum getType();

    public void setType(CommunicationDirectionEnum var1);

    public void unsetType();

    public boolean isSetType();
}

