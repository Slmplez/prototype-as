/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface ILineNumberAttribute
extends IClassFileAttribute {
    public int getLineNumberTableLength();

    public int[][] getLineNumberTable();
}

