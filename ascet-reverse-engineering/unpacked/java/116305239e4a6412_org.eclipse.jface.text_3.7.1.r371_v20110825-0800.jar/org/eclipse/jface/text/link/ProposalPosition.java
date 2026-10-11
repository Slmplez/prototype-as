/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.link.LinkedPosition
 */
package org.eclipse.jface.text.link;

import java.util.Arrays;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.link.LinkedPosition;

public class ProposalPosition
extends LinkedPosition {
    private ICompletionProposal[] fProposals;

    public ProposalPosition(IDocument document, int offset, int length, int sequence, ICompletionProposal[] proposals) {
        super(document, offset, length, sequence);
        this.fProposals = this.copy(proposals);
    }

    public ProposalPosition(IDocument document, int offset, int length, ICompletionProposal[] proposals) {
        super(document, offset, length, -1);
        this.fProposals = this.copy(proposals);
    }

    private ICompletionProposal[] copy(ICompletionProposal[] proposals) {
        if (proposals != null) {
            ICompletionProposal[] copy = new ICompletionProposal[proposals.length];
            System.arraycopy(proposals, 0, copy, 0, proposals.length);
            return copy;
        }
        return null;
    }

    public boolean equals(Object o) {
        if (o instanceof ProposalPosition && super.equals(o)) {
            return Arrays.equals(this.fProposals, ((ProposalPosition)((Object)o)).fProposals);
        }
        return false;
    }

    public ICompletionProposal[] getChoices() {
        return this.fProposals;
    }

    public int hashCode() {
        return super.hashCode() | (this.fProposals == null ? 0 : this.fProposals.hashCode());
    }
}

