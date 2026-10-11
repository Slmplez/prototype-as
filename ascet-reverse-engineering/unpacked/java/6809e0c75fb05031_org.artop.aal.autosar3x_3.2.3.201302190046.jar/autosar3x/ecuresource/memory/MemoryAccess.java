/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.memory;

import autosar3x.ecuresource.basicelements.TimeRange;
import autosar3x.ecuresource.memory.MemoryAccessTypeEnum;
import autosar3x.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface MemoryAccess
extends ARObject {
    public MemoryMappedAssemblyHWConnection getMemoryMappedAssemblyHWConnection();

    public void setMemoryMappedAssemblyHWConnection(MemoryMappedAssemblyHWConnection var1);

    public MemoryAccessTypeEnum getAccessType();

    public void setAccessType(MemoryAccessTypeEnum var1);

    public void unsetAccessType();

    public boolean isSetAccessType();

    public TimeRange getTime();

    public void setTime(TimeRange var1);
}

