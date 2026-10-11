/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.memory;

import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.memory.MemoryMappedHWPortHwPortTypeEnum;

public interface MemoryMappedHWPort
extends HWPort {
    public Integer getDataInterfaceWidth();

    public void setDataInterfaceWidth(Integer var1);

    public void unsetDataInterfaceWidth();

    public boolean isSetDataInterfaceWidth();

    public MemoryMappedHWPortHwPortTypeEnum getHwPortType();

    public void setHwPortType(MemoryMappedHWPortHwPortTypeEnum var1);

    public void unsetHwPortType();

    public boolean isSetHwPortType();
}

