/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

public class LibraryInfo {
    private String fVersion;
    private String[] fBootpath;
    private String[] fExtensionDirs;
    private String[] fEndorsedDirs;

    public LibraryInfo(String version, String[] bootpath, String[] extDirs, String[] endDirs) {
        this.fVersion = version;
        this.fBootpath = bootpath;
        this.fExtensionDirs = extDirs;
        this.fEndorsedDirs = endDirs;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public String[] getExtensionDirs() {
        return this.fExtensionDirs;
    }

    public String[] getBootpath() {
        return this.fBootpath;
    }

    public String[] getEndorsedDirs() {
        return this.fEndorsedDirs;
    }
}

