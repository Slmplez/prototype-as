/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.contentassist.ICompletionListener;

public interface IContentAssistantExtension2 {
    public void addCompletionListener(ICompletionListener var1);

    public void removeCompletionListener(ICompletionListener var1);

    public void setRepeatedInvocationMode(boolean var1);

    public void setShowEmptyList(boolean var1);

    public void setStatusLineVisible(boolean var1);

    public void setStatusMessage(String var1);

    public void setEmptyMessage(String var1);
}

