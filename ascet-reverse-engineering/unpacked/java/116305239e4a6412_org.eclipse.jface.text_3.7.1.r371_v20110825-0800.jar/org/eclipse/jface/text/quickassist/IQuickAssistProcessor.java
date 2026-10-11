/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 */
package org.eclipse.jface.text.quickassist;

import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.source.Annotation;

public interface IQuickAssistProcessor {
    public String getErrorMessage();

    public boolean canFix(Annotation var1);

    public boolean canAssist(IQuickAssistInvocationContext var1);

    public ICompletionProposal[] computeQuickAssistProposals(IQuickAssistInvocationContext var1);
}

