/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface IExceptionAttribute
extends IClassFileAttribute {
    public int getExceptionsNumber();

    public char[][] getExceptionNames();

    public int[] getExceptionIndexes();
}

