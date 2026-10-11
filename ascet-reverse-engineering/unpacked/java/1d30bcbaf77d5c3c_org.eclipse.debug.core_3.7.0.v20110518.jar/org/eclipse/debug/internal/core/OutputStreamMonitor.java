/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.debug.internal.core;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IStreamListener;
import org.eclipse.debug.core.model.IFlushableStreamMonitor;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class OutputStreamMonitor
implements IFlushableStreamMonitor {
    private InputStream fStream;
    private ListenerList fListeners = new ListenerList();
    private boolean fBuffered = true;
    private StringBuffer fContents;
    private Thread fThread;
    private static final int BUFFER_SIZE = 8192;
    private boolean fKilled = false;
    private long lastSleep;
    private String fEncoding;

    public OutputStreamMonitor(InputStream stream, String encoding) {
        this.fStream = new BufferedInputStream(stream, 8192);
        this.fEncoding = encoding;
        this.fContents = new StringBuffer();
    }

    public synchronized void addListener(IStreamListener listener) {
        this.fListeners.add((Object)listener);
    }

    protected void close() {
        if (this.fThread != null) {
            Thread thread = this.fThread;
            this.fThread = null;
            try {
                thread.join();
            }
            catch (InterruptedException interruptedException) {}
            this.fListeners = new ListenerList();
        }
    }

    private void fireStreamAppended(String text) {
        this.getNotifier().notifyAppend(text);
    }

    public synchronized String getContents() {
        return this.fContents.toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void read() {
        long currentTime = this.lastSleep = System.currentTimeMillis();
        byte[] bytes = new byte[8192];
        int read = 0;
        while (read >= 0) {
            block14: {
                try {
                    if (this.fKilled) break;
                    read = this.fStream.read(bytes);
                    if (read <= 0) break block14;
                    String text = this.fEncoding != null ? new String(bytes, 0, read, this.fEncoding) : new String(bytes, 0, read);
                    OutputStreamMonitor outputStreamMonitor = this;
                    synchronized (outputStreamMonitor) {
                        if (this.isBuffered()) {
                            this.fContents.append(text);
                        }
                        this.fireStreamAppended(text);
                    }
                }
                catch (IOException ioe) {
                    if (!this.fKilled) {
                        DebugPlugin.log(ioe);
                    }
                    return;
                }
                catch (NullPointerException e) {
                    if (!this.fKilled && this.fThread != null) {
                        DebugPlugin.log(e);
                    }
                    return;
                }
            }
            if ((currentTime = System.currentTimeMillis()) - this.lastSleep <= 1000L) continue;
            this.lastSleep = currentTime;
            try {
                Thread.sleep(1L);
            }
            catch (InterruptedException interruptedException) {}
        }
        try {
            this.fStream.close();
        }
        catch (IOException e) {
            DebugPlugin.log(e);
        }
    }

    protected void kill() {
        this.fKilled = true;
    }

    public synchronized void removeListener(IStreamListener listener) {
        this.fListeners.remove((Object)listener);
    }

    protected void startMonitoring() {
        if (this.fThread == null) {
            this.fThread = new Thread(new Runnable(){

                public void run() {
                    OutputStreamMonitor.this.read();
                }
            }, DebugCoreMessages.OutputStreamMonitor_label);
            this.fThread.setDaemon(true);
            this.fThread.setPriority(1);
            this.fThread.start();
        }
    }

    public synchronized void setBuffered(boolean buffer) {
        this.fBuffered = buffer;
    }

    public synchronized void flushContents() {
        this.fContents.setLength(0);
    }

    public synchronized boolean isBuffered() {
        return this.fBuffered;
    }

    private ContentNotifier getNotifier() {
        return new ContentNotifier();
    }

    class ContentNotifier
    implements ISafeRunnable {
        private IStreamListener fListener;
        private String fText;

        ContentNotifier() {
        }

        public void handleException(Throwable exception) {
            DebugPlugin.log(exception);
        }

        public void run() throws Exception {
            this.fListener.streamAppended(this.fText, OutputStreamMonitor.this);
        }

        public void notifyAppend(String text) {
            if (text == null) {
                return;
            }
            this.fText = text;
            Object[] copiedListeners = OutputStreamMonitor.this.fListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IStreamListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fListener = null;
            this.fText = null;
        }
    }
}

