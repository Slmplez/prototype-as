/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;

public interface IMethod
extends IMember,
IAnnotatable {
    public IMemberValuePair getDefaultValue() throws JavaModelException;

    public String getElementName();

    public String[] getExceptionTypes() throws JavaModelException;

    public String[] getTypeParameterSignatures() throws JavaModelException;

    public ITypeParameter[] getTypeParameters() throws JavaModelException;

    public int getNumberOfParameters();

    public ILocalVariable[] getParameters() throws JavaModelException;

    public String getKey();

    public String[] getParameterNames() throws JavaModelException;

    public String[] getParameterTypes();

    public String[] getRawParameterNames() throws JavaModelException;

    public String getReturnType() throws JavaModelException;

    public String getSignature() throws JavaModelException;

    public ITypeParameter getTypeParameter(String var1);

    public boolean isConstructor() throws JavaModelException;

    public boolean isMainMethod() throws JavaModelException;

    public boolean isResolved();

    public boolean isSimilar(IMethod var1);
}

