/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.UndoEdit
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.ISourceManipulation;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public interface ICompilationUnit
extends ITypeRoot,
IWorkingCopy,
ISourceManipulation {
    public static final int NO_AST = 0;
    public static final int FORCE_PROBLEM_DETECTION = 1;
    public static final int ENABLE_STATEMENTS_RECOVERY = 2;
    public static final int ENABLE_BINDINGS_RECOVERY = 4;
    public static final int IGNORE_METHOD_BODIES = 8;

    public UndoEdit applyTextEdit(TextEdit var1, IProgressMonitor var2) throws JavaModelException;

    public void becomeWorkingCopy(IProblemRequestor var1, IProgressMonitor var2) throws JavaModelException;

    public void becomeWorkingCopy(IProgressMonitor var1) throws JavaModelException;

    public void commitWorkingCopy(boolean var1, IProgressMonitor var2) throws JavaModelException;

    public IImportDeclaration createImport(String var1, IJavaElement var2, IProgressMonitor var3) throws JavaModelException;

    public IImportDeclaration createImport(String var1, IJavaElement var2, int var3, IProgressMonitor var4) throws JavaModelException;

    public IPackageDeclaration createPackageDeclaration(String var1, IProgressMonitor var2) throws JavaModelException;

    public IType createType(String var1, IJavaElement var2, boolean var3, IProgressMonitor var4) throws JavaModelException;

    public void discardWorkingCopy() throws JavaModelException;

    public IJavaElement[] findElements(IJavaElement var1);

    public ICompilationUnit findWorkingCopy(WorkingCopyOwner var1);

    public IType[] getAllTypes() throws JavaModelException;

    public IImportDeclaration getImport(String var1);

    public IImportContainer getImportContainer();

    public IImportDeclaration[] getImports() throws JavaModelException;

    public ICompilationUnit getPrimary();

    public WorkingCopyOwner getOwner();

    public IPackageDeclaration getPackageDeclaration(String var1);

    public IPackageDeclaration[] getPackageDeclarations() throws JavaModelException;

    public IType getType(String var1);

    public IType[] getTypes() throws JavaModelException;

    public ICompilationUnit getWorkingCopy(IProgressMonitor var1) throws JavaModelException;

    public ICompilationUnit getWorkingCopy(WorkingCopyOwner var1, IProblemRequestor var2, IProgressMonitor var3) throws JavaModelException;

    public boolean hasResourceChanged();

    public boolean isWorkingCopy();

    public CompilationUnit reconcile(int var1, boolean var2, WorkingCopyOwner var3, IProgressMonitor var4) throws JavaModelException;

    public CompilationUnit reconcile(int var1, boolean var2, boolean var3, WorkingCopyOwner var4, IProgressMonitor var5) throws JavaModelException;

    public CompilationUnit reconcile(int var1, int var2, WorkingCopyOwner var3, IProgressMonitor var4) throws JavaModelException;

    public void restore() throws JavaModelException;
}

