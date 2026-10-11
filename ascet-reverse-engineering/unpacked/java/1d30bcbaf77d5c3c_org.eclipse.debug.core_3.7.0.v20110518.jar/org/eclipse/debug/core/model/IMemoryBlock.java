/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugElement;

public interface IMemoryBlock
extends IDebugElement {
    public long getStartAddress();

    public long getLength();

    public byte[] getBytes() throws DebugException;

    public boolean supportsValueModification();

    public void setValue(long var1, byte[] var3) throws DebugException;
}

