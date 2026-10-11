/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.matching.IntersectingPattern;

public class AndPattern
extends IntersectingPattern {
    protected SearchPattern[] patterns;
    int current;

    private static int combinedMatchRule(int matchRule, int matchRule2) {
        int combined = matchRule & matchRule2;
        int compatibility = combined & 0x70;
        if (compatibility == 0) {
            compatibility = (matchRule & 0x70) == 64 ? matchRule2 : ((matchRule2 & 0x70) == 64 ? matchRule : Math.min(matchRule & 0x70, matchRule2 & 0x70));
        }
        return combined & 7 | combined & 8 | compatibility | combined & 0x180;
    }

    public AndPattern(SearchPattern leftPattern, SearchPattern rightPattern) {
        super(2048, AndPattern.combinedMatchRule(leftPattern.getMatchRule(), rightPattern.getMatchRule()));
        this.mustResolve = leftPattern.mustResolve || rightPattern.mustResolve;
        SearchPattern[] leftPatterns = leftPattern instanceof AndPattern ? ((AndPattern)leftPattern).patterns : null;
        SearchPattern[] rightPatterns = rightPattern instanceof AndPattern ? ((AndPattern)rightPattern).patterns : null;
        int leftSize = leftPatterns == null ? 1 : leftPatterns.length;
        int rightSize = rightPatterns == null ? 1 : rightPatterns.length;
        this.patterns = new SearchPattern[leftSize + rightSize];
        if (leftPatterns == null) {
            this.patterns[0] = leftPattern;
        } else {
            System.arraycopy(leftPatterns, 0, this.patterns, 0, leftSize);
        }
        if (rightPatterns == null) {
            this.patterns[leftSize] = rightPattern;
        } else {
            System.arraycopy(rightPatterns, 0, this.patterns, leftSize, rightSize);
        }
        this.matchCompatibility = this.getMatchRule() & 0x70;
        this.current = 0;
    }

    public SearchPattern currentPattern() {
        return this.patterns[this.current++];
    }

    protected boolean hasNextQuery() {
        return this.current < this.patterns.length - 1;
    }

    protected void resetQuery() {
        this.current = 0;
    }
}

