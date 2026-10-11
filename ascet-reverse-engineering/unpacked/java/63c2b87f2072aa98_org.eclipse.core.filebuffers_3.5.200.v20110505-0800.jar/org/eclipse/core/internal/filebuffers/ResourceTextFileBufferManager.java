/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.internal.filebuffers;

import java.util.ArrayList;
import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.IAnnotationModelFactory;
import org.eclipse.core.filebuffers.IDocumentFactory;
import org.eclipse.core.filebuffers.IDocumentSetupParticipant;
import org.eclipse.core.filebuffers.IDocumentSetupParticipantExtension;
import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.IStateValidationSupport;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.internal.filebuffers.AbstractFileBuffer;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.internal.filebuffers.FileStoreTextFileBuffer;
import org.eclipse.core.internal.filebuffers.NLSUtility;
import org.eclipse.core.internal.filebuffers.ResourceExtensionRegistry;
import org.eclipse.core.internal.filebuffers.ResourceTextFileBuffer;
import org.eclipse.core.internal.filebuffers.SynchronizableDocument;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.source.IAnnotationModel;

public class ResourceTextFileBufferManager
extends TextFileBufferManager {
    public ResourceTextFileBufferManager() {
        this.fRegistry = new ResourceExtensionRegistry();
    }

    public boolean isTextFileLocation(IPath location, boolean strict) {
        Assert.isNotNull((Object)location);
        location = FileBuffers.normalizeLocation(location);
        IFile file = FileBuffers.getWorkspaceFileAtLocation(location, true);
        if (file != null) {
            if (file.exists()) {
                try {
                    IContentType type;
                    IContentDescription description = file.getContentDescription();
                    if (description != null && (type = description.getContentType()) != null) {
                        return type.isKindOf(TEXT_CONTENT_TYPE);
                    }
                }
                catch (CoreException coreException) {}
            } else {
                IContentTypeManager manager = Platform.getContentTypeManager();
                IContentType[] contentTypes = manager.findContentTypesFor(file.getName());
                if (contentTypes != null && contentTypes.length > 0) {
                    int i = 0;
                    while (i < contentTypes.length) {
                        if (contentTypes[i].isKindOf(TEXT_CONTENT_TYPE)) {
                            return true;
                        }
                        ++i;
                    }
                    return false;
                }
            }
            return !strict;
        }
        return this.isTextFileLocation(FileBuffers.getFileStoreAtLocation(location), strict);
    }

    public String getDefaultEncoding() {
        return ResourcesPlugin.getEncoding();
    }

    protected IPath normalizeLocation(IPath location) {
        return FileBuffers.normalizeLocation(location);
    }

    protected AbstractFileBuffer createTextFileBuffer(IPath location, LocationKind locationKind) {
        if (locationKind == LocationKind.IFILE || locationKind == LocationKind.NORMALIZE && FileBuffers.getWorkspaceFileAtLocation(location, true) != null) {
            return new ResourceTextFileBuffer(this);
        }
        return new FileStoreTextFileBuffer(this);
    }

    IAnnotationModel createAnnotationModel(IFile file) {
        Assert.isNotNull((Object)file);
        IAnnotationModelFactory factory = ((ResourceExtensionRegistry)this.fRegistry).getAnnotationModelFactory(file);
        if (factory != null) {
            return factory.createAnnotationModel(file.getFullPath());
        }
        return null;
    }

    public IDocument createEmptyDocument(IFile file) {
        IDocumentSetupParticipant[] participants;
        String initalLineDelimiter;
        IDocument documentFromFactory = this.createEmptyDocumentFromFactory(file);
        Object document = documentFromFactory != null ? documentFromFactory : new SynchronizableDocument();
        if (document instanceof IDocumentExtension4 && (initalLineDelimiter = this.getLineDelimiterPreference(file)) != null) {
            ((IDocumentExtension4)document).setInitialLineDelimiter(initalLineDelimiter);
        }
        if ((participants = ((ResourceExtensionRegistry)this.fRegistry).getDocumentSetupParticipants(file)) != null) {
            int i = 0;
            while (i < participants.length) {
                final IDocumentSetupParticipant participant = participants[i];
                ISafeRunnable runnable = new ISafeRunnable((IDocument)document, file){
                    private final /* synthetic */ IDocument val$document;
                    private final /* synthetic */ IFile val$file;
                    {
                        this.val$document = iDocument;
                        this.val$file = iFile;
                    }

                    public void run() throws Exception {
                        if (participant instanceof IDocumentSetupParticipantExtension) {
                            ((IDocumentSetupParticipantExtension)((Object)participant)).setup(this.val$document, this.val$file.getFullPath(), LocationKind.IFILE);
                        } else {
                            participant.setup(this.val$document);
                        }
                        if (this.val$document.getDocumentPartitioner() != null) {
                            String message = NLSUtility.format(FileBuffersMessages.TextFileBufferManager_warning_documentSetupInstallsDefaultPartitioner, participant.getClass());
                            Status status = new Status(2, "org.eclipse.core.filebuffers", 0, message, null);
                            FileBuffersPlugin.getDefault().getLog().log((IStatus)status);
                        }
                    }

                    public void handleException(Throwable t) {
                        Status status = new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.TextFileBufferManager_error_documentSetupFailed, t);
                        FileBuffersPlugin.getDefault().getLog().log((IStatus)status);
                    }
                };
                SafeRunner.run((ISafeRunnable)runnable);
                ++i;
            }
        }
        return document;
    }

    private IDocument createEmptyDocumentFromFactory(IFile file) {
        final IDocument[] runnableResult = new IDocument[1];
        final IDocumentFactory factory = ((ResourceExtensionRegistry)this.fRegistry).getDocumentFactory(file);
        if (factory != null) {
            ISafeRunnable runnable = new ISafeRunnable(){

                public void run() throws Exception {
                    runnableResult[0] = factory.createDocument();
                }

                public void handleException(Throwable t) {
                    Status status = new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.TextFileBufferManager_error_documentFactoryFailed, t);
                    FileBuffersPlugin.getDefault().getLog().log((IStatus)status);
                }
            };
            SafeRunner.run((ISafeRunnable)runnable);
        }
        return runnableResult[0];
    }

    private String getLineDelimiterPreference(IFile file) {
        IScopeContext[] scopeContext;
        if (file != null && file.getProject() != null) {
            scopeContext = new IScopeContext[]{new ProjectScope(file.getProject())};
            String lineDelimiter = Platform.getPreferencesService().getString("org.eclipse.core.runtime", "line.separator", null, scopeContext);
            if (lineDelimiter != null) {
                return lineDelimiter;
            }
        }
        scopeContext = new IScopeContext[]{InstanceScope.INSTANCE};
        return Platform.getPreferencesService().getString("org.eclipse.core.runtime", "line.separator", null, scopeContext);
    }

    protected String getLineDelimiterPreference(IPath location, LocationKind locationKind) {
        IFile file = null;
        if (locationKind != LocationKind.LOCATION) {
            file = FileBuffers.getWorkspaceFileAtLocation(location);
        }
        return this.getLineDelimiterPreference(file);
    }

    public void validateState(final IFileBuffer[] fileBuffers, IProgressMonitor monitor, final Object computationContext) throws CoreException {
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor progressMonitor) throws CoreException {
                IFileBuffer[] toValidate = ResourceTextFileBufferManager.this.findFileBuffersToValidate(fileBuffers);
                ResourceTextFileBufferManager.this.validationStateAboutToBeChanged(toValidate);
                try {
                    IStatus status = ResourceTextFileBufferManager.this.validateEdit(toValidate, computationContext);
                    ResourceTextFileBufferManager.this.validationStateChanged(toValidate, true, status);
                }
                catch (RuntimeException runtimeException) {
                    ResourceTextFileBufferManager.this.validationStateChangedFailed(toValidate);
                }
            }
        };
        ResourcesPlugin.getWorkspace().run(runnable, this.computeValidateStateRule(fileBuffers), 1, monitor);
    }

    private IStatus validateEdit(IFileBuffer[] fileBuffers, Object computationContext) {
        ArrayList<IFile> list = new ArrayList<IFile>();
        int i = 0;
        while (i < fileBuffers.length) {
            IFile file = this.getWorkspaceFile(fileBuffers[i]);
            if (file != null) {
                list.add(file);
            }
            ++i;
        }
        IFile[] files = new IFile[list.size()];
        list.toArray(files);
        return ResourcesPlugin.getWorkspace().validateEdit(files, computationContext);
    }

    private IFileBuffer[] findFileBuffersToValidate(IFileBuffer[] fileBuffers) {
        ArrayList<IFileBuffer> list = new ArrayList<IFileBuffer>();
        int i = 0;
        while (i < fileBuffers.length) {
            if (!fileBuffers[i].isStateValidated()) {
                list.add(fileBuffers[i]);
            }
            ++i;
        }
        return list.toArray(new IFileBuffer[list.size()]);
    }

    private void validationStateAboutToBeChanged(IFileBuffer[] fileBuffers) {
        int i = 0;
        while (i < fileBuffers.length) {
            if (fileBuffers[i] instanceof IStateValidationSupport) {
                IStateValidationSupport support = (IStateValidationSupport)((Object)fileBuffers[i]);
                support.validationStateAboutToBeChanged();
            }
            ++i;
        }
    }

    private void validationStateChanged(IFileBuffer[] fileBuffers, boolean validationState, IStatus status) {
        int i = 0;
        while (i < fileBuffers.length) {
            if (fileBuffers[i] instanceof IStateValidationSupport) {
                IStateValidationSupport support = (IStateValidationSupport)((Object)fileBuffers[i]);
                support.validationStateChanged(validationState, status);
            }
            ++i;
        }
    }

    private void validationStateChangedFailed(IFileBuffer[] fileBuffers) {
        int i = 0;
        while (i < fileBuffers.length) {
            if (fileBuffers[i] instanceof IStateValidationSupport) {
                IStateValidationSupport support = (IStateValidationSupport)((Object)fileBuffers[i]);
                support.validationStateChangeFailed();
            }
            ++i;
        }
    }

    private IFile getWorkspaceFile(IFileBuffer fileBuffer) {
        return FileBuffers.getWorkspaceFileAtLocation(fileBuffer.getLocation());
    }

    private ISchedulingRule computeValidateStateRule(IFileBuffer[] fileBuffers) {
        ArrayList<IFile> list = new ArrayList<IFile>();
        int i = 0;
        while (i < fileBuffers.length) {
            IFile resource = this.getWorkspaceFile(fileBuffers[i]);
            if (resource != null) {
                list.add(resource);
            }
            ++i;
        }
        IResource[] resources = new IResource[list.size()];
        list.toArray(resources);
        IResourceRuleFactory factory = ResourcesPlugin.getWorkspace().getRuleFactory();
        return factory.validateEditRule(resources);
    }
}

