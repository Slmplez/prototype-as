/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import org.eclipse.core.runtime.OperationCanceledException;

public class SizeConstrainedInputStream
extends FilterInputStream {
    private boolean discardOnClose;
    private long bytesRemaining;

    public SizeConstrainedInputStream(InputStream in, long size, boolean discardOnClose) {
        super(in);
        this.bytesRemaining = size;
        this.discardOnClose = discardOnClose;
    }

    public void close() throws IOException {
        try {
            try {
                if (this.discardOnClose) {
                    while (this.bytesRemaining != 0L) {
                        if (this.skip(this.bytesRemaining) != 0L) continue;
                    }
                }
            }
            catch (OperationCanceledException operationCanceledException) {
                this.bytesRemaining = 0L;
            }
        }
        finally {
            this.bytesRemaining = 0L;
        }
    }

    public int available() throws IOException {
        int amount = this.in.available();
        if ((long)amount > this.bytesRemaining) {
            amount = (int)this.bytesRemaining;
        }
        return amount;
    }

    public int read() throws IOException {
        if (this.bytesRemaining == 0L) {
            return -1;
        }
        int b = this.in.read();
        if (b != -1) {
            --this.bytesRemaining;
        }
        return b;
    }

    public int read(byte[] buffer, int offset, int length) throws IOException {
        if ((long)length > this.bytesRemaining) {
            if (this.bytesRemaining == 0L) {
                return -1;
            }
            length = (int)this.bytesRemaining;
        }
        try {
            int count = this.in.read(buffer, offset, length);
            if (count != -1) {
                this.bytesRemaining -= (long)count;
            }
            return count;
        }
        catch (InterruptedIOException e) {
            this.bytesRemaining -= (long)e.bytesTransferred;
            throw e;
        }
    }

    public long skip(long amount) throws IOException {
        if (amount > this.bytesRemaining) {
            amount = this.bytesRemaining;
        }
        try {
            long count = this.in.skip(amount);
            this.bytesRemaining -= count;
            return count;
        }
        catch (InterruptedIOException e) {
            this.bytesRemaining -= (long)e.bytesTransferred;
            throw e;
        }
    }

    public boolean markSupported() {
        return false;
    }
}

