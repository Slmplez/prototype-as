/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;

public interface IWorkingCopy {
    public void commit(boolean var1, IProgressMonitor var2) throws JavaModelException;

    public void destroy();

    public IJavaElement findSharedWorkingCopy(IBufferFactory var1);

    public IJavaElement getOriginal(IJavaElement var1);

    public IJavaElement getOriginalElement();

    public IJavaElement[] findElements(IJavaElement var1);

    public IType findPrimaryType();

    public IJavaElement getSharedWorkingCopy(IProgressMonitor var1, IBufferFactory var2, IProblemRequestor var3) throws JavaModelException;

    public IJavaElement getWorkingCopy() throws JavaModelException;

    public IJavaElement getWorkingCopy(IProgressMonitor var1, IBufferFactory var2, IProblemRequestor var3) throws JavaModelException;

    public boolean isBasedOn(IResource var1);

    public boolean isWorkingCopy();

    public IMarker[] reconcile() throws JavaModelException;

    public void reconcile(boolean var1, IProgressMonitor var2) throws JavaModelException;

    public void restore() throws JavaModelException;
}

