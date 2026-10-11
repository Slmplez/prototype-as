/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import org.osgi.framework.Version;

public class SourceLocationKey {
    private String fBundleName;
    private Version fVersion;

    public SourceLocationKey(String bundleName, Version version) {
        this.fBundleName = bundleName;
        this.fVersion = version;
    }

    public SourceLocationKey(String bundleName) {
        this(bundleName, null);
    }

    public boolean equals(Object obj) {
        if (obj instanceof SourceLocationKey) {
            SourceLocationKey key = (SourceLocationKey)obj;
            if (this.fVersion != null && key.fVersion != null) {
                return this.fBundleName.equals(((SourceLocationKey)obj).fBundleName) && this.fVersion.equals((Object)((SourceLocationKey)obj).fVersion);
            }
            if (this.fVersion == null && key.fVersion == null) {
                return this.fBundleName.equals(((SourceLocationKey)obj).fBundleName);
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.fVersion == null) {
            return this.fBundleName.hashCode();
        }
        int result = 1;
        result = 31 * result + this.fBundleName.hashCode();
        result = 31 * result + this.fVersion.hashCode();
        return result;
    }
}

