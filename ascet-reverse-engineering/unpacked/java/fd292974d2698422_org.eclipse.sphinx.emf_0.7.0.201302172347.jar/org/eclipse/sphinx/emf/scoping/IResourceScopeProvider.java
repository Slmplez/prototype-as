/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.sphinx.emf.scoping;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.scoping.IResourceScope;

public interface IResourceScopeProvider {
    public boolean isApplicableTo(IFile var1);

    public boolean hasApplicableFileExtension(IFile var1);

    public IResourceScope getScope(IResource var1);

    public IResourceScope getScope(Resource var1);

    public Diagnostic validate(IFile var1);
}

