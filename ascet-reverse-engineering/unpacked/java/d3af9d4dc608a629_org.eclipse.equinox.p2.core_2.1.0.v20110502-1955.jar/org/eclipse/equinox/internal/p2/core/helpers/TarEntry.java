/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

public class TarEntry
implements Cloneable {
    private String name;
    private long mode;
    private long time;
    private long size;
    private int type;
    int filepos;
    public static final int FILE = 48;
    public static final int DIRECTORY = 53;

    TarEntry(String name, int pos) {
        this.name = name;
        this.mode = 420L;
        this.type = 48;
        this.filepos = pos;
        this.time = System.currentTimeMillis() / 1000L;
    }

    public int getFileType() {
        return this.type;
    }

    public long getMode() {
        return this.mode;
    }

    public String getName() {
        return this.name;
    }

    public long getSize() {
        return this.size;
    }

    public long getTime() {
        return this.time;
    }

    public void setFileType(int type) {
        this.type = type;
    }

    public void setMode(long mode) {
        this.mode = mode;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public void setTime(long time) {
        this.time = time;
    }
}

