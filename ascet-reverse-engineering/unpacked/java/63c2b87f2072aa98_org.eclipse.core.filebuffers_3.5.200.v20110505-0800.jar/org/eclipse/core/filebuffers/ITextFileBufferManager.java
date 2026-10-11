/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.filebuffers.IFileBufferManager;
import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.source.IAnnotationModel;

public interface ITextFileBufferManager
extends IFileBufferManager {
    public static final ITextFileBufferManager DEFAULT = FileBuffersPlugin.getDefault().getFileBufferManager();

    public ITextFileBuffer getTextFileBuffer(IPath var1);

    public ITextFileBuffer getTextFileBuffer(IPath var1, LocationKind var2);

    public ITextFileBuffer getFileStoreTextFileBuffer(IFileStore var1);

    public ITextFileBuffer getTextFileBuffer(IDocument var1);

    public String getDefaultEncoding();

    public IDocument createEmptyDocument(IPath var1);

    public IDocument createEmptyDocument(IPath var1, LocationKind var2);

    public IAnnotationModel createAnnotationModel(IPath var1);

    public IAnnotationModel createAnnotationModel(IPath var1, LocationKind var2);

    public boolean isTextFileLocation(IPath var1);

    public boolean isTextFileLocation(IPath var1, boolean var2);
}

