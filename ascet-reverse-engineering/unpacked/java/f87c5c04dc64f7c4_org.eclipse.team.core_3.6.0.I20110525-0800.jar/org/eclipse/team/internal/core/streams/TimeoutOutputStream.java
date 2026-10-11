/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.internal.core.streams;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.eclipse.team.internal.core.Messages;

public class TimeoutOutputStream
extends FilterOutputStream {
    private final long writeTimeout;
    private final long closeTimeout;
    private byte[] iobuffer;
    private int head = 0;
    private int length = 0;
    private boolean closeRequested = false;
    private boolean flushRequested = false;
    private Thread thread;
    private boolean waitingForClose = false;
    private IOException ioe = null;

    public TimeoutOutputStream(OutputStream out, int bufferSize, long writeTimeout, long closeTimeout) {
        super(new BufferedOutputStream(out, bufferSize));
        this.writeTimeout = writeTimeout;
        this.closeTimeout = closeTimeout;
        this.iobuffer = new byte[bufferSize];
        this.thread = new Thread(new Runnable(){

            public void run() {
                TimeoutOutputStream.this.runThread();
            }
        }, "TimeoutOutputStream");
        this.thread.setDaemon(true);
        this.thread.start();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void close() throws IOException {
        Thread oldThread;
        TimeoutOutputStream timeoutOutputStream = this;
        synchronized (timeoutOutputStream) {
            if (this.thread == null) {
                return;
            }
            oldThread = this.thread;
            this.closeRequested = true;
            this.thread.interrupt();
            this.checkError();
        }
        if (this.closeTimeout == -1L) {
            return;
        }
        try {
            oldThread.join(this.closeTimeout);
        }
        catch (InterruptedException interruptedException) {
            Thread.currentThread().interrupt();
        }
        timeoutOutputStream = this;
        synchronized (timeoutOutputStream) {
            this.checkError();
            if (this.thread != null) {
                throw new InterruptedIOException();
            }
        }
    }

    public synchronized void write(int b) throws IOException {
        this.syncCommit(true);
        this.iobuffer[(this.head + this.length) % this.iobuffer.length] = (byte)b;
        ++this.length;
        this.notify();
    }

    public synchronized void write(byte[] buffer, int off, int len) throws IOException {
        int amount = 0;
        try {
            do {
                this.syncCommit(true);
                while (amount < len && this.length != this.iobuffer.length) {
                    this.iobuffer[(this.head + this.length) % this.iobuffer.length] = buffer[off++];
                    ++this.length;
                    ++amount;
                }
            } while (amount < len);
        }
        catch (InterruptedIOException e) {
            e.bytesTransferred = amount;
            throw e;
        }
        this.notify();
    }

    public synchronized void flush() throws IOException {
        int oldLength = this.length;
        this.flushRequested = true;
        try {
            this.syncCommit(false);
        }
        catch (InterruptedIOException e) {
            e.bytesTransferred = oldLength - this.length;
            throw e;
        }
        this.notify();
    }

    private void syncCommit(boolean partial) throws IOException {
        this.checkError();
        if (partial && this.length != this.iobuffer.length || this.length == 0) {
            return;
        }
        if (this.waitingForClose) {
            throw new IOException(Messages.TimeoutOutputStream_cannotWriteToStream);
        }
        this.notify();
        try {
            this.wait(this.writeTimeout);
        }
        catch (InterruptedException interruptedException) {
            Thread.currentThread().interrupt();
        }
        this.checkError();
        if (partial && this.length != this.iobuffer.length || this.length == 0) {
            return;
        }
        throw new InterruptedIOException();
    }

    private void checkError() throws IOException {
        if (this.ioe != null) {
            IOException e = this.ioe;
            this.ioe = null;
            throw e;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void runThread() {
        block57: {
            try {
                try {
                    this.writeUntilDone();
                }
                catch (IOException e) {
                    TimeoutOutputStream timeoutOutputStream = this;
                    synchronized (timeoutOutputStream) {
                        this.ioe = e;
                    }
                    this.waitUntilClosed();
                    try {
                        try {
                            this.out.close();
                        }
                        catch (IOException e2) {
                            TimeoutOutputStream timeoutOutputStream2 = this;
                            synchronized (timeoutOutputStream2) {
                                this.ioe = e2;
                            }
                            TimeoutOutputStream timeoutOutputStream3 = this;
                            synchronized (timeoutOutputStream3) {
                                this.thread = null;
                                this.notify();
                                break block57;
                            }
                        }
                    }
                    catch (Throwable throwable) {
                        TimeoutOutputStream timeoutOutputStream4 = this;
                        synchronized (timeoutOutputStream4) {
                            this.thread = null;
                            this.notify();
                        }
                        throw throwable;
                    }
                    TimeoutOutputStream timeoutOutputStream5 = this;
                    synchronized (timeoutOutputStream5) {
                        this.thread = null;
                        this.notify();
                        break block57;
                    }
                }
            }
            catch (Throwable throwable) {
                block59: {
                    this.waitUntilClosed();
                    try {
                        try {
                            this.out.close();
                        }
                        catch (IOException e) {
                            TimeoutOutputStream timeoutOutputStream = this;
                            synchronized (timeoutOutputStream) {
                                this.ioe = e;
                            }
                            TimeoutOutputStream timeoutOutputStream6 = this;
                            synchronized (timeoutOutputStream6) {
                                this.thread = null;
                                this.notify();
                                break block59;
                            }
                        }
                    }
                    catch (Throwable throwable2) {
                        TimeoutOutputStream timeoutOutputStream = this;
                        synchronized (timeoutOutputStream) {
                            this.thread = null;
                            this.notify();
                        }
                        throw throwable2;
                    }
                    TimeoutOutputStream timeoutOutputStream = this;
                    synchronized (timeoutOutputStream) {
                        this.thread = null;
                        this.notify();
                    }
                }
                throw throwable;
            }
            this.waitUntilClosed();
            try {
                try {
                    this.out.close();
                }
                catch (IOException e) {
                    TimeoutOutputStream timeoutOutputStream = this;
                    synchronized (timeoutOutputStream) {
                        this.ioe = e;
                    }
                    TimeoutOutputStream timeoutOutputStream7 = this;
                    synchronized (timeoutOutputStream7) {
                        this.thread = null;
                        this.notify();
                        break block57;
                    }
                }
            }
            catch (Throwable throwable) {
                TimeoutOutputStream timeoutOutputStream = this;
                synchronized (timeoutOutputStream) {
                    this.thread = null;
                    this.notify();
                }
                throw throwable;
            }
            TimeoutOutputStream timeoutOutputStream = this;
            synchronized (timeoutOutputStream) {
                this.thread = null;
                this.notify();
            }
        }
    }

    private synchronized void waitUntilClosed() {
        this.waitingForClose = true;
        this.notify();
        while (!this.closeRequested) {
            try {
                this.wait();
            }
            catch (InterruptedException interruptedException) {
                this.closeRequested = true;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void writeUntilDone() throws IOException {
        int bytesUntilFlush = -1;
        while (true) {
            int len;
            int off;
            TimeoutOutputStream timeoutOutputStream = this;
            synchronized (timeoutOutputStream) {
                while (true) {
                    if (this.closeRequested && this.length == 0) {
                        return;
                    }
                    if (this.length != 0 || this.flushRequested) break;
                    try {
                        this.wait();
                    }
                    catch (InterruptedException interruptedException) {
                        this.closeRequested = true;
                    }
                }
                off = this.head;
                len = this.iobuffer.length - this.head;
                if (len > this.length) {
                    len = this.length;
                }
                if (this.flushRequested && bytesUntilFlush < 0) {
                    this.flushRequested = false;
                    bytesUntilFlush = this.length;
                }
            }
            if (len != 0) {
                try {
                    this.out.write(this.iobuffer, off, len);
                }
                catch (InterruptedIOException e) {
                    len = e.bytesTransferred;
                }
            }
            if (bytesUntilFlush >= 0 && (bytesUntilFlush -= len) <= 0) {
                try {
                    this.out.flush();
                }
                catch (InterruptedIOException interruptedIOException) {}
                bytesUntilFlush = -1;
            }
            if (len == 0) continue;
            timeoutOutputStream = this;
            synchronized (timeoutOutputStream) {
                this.head = (this.head + len) % this.iobuffer.length;
                this.length -= len;
                this.notify();
            }
        }
    }
}

