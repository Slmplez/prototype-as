/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.ISourceManipulation;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;

public interface IPackageFragment
extends IParent,
IJavaElement,
IOpenable,
ISourceManipulation {
    public static final String DEFAULT_PACKAGE_NAME = "";

    public boolean containsJavaResources() throws JavaModelException;

    public ICompilationUnit createCompilationUnit(String var1, String var2, boolean var3, IProgressMonitor var4) throws JavaModelException;

    public IClassFile getClassFile(String var1);

    public IClassFile[] getClassFiles() throws JavaModelException;

    public ICompilationUnit getCompilationUnit(String var1);

    public ICompilationUnit[] getCompilationUnits() throws JavaModelException;

    public ICompilationUnit[] getCompilationUnits(WorkingCopyOwner var1) throws JavaModelException;

    public String getElementName();

    public int getKind() throws JavaModelException;

    public Object[] getNonJavaResources() throws JavaModelException;

    public boolean hasSubpackages() throws JavaModelException;

    public boolean isDefaultPackage();
}

