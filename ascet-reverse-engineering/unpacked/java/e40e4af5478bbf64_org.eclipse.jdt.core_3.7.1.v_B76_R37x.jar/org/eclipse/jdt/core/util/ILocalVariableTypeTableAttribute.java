/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableEntry;

public interface ILocalVariableTypeTableAttribute
extends IClassFileAttribute {
    public int getLocalVariableTypeTableLength();

    public ILocalVariableTypeTableEntry[] getLocalVariableTypeTable();
}

