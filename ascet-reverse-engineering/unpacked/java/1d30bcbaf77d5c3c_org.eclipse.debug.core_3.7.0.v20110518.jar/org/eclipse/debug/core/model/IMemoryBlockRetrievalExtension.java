/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IMemoryBlockExtension;
import org.eclipse.debug.core.model.IMemoryBlockRetrieval;

public interface IMemoryBlockRetrievalExtension
extends IMemoryBlockRetrieval {
    public IMemoryBlockExtension getExtendedMemoryBlock(String var1, Object var2) throws DebugException;
}

