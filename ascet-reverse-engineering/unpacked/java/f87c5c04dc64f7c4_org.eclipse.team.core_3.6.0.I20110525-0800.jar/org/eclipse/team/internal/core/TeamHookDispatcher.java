/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.team.ResourceRuleFactory
 *  org.eclipse.core.resources.team.TeamHook
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.team.internal.core;

import java.net.URI;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.team.ResourceRuleFactory;
import org.eclipse.core.resources.team.TeamHook;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.team.core.RepositoryProvider;

public class TeamHookDispatcher
extends TeamHook {
    private static final ResourceRuleFactory defaultFactory = new ResourceRuleFactory(){};
    private static TeamHookDispatcher instance;

    public static void setProviderRuleFactory(IProject project, IResourceRuleFactory factory) {
        if (instance != null) {
            if (factory == null) {
                factory = defaultFactory;
            }
            instance.setRuleFactory(project, factory);
        }
    }

    public TeamHookDispatcher() {
        instance = this;
    }

    public IStatus validateCreateLink(IFile file, int updateFlags, IPath location) {
        RepositoryProvider provider = this.getProvider((IResource)file);
        if (provider == null) {
            return super.validateCreateLink(file, updateFlags, location);
        }
        return provider.validateCreateLink((IResource)file, updateFlags, location);
    }

    public IStatus validateCreateLink(IFile file, int updateFlags, URI location) {
        RepositoryProvider provider = this.getProvider((IResource)file);
        if (provider == null) {
            return super.validateCreateLink(file, updateFlags, location);
        }
        return provider.validateCreateLink((IResource)file, updateFlags, location);
    }

    public IStatus validateCreateLink(IFolder folder, int updateFlags, IPath location) {
        RepositoryProvider provider = this.getProvider((IResource)folder);
        if (provider == null) {
            return super.validateCreateLink(folder, updateFlags, location);
        }
        return provider.validateCreateLink((IResource)folder, updateFlags, location);
    }

    public IStatus validateCreateLink(IFolder folder, int updateFlags, URI location) {
        RepositoryProvider provider = this.getProvider((IResource)folder);
        if (provider == null) {
            return super.validateCreateLink(folder, updateFlags, location);
        }
        return provider.validateCreateLink((IResource)folder, updateFlags, location);
    }

    private RepositoryProvider getProvider(IResource resource) {
        return RepositoryProvider.getProvider(resource.getProject());
    }

    public IResourceRuleFactory getRuleFactory(IProject project) {
        RepositoryProvider provider;
        if (RepositoryProvider.isShared(project) && (provider = this.getProvider((IResource)project)) != null) {
            return provider.getRuleFactory();
        }
        return super.getRuleFactory(project);
    }
}

