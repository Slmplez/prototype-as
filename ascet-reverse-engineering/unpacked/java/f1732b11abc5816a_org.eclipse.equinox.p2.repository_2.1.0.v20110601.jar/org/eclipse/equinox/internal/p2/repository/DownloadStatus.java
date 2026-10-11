/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.equinox.internal.p2.repository;

import org.eclipse.core.runtime.Status;

public class DownloadStatus
extends Status {
    public static final long UNKNOWN_RATE = -1L;
    public static final long UNKNOWN_SIZE = -1L;
    private long speed = -1L;
    private long fileSize = -1L;
    private long lastModified = 0L;

    public DownloadStatus(int severity, String pluginId, String message) {
        super(severity, pluginId, message);
    }

    public DownloadStatus(int severity, String pluginId, String message, Throwable exception) {
        super(severity, pluginId, message, exception);
    }

    public DownloadStatus(int severity, String pluginId, int code, String message, Throwable exception) {
        super(severity, pluginId, code, message, exception);
    }

    public long getTransferRate() {
        return this.speed;
    }

    public void setTransferRate(long rate) {
        this.speed = rate;
    }

    public void setFileSize(long aFileSize) {
        this.fileSize = aFileSize;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public void setLastModified(long timestamp) {
        this.lastModified = timestamp;
    }

    public long getLastModified() {
        return this.lastModified;
    }
}

