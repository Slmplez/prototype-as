/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OverflowingLRUCache;
import org.eclipse.jdt.internal.core.util.LRUCache;

public class BufferCache
extends OverflowingLRUCache {
    private ThreadLocal buffersToClose = new ThreadLocal();

    public BufferCache(int size) {
        super(size);
    }

    public BufferCache(int size, int overflow) {
        super(size, overflow);
    }

    protected boolean close(LRUCache.LRUCacheEntry entry) {
        IBuffer buffer = (IBuffer)entry.value;
        if (!((Openable)buffer.getOwner()).canBufferBeRemovedFromCache(buffer)) {
            return false;
        }
        ArrayList<IBuffer> buffers = (ArrayList<IBuffer>)this.buffersToClose.get();
        if (buffers == null) {
            buffers = new ArrayList<IBuffer>();
            this.buffersToClose.set(buffers);
        }
        buffers.add(buffer);
        return true;
    }

    void closeBuffers() {
        ArrayList buffers = (ArrayList)this.buffersToClose.get();
        if (buffers == null) {
            return;
        }
        this.buffersToClose.set(null);
        int i = 0;
        int length = buffers.size();
        while (i < length) {
            ((IBuffer)buffers.get(i)).close();
            ++i;
        }
    }

    protected LRUCache newInstance(int size, int newOverflow) {
        return new BufferCache(size, newOverflow);
    }
}

