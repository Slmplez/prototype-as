/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

public class CRLFtoLFInputStream
extends FilterInputStream {
    private boolean pendingByte = false;
    private int lastByte = -1;

    public CRLFtoLFInputStream(InputStream in) {
        super(in);
    }

    public int read() throws IOException {
        if (!this.pendingByte) {
            this.lastByte = this.in.read();
            this.pendingByte = true;
        }
        if (this.lastByte == 13) {
            this.lastByte = this.in.read();
            if (this.lastByte != 10) {
                if (this.lastByte == -1) {
                    this.pendingByte = false;
                }
                return 13;
            }
        }
        this.pendingByte = false;
        return this.lastByte;
    }

    public int read(byte[] buffer, int off, int len) throws IOException {
        if (len == 0) {
            return 0;
        }
        if (len == 1) {
            int b = this.read();
            if (b == -1) {
                return -1;
            }
            buffer[off] = (byte)b;
            return 1;
        }
        int count = 0;
        if (this.pendingByte) {
            buffer[off] = (byte)this.lastByte;
            this.pendingByte = false;
            count = 1;
        }
        InterruptedIOException iioe = null;
        try {
            len = this.in.read(buffer, off + count, len - count);
            if (len == -1) {
                return count == 0 ? -1 : count;
            }
        }
        catch (InterruptedIOException e) {
            len = e.bytesTransferred;
            iioe = e;
        }
        count += len;
        int j = off;
        int i = off;
        while (i < off + count) {
            this.lastByte = buffer[i];
            if (this.lastByte == 13) {
                if (this.pendingByte) {
                    buffer[j++] = 13;
                } else {
                    this.pendingByte = true;
                }
            } else {
                if (this.pendingByte) {
                    if (this.lastByte != 10) {
                        buffer[j++] = 13;
                    }
                    this.pendingByte = false;
                }
                buffer[j++] = (byte)this.lastByte;
            }
            ++i;
        }
        if (iioe != null) {
            iioe.bytesTransferred = j - off;
            throw iioe;
        }
        return j - off;
    }

    public long skip(long count) throws IOException {
        int actualCount = 0;
        try {
            while (count-- > 0L && this.read() != -1) {
                ++actualCount;
            }
            return actualCount;
        }
        catch (InterruptedIOException e) {
            e.bytesTransferred = actualCount;
            throw e;
        }
    }

    public int available() throws IOException {
        return this.in.available() / 2;
    }

    public boolean markSupported() {
        return false;
    }
}

