/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.matching.VariablePattern;
import org.eclipse.jdt.internal.core.util.Util;

public class FieldPattern
extends VariablePattern {
    protected char[] declaringQualification;
    protected char[] declaringSimpleName;
    protected char[] typeQualification;
    protected char[] typeSimpleName;
    protected static char[][] REF_CATEGORIES = new char[][]{REF};
    protected static char[][] REF_AND_DECL_CATEGORIES = new char[][]{REF, FIELD_DECL};
    protected static char[][] DECL_CATEGORIES = new char[][]{FIELD_DECL};

    public static char[] createIndexKey(char[] fieldName) {
        return fieldName;
    }

    public FieldPattern(char[] name, char[] declaringQualification, char[] declaringSimpleName, char[] typeQualification, char[] typeSimpleName, int limitTo, int matchRule) {
        super(64, name, limitTo, matchRule);
        this.declaringQualification = this.isCaseSensitive ? declaringQualification : CharOperation.toLowerCase(declaringQualification);
        this.declaringSimpleName = this.isCaseSensitive ? declaringSimpleName : CharOperation.toLowerCase(declaringSimpleName);
        this.typeQualification = this.isCaseSensitive ? typeQualification : CharOperation.toLowerCase(typeQualification);
        this.typeSimpleName = this.isCaseSensitive || this.isCamelCase ? typeSimpleName : CharOperation.toLowerCase(typeSimpleName);
        this.mustResolve = this.mustResolve();
    }

    public FieldPattern(char[] name, char[] declaringQualification, char[] declaringSimpleName, char[] typeQualification, char[] typeSimpleName, String typeSignature, int limitTo, int matchRule) {
        this(name, declaringQualification, declaringSimpleName, typeQualification, typeSimpleName, limitTo, matchRule);
        if (typeSignature != null) {
            this.typeSignatures = Util.splitTypeLevelsSignature(typeSignature);
            this.setTypeArguments(Util.getAllTypeArguments(this.typeSignatures));
        }
    }

    public void decodeIndexKey(char[] key) {
        this.name = key;
    }

    public SearchPattern getBlankPattern() {
        return new FieldPattern(null, null, null, null, null, 0, 8);
    }

    public char[] getIndexKey() {
        return this.name;
    }

    public char[][] getIndexCategories() {
        if (this.findReferences || this.fineGrain != 0) {
            return this.findDeclarations || this.writeAccess ? REF_AND_DECL_CATEGORIES : REF_CATEGORIES;
        }
        if (this.findDeclarations) {
            return DECL_CATEGORIES;
        }
        return CharOperation.NO_CHAR_CHAR;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        return true;
    }

    protected boolean mustResolve() {
        if (this.declaringSimpleName != null || this.declaringQualification != null) {
            return true;
        }
        if (this.typeSimpleName != null || this.typeQualification != null) {
            return true;
        }
        return super.mustResolve();
    }

    protected StringBuffer print(StringBuffer output) {
        if (this.findDeclarations) {
            output.append(this.findReferences ? "FieldCombinedPattern: " : "FieldDeclarationPattern: ");
        } else {
            output.append("FieldReferencePattern: ");
        }
        if (this.declaringQualification != null) {
            output.append(this.declaringQualification).append('.');
        }
        if (this.declaringSimpleName != null) {
            output.append(this.declaringSimpleName).append('.');
        } else if (this.declaringQualification != null) {
            output.append("*.");
        }
        if (this.name == null) {
            output.append("*");
        } else {
            output.append(this.name);
        }
        if (this.typeQualification != null) {
            output.append(" --> ").append(this.typeQualification).append('.');
        } else if (this.typeSimpleName != null) {
            output.append(" --> ");
        }
        if (this.typeSimpleName != null) {
            output.append(this.typeSimpleName);
        } else if (this.typeQualification != null) {
            output.append("*");
        }
        return super.print(output);
    }
}

