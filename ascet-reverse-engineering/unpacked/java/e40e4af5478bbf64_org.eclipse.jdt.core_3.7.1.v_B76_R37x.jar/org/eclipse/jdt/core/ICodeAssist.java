/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;

public interface ICodeAssist {
    public void codeComplete(int var1, ICodeCompletionRequestor var2) throws JavaModelException;

    public void codeComplete(int var1, ICompletionRequestor var2) throws JavaModelException;

    public void codeComplete(int var1, CompletionRequestor var2) throws JavaModelException;

    public void codeComplete(int var1, CompletionRequestor var2, IProgressMonitor var3) throws JavaModelException;

    public void codeComplete(int var1, ICompletionRequestor var2, WorkingCopyOwner var3) throws JavaModelException;

    public void codeComplete(int var1, CompletionRequestor var2, WorkingCopyOwner var3) throws JavaModelException;

    public void codeComplete(int var1, CompletionRequestor var2, WorkingCopyOwner var3, IProgressMonitor var4) throws JavaModelException;

    public IJavaElement[] codeSelect(int var1, int var2) throws JavaModelException;

    public IJavaElement[] codeSelect(int var1, int var2, WorkingCopyOwner var3) throws JavaModelException;
}

