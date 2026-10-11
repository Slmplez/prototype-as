/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources.filtermatchers;

import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;

public abstract class AbstractFileInfoMatcher {
    public abstract boolean matches(IContainer var1, IFileInfo var2) throws CoreException;

    public abstract void initialize(IProject var1, Object var2) throws CoreException;
}

