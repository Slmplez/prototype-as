/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.basicelements;

import autosar21.ecuresource.basicelements.MemoryAccessAccessTypeEnum;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar21.genericstructure.infrastructure.ARObject;

public interface MemoryAccess
extends ARObject {
    public MemoryMappedAssemblyHWConnection getMemoryMappedAssemblyHWConnection();

    public void setMemoryMappedAssemblyHWConnection(MemoryMappedAssemblyHWConnection var1);

    public MemoryAccessAccessTypeEnum getAccessType();

    public void setAccessType(MemoryAccessAccessTypeEnum var1);

    public void unsetAccessType();

    public boolean isSetAccessType();

    public TimeRange getTime();

    public void setTime(TimeRange var1);
}

