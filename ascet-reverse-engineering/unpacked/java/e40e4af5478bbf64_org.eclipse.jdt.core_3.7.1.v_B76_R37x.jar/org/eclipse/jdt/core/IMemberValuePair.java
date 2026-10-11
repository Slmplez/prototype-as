/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

public interface IMemberValuePair {
    public static final int K_INT = 1;
    public static final int K_BYTE = 2;
    public static final int K_SHORT = 3;
    public static final int K_CHAR = 4;
    public static final int K_FLOAT = 5;
    public static final int K_DOUBLE = 6;
    public static final int K_LONG = 7;
    public static final int K_BOOLEAN = 8;
    public static final int K_STRING = 9;
    public static final int K_ANNOTATION = 10;
    public static final int K_CLASS = 11;
    public static final int K_QUALIFIED_NAME = 12;
    public static final int K_SIMPLE_NAME = 13;
    public static final int K_UNKNOWN = 14;

    public String getMemberName();

    public Object getValue();

    public int getValueKind();
}

