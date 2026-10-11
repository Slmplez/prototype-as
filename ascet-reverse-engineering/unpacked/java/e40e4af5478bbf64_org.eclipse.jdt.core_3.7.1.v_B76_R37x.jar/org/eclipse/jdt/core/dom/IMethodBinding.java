/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;

public interface IMethodBinding
extends IBinding {
    public boolean isConstructor();

    public boolean isDefaultConstructor();

    public String getName();

    public ITypeBinding getDeclaringClass();

    public Object getDefaultValue();

    public IAnnotationBinding[] getParameterAnnotations(int var1);

    public ITypeBinding[] getParameterTypes();

    public ITypeBinding getReturnType();

    public ITypeBinding[] getExceptionTypes();

    public ITypeBinding[] getTypeParameters();

    public boolean isAnnotationMember();

    public boolean isGenericMethod();

    public boolean isParameterizedMethod();

    public ITypeBinding[] getTypeArguments();

    public IMethodBinding getMethodDeclaration();

    public boolean isRawMethod();

    public boolean isSubsignature(IMethodBinding var1);

    public boolean isVarargs();

    public boolean overrides(IMethodBinding var1);
}

