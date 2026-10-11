/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;

public interface IJavaSearchResultCollector {
    public static final int EXACT_MATCH = 0;
    public static final int POTENTIAL_MATCH = 1;

    public void aboutToStart();

    public void accept(IResource var1, int var2, int var3, IJavaElement var4, int var5) throws CoreException;

    public void done();

    public IProgressMonitor getProgressMonitor();
}

