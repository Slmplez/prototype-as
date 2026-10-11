/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.sphinx.platform.resources.MarkerJob
 */
package org.eclipse.sphinx.emf.internal.scoping;

import java.util.Collection;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.scoping.IResourceScopeMarker;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.scoping.IResourceScopeProvider;
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;
import org.eclipse.sphinx.platform.resources.MarkerJob;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceScopeValidationService {
    public static ResourceScopeValidationService INSTANCE = new ResourceScopeValidationService();

    private ResourceScopeValidationService() {
    }

    public void validateFiles(Collection<IFile> files, IProgressMonitor monitor) {
        Assert.isNotNull(files);
        if (files.size() > 0) {
            SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.task_validatingResourceScopes, (int)files.size());
            for (IFile file : files) {
                if (progress.isCanceled()) {
                    return;
                }
                if (file != null && file.isAccessible() && file.isSynchronized(1)) {
                    Diagnostic diagnostic;
                    IMetaModelDescriptor effectiveDescriptor;
                    IResourceScopeProvider resourceScopeProvider;
                    MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IResourceScopeMarker.RESOURCE_SCOPING_PROBLEM);
                    if (ResourceScopeProviderRegistry.INSTANCE.hasApplicableFileExtension(file) && (resourceScopeProvider = ResourceScopeProviderRegistry.INSTANCE.getResourceScopeProvider(effectiveDescriptor = MetaModelDescriptorRegistry.INSTANCE.getEffectiveDescriptor(file))) != null && (diagnostic = resourceScopeProvider.validate(file)) != null && !diagnostic.equals(Diagnostic.OK_INSTANCE)) {
                        MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, null);
                        this.createProblemMarkerForDiagnostic(file, diagnostic);
                    }
                }
                progress.worked(1);
            }
            MarkerJob.INSTANCE.schedule();
        }
    }

    private void createProblemMarkerForDiagnostic(IFile file, Diagnostic diagnostic) {
        Assert.isNotNull((Object)file);
        Assert.isLegal((boolean)file.isAccessible());
        Assert.isNotNull((Object)diagnostic);
        int severity = diagnostic.getSeverity();
        int mseverity = 0;
        if (severity == 4) {
            mseverity = 2;
        } else if (severity == 2) {
            mseverity = 1;
        }
        MarkerJob.INSTANCE.addCreateMarkerTask((IResource)file, IResourceScopeMarker.RESOURCE_SCOPING_PROBLEM, mseverity, diagnostic.getMessage());
    }

    public void cleanFiles(Collection<IFile> files, IProgressMonitor monitor) {
        Assert.isNotNull(files);
        if (files.size() > 0) {
            SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.task_cleaningResourceScopeMarkers, (int)files.size());
            for (IFile file : files) {
                if (progress.isCanceled()) {
                    return;
                }
                if (file != null && file.isAccessible() && ResourceScopeProviderRegistry.INSTANCE.hasApplicableFileExtension(file)) {
                    MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IResourceScopeMarker.RESOURCE_SCOPING_PROBLEM);
                }
                progress.worked(1);
            }
        }
        MarkerJob.INSTANCE.schedule();
    }
}

