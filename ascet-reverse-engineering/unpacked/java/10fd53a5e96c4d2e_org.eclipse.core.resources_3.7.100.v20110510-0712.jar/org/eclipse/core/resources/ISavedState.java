/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.runtime.IPath;

public interface ISavedState {
    public IPath[] getFiles();

    public int getSaveNumber();

    public IPath lookup(IPath var1);

    public void processResourceChangeEvents(IResourceChangeListener var1);
}

