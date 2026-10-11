/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;

public class PollingInputStream
extends FilterInputStream {
    private static final boolean DEBUG = Policy.DEBUG_STREAMS;
    private int numAttempts;
    private IProgressMonitor monitor;
    private boolean cancellable;

    public PollingInputStream(InputStream in, int numAttempts, IProgressMonitor monitor) {
        super(in);
        this.numAttempts = numAttempts;
        this.monitor = monitor;
        this.cancellable = true;
    }

    /*
     * Unable to fully structure code
     */
    public void close() throws InterruptedIOException {
        block26: {
            block25: {
                attempts = 0;
                try {
                    try {
                        this.readPendingInput();
                        break block25;
                    }
                    catch (IOException e) {
                        TeamPlugin.log(4, e.getMessage(), e);
                        stop = false;
                        ** while (!stop)
                    }
                }
                catch (Throwable var3_6) {
                    stop = false;
                    ** while (!stop)
                }
lbl-1000:
                // 1 sources

                {
                    try {
                        if (this.in != null) {
                            this.in.close();
                        }
                        stop = true;
                    }
                    catch (InterruptedIOException v0) {
                        if (this.checkCancellation()) {
                            throw new OperationCanceledException();
                        }
                        if (++attempts == this.numAttempts) {
                            throw new InterruptedIOException(Messages.PollingInputStream_closeTimeout);
                        }
                        if (!PollingInputStream.DEBUG) continue;
                        System.out.println("close retry=" + attempts);
                    }
                    catch (IOException v1) {}
                    continue;
lbl25:
                    // 1 sources

                    break block26;
                }
lbl-1000:
                // 1 sources

                {
                    try {
                        if (this.in != null) {
                            this.in.close();
                        }
                        stop = true;
                    }
                    catch (InterruptedIOException v2) {
                        if (this.checkCancellation()) {
                            throw new OperationCanceledException();
                        }
                        if (++attempts == this.numAttempts) {
                            throw new InterruptedIOException(Messages.PollingInputStream_closeTimeout);
                        }
                        if (!PollingInputStream.DEBUG) continue;
                        System.out.println("close retry=" + attempts);
                    }
                    catch (IOException v3) {}
                    continue;
                }
lbl44:
                // 1 sources

                throw var3_6;
            }
            stop = false;
            while (!stop) {
                try {
                    if (this.in != null) {
                        this.in.close();
                    }
                    stop = true;
                }
                catch (InterruptedIOException v4) {
                    if (this.checkCancellation()) {
                        throw new OperationCanceledException();
                    }
                    if (++attempts == this.numAttempts) {
                        throw new InterruptedIOException(Messages.PollingInputStream_closeTimeout);
                    }
                    if (!PollingInputStream.DEBUG) continue;
                    System.out.println("close retry=" + attempts);
                }
                catch (IOException v5) {}
            }
        }
    }

    public int read() throws IOException {
        int attempts = 0;
        while (true) {
            if (this.checkCancellation()) {
                throw new OperationCanceledException();
            }
            try {
                return this.in.read();
            }
            catch (InterruptedIOException interruptedIOException) {
                if (++attempts == this.numAttempts) {
                    throw new InterruptedIOException(Messages.PollingInputStream_readTimeout);
                }
                if (!DEBUG) continue;
                System.out.println("read retry=" + attempts);
                continue;
            }
            break;
        }
    }

    public int read(byte[] buffer, int off, int len) throws IOException {
        int attempts = 0;
        while (true) {
            if (this.checkCancellation()) {
                throw new OperationCanceledException();
            }
            try {
                return this.in.read(buffer, off, len);
            }
            catch (InterruptedIOException e) {
                if (e.bytesTransferred != 0) {
                    return e.bytesTransferred;
                }
                if (++attempts == this.numAttempts) {
                    throw new InterruptedIOException(Messages.PollingInputStream_readTimeout);
                }
                if (!DEBUG) continue;
                System.out.println("read retry=" + attempts);
                continue;
            }
            break;
        }
    }

    public long skip(long count) throws IOException {
        int attempts = 0;
        while (true) {
            if (this.checkCancellation()) {
                throw new OperationCanceledException();
            }
            try {
                return this.in.skip(count);
            }
            catch (InterruptedIOException e) {
                if (e.bytesTransferred != 0) {
                    return e.bytesTransferred;
                }
                if (++attempts == this.numAttempts) {
                    throw new InterruptedIOException(Messages.PollingInputStream_readTimeout);
                }
                if (!DEBUG) continue;
                System.out.println("read retry=" + attempts);
                continue;
            }
            break;
        }
    }

    protected void readPendingInput() throws IOException {
        int available;
        byte[] buffer = new byte[2048];
        while ((available = this.in.available()) >= 1) {
            if (available > buffer.length) {
                available = buffer.length;
            }
            if (this.in.read(buffer, 0, available) >= 1) continue;
        }
    }

    public void setIsCancellable(boolean cancellable) {
        this.cancellable = cancellable;
    }

    private boolean checkCancellation() {
        if (this.cancellable) {
            return this.monitor.isCanceled();
        }
        return false;
    }
}

