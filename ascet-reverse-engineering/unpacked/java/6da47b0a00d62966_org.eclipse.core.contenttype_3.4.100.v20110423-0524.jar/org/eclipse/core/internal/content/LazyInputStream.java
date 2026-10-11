/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.internal.content.ILazySource;
import org.eclipse.core.internal.content.LowLevelIOException;

public class LazyInputStream
extends InputStream
implements ILazySource {
    private int blockCapacity;
    byte[][] blocks = new byte[0][];
    private int bufferSize;
    private InputStream in;
    private int mark;
    private int offset;

    public LazyInputStream(InputStream in, int blockCapacity) {
        this.in = in;
        this.blockCapacity = blockCapacity;
    }

    public int available() throws IOException {
        try {
            return this.bufferSize - this.offset + this.in.available();
        }
        catch (IOException ioe) {
            throw new LowLevelIOException(ioe);
        }
    }

    private int computeBlockSize(int blockIndex) {
        if (blockIndex < this.blocks.length - 1) {
            return this.blockCapacity;
        }
        int blockSize = this.bufferSize % this.blockCapacity;
        return blockSize == 0 ? this.blockCapacity : blockSize;
    }

    private int copyFromBuffer(byte[] userBuffer, int userOffset, int needed) {
        int copied = 0;
        int current = this.offset / this.blockCapacity;
        while (needed - copied > 0 && current < this.blocks.length) {
            int blockSize = this.computeBlockSize(current);
            int offsetInBlock = this.offset % this.blockCapacity;
            int availableInBlock = blockSize - offsetInBlock;
            int toCopy = Math.min(availableInBlock, needed - copied);
            System.arraycopy(this.blocks[current], offsetInBlock, userBuffer, userOffset + copied, toCopy);
            copied += toCopy;
            ++current;
            this.offset += toCopy;
        }
        return copied;
    }

    private void ensureAvailable(long bytesToRead) throws IOException {
        int loadedBlockSize = this.blockCapacity;
        while ((long)this.bufferSize < (long)this.offset + bytesToRead && loadedBlockSize == this.blockCapacity) {
            try {
                loadedBlockSize = this.loadBlock();
            }
            catch (IOException e) {
                throw new LowLevelIOException(e);
            }
            this.bufferSize += loadedBlockSize;
        }
    }

    protected int getBlockCount() {
        return this.blocks.length;
    }

    protected int getBufferSize() {
        return this.bufferSize;
    }

    protected int getMark() {
        return this.mark;
    }

    protected int getOffset() {
        return this.offset;
    }

    public boolean isText() {
        return false;
    }

    private int loadBlock() throws IOException {
        byte[] newBlock = new byte[this.blockCapacity];
        int readCount = this.in.read(newBlock);
        if (readCount == -1) {
            return 0;
        }
        byte[][] tmpBlocks = new byte[this.blocks.length + 1][];
        System.arraycopy(this.blocks, 0, tmpBlocks, 0, this.blocks.length);
        this.blocks = tmpBlocks;
        this.blocks[this.blocks.length - 1] = newBlock;
        return readCount;
    }

    public synchronized void mark(int readlimit) {
        this.mark = this.offset;
    }

    public boolean markSupported() {
        return true;
    }

    public int read() throws IOException {
        this.ensureAvailable(1L);
        if (this.bufferSize <= this.offset) {
            return -1;
        }
        int nextByte = 0xFF & this.blocks[this.offset / this.blockCapacity][this.offset % this.blockCapacity];
        ++this.offset;
        return nextByte;
    }

    public int read(byte[] b) throws IOException {
        return this.read(b, 0, b.length);
    }

    public int read(byte[] b, int off, int len) throws IOException {
        this.ensureAvailable(len);
        int copied = this.copyFromBuffer(b, off, len);
        return copied == 0 ? -1 : copied;
    }

    public synchronized void reset() {
        this.offset = this.mark;
    }

    public void rewind() {
        this.mark = 0;
        this.offset = 0;
    }

    public long skip(long toSkip) throws IOException {
        if (toSkip <= 0L) {
            return 0L;
        }
        this.ensureAvailable(toSkip);
        long skipped = Math.min(toSkip, (long)(this.bufferSize - this.offset));
        this.offset = (int)((long)this.offset + skipped);
        return skipped;
    }
}

