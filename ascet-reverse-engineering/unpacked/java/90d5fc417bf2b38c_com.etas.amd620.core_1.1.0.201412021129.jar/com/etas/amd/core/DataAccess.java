/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core;

public class DataAccess {
    private boolean read;
    private boolean write;

    public DataAccess(boolean read, boolean write) {
        this.read = read;
        this.write = write;
    }

    public static DataAccess createReadAccess() {
        return new DataAccess(true, false);
    }

    public static DataAccess createReadWriteAccess() {
        return new DataAccess(true, true);
    }

    public static DataAccess createNoAccess() {
        return new DataAccess(false, false);
    }

    public static DataAccess createWriteAccess() {
        return new DataAccess(false, true);
    }

    public boolean isRead() {
        return this.read;
    }

    public boolean isWrite() {
        return this.write;
    }
}

