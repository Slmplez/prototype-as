/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.core;

import org.eclipse.core.resources.IFile;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelProviderListener;

public interface IModelProvider {
    public void addModelProviderListener(IModelProviderListener var1);

    public IModel getModel(IFile var1);

    public void removeModelProviderListener(IModelProviderListener var1);
}

