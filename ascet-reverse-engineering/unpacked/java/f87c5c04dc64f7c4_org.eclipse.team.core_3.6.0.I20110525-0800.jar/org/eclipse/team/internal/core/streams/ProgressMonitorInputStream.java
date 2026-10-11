/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import org.eclipse.core.runtime.IProgressMonitor;

public abstract class ProgressMonitorInputStream
extends FilterInputStream {
    private IProgressMonitor monitor;
    private int updateIncrement;
    private long bytesTotal;
    private long bytesRead = 0L;
    private long lastUpdate = -1L;
    private long nextUpdate = 0L;

    public ProgressMonitorInputStream(InputStream in, long bytesTotal, int updateIncrement, IProgressMonitor monitor) {
        super(in);
        this.bytesTotal = bytesTotal;
        this.updateIncrement = updateIncrement;
        this.monitor = monitor;
        this.update(true);
    }

    protected abstract void updateMonitor(long var1, long var3, IProgressMonitor var5);

    public void close() throws IOException {
        try {
            this.in.close();
        }
        finally {
            this.update(true);
        }
    }

    public int read() throws IOException {
        int b = this.in.read();
        if (b != -1) {
            ++this.bytesRead;
            this.update(false);
        }
        return b;
    }

    public int read(byte[] buffer, int offset, int length) throws IOException {
        try {
            int count = this.in.read(buffer, offset, length);
            if (count != -1) {
                this.bytesRead += (long)count;
                this.update(false);
            }
            return count;
        }
        catch (InterruptedIOException e) {
            this.bytesRead += (long)e.bytesTransferred;
            this.update(false);
            throw e;
        }
    }

    public long skip(long amount) throws IOException {
        try {
            long count = this.in.skip(amount);
            this.bytesRead += count;
            this.update(false);
            return count;
        }
        catch (InterruptedIOException e) {
            this.bytesRead += (long)e.bytesTransferred;
            this.update(false);
            throw e;
        }
    }

    public boolean markSupported() {
        return false;
    }

    private void update(boolean now) {
        if (this.bytesRead >= this.nextUpdate || now) {
            this.nextUpdate = this.bytesRead - this.bytesRead % (long)this.updateIncrement;
            if (this.nextUpdate != this.lastUpdate) {
                this.updateMonitor(this.nextUpdate, this.bytesTotal, this.monitor);
            }
            this.lastUpdate = this.nextUpdate;
            this.nextUpdate += (long)this.updateIncrement;
        }
    }
}

