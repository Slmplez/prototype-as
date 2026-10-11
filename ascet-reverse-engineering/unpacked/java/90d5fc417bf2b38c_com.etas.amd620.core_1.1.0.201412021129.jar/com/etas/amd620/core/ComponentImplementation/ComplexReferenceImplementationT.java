/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;

public interface ComplexReferenceImplementationT
extends ComplexImplementationT {
    public CacheLockingType getCacheLocking();

    public void setCacheLocking(CacheLockingType var1);

    public void unsetCacheLocking();

    public boolean isSetCacheLocking();

    public String getMemoryLocationReference();

    public void setMemoryLocationReference(String var1);
}

