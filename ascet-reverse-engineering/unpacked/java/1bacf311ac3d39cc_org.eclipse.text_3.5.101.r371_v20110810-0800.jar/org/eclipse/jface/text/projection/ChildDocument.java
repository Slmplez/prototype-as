/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.projection.ProjectionDocument;

public class ChildDocument
extends ProjectionDocument {
    public ChildDocument(IDocument masterDocument) {
        super(masterDocument);
    }

    public IDocument getParentDocument() {
        return this.getMasterDocument();
    }

    public void setParentDocumentRange(int offset, int length) throws BadLocationException {
        this.replaceMasterDocumentRanges(offset, length);
    }

    public Position getParentDocumentRange() {
        IRegion coverage = this.getDocumentInformationMapping().getCoverage();
        return new VisibleRegion(coverage.getOffset(), coverage.getLength());
    }

    private static class VisibleRegion
    extends Position {
        public VisibleRegion(int regionOffset, int regionLength) {
            super(regionOffset, regionLength);
        }

        public boolean overlapsWith(int regionOffset, int regionLength) {
            boolean appending;
            boolean bl = appending = regionOffset == this.offset + this.length && regionLength == 0;
            return appending || super.overlapsWith(regionOffset, regionLength);
        }
    }
}

