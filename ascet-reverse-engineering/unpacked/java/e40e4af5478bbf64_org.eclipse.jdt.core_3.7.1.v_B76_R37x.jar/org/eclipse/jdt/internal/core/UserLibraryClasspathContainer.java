/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.UserLibrary;
import org.eclipse.jdt.internal.core.util.Util;

public class UserLibraryClasspathContainer
implements IClasspathContainer {
    private String name;

    public UserLibraryClasspathContainer(String name) {
        this.name = name;
    }

    public IClasspathEntry[] getClasspathEntries() {
        UserLibrary library = this.getUserLibrary();
        if (library != null) {
            return library.getEntries();
        }
        return new IClasspathEntry[0];
    }

    public String getDescription() {
        return this.name;
    }

    public int getKind() {
        UserLibrary library = this.getUserLibrary();
        if (library != null && library.isSystemLibrary()) {
            return 2;
        }
        return 1;
    }

    public IPath getPath() {
        return new Path("org.eclipse.jdt.USER_LIBRARY").append(this.name);
    }

    private UserLibrary getUserLibrary() {
        UserLibrary userLibrary = JavaModelManager.getUserLibraryManager().getUserLibrary(this.name);
        if (userLibrary == null && (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE)) {
            this.verbose_no_user_library_found(this.name);
        }
        return userLibrary;
    }

    private void verbose_no_user_library_found(String userLibraryName) {
        Util.verbose("UserLibrary INIT - FAILED (no user library found)\n\tuserLibraryName: " + userLibraryName);
    }
}

