/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;

public interface IVariableBinding
extends IBinding {
    public boolean isField();

    public boolean isEnumConstant();

    public boolean isParameter();

    public String getName();

    public ITypeBinding getDeclaringClass();

    public ITypeBinding getType();

    public int getVariableId();

    public Object getConstantValue();

    public IMethodBinding getDeclaringMethod();

    public IVariableBinding getVariableDeclaration();
}

