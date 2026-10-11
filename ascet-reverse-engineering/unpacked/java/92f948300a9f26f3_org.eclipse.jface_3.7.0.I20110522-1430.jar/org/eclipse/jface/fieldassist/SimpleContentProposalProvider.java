/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.fieldassist;

import java.util.ArrayList;
import org.eclipse.jface.fieldassist.ContentProposal;
import org.eclipse.jface.fieldassist.IContentProposal;
import org.eclipse.jface.fieldassist.IContentProposalProvider;

public class SimpleContentProposalProvider
implements IContentProposalProvider {
    private String[] proposals;
    private IContentProposal[] contentProposals;
    private boolean filterProposals = false;

    public SimpleContentProposalProvider(String[] proposals) {
        this.proposals = proposals;
    }

    public IContentProposal[] getProposals(String contents, int position) {
        if (this.filterProposals) {
            ArrayList<ContentProposal> list = new ArrayList<ContentProposal>();
            int i = 0;
            while (i < this.proposals.length) {
                if (this.proposals[i].length() >= contents.length() && this.proposals[i].substring(0, contents.length()).equalsIgnoreCase(contents)) {
                    list.add(new ContentProposal(this.proposals[i]));
                }
                ++i;
            }
            return list.toArray(new IContentProposal[list.size()]);
        }
        if (this.contentProposals == null) {
            this.contentProposals = new IContentProposal[this.proposals.length];
            int i = 0;
            while (i < this.proposals.length) {
                this.contentProposals[i] = new ContentProposal(this.proposals[i]);
                ++i;
            }
        }
        return this.contentProposals;
    }

    public void setProposals(String[] items) {
        this.proposals = items;
        this.contentProposals = null;
    }

    public void setFiltering(boolean filterProposals) {
        this.filterProposals = filterProposals;
        this.contentProposals = null;
    }
}

