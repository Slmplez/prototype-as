/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.core.resources.mapping;

import java.util.ArrayList;
import org.eclipse.core.internal.resources.mapping.ModelProviderManager;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;

public abstract class ResourceMapping
extends PlatformObject {
    public void accept(ResourceMappingContext context, IResourceVisitor visitor, IProgressMonitor monitor) throws CoreException {
        ResourceTraversal[] traversals = this.getTraversals(context, monitor);
        int i = 0;
        while (i < traversals.length) {
            traversals[i].accept(visitor);
            ++i;
        }
    }

    public boolean contains(ResourceMapping mapping) {
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ResourceMapping) {
            ResourceMapping other = (ResourceMapping)((Object)obj);
            return other.getModelObject().equals(this.getModelObject());
        }
        return false;
    }

    public IMarker[] findMarkers(String type, boolean includeSubtypes, IProgressMonitor monitor) throws CoreException {
        ResourceTraversal[] traversals = this.getTraversals(ResourceMappingContext.LOCAL_CONTEXT, monitor);
        ArrayList<IMarker> result = new ArrayList<IMarker>();
        int i = 0;
        while (i < traversals.length) {
            traversals[i].doFindMarkers(result, type, includeSubtypes);
            ++i;
        }
        return result.toArray(new IMarker[result.size()]);
    }

    public abstract Object getModelObject();

    public final ModelProvider getModelProvider() {
        try {
            return ModelProviderManager.getDefault().getModelProvider(this.getModelProviderId());
        }
        catch (CoreException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public abstract String getModelProviderId();

    public abstract IProject[] getProjects();

    public abstract ResourceTraversal[] getTraversals(ResourceMappingContext var1, IProgressMonitor var2) throws CoreException;

    public int hashCode() {
        return this.getModelObject().hashCode();
    }
}

