/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

public interface CompletionOnJavadoc {
    public static final int JAVADOC = 1;
    public static final int EXCEPTION = 2;
    public static final int TEXT = 4;
    public static final int BASE_TYPES = 8;
    public static final int ONLY_INLINE_TAG = 16;
    public static final int REPLACE_TAG = 32;
    public static final int FORMAL_REFERENCE = 64;
    public static final int ALL_POSSIBLE_TAGS = 128;

    public int getCompletionFlags();

    public void addCompletionFlags(int var1);
}

