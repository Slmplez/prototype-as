/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;

public interface IContentAssistProcessor {
    public ICompletionProposal[] computeCompletionProposals(ITextViewer var1, int var2);

    public IContextInformation[] computeContextInformation(ITextViewer var1, int var2);

    public char[] getCompletionProposalAutoActivationCharacters();

    public char[] getContextInformationAutoActivationCharacters();

    public String getErrorMessage();

    public IContextInformationValidator getContextInformationValidator();
}

