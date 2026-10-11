/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.filebuffers;

public final class LocationKind {
    public static final LocationKind LOCATION = new LocationKind("location");
    public static final LocationKind IFILE = new LocationKind("IFile");
    public static final LocationKind NORMALIZE = new LocationKind("normalize");
    private final String fName;

    LocationKind(String name) {
        this.fName = name;
    }

    public String toString() {
        return this.fName;
    }
}

