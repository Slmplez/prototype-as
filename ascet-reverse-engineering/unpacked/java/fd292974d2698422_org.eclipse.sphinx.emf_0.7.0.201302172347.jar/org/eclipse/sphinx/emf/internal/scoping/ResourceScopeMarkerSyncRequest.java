/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.sphinx.emf.internal.scoping;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.emf.internal.scoping.ResourceScopeValidationService;
import org.eclipse.sphinx.emf.scoping.IResourceScopeMarkerSyncRequest;
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;

public class ResourceScopeMarkerSyncRequest
implements IResourceScopeMarkerSyncRequest {
    private Set<IFile> filesToClean = new HashSet<IFile>();
    private Set<IFile> filesToValidate = new HashSet<IFile>();

    public void init() {
    }

    public void addFileToValidate(IFile file) {
        if (file != null && file.isAccessible() && ResourceScopeProviderRegistry.INSTANCE.hasApplicableFileExtension(file)) {
            this.filesToValidate.add(file);
        }
    }

    public void addFileToClean(IFile file) {
        if (file != null && file.isAccessible() && ResourceScopeProviderRegistry.INSTANCE.hasApplicableFileExtension(file)) {
            this.filesToClean.add(file);
        }
    }

    public boolean canPerform() {
        return this.filesToValidate.size() > 0 || this.filesToClean.size() > 0;
    }

    public void perform() {
        if (!this.canPerform()) {
            return;
        }
        if (this.filesToValidate.size() > 0) {
            ResourceScopeValidationService.INSTANCE.validateFiles(new HashSet<IFile>(this.filesToValidate), null);
            this.filesToValidate.clear();
        }
        if (this.filesToClean.size() > 0) {
            ResourceScopeValidationService.INSTANCE.cleanFiles(new HashSet<IFile>(this.filesToClean), null);
            this.filesToClean.clear();
        }
    }

    public void dispose() {
    }
}

