/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.rules.BufferedRuleBasedScanner;
import org.eclipse.jface.text.rules.IPartitionTokenScanner;
import org.eclipse.jface.text.rules.IPredicateRule;
import org.eclipse.jface.text.rules.IRule;
import org.eclipse.jface.text.rules.IToken;

public class RuleBasedPartitionScanner
extends BufferedRuleBasedScanner
implements IPartitionTokenScanner {
    protected String fContentType;
    protected int fPartitionOffset;

    public void setRules(IRule[] rules) {
        throw new UnsupportedOperationException();
    }

    public void setPredicateRules(IPredicateRule[] rules) {
        super.setRules(rules);
    }

    public void setRange(IDocument document, int offset, int length) {
        this.setPartialRange(document, offset, length, null, -1);
    }

    public void setPartialRange(IDocument document, int offset, int length, String contentType, int partitionOffset) {
        int delta;
        this.fContentType = contentType;
        this.fPartitionOffset = partitionOffset;
        if (partitionOffset > -1 && (delta = offset - partitionOffset) > 0) {
            super.setRange(document, partitionOffset, length + delta);
            this.fOffset = offset;
            return;
        }
        super.setRange(document, offset, length);
    }

    public IToken nextToken() {
        if (this.fContentType == null || this.fRules == null) {
            return super.nextToken();
        }
        this.fColumn = -1;
        boolean resume = this.fPartitionOffset > -1 && this.fPartitionOffset < this.fOffset;
        this.fTokenOffset = resume ? this.fPartitionOffset : this.fOffset;
        int i = 0;
        while (i < this.fRules.length) {
            IPredicateRule rule = (IPredicateRule)this.fRules[i];
            IToken token = rule.getSuccessToken();
            if (this.fContentType.equals(token.getData()) && !(token = rule.evaluate(this, resume)).isUndefined()) {
                this.fContentType = null;
                return token;
            }
            ++i;
        }
        this.fContentType = null;
        if (resume) {
            this.fOffset = this.fPartitionOffset;
        }
        return super.nextToken();
    }
}

