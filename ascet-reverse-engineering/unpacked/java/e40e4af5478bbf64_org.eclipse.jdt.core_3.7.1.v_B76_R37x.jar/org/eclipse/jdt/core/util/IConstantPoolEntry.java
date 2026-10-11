/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public interface IConstantPoolEntry {
    public int getKind();

    public int getClassInfoNameIndex();

    public int getClassIndex();

    public int getNameAndTypeIndex();

    public int getStringIndex();

    public String getStringValue();

    public int getIntegerValue();

    public float getFloatValue();

    public double getDoubleValue();

    public long getLongValue();

    public int getNameAndTypeInfoDescriptorIndex();

    public int getNameAndTypeInfoNameIndex();

    public char[] getClassInfoName();

    public char[] getClassName();

    public char[] getFieldName();

    public char[] getMethodName();

    public char[] getFieldDescriptor();

    public char[] getMethodDescriptor();

    public char[] getUtf8Value();

    public int getUtf8Length();
}

