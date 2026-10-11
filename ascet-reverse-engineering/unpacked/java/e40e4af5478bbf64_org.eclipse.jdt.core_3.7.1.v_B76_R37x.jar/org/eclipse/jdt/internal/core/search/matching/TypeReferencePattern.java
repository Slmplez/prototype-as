/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.matching.IntersectingPattern;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeReferencePattern
extends IntersectingPattern {
    protected char[] qualification;
    protected char[] simpleName;
    protected char[] currentCategory;
    public int segmentsSize;
    protected char[][] segments;
    protected int currentSegment;
    private static final char[][] CATEGORIES = new char[][]{REF, ANNOTATION_REF};
    private static final char[][] CATEGORIES_ANNOT_REF = new char[][]{ANNOTATION_REF};
    private char[][] categories = CATEGORIES;
    char typeSuffix = '\u0000';

    public TypeReferencePattern(char[] qualification, char[] simpleName, int matchRule) {
        this(matchRule);
        this.qualification = this.isCaseSensitive ? qualification : CharOperation.toLowerCase(qualification);
        char[] cArray = this.simpleName = this.isCaseSensitive || this.isCamelCase ? simpleName : CharOperation.toLowerCase(simpleName);
        this.segments = (char[][])(simpleName == null ? (this.qualification == null ? ONE_STAR_CHAR : CharOperation.splitOn('.', this.qualification)) : null);
        this.segmentsSize = this.segments == null ? (this.qualification == null ? 0 : CharOperation.occurencesOf('.', this.qualification) + 1) : this.segments.length;
        this.mustResolve = true;
    }

    public TypeReferencePattern(char[] qualification, char[] simpleName, String typeSignature, int matchRule) {
        this(qualification, simpleName, typeSignature, 0, '\u0000', matchRule);
    }

    public TypeReferencePattern(char[] qualification, char[] simpleName, String typeSignature, char typeSuffix, int matchRule) {
        this(qualification, simpleName, typeSignature, 0, typeSuffix, matchRule);
    }

    public TypeReferencePattern(char[] qualification, char[] simpleName, String typeSignature, int limitTo, char typeSuffix, int matchRule) {
        this(qualification, simpleName, matchRule);
        this.typeSuffix = typeSuffix;
        if (typeSignature != null) {
            this.typeSignatures = Util.splitTypeLevelsSignature(typeSignature);
            this.setTypeArguments(Util.getAllTypeArguments(this.typeSignatures));
            if (this.hasTypeArguments()) {
                this.segmentsSize = this.getTypeArguments().length + CharOperation.occurencesOf('/', this.typeSignatures[0]) - 1;
            }
        }
        this.fineGrain = limitTo & 0xFFFFFFF0;
        if (this.fineGrain == 65536) {
            this.categories = CATEGORIES_ANNOT_REF;
        }
    }

    public TypeReferencePattern(char[] qualification, char[] simpleName, IType type, int matchRule) {
        this(qualification, simpleName, type, 0, matchRule);
    }

    public TypeReferencePattern(char[] qualification, char[] simpleName, IType type, int limitTo, int matchRule) {
        this(qualification, simpleName, matchRule);
        this.storeTypeSignaturesAndArguments(type);
        this.fineGrain = limitTo & 0xFFFFFFF0;
    }

    TypeReferencePattern(int matchRule) {
        super(4, matchRule);
    }

    public void decodeIndexKey(char[] key) {
        this.simpleName = key;
    }

    public SearchPattern getBlankPattern() {
        return new TypeReferencePattern(8);
    }

    public char[] getIndexKey() {
        if (this.simpleName != null) {
            return this.simpleName;
        }
        if (this.currentSegment >= 0) {
            return this.segments[this.currentSegment];
        }
        return null;
    }

    public char[][] getIndexCategories() {
        return this.categories;
    }

    protected boolean hasNextQuery() {
        if (this.segments == null) {
            return false;
        }
        return --this.currentSegment >= (this.segments.length >= 4 ? 2 : 0);
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        return true;
    }

    protected void resetQuery() {
        if (this.segments != null) {
            this.currentSegment = this.segments.length - 1;
        }
    }

    protected StringBuffer print(StringBuffer output) {
        String patternClassName = this.getClass().getName();
        output.append(patternClassName.substring(patternClassName.lastIndexOf(46) + 1));
        output.append(": qualification<");
        if (this.qualification != null) {
            output.append(this.qualification);
        } else {
            output.append("*");
        }
        output.append(">, type<");
        if (this.simpleName != null) {
            output.append(this.simpleName);
        } else {
            output.append("*");
        }
        output.append(">");
        return super.print(output);
    }
}

