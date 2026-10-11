/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IBytecodeVisitor;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IExceptionTableEntry;
import org.eclipse.jdt.core.util.ILineNumberAttribute;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;

public interface ICodeAttribute
extends IClassFileAttribute {
    public int getMaxLocals();

    public int getMaxStack();

    public ILineNumberAttribute getLineNumberAttribute();

    public ILocalVariableAttribute getLocalVariableAttribute();

    public IExceptionTableEntry[] getExceptionTable();

    public byte[] getBytecodes();

    public long getCodeLength();

    public int getAttributesCount();

    public IClassFileAttribute[] getAttributes();

    public int getExceptionTableLength();

    public void traverse(IBytecodeVisitor var1) throws ClassFormatException;
}

