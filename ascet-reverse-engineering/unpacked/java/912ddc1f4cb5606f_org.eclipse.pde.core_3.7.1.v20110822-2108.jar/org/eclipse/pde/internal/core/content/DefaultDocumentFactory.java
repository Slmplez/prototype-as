/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filebuffers.FileBuffers
 *  org.eclipse.core.filebuffers.IDocumentFactory
 *  org.eclipse.core.filebuffers.LocationKind
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.content;

import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.IDocumentFactory;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.jface.text.IDocument;

public class DefaultDocumentFactory
implements IDocumentFactory {
    public IDocument createDocument() {
        return FileBuffers.getTextFileBufferManager().createEmptyDocument(null, LocationKind.LOCATION);
    }
}

