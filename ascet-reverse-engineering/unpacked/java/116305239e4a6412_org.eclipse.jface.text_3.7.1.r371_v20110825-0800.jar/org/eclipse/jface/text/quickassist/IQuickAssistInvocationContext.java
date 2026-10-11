/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.quickassist;

import org.eclipse.jface.text.source.ISourceViewer;

public interface IQuickAssistInvocationContext {
    public int getOffset();

    public int getLength();

    public ISourceViewer getSourceViewer();
}

