/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.internal.core.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import org.eclipse.team.internal.core.Policy;

public class TimeoutInputStream
extends FilterInputStream {
    private final long readTimeout;
    private final long closeTimeout;
    private boolean closeRequested = false;
    private Thread thread;
    private byte[] iobuffer;
    private int head = 0;
    private int length = 0;
    private IOException ioe = null;
    private boolean waitingForClose = false;
    private boolean growWhenFull = false;

    public TimeoutInputStream(InputStream in, int bufferSize, long readTimeout, long closeTimeout) {
        super(in);
        this.readTimeout = readTimeout;
        this.closeTimeout = closeTimeout;
        this.iobuffer = new byte[bufferSize];
        this.thread = new Thread(new Runnable(){

            public void run() {
                TimeoutInputStream.this.runThread();
            }
        }, "TimeoutInputStream");
        this.thread.setDaemon(true);
        this.thread.start();
    }

    public TimeoutInputStream(InputStream in, int bufferSize, long readTimeout, long closeTimeout, boolean growWhenFull) {
        this(in, bufferSize, readTimeout, closeTimeout);
        this.growWhenFull = growWhenFull;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void close() throws IOException {
        Thread oldThread;
        TimeoutInputStream timeoutInputStream = this;
        synchronized (timeoutInputStream) {
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
        timeoutInputStream = this;
        synchronized (timeoutInputStream) {
            this.checkError();
            if (this.thread != null) {
                throw new InterruptedIOException();
            }
        }
    }

    public synchronized int available() throws IOException {
        if (this.length == 0) {
            this.checkError();
        }
        return this.length > 0 ? this.length : 0;
    }

    public synchronized int read() throws IOException {
        if (!this.syncFill()) {
            return -1;
        }
        int b = this.iobuffer[this.head++] & 0xFF;
        if (this.head == this.iobuffer.length) {
            this.head = 0;
        }
        --this.length;
        this.notify();
        return b;
    }

    public synchronized int read(byte[] buffer, int off, int len) throws IOException {
        if (!this.syncFill()) {
            return -1;
        }
        int pos = off;
        if (len > this.length) {
            len = this.length;
        }
        while (len-- > 0) {
            buffer[pos++] = this.iobuffer[this.head++];
            if (this.head == this.iobuffer.length) {
                this.head = 0;
            }
            --this.length;
        }
        this.notify();
        return pos - off;
    }

    public synchronized long skip(long count) throws IOException {
        long amount = 0L;
        try {
            while (this.syncFill()) {
                int skip = (int)Math.min(count - amount, (long)this.length);
                this.head = (this.head + skip) % this.iobuffer.length;
                this.length -= skip;
                if ((amount += (long)skip) < count) continue;
                break;
            }
        }
        catch (InterruptedIOException e) {
            e.bytesTransferred = (int)amount;
            throw e;
        }
        this.notify();
        return amount;
    }

    public boolean markSupported() {
        return false;
    }

    private boolean syncFill() throws IOException {
        if (this.length != 0) {
            return true;
        }
        this.checkError();
        if (this.waitingForClose) {
            return false;
        }
        this.notify();
        try {
            this.wait(this.readTimeout);
        }
        catch (InterruptedException interruptedException) {
            Thread.currentThread().interrupt();
        }
        if (this.length != 0) {
            return true;
        }
        this.checkError();
        if (this.waitingForClose) {
            return false;
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
                    this.readUntilDone();
                }
                catch (IOException e) {
                    TimeoutInputStream timeoutInputStream = this;
                    synchronized (timeoutInputStream) {
                        this.ioe = e;
                    }
                    this.waitUntilClosed();
                    try {
                        try {
                            this.in.close();
                        }
                        catch (IOException e2) {
                            TimeoutInputStream timeoutInputStream2 = this;
                            synchronized (timeoutInputStream2) {
                                this.ioe = e2;
                            }
                            TimeoutInputStream timeoutInputStream3 = this;
                            synchronized (timeoutInputStream3) {
                                this.thread = null;
                                this.notify();
                                break block57;
                            }
                        }
                    }
                    catch (Throwable throwable) {
                        TimeoutInputStream timeoutInputStream4 = this;
                        synchronized (timeoutInputStream4) {
                            this.thread = null;
                            this.notify();
                        }
                        throw throwable;
                    }
                    TimeoutInputStream timeoutInputStream5 = this;
                    synchronized (timeoutInputStream5) {
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
                            this.in.close();
                        }
                        catch (IOException e) {
                            TimeoutInputStream timeoutInputStream = this;
                            synchronized (timeoutInputStream) {
                                this.ioe = e;
                            }
                            TimeoutInputStream timeoutInputStream6 = this;
                            synchronized (timeoutInputStream6) {
                                this.thread = null;
                                this.notify();
                                break block59;
                            }
                        }
                    }
                    catch (Throwable throwable2) {
                        TimeoutInputStream timeoutInputStream = this;
                        synchronized (timeoutInputStream) {
                            this.thread = null;
                            this.notify();
                        }
                        throw throwable2;
                    }
                    TimeoutInputStream timeoutInputStream = this;
                    synchronized (timeoutInputStream) {
                        this.thread = null;
                        this.notify();
                    }
                }
                throw throwable;
            }
            this.waitUntilClosed();
            try {
                try {
                    this.in.close();
                }
                catch (IOException e) {
                    TimeoutInputStream timeoutInputStream = this;
                    synchronized (timeoutInputStream) {
                        this.ioe = e;
                    }
                    TimeoutInputStream timeoutInputStream7 = this;
                    synchronized (timeoutInputStream7) {
                        this.thread = null;
                        this.notify();
                        break block57;
                    }
                }
            }
            catch (Throwable throwable) {
                TimeoutInputStream timeoutInputStream = this;
                synchronized (timeoutInputStream) {
                    this.thread = null;
                    this.notify();
                }
                throw throwable;
            }
            TimeoutInputStream timeoutInputStream = this;
            synchronized (timeoutInputStream) {
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
    private void readUntilDone() throws IOException {
        while (true) {
            int count;
            int len;
            int off;
            TimeoutInputStream timeoutInputStream = this;
            synchronized (timeoutInputStream) {
                while (this.isBufferFull()) {
                    if (this.closeRequested) {
                        return;
                    }
                    this.waitForRead();
                }
                off = (this.head + this.length) % this.iobuffer.length;
                len = (this.head > off ? this.head : this.iobuffer.length) - off;
            }
            try {
                count = this.in.read(this.iobuffer, off, len);
                if (count == -1) {
                    return;
                }
            }
            catch (InterruptedIOException e) {
                count = e.bytesTransferred;
            }
            TimeoutInputStream timeoutInputStream2 = this;
            synchronized (timeoutInputStream2) {
                this.length += count;
                this.notify();
            }
        }
    }

    private synchronized void waitForRead() {
        try {
            if (this.growWhenFull) {
                this.wait(this.readTimeout);
            } else {
                this.wait();
            }
        }
        catch (InterruptedException interruptedException) {
            this.closeRequested = true;
        }
        if (this.growWhenFull && this.isBufferFull()) {
            this.growBuffer();
        }
    }

    private synchronized void growBuffer() {
        int newSize = 2 * this.iobuffer.length;
        if (newSize > this.iobuffer.length) {
            if (Policy.DEBUG_STREAMS) {
                System.out.println("InputStream growing to " + newSize + " bytes");
            }
            byte[] newBuffer = new byte[newSize];
            int pos = 0;
            int len = this.length;
            while (len-- > 0) {
                newBuffer[pos++] = this.iobuffer[this.head++];
                if (this.head != this.iobuffer.length) continue;
                this.head = 0;
            }
            this.iobuffer = newBuffer;
            this.head = 0;
        }
    }

    private boolean isBufferFull() {
        return this.length == this.iobuffer.length;
    }
}

