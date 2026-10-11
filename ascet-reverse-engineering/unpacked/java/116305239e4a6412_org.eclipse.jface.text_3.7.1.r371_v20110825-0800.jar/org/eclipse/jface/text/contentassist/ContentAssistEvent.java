/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContentAssistant;

public final class ContentAssistEvent {
    public final IContentAssistant assistant;
    public final IContentAssistProcessor processor;
    public final boolean isAutoActivated;

    ContentAssistEvent(IContentAssistant ca, IContentAssistProcessor proc, boolean isAutoActivated) {
        this.assistant = ca;
        this.processor = proc;
        this.isAutoActivated = isAutoActivated;
    }

    ContentAssistEvent(ContentAssistant ca, IContentAssistProcessor proc) {
        this(ca, proc, false);
    }
}

