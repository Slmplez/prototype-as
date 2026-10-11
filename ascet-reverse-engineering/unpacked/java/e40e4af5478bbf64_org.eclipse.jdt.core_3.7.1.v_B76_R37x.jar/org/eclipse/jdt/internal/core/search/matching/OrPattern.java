/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;

public class OrPattern
extends SearchPattern
implements IIndexConstants {
    protected SearchPattern[] patterns;
    int matchCompatibility;

    public OrPattern(SearchPattern leftPattern, SearchPattern rightPattern) {
        super(Math.max(leftPattern.getMatchRule(), rightPattern.getMatchRule()));
        this.kind = 256;
        this.mustResolve = leftPattern.mustResolve || rightPattern.mustResolve;
        SearchPattern[] leftPatterns = leftPattern instanceof OrPattern ? ((OrPattern)leftPattern).patterns : null;
        SearchPattern[] rightPatterns = rightPattern instanceof OrPattern ? ((OrPattern)rightPattern).patterns : null;
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
        this.matchCompatibility = 0;
        int i = 0;
        int length = this.patterns.length;
        while (i < length) {
            this.matchCompatibility |= ((JavaSearchPattern)this.patterns[i]).matchCompatibility;
            ++i;
        }
    }

    public void findIndexMatches(Index index, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor progressMonitor) throws IOException {
        try {
            index.startQuery();
            int i = 0;
            int length = this.patterns.length;
            while (i < length) {
                this.patterns[i].findIndexMatches(index, requestor, participant, scope, progressMonitor);
                ++i;
            }
        }
        finally {
            index.stopQuery();
        }
    }

    public SearchPattern getBlankPattern() {
        return null;
    }

    boolean isErasureMatch() {
        return (this.matchCompatibility & 0x10) != 0;
    }

    public boolean isPolymorphicSearch() {
        int i = 0;
        int length = this.patterns.length;
        while (i < length) {
            if (this.patterns[i].isPolymorphicSearch()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public final boolean hasPackageDeclaration() {
        int i = 0;
        int length = this.patterns.length;
        while (i < length) {
            if (this.patterns[i] instanceof PackageDeclarationPattern) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public final boolean hasSignatures() {
        boolean isErasureMatch = this.isErasureMatch();
        int i = 0;
        int length = this.patterns.length;
        while (i < length && !isErasureMatch) {
            if (((JavaSearchPattern)this.patterns[i]).hasSignatures()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.patterns[0].toString());
        int i = 1;
        int length = this.patterns.length;
        while (i < length) {
            buffer.append("\n| ");
            buffer.append(this.patterns[i].toString());
            ++i;
        }
        return buffer.toString();
    }
}

