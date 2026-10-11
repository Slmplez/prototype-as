/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.compiler.IProblem;

public abstract class CompletionRequestor {
    private int ignoreSet = 0;
    private String[] favoriteReferences;
    private int[] requiredProposalAllowSet = null;
    private boolean requireExtendedContext = false;

    public CompletionRequestor() {
        this(false);
    }

    public CompletionRequestor(boolean ignoreAll) {
        this.ignoreSet = ignoreAll ? -1 : 0;
    }

    public boolean isIgnored(int completionProposalKind) {
        if (completionProposalKind < 1 || completionProposalKind > 27) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + completionProposalKind);
        }
        return (this.ignoreSet & 1 << completionProposalKind) != 0;
    }

    public void setIgnored(int completionProposalKind, boolean ignore) {
        if (completionProposalKind < 1 || completionProposalKind > 27) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + completionProposalKind);
        }
        this.ignoreSet = ignore ? (this.ignoreSet |= 1 << completionProposalKind) : (this.ignoreSet &= ~(1 << completionProposalKind));
    }

    public boolean isAllowingRequiredProposals(int proposalKind, int requiredProposalKind) {
        if (proposalKind < 1 || proposalKind > 27) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + requiredProposalKind);
        }
        if (requiredProposalKind < 1 || requiredProposalKind > 27) {
            throw new IllegalArgumentException("Unknown required kind of completion proposal: " + requiredProposalKind);
        }
        if (this.requiredProposalAllowSet == null) {
            return false;
        }
        return (this.requiredProposalAllowSet[proposalKind] & 1 << requiredProposalKind) != 0;
    }

    public void setAllowsRequiredProposals(int proposalKind, int requiredProposalKind, boolean allow) {
        if (proposalKind < 1 || proposalKind > 27) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + requiredProposalKind);
        }
        if (requiredProposalKind < 1 || requiredProposalKind > 27) {
            throw new IllegalArgumentException("Unknown required kind of completion proposal: " + requiredProposalKind);
        }
        if (this.requiredProposalAllowSet == null) {
            this.requiredProposalAllowSet = new int[28];
        }
        if (allow) {
            int n = proposalKind;
            this.requiredProposalAllowSet[n] = this.requiredProposalAllowSet[n] | 1 << requiredProposalKind;
        } else {
            int n = proposalKind;
            this.requiredProposalAllowSet[n] = this.requiredProposalAllowSet[n] & ~(1 << requiredProposalKind);
        }
    }

    public String[] getFavoriteReferences() {
        return this.favoriteReferences;
    }

    public void setFavoriteReferences(String[] favoriteImports) {
        this.favoriteReferences = favoriteImports;
    }

    public void beginReporting() {
    }

    public void endReporting() {
    }

    public void completionFailure(IProblem problem) {
    }

    public abstract void accept(CompletionProposal var1);

    public void acceptContext(CompletionContext context) {
    }

    public boolean isExtendedContextRequired() {
        return this.requireExtendedContext;
    }

    public void setRequireExtendedContext(boolean require) {
        this.requireExtendedContext = require;
    }
}

