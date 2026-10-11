/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import java.io.File;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.runtime.CoreException;

public class ResourceAttributes {
    private int attributes;

    public static ResourceAttributes fromFile(File file) {
        try {
            return FileUtil.fileInfoToAttributes(EFS.getStore((URI)file.toURI()).fetchInfo());
        }
        catch (CoreException coreException) {
            return new ResourceAttributes();
        }
    }

    public boolean isArchive() {
        return (this.attributes & 8) != 0;
    }

    public boolean isExecutable() {
        return (this.attributes & 4) != 0;
    }

    public boolean isHidden() {
        return (this.attributes & 0x10) != 0;
    }

    public boolean isReadOnly() {
        return (this.attributes & 2) != 0;
    }

    public boolean isSymbolicLink() {
        return (this.attributes & 0x20) != 0;
    }

    public void setArchive(boolean archive) {
        this.set(8, archive);
    }

    public void set(int mask, boolean value) {
        this.attributes = value ? (this.attributes |= mask) : (this.attributes &= ~mask);
    }

    public boolean isSet(int mask) {
        return (this.attributes & mask) != 0;
    }

    public void setExecutable(boolean executable) {
        this.set(4, executable);
    }

    public void setHidden(boolean hidden) {
        this.set(16, hidden);
    }

    public void setReadOnly(boolean readOnly) {
        this.set(2, readOnly);
    }

    public void setSymbolicLink(boolean symLink) {
        this.set(32, symLink);
    }

    public String toString() {
        return "ResourceAttributes(" + this.attributes + ')';
    }
}

