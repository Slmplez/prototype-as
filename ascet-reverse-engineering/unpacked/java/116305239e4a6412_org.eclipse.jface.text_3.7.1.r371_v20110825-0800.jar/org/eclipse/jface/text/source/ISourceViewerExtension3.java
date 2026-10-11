/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.quickassist.IQuickAssistAssistant;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.source.IAnnotationHover;

public interface ISourceViewerExtension3 {
    public IQuickAssistAssistant getQuickAssistAssistant();

    public IQuickAssistInvocationContext getQuickAssistInvocationContext();

    public IAnnotationHover getCurrentAnnotationHover();
}

