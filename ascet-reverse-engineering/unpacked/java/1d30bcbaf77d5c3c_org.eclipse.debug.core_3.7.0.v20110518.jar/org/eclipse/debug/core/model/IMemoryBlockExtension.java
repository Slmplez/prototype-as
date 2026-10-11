/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import java.math.BigInteger;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IMemoryBlock;
import org.eclipse.debug.core.model.IMemoryBlockRetrieval;
import org.eclipse.debug.core.model.MemoryByte;

public interface IMemoryBlockExtension
extends IMemoryBlock {
    public String getExpression();

    public BigInteger getBigBaseAddress() throws DebugException;

    public BigInteger getMemoryBlockStartAddress() throws DebugException;

    public BigInteger getMemoryBlockEndAddress() throws DebugException;

    public BigInteger getBigLength() throws DebugException;

    public int getAddressSize() throws DebugException;

    public boolean supportBaseAddressModification() throws DebugException;

    public boolean supportsChangeManagement();

    public void setBaseAddress(BigInteger var1) throws DebugException;

    public MemoryByte[] getBytesFromOffset(BigInteger var1, long var2) throws DebugException;

    public MemoryByte[] getBytesFromAddress(BigInteger var1, long var2) throws DebugException;

    public void setValue(BigInteger var1, byte[] var2) throws DebugException;

    public void connect(Object var1);

    public void disconnect(Object var1);

    public Object[] getConnections();

    public void dispose() throws DebugException;

    public IMemoryBlockRetrieval getMemoryBlockRetrieval();

    public int getAddressableSize() throws DebugException;
}

