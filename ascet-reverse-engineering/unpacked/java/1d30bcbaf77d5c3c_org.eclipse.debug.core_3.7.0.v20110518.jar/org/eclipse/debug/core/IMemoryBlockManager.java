/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.IMemoryBlockListener;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IMemoryBlock;
import org.eclipse.debug.core.model.IMemoryBlockRetrieval;

public interface IMemoryBlockManager {
    public void addMemoryBlocks(IMemoryBlock[] var1);

    public void removeMemoryBlocks(IMemoryBlock[] var1);

    public void addListener(IMemoryBlockListener var1);

    public void removeListener(IMemoryBlockListener var1);

    public IMemoryBlock[] getMemoryBlocks();

    public IMemoryBlock[] getMemoryBlocks(IDebugTarget var1);

    public IMemoryBlock[] getMemoryBlocks(IMemoryBlockRetrieval var1);
}

