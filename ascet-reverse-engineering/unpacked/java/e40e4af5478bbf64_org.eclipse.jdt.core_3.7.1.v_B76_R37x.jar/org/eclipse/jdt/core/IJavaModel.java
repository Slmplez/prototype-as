/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.JavaModelException;

public interface IJavaModel
extends IJavaElement,
IOpenable,
IParent {
    public boolean contains(IResource var1);

    public void copy(IJavaElement[] var1, IJavaElement[] var2, IJavaElement[] var3, String[] var4, boolean var5, IProgressMonitor var6) throws JavaModelException;

    public void delete(IJavaElement[] var1, boolean var2, IProgressMonitor var3) throws JavaModelException;

    public IJavaProject getJavaProject(String var1);

    public IJavaProject[] getJavaProjects() throws JavaModelException;

    public Object[] getNonJavaResources() throws JavaModelException;

    public IWorkspace getWorkspace();

    public void move(IJavaElement[] var1, IJavaElement[] var2, IJavaElement[] var3, String[] var4, boolean var5, IProgressMonitor var6) throws JavaModelException;

    public void refreshExternalArchives(IJavaElement[] var1, IProgressMonitor var2) throws JavaModelException;

    public void rename(IJavaElement[] var1, IJavaElement[] var2, String[] var3, boolean var4, IProgressMonitor var5) throws JavaModelException;
}

