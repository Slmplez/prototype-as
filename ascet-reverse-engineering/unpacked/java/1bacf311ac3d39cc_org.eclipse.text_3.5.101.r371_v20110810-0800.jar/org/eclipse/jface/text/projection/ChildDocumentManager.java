/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.projection.ChildDocument;
import org.eclipse.jface.text.projection.ProjectionDocument;
import org.eclipse.jface.text.projection.ProjectionDocumentManager;

public class ChildDocumentManager
extends ProjectionDocumentManager {
    protected ProjectionDocument createProjectionDocument(IDocument master) {
        return new ChildDocument(master);
    }
}

