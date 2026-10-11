/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public interface ILocalVariableTableEntry {
    public int getStartPC();

    public int getLength();

    public int getNameIndex();

    public int getDescriptorIndex();

    public int getIndex();

    public char[] getName();

    public char[] getDescriptor();
}

