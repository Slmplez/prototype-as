/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;

public class PollingOutputStream
extends FilterOutputStream {
    private static final boolean DEBUG = Policy.DEBUG_STREAMS;
    private int numAttempts;
    private IProgressMonitor monitor;
    private boolean cancellable;

    public PollingOutputStream(OutputStream out, int numAttempts, IProgressMonitor monitor) {
        super(out);
        this.numAttempts = numAttempts;
        this.monitor = monitor;
        this.cancellable = true;
    }

    public void write(int b) throws IOException {
        int attempts = 0;
        while (true) {
            if (this.checkCancellation()) {
                throw new OperationCanceledException();
            }
            try {
                this.out.write(b);
                return;
            }
            catch (InterruptedIOException interruptedIOException) {
                if (++attempts == this.numAttempts) {
                    throw new InterruptedIOException(Messages.PollingOutputStream_writeTimeout);
                }
                if (!DEBUG) continue;
                System.out.println("write retry=" + attempts);
                continue;
            }
            break;
        }
    }

    public void write(byte[] buffer, int off, int len) throws IOException {
        int count = 0;
        int attempts = 0;
        while (true) {
            if (this.checkCancellation()) {
                throw new OperationCanceledException();
            }
            try {
                this.out.write(buffer, off, len);
                return;
            }
            catch (InterruptedIOException e) {
                int amount = e.bytesTransferred;
                if (amount != 0) {
                    if ((len -= amount) <= 0) {
                        return;
                    }
                    off += amount;
                    count += amount;
                    attempts = 0;
                }
                if (++attempts == this.numAttempts) {
                    e = new InterruptedIOException(Messages.PollingOutputStream_writeTimeout);
                    e.bytesTransferred = count;
                    throw e;
                }
                if (!DEBUG) continue;
                System.out.println("write retry=" + attempts);
                continue;
            }
            break;
        }
    }

    public void flush() throws IOException {
        int count = 0;
        int attempts = 0;
        while (true) {
            if (this.checkCancellation()) {
                throw new OperationCanceledException();
            }
            try {
                this.out.flush();
                return;
            }
            catch (InterruptedIOException e) {
                int amount = e.bytesTransferred;
                if (amount != 0) {
                    count += amount;
                    attempts = 0;
                }
                if (++attempts == this.numAttempts) {
                    e = new InterruptedIOException(Messages.PollingOutputStream_writeTimeout);
                    e.bytesTransferred = count;
                    throw e;
                }
                if (!DEBUG) continue;
                System.out.println("write retry=" + attempts);
                continue;
            }
            break;
        }
    }

    /*
     * Unable to fully structure code
     */
    public void close() throws IOException {
        attempts = this.numAttempts - 1;
        try {
            this.out.flush();
            attempts = 0;
        }
        finally {
            stop = false;
            ** while (!stop)
        }
lbl-1000:
        // 1 sources

        {
            try {
                this.out.close();
                stop = true;
            }
            catch (InterruptedIOException v0) {
                if (this.checkCancellation()) {
                    throw new OperationCanceledException();
                }
                if (++attempts == this.numAttempts) {
                    throw new InterruptedIOException(Messages.PollingOutputStream_closeTimeout);
                }
                if (!PollingOutputStream.DEBUG) continue;
                System.out.println("close retry=" + attempts);
            }
            continue;
        }
lbl21:
        // 1 sources

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

