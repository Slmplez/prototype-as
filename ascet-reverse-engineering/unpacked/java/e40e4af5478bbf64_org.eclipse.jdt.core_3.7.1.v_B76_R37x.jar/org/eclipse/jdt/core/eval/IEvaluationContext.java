/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core.eval;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.eval.ICodeSnippetRequestor;
import org.eclipse.jdt.core.eval.IGlobalVariable;

public interface IEvaluationContext {
    public IGlobalVariable[] allVariables();

    public void codeComplete(String var1, int var2, ICompletionRequestor var3) throws JavaModelException;

    public void codeComplete(String var1, int var2, ICompletionRequestor var3, WorkingCopyOwner var4) throws JavaModelException;

    public void codeComplete(String var1, int var2, CompletionRequestor var3) throws JavaModelException;

    public void codeComplete(String var1, int var2, CompletionRequestor var3, IProgressMonitor var4) throws JavaModelException;

    public void codeComplete(String var1, int var2, CompletionRequestor var3, WorkingCopyOwner var4) throws JavaModelException;

    public void codeComplete(String var1, int var2, CompletionRequestor var3, WorkingCopyOwner var4, IProgressMonitor var5) throws JavaModelException;

    public IJavaElement[] codeSelect(String var1, int var2, int var3) throws JavaModelException;

    public IJavaElement[] codeSelect(String var1, int var2, int var3, WorkingCopyOwner var4) throws JavaModelException;

    public void deleteVariable(IGlobalVariable var1);

    public void evaluateCodeSnippet(String var1, String[] var2, String[] var3, int[] var4, IType var5, boolean var6, boolean var7, ICodeSnippetRequestor var8, IProgressMonitor var9) throws JavaModelException;

    public void evaluateCodeSnippet(String var1, ICodeSnippetRequestor var2, IProgressMonitor var3) throws JavaModelException;

    public void evaluateVariable(IGlobalVariable var1, ICodeSnippetRequestor var2, IProgressMonitor var3) throws JavaModelException;

    public String[] getImports();

    public String getPackageName();

    public IJavaProject getProject();

    public IGlobalVariable newVariable(String var1, String var2, String var3);

    public void setImports(String[] var1);

    public void setPackageName(String var1);

    public void validateImports(ICodeSnippetRequestor var1) throws JavaModelException;

    public void codeComplete(String var1, int var2, ICodeCompletionRequestor var3) throws JavaModelException;
}

