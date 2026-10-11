/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngChunkReader;
import org.eclipse.swt.internal.image.PngIdatChunk;

public class PngInputStream
extends InputStream {
    PngChunkReader reader;
    PngChunk chunk;
    int offset;
    int length;
    static final int DATA_OFFSET = 8;

    public PngInputStream(PngIdatChunk chunk, PngChunkReader reader) {
        this.chunk = chunk;
        this.reader = reader;
        this.length = chunk.getLength();
        this.offset = 0;
    }

    private boolean checkChunk() throws IOException {
        while (this.offset == this.length) {
            this.chunk = this.reader.readNextChunk();
            if (this.chunk == null) {
                throw new IOException();
            }
            if (this.chunk.getChunkType() == 3) {
                return false;
            }
            if (this.chunk.getChunkType() != 2) {
                throw new IOException();
            }
            this.length = this.chunk.getLength();
            this.offset = 0;
        }
        return true;
    }

    public void close() throws IOException {
        this.chunk = null;
    }

    public int read() throws IOException {
        if (this.chunk == null) {
            throw new IOException();
        }
        if (this.offset == this.length && !this.checkChunk()) {
            return -1;
        }
        int b = this.chunk.reference[8 + this.offset] & 0xFF;
        ++this.offset;
        return b;
    }

    public int read(byte[] b, int off, int len) throws IOException {
        if (this.chunk == null) {
            throw new IOException();
        }
        if (this.offset == this.length && !this.checkChunk()) {
            return -1;
        }
        len = Math.min(len, this.length - this.offset);
        System.arraycopy(this.chunk.reference, 8 + this.offset, b, off, len);
        this.offset += len;
        return len;
    }
}

