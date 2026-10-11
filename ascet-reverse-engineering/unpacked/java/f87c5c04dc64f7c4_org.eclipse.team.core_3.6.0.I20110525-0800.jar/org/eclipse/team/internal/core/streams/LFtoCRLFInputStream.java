/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

public class LFtoCRLFInputStream
extends FilterInputStream {
    private boolean mustReturnLF = false;

    public LFtoCRLFInputStream(InputStream in) {
        super(in);
    }

    public int read() throws IOException {
        if (this.mustReturnLF) {
            this.mustReturnLF = false;
            return 10;
        }
        int b = this.in.read();
        if (b == 10) {
            this.mustReturnLF = true;
            b = 13;
        }
        return b;
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
        if (this.mustReturnLF) {
            this.mustReturnLF = false;
            buffer[off++] = 10;
            count = 1;
            if (--len < 2) {
                return count;
            }
        }
        int j = off + (len /= 2);
        InterruptedIOException iioe = null;
        try {
            len = this.in.read(buffer, j, len);
            if (len == -1) {
                return count == 0 ? -1 : count;
            }
        }
        catch (InterruptedIOException e) {
            len = e.bytesTransferred;
            iioe = e;
        }
        count += len;
        while (len-- > 0) {
            byte b;
            if ((b = buffer[j++]) == 10) {
                buffer[off++] = 13;
                ++count;
            }
            buffer[off++] = b;
        }
        if (iioe != null) {
            iioe.bytesTransferred = count;
            throw iioe;
        }
        return count;
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
        return this.in.available();
    }

    public boolean markSupported() {
        return false;
    }
}

