/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 */
package org.eclipse.sphinx.emf.scoping;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.scoping.IResourceScope;
import org.eclipse.sphinx.emf.scoping.IResourceScopeProvider;
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

public abstract class AbstractResourceScopeProvider
implements IResourceScopeProvider {
    public boolean isApplicableTo(IFile file) {
        IResourceScope scope = this.createScope((IResource)file);
        if (scope == null || !scope.exists()) {
            return false;
        }
        return this.hasApplicableFileExtension(file);
    }

    public boolean hasApplicableFileExtension(IFile file) {
        Assert.isNotNull((Object)file);
        String extension = file.getFullPath().getFileExtension();
        if (extension == null) {
            return false;
        }
        for (IMetaModelDescriptor mmDescriptor : ResourceScopeProviderRegistry.INSTANCE.getMetaModelDescriptorsFor(this)) {
            for (String contentTypeId : mmDescriptor.getContentTypeIds()) {
                if (!ExtendedPlatform.getContentTypeFileExtensions((String)contentTypeId).contains(extension)) continue;
                return true;
            }
            for (String compatibleContentTypeId : mmDescriptor.getCompatibleContentTypeIds()) {
                if (!ExtendedPlatform.getContentTypeFileExtensions((String)compatibleContentTypeId).contains(extension)) continue;
                return true;
            }
        }
        return MetaModelDescriptorRegistry.INSTANCE.isContentTypeOfTargetDescriptorsApplicable(file);
    }

    public IResourceScope getScope(IResource resource) {
        IResourceScope scope = this.createScope(resource);
        if (scope == null || !scope.exists()) {
            return null;
        }
        if (resource instanceof IFile && !scope.belongsTo((IFile)resource, false)) {
            return null;
        }
        return scope;
    }

    protected abstract IResourceScope createScope(IResource var1);

    public IResourceScope getScope(Resource resource) {
        IFile file = EcorePlatformUtil.getFile(resource);
        if (file != null) {
            return this.getScope((IResource)file);
        }
        return null;
    }

    public Diagnostic validate(IFile file) {
        return Diagnostic.OK_INSTANCE;
    }
}

