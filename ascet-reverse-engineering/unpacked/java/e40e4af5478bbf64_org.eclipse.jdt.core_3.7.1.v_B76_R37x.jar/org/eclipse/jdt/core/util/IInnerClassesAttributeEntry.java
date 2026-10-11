/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public interface IInnerClassesAttributeEntry {
    public int getAccessFlags();

    public int getInnerNameIndex();

    public int getOuterClassNameIndex();

    public int getInnerClassNameIndex();

    public char[] getInnerName();

    public char[] getOuterClassName();

    public char[] getInnerClassName();
}

