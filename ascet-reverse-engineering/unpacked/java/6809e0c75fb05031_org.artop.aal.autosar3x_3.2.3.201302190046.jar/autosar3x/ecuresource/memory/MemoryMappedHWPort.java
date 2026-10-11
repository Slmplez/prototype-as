/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.memory;

import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.processingunit.MemoryMappedHwPortTypeEnum;

public interface MemoryMappedHWPort
extends HWPort {
    public Integer getDataInterfaceWidth();

    public void setDataInterfaceWidth(Integer var1);

    public void unsetDataInterfaceWidth();

    public boolean isSetDataInterfaceWidth();

    public MemoryMappedHwPortTypeEnum getHwPortType();

    public void setHwPortType(MemoryMappedHwPortTypeEnum var1);

    public void unsetHwPortType();

    public boolean isSetHwPortType();
}

