/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.filesystem.provider;

import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.internal.filesystem.local.LocalFileNativesManager;

public class FileInfo
implements IFileInfo {
    private static final int ATTRIBUTE_DIRECTORY = 1;
    private static final int ATTRIBUTE_EXISTS = 65536;
    private int attributes = 0xC00000;
    private long lastModified = 0L;
    private long length = 0L;
    private String name = "";
    private String linkTarget = null;

    public FileInfo() {
    }

    public FileInfo(String name) {
        this.name = name;
    }

    private void clear(int mask) {
        this.attributes &= ~mask;
    }

    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public int compareTo(Object o) {
        return this.name.compareTo(((FileInfo)o).name);
    }

    public boolean exists() {
        return this.getAttribute(65536);
    }

    public boolean getAttribute(int attribute) {
        if (attribute == 2 && FileInfo.isAttributeSuported(0x800000)) {
            return !this.isSet(0x800000L) || this.isSet(0x200000L);
        }
        if (attribute == 4 && FileInfo.isAttributeSuported(0x1000000)) {
            return this.isSet(0x1000000L);
        }
        return this.isSet(attribute);
    }

    public String getStringAttribute(int attribute) {
        if (attribute == 64) {
            return this.linkTarget;
        }
        return null;
    }

    public long getLastModified() {
        return this.lastModified;
    }

    public long getLength() {
        return this.length;
    }

    public String getName() {
        return this.name;
    }

    public boolean isDirectory() {
        return this.isSet(1L);
    }

    private boolean isSet(long mask) {
        return ((long)this.attributes & mask) != 0L;
    }

    private void set(int mask) {
        this.attributes |= mask;
    }

    public void setAttribute(int attribute, boolean value) {
        if (attribute == 2 && FileInfo.isAttributeSuported(0x800000)) {
            if (value) {
                this.clear(612368384);
                this.set(0x200000);
            } else {
                this.set(0xC00000);
                this.clear(0x200000);
            }
        } else if (attribute == 4 && FileInfo.isAttributeSuported(0x1000000)) {
            if (value) {
                this.set(0x1000000);
            } else {
                this.clear(0x49000000);
            }
        } else if (value) {
            this.set(attribute);
        } else {
            this.clear(attribute);
        }
    }

    private static boolean isAttributeSuported(int value) {
        return (LocalFileNativesManager.getSupportedAttributes() & value) != 0;
    }

    public void setDirectory(boolean value) {
        if (value) {
            this.set(1);
        } else {
            this.clear(1);
        }
    }

    public void setExists(boolean value) {
        if (value) {
            this.set(65536);
        } else {
            this.clear(65536);
        }
    }

    public void setLastModified(long value) {
        this.lastModified = value;
    }

    public void setLength(long value) {
        this.length = value;
    }

    public void setName(String name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        this.name = name;
    }

    public void setStringAttribute(int attribute, String value) {
        if (attribute == 64) {
            this.linkTarget = value;
        }
    }

    public String toString() {
        return this.name;
    }
}

