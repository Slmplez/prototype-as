/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.storagemanager;

import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.osgi.storagemanager.StorageManager;

public final class ManagedOutputStream
extends FilterOutputStream {
    static final int ST_OPEN = 0;
    static final int ST_CLOSED = 1;
    private String target;
    private StorageManager manager;
    private File outputFile;
    private int state;
    private ManagedOutputStream[] streamSet = null;

    ManagedOutputStream(OutputStream out, StorageManager manager, String target, File outputFile) {
        super(out);
        this.manager = manager;
        this.target = target;
        this.outputFile = outputFile;
        this.state = 0;
    }

    public void close() throws IOException {
        this.manager.closeOutputStream(this);
    }

    public void abort() {
        this.manager.abortOutputStream(this);
    }

    OutputStream getOutputStream() {
        return this.out;
    }

    String getTarget() {
        return this.target;
    }

    File getOutputFile() {
        return this.outputFile;
    }

    int getState() {
        return this.state;
    }

    void setState(int state) {
        this.state = state;
    }

    void setStreamSet(ManagedOutputStream[] set) {
        this.streamSet = set;
    }

    ManagedOutputStream[] getStreamSet() {
        return this.streamSet;
    }

    public void write(byte[] bytes, int off, int len) throws IOException {
        this.out.write(bytes, off, len);
    }
}

