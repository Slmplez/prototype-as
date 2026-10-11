/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources;

import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;

public interface IStorage
extends IAdaptable {
    public InputStream getContents() throws CoreException;

    public IPath getFullPath();

    public String getName();

    public boolean isReadOnly();
}

