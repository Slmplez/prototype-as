/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.localstore;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.internal.localstore.ILocalStoreConstants;

public class SafeChunkyInputStream
extends InputStream {
    protected static final int BUFFER_SIZE = 8192;
    protected byte[] buffer;
    protected int bufferLength = 0;
    protected byte[] chunk;
    protected int chunkLength = 0;
    protected boolean endOfFile = false;
    protected InputStream input;
    protected int nextByteInBuffer = 0;
    protected int nextByteInChunk = 0;

    public SafeChunkyInputStream(File target) throws IOException {
        this(target, 8192);
    }

    public SafeChunkyInputStream(File target, int bufferSize) throws IOException {
        this.input = new FileInputStream(target);
        this.buffer = new byte[bufferSize];
    }

    protected void accumulate(byte[] data, int start, int end) {
        byte[] result = new byte[this.chunk.length + end - start];
        System.arraycopy(this.chunk, 0, result, 0, this.chunk.length);
        System.arraycopy(data, start, result, this.chunk.length, end - start);
        this.chunk = result;
        this.chunkLength = this.chunkLength + end - start;
    }

    public int available() throws IOException {
        return this.chunkLength - this.nextByteInChunk;
    }

    protected void buildChunk() throws IOException {
        do {
            int end;
            if (this.nextByteInBuffer + ILocalStoreConstants.CHUNK_DELIMITER_SIZE > this.bufferLength) {
                this.shiftAndFillBuffer();
            }
            if ((end = this.find(ILocalStoreConstants.END_CHUNK, this.nextByteInBuffer, this.bufferLength, true)) != -1) {
                this.accumulate(this.buffer, this.nextByteInBuffer, end);
                this.nextByteInBuffer = end + ILocalStoreConstants.CHUNK_DELIMITER_SIZE;
                return;
            }
            this.accumulate(this.buffer, this.nextByteInBuffer, this.bufferLength);
            this.bufferLength = this.input.read(this.buffer);
            this.nextByteInBuffer = 0;
        } while (this.bufferLength != -1);
        this.endOfFile = true;
    }

    public void close() throws IOException {
        this.input.close();
    }

    protected boolean compare(byte[] source, byte[] target, int startIndex) {
        int i = 0;
        while (i < target.length) {
            if (source[startIndex] != target[i]) {
                return false;
            }
            ++startIndex;
            ++i;
        }
        return true;
    }

    protected int find(byte[] pattern, int startIndex, int endIndex, boolean accumulate) throws IOException {
        int pos = this.findByte(pattern[0], startIndex, endIndex);
        if (pos == -1) {
            return -1;
        }
        if (pos + ILocalStoreConstants.CHUNK_DELIMITER_SIZE > this.bufferLength) {
            if (accumulate) {
                this.accumulate(this.buffer, this.nextByteInBuffer, pos);
            }
            this.nextByteInBuffer = pos;
            pos = 0;
            this.shiftAndFillBuffer();
        }
        if (this.compare(this.buffer, pattern, pos)) {
            return pos;
        }
        return this.find(pattern, pos + 1, endIndex, accumulate);
    }

    protected int findByte(byte target, int startIndex, int endIndex) {
        while (startIndex < endIndex) {
            if (this.buffer[startIndex] == target) {
                return startIndex;
            }
            ++startIndex;
        }
        return -1;
    }

    protected void findChunkStart() throws IOException {
        int begin;
        if (this.nextByteInBuffer + ILocalStoreConstants.CHUNK_DELIMITER_SIZE > this.bufferLength) {
            this.shiftAndFillBuffer();
        }
        if ((begin = this.find(ILocalStoreConstants.BEGIN_CHUNK, this.nextByteInBuffer, this.bufferLength, false)) != -1) {
            this.nextByteInBuffer = begin + ILocalStoreConstants.CHUNK_DELIMITER_SIZE;
            return;
        }
        this.bufferLength = this.input.read(this.buffer);
        this.nextByteInBuffer = 0;
        if (this.bufferLength == -1) {
            this.resetChunk();
            this.endOfFile = true;
            return;
        }
        this.findChunkStart();
    }

    public int read() throws IOException {
        if (this.endOfFile) {
            return -1;
        }
        if (this.nextByteInChunk < this.chunkLength) {
            return this.chunk[this.nextByteInChunk++] & 0xFF;
        }
        this.resetChunk();
        this.findChunkStart();
        if (this.endOfFile) {
            return -1;
        }
        this.buildChunk();
        this.refineChunk();
        return this.read();
    }

    protected void refineChunk() {
        int start = this.chunkLength - ILocalStoreConstants.CHUNK_DELIMITER_SIZE;
        if (start < 0) {
            return;
        }
        int i = start;
        while (i >= 0) {
            if (this.compare(this.chunk, ILocalStoreConstants.BEGIN_CHUNK, i)) {
                this.nextByteInChunk = i + ILocalStoreConstants.CHUNK_DELIMITER_SIZE;
                return;
            }
            --i;
        }
    }

    protected void resetChunk() {
        this.chunk = new byte[0];
        this.chunkLength = 0;
        this.nextByteInChunk = 0;
    }

    protected void shiftAndFillBuffer() throws IOException {
        int length = this.bufferLength - this.nextByteInBuffer;
        System.arraycopy(this.buffer, this.nextByteInBuffer, this.buffer, 0, length);
        this.nextByteInBuffer = 0;
        this.bufferLength = length;
        int read = this.input.read(this.buffer, this.bufferLength, this.buffer.length - this.bufferLength);
        if (read != -1) {
            this.bufferLength += read;
        } else {
            this.resetChunk();
            this.endOfFile = true;
        }
    }
}

