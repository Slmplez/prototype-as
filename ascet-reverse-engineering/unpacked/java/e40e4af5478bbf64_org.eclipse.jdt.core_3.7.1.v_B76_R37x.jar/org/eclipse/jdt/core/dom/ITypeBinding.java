/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;

public interface ITypeBinding
extends IBinding {
    public ITypeBinding createArrayType(int var1);

    public String getBinaryName();

    public ITypeBinding getBound();

    public ITypeBinding getGenericTypeOfWildcardType();

    public int getRank();

    public ITypeBinding getComponentType();

    public IVariableBinding[] getDeclaredFields();

    public IMethodBinding[] getDeclaredMethods();

    public int getDeclaredModifiers();

    public ITypeBinding[] getDeclaredTypes();

    public ITypeBinding getDeclaringClass();

    public IMethodBinding getDeclaringMethod();

    public int getDimensions();

    public ITypeBinding getElementType();

    public ITypeBinding getErasure();

    public ITypeBinding[] getInterfaces();

    public int getModifiers();

    public String getName();

    public IPackageBinding getPackage();

    public String getQualifiedName();

    public ITypeBinding getSuperclass();

    public ITypeBinding[] getTypeArguments();

    public ITypeBinding[] getTypeBounds();

    public ITypeBinding getTypeDeclaration();

    public ITypeBinding[] getTypeParameters();

    public ITypeBinding getWildcard();

    public boolean isAnnotation();

    public boolean isAnonymous();

    public boolean isArray();

    public boolean isAssignmentCompatible(ITypeBinding var1);

    public boolean isCapture();

    public boolean isCastCompatible(ITypeBinding var1);

    public boolean isClass();

    public boolean isEnum();

    public boolean isFromSource();

    public boolean isGenericType();

    public boolean isInterface();

    public boolean isLocal();

    public boolean isMember();

    public boolean isNested();

    public boolean isNullType();

    public boolean isParameterizedType();

    public boolean isPrimitive();

    public boolean isRawType();

    public boolean isSubTypeCompatible(ITypeBinding var1);

    public boolean isTopLevel();

    public boolean isTypeVariable();

    public boolean isUpperbound();

    public boolean isWildcardType();
}

