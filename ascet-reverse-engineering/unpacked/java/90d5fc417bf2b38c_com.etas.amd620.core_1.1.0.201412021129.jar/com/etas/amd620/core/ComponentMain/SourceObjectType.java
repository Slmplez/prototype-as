/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.InternalAccessType;
import com.etas.amd620.core.ComponentMain.MappingItemT;

public interface SourceObjectType
extends MappingItemT {
    public InternalAccessType getInternalAccess();

    public void setInternalAccess(InternalAccessType var1);

    public void unsetInternalAccess();

    public boolean isSetInternalAccess();
}

