/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.contentassist;

import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;

public interface ISubjectControlContentAssistProcessor
extends IContentAssistProcessor {
    public ICompletionProposal[] computeCompletionProposals(IContentAssistSubjectControl var1, int var2);

    public IContextInformation[] computeContextInformation(IContentAssistSubjectControl var1, int var2);
}

