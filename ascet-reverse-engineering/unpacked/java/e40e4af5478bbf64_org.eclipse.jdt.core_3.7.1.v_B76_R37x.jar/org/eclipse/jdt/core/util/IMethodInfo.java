/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IExceptionAttribute;

public interface IMethodInfo {
    public char[] getDescriptor();

    public int getDescriptorIndex();

    public int getAccessFlags();

    public char[] getName();

    public int getNameIndex();

    public boolean isClinit();

    public boolean isConstructor();

    public boolean isSynthetic();

    public boolean isDeprecated();

    public ICodeAttribute getCodeAttribute();

    public IExceptionAttribute getExceptionAttribute();

    public int getAttributeCount();

    public IClassFileAttribute[] getAttributes();
}

