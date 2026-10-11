/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.fieldassist.ContentProposal
 *  org.eclipse.jface.fieldassist.IContentProposal
 *  org.eclipse.jface.fieldassist.IContentProposalProvider
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import org.eclipse.jface.fieldassist.ContentProposal;
import org.eclipse.jface.fieldassist.IContentProposal;
import org.eclipse.jface.fieldassist.IContentProposalProvider;
import org.eclipse.jface.text.RegExMessages;

public class FindReplaceDocumentAdapterContentProposalProvider
implements IContentProposalProvider {
    private final boolean fIsFind;

    public FindReplaceDocumentAdapterContentProposalProvider(boolean isFind) {
        this.fIsFind = isFind;
    }

    public IContentProposal[] getProposals(String contents, int position) {
        if (this.fIsFind) {
            return new ProposalComputer(contents, position).computeFindProposals();
        }
        return new ProposalComputer(contents, position).computeReplaceProposals();
    }

    private static class ProposalComputer {
        private final String fExpression;
        private final int fDocumentOffset;
        private final ArrayList fPriorityProposals;
        private final ArrayList fProposals;
        private final boolean fIsEscape;

        public ProposalComputer(String contents, int position) {
            this.fExpression = contents;
            this.fDocumentOffset = position;
            this.fPriorityProposals = new ArrayList();
            this.fProposals = new ArrayList();
            boolean isEscape = false;
            int i = position - 1;
            while (i >= 0) {
                if (this.fExpression.charAt(i) != '\\') break;
                isEscape = !isEscape;
                --i;
            }
            this.fIsEscape = isEscape;
        }

        public IContentProposal[] computeFindProposals() {
            this.addBsProposal("\\\\", RegExMessages.getString("displayString_bs_bs"), RegExMessages.getString("additionalInfo_bs_bs"));
            this.addBracketProposal("\\0", 2, RegExMessages.getString("displayString_bs_0"), RegExMessages.getString("additionalInfo_bs_0"));
            this.addBracketProposal("\\x", 2, RegExMessages.getString("displayString_bs_x"), RegExMessages.getString("additionalInfo_bs_x"));
            this.addBracketProposal("\\u", 2, RegExMessages.getString("displayString_bs_u"), RegExMessages.getString("additionalInfo_bs_u"));
            this.addBsProposal("\\t", RegExMessages.getString("displayString_bs_t"), RegExMessages.getString("additionalInfo_bs_t"));
            this.addBsProposal("\\R", RegExMessages.getString("displayString_bs_R"), RegExMessages.getString("additionalInfo_bs_R"));
            this.addBsProposal("\\n", RegExMessages.getString("displayString_bs_n"), RegExMessages.getString("additionalInfo_bs_n"));
            this.addBsProposal("\\r", RegExMessages.getString("displayString_bs_r"), RegExMessages.getString("additionalInfo_bs_r"));
            this.addBsProposal("\\f", RegExMessages.getString("displayString_bs_f"), RegExMessages.getString("additionalInfo_bs_f"));
            this.addBsProposal("\\a", RegExMessages.getString("displayString_bs_a"), RegExMessages.getString("additionalInfo_bs_a"));
            this.addBsProposal("\\e", RegExMessages.getString("displayString_bs_e"), RegExMessages.getString("additionalInfo_bs_e"));
            this.addBracketProposal("\\c", 2, RegExMessages.getString("displayString_bs_c"), RegExMessages.getString("additionalInfo_bs_c"));
            if (!this.fIsEscape) {
                this.addBracketProposal(".", 1, RegExMessages.getString("displayString_dot"), RegExMessages.getString("additionalInfo_dot"));
            }
            this.addBsProposal("\\d", RegExMessages.getString("displayString_bs_d"), RegExMessages.getString("additionalInfo_bs_d"));
            this.addBsProposal("\\D", RegExMessages.getString("displayString_bs_D"), RegExMessages.getString("additionalInfo_bs_D"));
            this.addBsProposal("\\s", RegExMessages.getString("displayString_bs_s"), RegExMessages.getString("additionalInfo_bs_s"));
            this.addBsProposal("\\S", RegExMessages.getString("displayString_bs_S"), RegExMessages.getString("additionalInfo_bs_S"));
            this.addBsProposal("\\w", RegExMessages.getString("displayString_bs_w"), RegExMessages.getString("additionalInfo_bs_w"));
            this.addBsProposal("\\W", RegExMessages.getString("displayString_bs_W"), RegExMessages.getString("additionalInfo_bs_W"));
            this.addBsProposal("\\", RegExMessages.getString("displayString_bs_i"), RegExMessages.getString("additionalInfo_bs_i"));
            this.addBsProposal("\\", RegExMessages.getString("displayString_bs"), RegExMessages.getString("additionalInfo_bs"));
            this.addBsProposal("\\Q", RegExMessages.getString("displayString_bs_Q"), RegExMessages.getString("additionalInfo_bs_Q"));
            this.addBsProposal("\\E", RegExMessages.getString("displayString_bs_E"), RegExMessages.getString("additionalInfo_bs_E"));
            if (!this.fIsEscape) {
                this.addBracketProposal("[]", 1, RegExMessages.getString("displayString_set"), RegExMessages.getString("additionalInfo_set"));
                this.addBracketProposal("[^]", 2, RegExMessages.getString("displayString_setExcl"), RegExMessages.getString("additionalInfo_setExcl"));
                this.addBracketProposal("[-]", 1, RegExMessages.getString("displayString_setRange"), RegExMessages.getString("additionalInfo_setRange"));
                this.addProposal("&&", RegExMessages.getString("displayString_setInter"), RegExMessages.getString("additionalInfo_setInter"));
            }
            if (!this.fIsEscape && this.fDocumentOffset > 0 && this.fExpression.charAt(this.fDocumentOffset - 1) == '\\') {
                this.addProposal("\\p{}", 3, RegExMessages.getString("displayString_posix"), RegExMessages.getString("additionalInfo_posix"));
                this.addProposal("\\P{}", 3, RegExMessages.getString("displayString_posixNot"), RegExMessages.getString("additionalInfo_posixNot"));
            } else {
                this.addBracketProposal("\\p{}", 3, RegExMessages.getString("displayString_posix"), RegExMessages.getString("additionalInfo_posix"));
                this.addBracketProposal("\\P{}", 3, RegExMessages.getString("displayString_posixNot"), RegExMessages.getString("additionalInfo_posixNot"));
            }
            if (this.fDocumentOffset == 0) {
                this.addPriorityProposal("^", RegExMessages.getString("displayString_start"), RegExMessages.getString("additionalInfo_start"));
            } else if (this.fDocumentOffset == 1 && this.fExpression.charAt(0) == '^') {
                this.addBracketProposal("^", 1, RegExMessages.getString("displayString_start"), RegExMessages.getString("additionalInfo_start"));
            }
            if (this.fDocumentOffset == this.fExpression.length()) {
                this.addProposal("$", RegExMessages.getString("displayString_end"), RegExMessages.getString("additionalInfo_end"));
            }
            this.addBsProposal("\\b", RegExMessages.getString("displayString_bs_b"), RegExMessages.getString("additionalInfo_bs_b"));
            this.addBsProposal("\\B", RegExMessages.getString("displayString_bs_B"), RegExMessages.getString("additionalInfo_bs_B"));
            this.addBsProposal("\\A", RegExMessages.getString("displayString_bs_A"), RegExMessages.getString("additionalInfo_bs_A"));
            this.addBsProposal("\\G", RegExMessages.getString("displayString_bs_G"), RegExMessages.getString("additionalInfo_bs_G"));
            this.addBsProposal("\\Z", RegExMessages.getString("displayString_bs_Z"), RegExMessages.getString("additionalInfo_bs_Z"));
            this.addBsProposal("\\z", RegExMessages.getString("displayString_bs_z"), RegExMessages.getString("additionalInfo_bs_z"));
            if (!this.fIsEscape) {
                this.addBracketProposal("()", 1, RegExMessages.getString("displayString_group"), RegExMessages.getString("additionalInfo_group"));
                this.addBracketProposal("(?)", 2, RegExMessages.getString("displayString_flag"), RegExMessages.getString("additionalInfo_flag"));
                this.addBracketProposal("(?:)", 3, RegExMessages.getString("displayString_flagExpr"), RegExMessages.getString("additionalInfo_flagExpr"));
                this.addBracketProposal("(?:)", 3, RegExMessages.getString("displayString_nonCap"), RegExMessages.getString("additionalInfo_nonCap"));
                this.addBracketProposal("(?>)", 3, RegExMessages.getString("displayString_atomicCap"), RegExMessages.getString("additionalInfo_atomicCap"));
                this.addBracketProposal("(?=)", 3, RegExMessages.getString("displayString_posLookahead"), RegExMessages.getString("additionalInfo_posLookahead"));
                this.addBracketProposal("(?!)", 3, RegExMessages.getString("displayString_negLookahead"), RegExMessages.getString("additionalInfo_negLookahead"));
                this.addBracketProposal("(?<=)", 4, RegExMessages.getString("displayString_posLookbehind"), RegExMessages.getString("additionalInfo_posLookbehind"));
                this.addBracketProposal("(?<!)", 4, RegExMessages.getString("displayString_negLookbehind"), RegExMessages.getString("additionalInfo_negLookbehind"));
                this.addBracketProposal("?", 1, RegExMessages.getString("displayString_quest"), RegExMessages.getString("additionalInfo_quest"));
                this.addBracketProposal("*", 1, RegExMessages.getString("displayString_star"), RegExMessages.getString("additionalInfo_star"));
                this.addBracketProposal("+", 1, RegExMessages.getString("displayString_plus"), RegExMessages.getString("additionalInfo_plus"));
                this.addBracketProposal("{}", 1, RegExMessages.getString("displayString_exact"), RegExMessages.getString("additionalInfo_exact"));
                this.addBracketProposal("{,}", 1, RegExMessages.getString("displayString_least"), RegExMessages.getString("additionalInfo_least"));
                this.addBracketProposal("{,}", 1, RegExMessages.getString("displayString_count"), RegExMessages.getString("additionalInfo_count"));
                this.addBracketProposal("??", 1, RegExMessages.getString("displayString_questLazy"), RegExMessages.getString("additionalInfo_questLazy"));
                this.addBracketProposal("*?", 1, RegExMessages.getString("displayString_starLazy"), RegExMessages.getString("additionalInfo_starLazy"));
                this.addBracketProposal("+?", 1, RegExMessages.getString("displayString_plusLazy"), RegExMessages.getString("additionalInfo_plusLazy"));
                this.addBracketProposal("{}?", 1, RegExMessages.getString("displayString_exactLazy"), RegExMessages.getString("additionalInfo_exactLazy"));
                this.addBracketProposal("{,}?", 1, RegExMessages.getString("displayString_leastLazy"), RegExMessages.getString("additionalInfo_leastLazy"));
                this.addBracketProposal("{,}?", 1, RegExMessages.getString("displayString_countLazy"), RegExMessages.getString("additionalInfo_countLazy"));
                this.addBracketProposal("?+", 1, RegExMessages.getString("displayString_questPoss"), RegExMessages.getString("additionalInfo_questPoss"));
                this.addBracketProposal("*+", 1, RegExMessages.getString("displayString_starPoss"), RegExMessages.getString("additionalInfo_starPoss"));
                this.addBracketProposal("++", 1, RegExMessages.getString("displayString_plusPoss"), RegExMessages.getString("additionalInfo_plusPoss"));
                this.addBracketProposal("{}+", 1, RegExMessages.getString("displayString_exactPoss"), RegExMessages.getString("additionalInfo_exactPoss"));
                this.addBracketProposal("{,}+", 1, RegExMessages.getString("displayString_leastPoss"), RegExMessages.getString("additionalInfo_leastPoss"));
                this.addBracketProposal("{,}+", 1, RegExMessages.getString("displayString_countPoss"), RegExMessages.getString("additionalInfo_countPoss"));
                this.addBracketProposal("|", 1, RegExMessages.getString("displayString_alt"), RegExMessages.getString("additionalInfo_alt"));
            }
            this.fPriorityProposals.addAll(this.fProposals);
            return this.fPriorityProposals.toArray(new IContentProposal[this.fProposals.size()]);
        }

        public IContentProposal[] computeReplaceProposals() {
            if (this.fDocumentOffset > 0 && '$' == this.fExpression.charAt(this.fDocumentOffset - 1)) {
                this.addProposal("", RegExMessages.getString("displayString_dollar"), RegExMessages.getString("additionalInfo_dollar"));
            } else {
                if (!this.fIsEscape) {
                    this.addProposal("$", RegExMessages.getString("displayString_dollar"), RegExMessages.getString("additionalInfo_dollar"));
                }
                this.addBsProposal("\\", RegExMessages.getString("displayString_replace_cap"), RegExMessages.getString("additionalInfo_replace_cap"));
                this.addBsProposal("\\", RegExMessages.getString("displayString_replace_bs"), RegExMessages.getString("additionalInfo_replace_bs"));
                this.addBsProposal("\\R", RegExMessages.getString("displayString_replace_bs_R"), RegExMessages.getString("additionalInfo_replace_bs_R"));
                this.addBracketProposal("\\x", 2, RegExMessages.getString("displayString_bs_x"), RegExMessages.getString("additionalInfo_bs_x"));
                this.addBracketProposal("\\u", 2, RegExMessages.getString("displayString_bs_u"), RegExMessages.getString("additionalInfo_bs_u"));
                this.addBsProposal("\\t", RegExMessages.getString("displayString_bs_t"), RegExMessages.getString("additionalInfo_bs_t"));
                this.addBsProposal("\\n", RegExMessages.getString("displayString_replace_bs_n"), RegExMessages.getString("additionalInfo_replace_bs_n"));
                this.addBsProposal("\\r", RegExMessages.getString("displayString_replace_bs_r"), RegExMessages.getString("additionalInfo_replace_bs_r"));
                this.addBsProposal("\\f", RegExMessages.getString("displayString_bs_f"), RegExMessages.getString("additionalInfo_bs_f"));
                this.addBsProposal("\\a", RegExMessages.getString("displayString_bs_a"), RegExMessages.getString("additionalInfo_bs_a"));
                this.addBsProposal("\\e", RegExMessages.getString("displayString_bs_e"), RegExMessages.getString("additionalInfo_bs_e"));
                this.addBracketProposal("\\c", 2, RegExMessages.getString("displayString_bs_c"), RegExMessages.getString("additionalInfo_bs_c"));
                this.addBsProposal("\\C", RegExMessages.getString("displayString_replace_bs_C"), RegExMessages.getString("additionalInfo_replace_bs_C"));
            }
            this.fPriorityProposals.addAll(this.fProposals);
            return this.fPriorityProposals.toArray(new IContentProposal[this.fPriorityProposals.size()]);
        }

        private void addProposal(String proposal, String displayString, String additionalInfo) {
            this.fProposals.add(new ContentProposal(proposal, displayString, additionalInfo));
        }

        private void addProposal(String proposal, int cursorPosition, String displayString, String additionalInfo) {
            this.fProposals.add(new ContentProposal(proposal, displayString, additionalInfo, cursorPosition));
        }

        private void addPriorityProposal(String proposal, String displayString, String additionalInfo) {
            this.fPriorityProposals.add(new ContentProposal(proposal, displayString, additionalInfo));
        }

        private void addBracketProposal(String proposal, int cursorPosition, String displayString, String additionalInfo) {
            String prolog = this.fExpression.substring(0, this.fDocumentOffset);
            if (!this.fIsEscape && prolog.endsWith("\\") && proposal.startsWith("\\")) {
                this.fProposals.add(new ContentProposal(proposal, displayString, additionalInfo, cursorPosition));
                return;
            }
            int i = 1;
            while (i <= cursorPosition) {
                String prefix = proposal.substring(0, i);
                if (prolog.endsWith(prefix)) {
                    String postfix = proposal.substring(cursorPosition);
                    String epilog = this.fExpression.substring(this.fDocumentOffset);
                    if (epilog.startsWith(postfix)) {
                        this.fPriorityProposals.add(new ContentProposal(proposal.substring(i, cursorPosition), displayString, additionalInfo, cursorPosition - i));
                    } else {
                        this.fPriorityProposals.add(new ContentProposal(proposal.substring(i), displayString, additionalInfo, cursorPosition - i));
                    }
                    return;
                }
                ++i;
            }
            this.fProposals.add(new ContentProposal(proposal, displayString, additionalInfo, cursorPosition));
        }

        private void addBsProposal(String proposal, String displayString, String additionalInfo) {
            String prolog = this.fExpression.substring(0, this.fDocumentOffset);
            int position = proposal.length();
            if (prolog.endsWith("\\")) {
                --position;
                proposal = proposal.substring(1);
            }
            if (this.fIsEscape) {
                this.fPriorityProposals.add(new ContentProposal(proposal, displayString, additionalInfo, position));
            } else {
                this.addProposal(proposal, position, displayString, additionalInfo);
            }
        }
    }
}

