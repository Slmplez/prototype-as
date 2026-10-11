/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public interface ILocalVariableTypeTableEntry {
    public int getStartPC();

    public int getLength();

    public int getNameIndex();

    public int getSignatureIndex();

    public int getIndex();

    public char[] getName();

    public char[] getSignature();
}

