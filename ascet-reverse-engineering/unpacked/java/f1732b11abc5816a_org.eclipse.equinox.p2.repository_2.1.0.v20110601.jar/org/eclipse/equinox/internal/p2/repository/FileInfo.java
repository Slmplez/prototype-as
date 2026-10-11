/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.repository;

import java.util.Properties;

public class FileInfo {
    public static final String PROPERTY_CONTENT_TYPE = "contentType";
    public static final String PROPERTY_LAST_MODIFIED = "lastModified";
    public static final String PROPERTY_NAME = "name";
    public static final String PROPERTY_SIZE = "size";
    public static final String PROPERTY_SPEED = "speed";
    public static final long UNKNOWN_RATE = -1L;
    private String contentType;
    private long lastModified = 0L;
    private String name;
    private long size = -1L;
    private long averageSpeed = -1L;

    public FileInfo() {
        this.contentType = "";
        this.name = "";
    }

    public FileInfo(FileInfo fileInfo) {
        this.initFrom(fileInfo);
    }

    public FileInfo(Properties properties) {
        this.name = properties.getProperty(PROPERTY_NAME);
        this.contentType = properties.getProperty(PROPERTY_CONTENT_TYPE);
        String v = properties.getProperty(PROPERTY_LAST_MODIFIED);
        if (v != null) {
            this.lastModified = Long.parseLong(v);
        }
        if ((v = properties.getProperty(PROPERTY_SIZE)) != null) {
            this.size = Long.parseLong(v);
        }
        if ((v = properties.getProperty(PROPERTY_SPEED)) != null) {
            this.averageSpeed = Long.parseLong(v);
        }
    }

    public void addProperties(Properties properties) {
        if (this.contentType != null) {
            properties.setProperty(PROPERTY_CONTENT_TYPE, this.contentType);
        }
        if (this.lastModified != 0L) {
            properties.setProperty(PROPERTY_LAST_MODIFIED, Long.toString(this.lastModified));
        }
        if (this.name != null) {
            properties.setProperty(PROPERTY_NAME, this.name);
        }
        if (this.size != -1L) {
            properties.setProperty(PROPERTY_SIZE, Long.toString(this.size));
        }
        if (this.averageSpeed != -1L) {
            properties.setProperty(PROPERTY_SPEED, Long.toString(this.averageSpeed));
        }
    }

    public final String getContentType() {
        return this.contentType;
    }

    public long getLastModified() {
        return this.lastModified;
    }

    public final String getRemoteName() {
        return this.name;
    }

    public final long getSize() {
        return this.size;
    }

    public void initFrom(FileInfo info) {
        this.setName(info.getRemoteName());
        this.setContentType(info.getContentType());
        this.setSize(info.getSize());
        this.setLastModified(info.getLastModified());
    }

    public void reset() {
        this.name = null;
        this.contentType = null;
        this.size = -1L;
        this.lastModified = 0L;
    }

    public final void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public void setLastModified(long timestamp) {
        this.lastModified = timestamp;
    }

    public final void setName(String name) {
        this.name = name;
    }

    public final void setSize(long size) {
        this.size = size;
    }

    public void setAverageSpeed(long averageSpeed) {
        this.averageSpeed = averageSpeed;
    }

    public long getAverageSpeed() {
        return this.averageSpeed;
    }
}

