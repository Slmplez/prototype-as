/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public interface IExceptionTableEntry {
    public int getStartPC();

    public int getEndPC();

    public int getHandlerPC();

    public int getCatchTypeIndex();

    public char[] getCatchType();
}

