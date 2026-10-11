/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IJavaElement;

public class CompletionContext {
    public static final int TL_MEMBER_START = 1;
    public static final int TL_STATEMENT_START = 2;
    public static final int TOKEN_KIND_UNKNOWN = 0;
    public static final int TOKEN_KIND_NAME = 1;
    public static final int TOKEN_KIND_STRING_LITERAL = 2;

    public boolean isInJavadoc() {
        return false;
    }

    public boolean isInJavadocText() {
        return false;
    }

    public boolean isInJavadocFormalReference() {
        return false;
    }

    public boolean isExtended() {
        return false;
    }

    public char[][] getExpectedTypesSignatures() {
        return null;
    }

    public char[][] getExpectedTypesKeys() {
        return null;
    }

    public char[] getToken() {
        return null;
    }

    public int getTokenKind() {
        return -1;
    }

    public int getTokenLocation() {
        return -1;
    }

    public int getTokenStart() {
        return -1;
    }

    public int getTokenEnd() {
        return -1;
    }

    public int getOffset() {
        return -1;
    }

    public IJavaElement getEnclosingElement() {
        return null;
    }

    public IJavaElement[] getVisibleElements(String typeSignature) {
        return null;
    }
}

