/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;

public interface IClassFile
extends ITypeRoot {
    public ICompilationUnit becomeWorkingCopy(IProblemRequestor var1, WorkingCopyOwner var2, IProgressMonitor var3) throws JavaModelException;

    public byte[] getBytes() throws JavaModelException;

    public IType getType();

    public IJavaElement getWorkingCopy(IProgressMonitor var1, IBufferFactory var2) throws JavaModelException;

    public boolean isClass() throws JavaModelException;

    public boolean isInterface() throws JavaModelException;
}

