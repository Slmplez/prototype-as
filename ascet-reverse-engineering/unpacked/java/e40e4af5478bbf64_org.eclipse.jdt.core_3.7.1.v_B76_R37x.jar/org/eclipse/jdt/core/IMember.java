/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.ISourceManipulation;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;

public interface IMember
extends IJavaElement,
ISourceReference,
ISourceManipulation,
IParent {
    public String[] getCategories() throws JavaModelException;

    public IClassFile getClassFile();

    public ICompilationUnit getCompilationUnit();

    public IType getDeclaringType();

    public int getFlags() throws JavaModelException;

    public ISourceRange getJavadocRange() throws JavaModelException;

    public int getOccurrenceCount();

    public ITypeRoot getTypeRoot();

    public IType getType(String var1, int var2);

    public boolean isBinary();
}

