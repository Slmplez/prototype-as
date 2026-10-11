/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.source.ISourceViewer;

public class TextInvocationContext
implements IQuickAssistInvocationContext {
    private ISourceViewer fSourceViewer;
    private int fOffset;
    private int fLength;

    public TextInvocationContext(ISourceViewer sourceViewer, int offset, int length) {
        this.fSourceViewer = sourceViewer;
        this.fOffset = offset;
        this.fLength = length;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public ISourceViewer getSourceViewer() {
        return this.fSourceViewer;
    }
}

