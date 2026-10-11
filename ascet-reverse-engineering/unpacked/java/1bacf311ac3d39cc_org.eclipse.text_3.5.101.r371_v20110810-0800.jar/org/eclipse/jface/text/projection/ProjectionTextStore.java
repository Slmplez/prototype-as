/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextStore;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.projection.IMinimalMapping;

class ProjectionTextStore
implements ITextStore {
    private IDocument fMasterDocument;
    private IMinimalMapping fMapping;
    private ReusableRegion fReusableRegion = new ReusableRegion();

    public ProjectionTextStore(IDocument masterDocument, IMinimalMapping mapping) {
        this.fMasterDocument = masterDocument;
        this.fMapping = mapping;
    }

    private void internalError() {
        throw new IllegalStateException();
    }

    public void set(String contents) {
        IRegion masterRegion = this.fMapping.getCoverage();
        if (masterRegion == null) {
            this.internalError();
        }
        try {
            this.fMasterDocument.replace(masterRegion.getOffset(), masterRegion.getLength(), contents);
        }
        catch (BadLocationException badLocationException) {
            this.internalError();
        }
    }

    public void replace(int offset, int length, String text) {
        this.fReusableRegion.update(offset, length);
        try {
            IRegion masterRegion = this.fMapping.toOriginRegion(this.fReusableRegion);
            this.fMasterDocument.replace(masterRegion.getOffset(), masterRegion.getLength(), text);
        }
        catch (BadLocationException badLocationException) {
            this.internalError();
        }
    }

    public int getLength() {
        return this.fMapping.getImageLength();
    }

    public char get(int offset) {
        try {
            int originOffset = this.fMapping.toOriginOffset(offset);
            return this.fMasterDocument.getChar(originOffset);
        }
        catch (BadLocationException badLocationException) {
            this.internalError();
            return '\u0000';
        }
    }

    public String get(int offset, int length) {
        try {
            IRegion[] fragments = this.fMapping.toExactOriginRegions(new Region(offset, length));
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < fragments.length) {
                IRegion fragment = fragments[i];
                buffer.append(this.fMasterDocument.get(fragment.getOffset(), fragment.getLength()));
                ++i;
            }
            return buffer.toString();
        }
        catch (BadLocationException badLocationException) {
            this.internalError();
            return null;
        }
    }

    private static class ReusableRegion
    implements IRegion {
        private int fOffset;
        private int fLength;

        private ReusableRegion() {
        }

        public int getLength() {
            return this.fLength;
        }

        public int getOffset() {
            return this.fOffset;
        }

        public void update(int offset, int length) {
            this.fOffset = offset;
            this.fLength = length;
        }
    }
}

