/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantValueAttribute;

public interface IFieldInfo {
    public IConstantValueAttribute getConstantValueAttribute();

    public int getAccessFlags();

    public char[] getName();

    public int getNameIndex();

    public char[] getDescriptor();

    public int getDescriptorIndex();

    public boolean hasConstantValueAttribute();

    public boolean isSynthetic();

    public boolean isDeprecated();

    public int getAttributeCount();

    public IClassFileAttribute[] getAttributes();
}

