/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.matching.IntersectingPattern;

public class PackageReferencePattern
extends IntersectingPattern {
    protected char[] pkgName;
    protected char[][] segments;
    protected int currentSegment;
    protected static char[][] CATEGORIES = new char[][]{REF};

    public PackageReferencePattern(char[] pkgName, int matchRule) {
        this(matchRule);
        if (pkgName == null || pkgName.length == 0) {
            this.pkgName = null;
            this.segments = new char[][]{CharOperation.NO_CHAR};
            this.mustResolve = false;
        } else {
            this.pkgName = this.isCaseSensitive || this.isCamelCase ? pkgName : CharOperation.toLowerCase(pkgName);
            this.segments = CharOperation.splitOn('.', this.pkgName);
            this.mustResolve = true;
        }
    }

    PackageReferencePattern(int matchRule) {
        super(1, matchRule);
    }

    public void decodeIndexKey(char[] key) {
        this.pkgName = key;
    }

    public SearchPattern getBlankPattern() {
        return new PackageReferencePattern(8);
    }

    public char[] getIndexKey() {
        if (this.currentSegment >= 0) {
            return this.segments[this.currentSegment];
        }
        return null;
    }

    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    protected boolean hasNextQuery() {
        return --this.currentSegment >= (this.segments.length >= 4 ? 2 : 0);
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        return true;
    }

    protected void resetQuery() {
        this.currentSegment = this.segments.length - 1;
    }

    protected StringBuffer print(StringBuffer output) {
        output.append("PackageReferencePattern: <");
        if (this.pkgName != null) {
            output.append(this.pkgName);
        } else {
            output.append("*");
        }
        output.append(">");
        return super.print(output);
    }
}

