/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ICodeAssist;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;

public interface ITypeRoot
extends IJavaElement,
IParent,
IOpenable,
ISourceReference,
ICodeAssist {
    public IType findPrimaryType();

    public IJavaElement getElementAt(int var1) throws JavaModelException;

    public ICompilationUnit getWorkingCopy(WorkingCopyOwner var1, IProgressMonitor var2) throws JavaModelException;
}

