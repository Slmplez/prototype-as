/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core;

import java.io.InputStream;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IBaseModel;

public interface IModel
extends IBaseModel {
    public String getResourceString(String var1);

    public IResource getUnderlyingResource();

    public boolean isLoaded();

    public boolean isInSync();

    public long getTimeStamp();

    public void load() throws CoreException;

    public void load(InputStream var1, boolean var2) throws CoreException;

    public void reload(InputStream var1, boolean var2) throws CoreException;

    public boolean isReconcilingModel();
}

