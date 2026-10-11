/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IMemoryBlock;

public interface IMemoryBlockRetrieval {
    public boolean supportsStorageRetrieval();

    public IMemoryBlock getMemoryBlock(long var1, long var3) throws DebugException;
}

