/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;

public interface ISourceManipulation {
    public void copy(IJavaElement var1, IJavaElement var2, String var3, boolean var4, IProgressMonitor var5) throws JavaModelException;

    public void delete(boolean var1, IProgressMonitor var2) throws JavaModelException;

    public void move(IJavaElement var1, IJavaElement var2, String var3, boolean var4, IProgressMonitor var5) throws JavaModelException;

    public void rename(String var1, boolean var2, IProgressMonitor var3) throws JavaModelException;
}

