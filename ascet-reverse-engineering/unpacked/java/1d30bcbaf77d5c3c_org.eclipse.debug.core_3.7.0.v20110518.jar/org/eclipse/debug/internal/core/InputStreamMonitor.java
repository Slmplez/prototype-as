/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class InputStreamMonitor {
    private OutputStream fStream;
    private Vector fQueue;
    private Thread fThread;
    private Object fLock;
    private boolean fClosed = false;
    private String fEncoding;

    public InputStreamMonitor(OutputStream stream) {
        this(stream, null);
    }

    public InputStreamMonitor(OutputStream stream, String encoding) {
        this.fStream = stream;
        this.fQueue = new Vector();
        this.fLock = new Object();
        this.fEncoding = encoding;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void write(String text) {
        Object object = this.fLock;
        synchronized (object) {
            this.fQueue.add(text);
            this.fLock.notifyAll();
        }
    }

    public void startMonitoring() {
        if (this.fThread == null) {
            this.fThread = new Thread(new Runnable(){

                public void run() {
                    InputStreamMonitor.this.write();
                }
            }, DebugCoreMessages.InputStreamMonitor_label);
            this.fThread.setDaemon(true);
            this.fThread.start();
        }
    }

    public void close() {
        if (this.fThread != null) {
            Thread thread = this.fThread;
            this.fThread = null;
            thread.interrupt();
        }
    }

    protected void write() {
        while (this.fThread != null) {
            this.writeNext();
        }
        if (!this.fClosed) {
            try {
                this.fStream.close();
            }
            catch (IOException e) {
                DebugPlugin.log(e);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void writeNext() {
        while (!this.fQueue.isEmpty() && !this.fClosed) {
            String text = (String)this.fQueue.firstElement();
            this.fQueue.removeElementAt(0);
            try {
                if (this.fEncoding != null) {
                    this.fStream.write(text.getBytes(this.fEncoding));
                } else {
                    this.fStream.write(text.getBytes());
                }
                this.fStream.flush();
            }
            catch (IOException e) {
                DebugPlugin.log(e);
            }
        }
        try {
            Object object = this.fLock;
            synchronized (object) {
                this.fLock.wait();
            }
        }
        catch (InterruptedException interruptedException) {}
    }

    public void closeInputStream() throws IOException {
        if (this.fClosed) {
            throw new IOException();
        }
        this.fClosed = true;
        this.fStream.close();
    }
}

