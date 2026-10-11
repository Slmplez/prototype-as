/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;

public class SecondaryTypeDeclarationPattern
extends TypeDeclarationPattern {
    private static final char[] SECONDARY_PATTERN_KEY = "*/S".toCharArray();

    public SecondaryTypeDeclarationPattern() {
        super(null, null, null, 'S', 8);
    }

    public SecondaryTypeDeclarationPattern(int matchRule) {
        super(matchRule);
    }

    public SearchPattern getBlankPattern() {
        return new SecondaryTypeDeclarationPattern(8);
    }

    protected StringBuffer print(StringBuffer output) {
        output.append("Secondary");
        return super.print(output);
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        return index.query(CATEGORIES, SECONDARY_PATTERN_KEY, 10);
    }
}

