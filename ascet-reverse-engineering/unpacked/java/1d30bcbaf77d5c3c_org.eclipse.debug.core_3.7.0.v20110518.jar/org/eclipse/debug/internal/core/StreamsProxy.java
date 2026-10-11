/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core;

import java.io.IOException;
import org.eclipse.debug.core.model.IStreamMonitor;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.debug.core.model.IStreamsProxy2;
import org.eclipse.debug.internal.core.InputStreamMonitor;
import org.eclipse.debug.internal.core.OutputStreamMonitor;

public class StreamsProxy
implements IStreamsProxy,
IStreamsProxy2 {
    private OutputStreamMonitor fOutputMonitor;
    private OutputStreamMonitor fErrorMonitor;
    private InputStreamMonitor fInputMonitor;
    private boolean fClosed;

    public StreamsProxy(Process process, String encoding) {
        if (process == null) {
            return;
        }
        this.fOutputMonitor = new OutputStreamMonitor(process.getInputStream(), encoding);
        this.fErrorMonitor = new OutputStreamMonitor(process.getErrorStream(), encoding);
        this.fInputMonitor = new InputStreamMonitor(process.getOutputStream(), encoding);
        this.fOutputMonitor.startMonitoring();
        this.fErrorMonitor.startMonitoring();
        this.fInputMonitor.startMonitoring();
    }

    public void close() {
        if (!this.isClosed(true)) {
            this.fOutputMonitor.close();
            this.fErrorMonitor.close();
            this.fInputMonitor.close();
        }
    }

    private synchronized boolean isClosed(boolean setClosed) {
        boolean closed = this.fClosed;
        if (setClosed) {
            this.fClosed = true;
        }
        return closed;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void kill() {
        StreamsProxy streamsProxy = this;
        synchronized (streamsProxy) {
            this.fClosed = true;
        }
        this.fOutputMonitor.kill();
        this.fErrorMonitor.kill();
        this.fInputMonitor.close();
    }

    public IStreamMonitor getErrorStreamMonitor() {
        return this.fErrorMonitor;
    }

    public IStreamMonitor getOutputStreamMonitor() {
        return this.fOutputMonitor;
    }

    public void write(String input) throws IOException {
        if (this.isClosed(false)) {
            throw new IOException();
        }
        this.fInputMonitor.write(input);
    }

    public void closeInputStream() throws IOException {
        if (this.isClosed(false)) {
            throw new IOException();
        }
        this.fInputMonitor.closeInputStream();
    }
}

