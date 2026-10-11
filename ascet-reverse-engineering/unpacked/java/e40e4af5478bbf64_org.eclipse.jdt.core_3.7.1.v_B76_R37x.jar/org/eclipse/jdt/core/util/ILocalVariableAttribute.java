/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;

public interface ILocalVariableAttribute
extends IClassFileAttribute {
    public int getLocalVariableTableLength();

    public ILocalVariableTableEntry[] getLocalVariableTable();
}

