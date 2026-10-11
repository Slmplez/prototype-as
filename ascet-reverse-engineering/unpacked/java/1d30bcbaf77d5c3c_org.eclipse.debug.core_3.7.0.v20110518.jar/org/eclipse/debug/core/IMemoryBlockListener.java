/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.model.IMemoryBlock;

public interface IMemoryBlockListener {
    public void memoryBlocksAdded(IMemoryBlock[] var1);

    public void memoryBlocksRemoved(IMemoryBlock[] var1);
}

