/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.core.internal.filebuffers;

import java.util.HashSet;
import java.util.List;
import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.IAnnotationModelFactory;
import org.eclipse.core.filebuffers.IDocumentFactory;
import org.eclipse.core.filebuffers.IDocumentSetupParticipant;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.internal.filebuffers.ExtensionsRegistry;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;

public class ResourceExtensionRegistry
extends ExtensionsRegistry {
    protected IContentType[] findContentTypes(IPath location, LocationKind locationKind) {
        IFile file;
        if (locationKind != LocationKind.LOCATION && (file = FileBuffers.getWorkspaceFileAtLocation(location)) != null) {
            return this.findContentTypes(file);
        }
        return this.fContentTypeManager.findContentTypesFor(location.lastSegment());
    }

    IDocumentFactory getDocumentFactory(IFile file) {
        IDocumentFactory factory = this.getDocumentFactory(this.findContentTypes(file));
        if (factory == null) {
            factory = this.getDocumentFactory(file.getFullPath().lastSegment());
        }
        if (factory == null) {
            factory = this.getDocumentFactory(file.getFileExtension());
        }
        if (factory == null) {
            factory = this.getDocumentFactory("*");
        }
        return factory;
    }

    IAnnotationModelFactory getAnnotationModelFactory(IFile file) {
        IAnnotationModelFactory factory = this.getAnnotationModelFactory(this.findContentTypes(file));
        if (factory == null) {
            factory = this.getAnnotationModelFactory(file.getFullPath().lastSegment());
        }
        if (factory == null) {
            factory = this.getAnnotationModelFactory(file.getFileExtension());
        }
        if (factory == null) {
            factory = this.getAnnotationModelFactory("*");
        }
        return factory;
    }

    private IContentType[] findContentTypes(IFile file) {
        try {
            IContentType contentType;
            IContentDescription contentDescription = file.getContentDescription();
            if (contentDescription != null && (contentType = contentDescription.getContentType()) != null) {
                return new IContentType[]{contentType};
            }
        }
        catch (CoreException coreException) {}
        return this.fContentTypeManager.findContentTypesFor(file.getFullPath().lastSegment());
    }

    IDocumentSetupParticipant[] getDocumentSetupParticipants(IFile file) {
        HashSet participants = new HashSet();
        List p = this.getDocumentSetupParticipants(this.findContentTypes(file));
        if (p != null) {
            participants.addAll(p);
        }
        if ((p = this.getDocumentSetupParticipants(file.getFullPath().lastSegment())) != null) {
            participants.addAll(p);
        }
        if ((p = this.getDocumentSetupParticipants(file.getFileExtension())) != null) {
            participants.addAll(p);
        }
        if ((p = this.getDocumentSetupParticipants("*")) != null) {
            participants.addAll(p);
        }
        IDocumentSetupParticipant[] result = new IDocumentSetupParticipant[participants.size()];
        participants.toArray(result);
        return result;
    }
}

