/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.context;

public class ContextFile {
    private String bundleId;
    private String file;

    public ContextFile(String bundleId, String file) {
        this.bundleId = bundleId;
        this.file = file;
    }

    public String getBundleId() {
        return this.bundleId;
    }

    public String getFile() {
        return this.file;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ContextFile) {
            if (obj == this) {
                return true;
            }
            return this.bundleId.equals(((ContextFile)obj).bundleId) && this.file.equals(((ContextFile)obj).file);
        }
        return false;
    }

    public int hashCode() {
        return this.bundleId.hashCode() + this.file.hashCode();
    }
}

