/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantPoolEntry;

public interface IConstantValueAttribute
extends IClassFileAttribute {
    public int getConstantValueIndex();

    public IConstantPoolEntry getConstantValue();
}

