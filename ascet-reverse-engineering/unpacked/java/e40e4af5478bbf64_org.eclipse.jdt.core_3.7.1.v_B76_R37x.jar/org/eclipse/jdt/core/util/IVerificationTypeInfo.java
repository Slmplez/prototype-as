/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public interface IVerificationTypeInfo {
    public static final int ITEM_TOP = 0;
    public static final int ITEM_INTEGER = 1;
    public static final int ITEM_FLOAT = 2;
    public static final int ITEM_DOUBLE = 3;
    public static final int ITEM_LONG = 4;
    public static final int ITEM_NULL = 5;
    public static final int ITEM_UNINITIALIZED_THIS = 6;
    public static final int ITEM_OBJECT = 7;
    public static final int ITEM_UNINITIALIZED = 8;

    public int getTag();

    public int getOffset();

    public int getConstantPoolIndex();

    public char[] getClassTypeName();
}

