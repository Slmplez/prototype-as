/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.launching;

import java.net.URL;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;

public final class LibraryLocation {
    private IPath fSystemLibrary;
    private IPath fSystemLibrarySource;
    private IPath fPackageRootPath;
    private URL fJavadocLocation;

    public LibraryLocation(IPath libraryPath, IPath sourcePath, IPath packageRoot) {
        this(libraryPath, sourcePath, packageRoot, null);
    }

    public LibraryLocation(IPath libraryPath, IPath sourcePath, IPath packageRoot, URL javadocLocation) {
        if (libraryPath == null) {
            throw new IllegalArgumentException(LaunchingMessages.libraryLocation_assert_libraryNotNull);
        }
        this.fSystemLibrary = libraryPath;
        this.fSystemLibrarySource = sourcePath;
        this.fPackageRootPath = packageRoot;
        this.fJavadocLocation = javadocLocation;
    }

    public IPath getSystemLibraryPath() {
        return this.fSystemLibrary;
    }

    public IPath getSystemLibrarySourcePath() {
        return this.fSystemLibrarySource;
    }

    public IPath getPackageRootPath() {
        return this.fPackageRootPath;
    }

    public URL getJavadocLocation() {
        return this.fJavadocLocation;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LibraryLocation) {
            LibraryLocation lib = (LibraryLocation)obj;
            return this.getSystemLibraryPath().equals((Object)lib.getSystemLibraryPath()) && this.equals(this.getSystemLibrarySourcePath(), lib.getSystemLibrarySourcePath()) && this.equals(this.getPackageRootPath(), lib.getPackageRootPath()) && LaunchingPlugin.sameURL(this.getJavadocLocation(), lib.getJavadocLocation());
        }
        return false;
    }

    public int hashCode() {
        return this.getSystemLibraryPath().hashCode();
    }

    protected boolean equals(IPath path1, IPath path2) {
        return this.equalsOrNull(path1, path2);
    }

    private boolean equalsOrNull(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        if (o2 == null) {
            return false;
        }
        return o1.equals(o2);
    }

    public void setSystemLibrarySource(IPath source) {
        this.fSystemLibrarySource = source;
    }
}

