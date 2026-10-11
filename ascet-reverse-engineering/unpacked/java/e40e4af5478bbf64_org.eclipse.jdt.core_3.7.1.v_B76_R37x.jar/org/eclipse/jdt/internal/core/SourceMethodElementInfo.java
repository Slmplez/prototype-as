/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ISourceMethod;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;

public abstract class SourceMethodElementInfo
extends AnnotatableInfo
implements ISourceMethod {
    protected char[][] argumentNames;
    protected char[][] exceptionTypes;
    protected ILocalVariable[] arguments;
    protected ITypeParameter[] typeParameters = TypeParameter.NO_TYPE_PARAMETERS;

    public char[][] getArgumentNames() {
        return this.argumentNames;
    }

    public char[][] getExceptionTypeNames() {
        return this.exceptionTypes;
    }

    public abstract char[] getReturnTypeName();

    public char[][][] getTypeParameterBounds() {
        int length = this.typeParameters.length;
        char[][][] typeParameterBounds = new char[length][][];
        int i = 0;
        while (i < length) {
            try {
                TypeParameterElementInfo info = (TypeParameterElementInfo)((JavaElement)((Object)this.typeParameters[i])).getElementInfo();
                typeParameterBounds[i] = info.bounds;
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return typeParameterBounds;
    }

    public char[][] getTypeParameterNames() {
        int length = this.typeParameters.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] typeParameterNames = new char[length][];
        int i = 0;
        while (i < length) {
            typeParameterNames[i] = this.typeParameters[i].getElementName().toCharArray();
            ++i;
        }
        return typeParameterNames;
    }

    public abstract boolean isConstructor();

    public abstract boolean isAnnotationMethod();

    protected void setArgumentNames(char[][] names) {
        this.argumentNames = names;
    }

    protected void setExceptionTypeNames(char[][] types) {
        this.exceptionTypes = types;
    }

    protected abstract void setReturnType(char[] var1);
}

