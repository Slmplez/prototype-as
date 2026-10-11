/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.ITypeRoot;

public interface ILocalVariable
extends IJavaElement,
ISourceReference,
IAnnotatable {
    public String getElementName();

    public ISourceRange getNameRange();

    public String getTypeSignature();

    public boolean isParameter();

    public int getFlags();

    public IMember getDeclaringMember();

    public ITypeRoot getTypeRoot();
}

