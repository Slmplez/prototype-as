/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;

public interface ITypeParameter
extends IJavaElement,
ISourceReference {
    public String[] getBounds() throws JavaModelException;

    public String[] getBoundsSignatures() throws JavaModelException;

    public IMember getDeclaringMember();

    public ITypeRoot getTypeRoot();
}

