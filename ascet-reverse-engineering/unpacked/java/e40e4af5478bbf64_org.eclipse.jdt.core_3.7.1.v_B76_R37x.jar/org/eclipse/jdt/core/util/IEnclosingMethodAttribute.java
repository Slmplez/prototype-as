/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface IEnclosingMethodAttribute
extends IClassFileAttribute {
    public char[] getEnclosingClass();

    public int getEnclosingClassIndex();

    public char[] getMethodDescriptor();

    public int getMethodDescriptorIndex();

    public char[] getMethodName();

    public int getMethodNameIndex();

    public int getMethodNameAndTypeIndex();
}

