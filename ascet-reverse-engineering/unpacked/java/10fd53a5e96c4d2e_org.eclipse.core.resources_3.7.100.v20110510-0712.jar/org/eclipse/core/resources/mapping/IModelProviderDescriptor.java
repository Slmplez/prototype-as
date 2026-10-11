/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources.mapping;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;

public interface IModelProviderDescriptor {
    public String[] getExtendedModels();

    public String getId();

    public String getLabel();

    public IResource[] getMatchingResources(IResource[] var1) throws CoreException;

    public ResourceTraversal[] getMatchingTraversals(ResourceTraversal[] var1) throws CoreException;

    public ModelProvider getModelProvider() throws CoreException;
}

