/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.core.project;

import org.eclipse.core.runtime.IPath;

public interface IBundleClasspathEntry {
    public IPath getSourcePath();

    public IPath getBinaryPath();

    public IPath getLibrary();
}

