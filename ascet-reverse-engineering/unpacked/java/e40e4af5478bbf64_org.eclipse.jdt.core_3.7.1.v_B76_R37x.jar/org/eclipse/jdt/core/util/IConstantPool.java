/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IConstantPoolEntry;

public interface IConstantPool {
    public int getConstantPoolCount();

    public int getEntryKind(int var1);

    public IConstantPoolEntry decodeEntry(int var1);
}

