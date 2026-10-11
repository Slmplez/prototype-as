/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 */
package org.eclipse.sphinx.emf.scoping;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.scoping.AbstractResourceScope;
import org.eclipse.sphinx.emf.scoping.ProjectResourceScopeProvider;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProjectResourceScope
extends AbstractResourceScope {
    protected IProject rootProject;
    protected ProjectResourceScopeProvider.IReferencedProjectsProvider referencedProjectsProvider = new ProjectResourceScopeProvider.ReferencedProjectsProvider();

    public ProjectResourceScope(IResource resource) {
        Assert.isNotNull((Object)resource);
        this.rootProject = resource.getProject();
    }

    void setReferencedProjectsProvider(ProjectResourceScopeProvider.IReferencedProjectsProvider referencedProjectsProvider) {
        this.referencedProjectsProvider = referencedProjectsProvider;
    }

    @Override
    public boolean belongsTo(IFile file, boolean includeReferencedScopes) {
        return this.belongsToRootOrDependingProjects(file, includeReferencedScopes);
    }

    @Override
    public boolean belongsTo(Resource resource, boolean includeReferencedScopes) {
        IFile file = EcorePlatformUtil.getFile(resource);
        return this.belongsToRootOrDependingProjects(file, includeReferencedScopes);
    }

    @Override
    public boolean belongsTo(URI uri, boolean includeReferencedScopes) {
        IFile file = EcorePlatformUtil.getFile(uri);
        return this.belongsToRootOrDependingProjects(file, includeReferencedScopes);
    }

    @Override
    public Collection<IResource> getReferencingRoots() {
        if (this.rootProject != null) {
            Collection allReferencingProjects = ExtendedPlatform.getAllReferencingProjects((IProject)this.rootProject);
            return allReferencingProjects;
        }
        return Collections.emptySet();
    }

    @Override
    public Collection<IResource> getReferencedRoots() {
        if (this.rootProject != null) {
            Collection<IProject> allReferencedProjects = this.referencedProjectsProvider.get(this.rootProject);
            return allReferencedProjects;
        }
        return Collections.emptySet();
    }

    @Override
    public IResource getRoot() {
        return this.rootProject;
    }

    @Override
    public boolean didBelongTo(IFile file, boolean includeReferencedScopes) {
        return this.belongsToRootOrDependingProjects(file, includeReferencedScopes);
    }

    @Override
    public boolean didBelongTo(Resource resource, boolean includeReferencedScopes) {
        IFile file = EcorePlatformUtil.getFile(resource);
        return this.belongsToRootOrDependingProjects(file, includeReferencedScopes);
    }

    @Override
    public boolean didBelongTo(URI uri, boolean includeReferencedScopes) {
        IFile file = EcorePlatformUtil.getFile(uri);
        return this.belongsToRootOrDependingProjects(file, includeReferencedScopes);
    }

    protected boolean belongsToRootOrDependingProjects(IFile file, boolean includeReferencedScopes) {
        if (file != null) {
            return this.rootProject.equals((Object)file.getProject()) || includeReferencedScopes && this.getReferencedRoots().contains(file.getProject());
        }
        return false;
    }
}

