/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

public class MemoryByte {
    public static final byte WRITABLE = 1;
    public static final byte READABLE = 2;
    public static final byte CHANGED = 4;
    public static final byte HISTORY_KNOWN = 8;
    public static final byte BIG_ENDIAN = 16;
    public static final byte ENDIANESS_KNOWN = 32;
    protected byte value;
    protected byte flags;

    public MemoryByte() {
        this(0, 35);
    }

    public MemoryByte(byte byteValue) {
        this(byteValue, 35);
    }

    public MemoryByte(byte byteValue, byte byteFlags) {
        this.value = byteValue;
        this.flags = byteFlags;
    }

    public byte getFlags() {
        return this.flags;
    }

    public void setFlags(byte flags) {
        this.flags = flags;
    }

    public byte getValue() {
        return this.value;
    }

    public void setValue(byte value) {
        this.value = value;
    }

    public void setReadable(boolean readable) {
        this.flags = (byte)(this.flags | 2);
        if (!readable) {
            this.flags = (byte)(this.flags ^ 2);
        }
    }

    public boolean isReadable() {
        return (this.flags & 2) == 2;
    }

    public void setWritable(boolean writable) {
        this.flags = (byte)(this.flags | 1);
        if (!writable) {
            this.flags = (byte)(this.flags ^ 1);
        }
    }

    public boolean isWritable() {
        return (this.flags & 1) == 1;
    }

    public void setChanged(boolean changed) {
        this.flags = (byte)(this.flags | 4);
        if (!changed) {
            this.flags = (byte)(this.flags ^ 4);
        }
    }

    public boolean isChanged() {
        return (this.flags & 4) == 4;
    }

    public void setHistoryKnown(boolean known) {
        this.flags = (byte)(this.flags | 8);
        if (!known) {
            this.flags = (byte)(this.flags ^ 8);
        }
    }

    public boolean isHistoryKnown() {
        return (this.flags & 8) == 8;
    }

    public void setBigEndian(boolean isBigEndian) {
        this.flags = (byte)(this.flags | 0x10);
        if (!isBigEndian) {
            this.flags = (byte)(this.flags ^ 0x10);
        }
    }

    public boolean isBigEndian() {
        return (this.flags & 0x10) == 16;
    }

    public void setEndianessKnown(boolean isEndianessKnown) {
        this.flags = (byte)(this.flags | 0x20);
        if (!isEndianessKnown) {
            this.flags = (byte)(this.flags ^ 0x20);
        }
    }

    public boolean isEndianessKnown() {
        return (this.flags & 0x20) == 32;
    }
}

