/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.eval.IEvaluationContext;

public interface IJavaProject
extends IParent,
IJavaElement,
IOpenable {
    public static final String CLASSPATH_FILE_NAME = ".classpath";

    public IClasspathEntry decodeClasspathEntry(String var1);

    public String encodeClasspathEntry(IClasspathEntry var1);

    public IJavaElement findElement(IPath var1) throws JavaModelException;

    public IJavaElement findElement(IPath var1, WorkingCopyOwner var2) throws JavaModelException;

    public IJavaElement findElement(String var1, WorkingCopyOwner var2) throws JavaModelException;

    public IPackageFragment findPackageFragment(IPath var1) throws JavaModelException;

    public IPackageFragmentRoot findPackageFragmentRoot(IPath var1) throws JavaModelException;

    public IPackageFragmentRoot[] findPackageFragmentRoots(IClasspathEntry var1);

    public IType findType(String var1) throws JavaModelException;

    public IType findType(String var1, IProgressMonitor var2) throws JavaModelException;

    public IType findType(String var1, WorkingCopyOwner var2) throws JavaModelException;

    public IType findType(String var1, WorkingCopyOwner var2, IProgressMonitor var3) throws JavaModelException;

    public IType findType(String var1, String var2) throws JavaModelException;

    public IType findType(String var1, String var2, IProgressMonitor var3) throws JavaModelException;

    public IType findType(String var1, String var2, WorkingCopyOwner var3) throws JavaModelException;

    public IType findType(String var1, String var2, WorkingCopyOwner var3, IProgressMonitor var4) throws JavaModelException;

    public IPackageFragmentRoot[] getAllPackageFragmentRoots() throws JavaModelException;

    public Object[] getNonJavaResources() throws JavaModelException;

    public String getOption(String var1, boolean var2);

    public Map getOptions(boolean var1);

    public IPath getOutputLocation() throws JavaModelException;

    public IPackageFragmentRoot getPackageFragmentRoot(String var1);

    public IPackageFragmentRoot getPackageFragmentRoot(IResource var1);

    public IPackageFragmentRoot[] getPackageFragmentRoots() throws JavaModelException;

    public IPackageFragmentRoot[] getPackageFragmentRoots(IClasspathEntry var1);

    public IPackageFragment[] getPackageFragments() throws JavaModelException;

    public IProject getProject();

    public IClasspathEntry[] getRawClasspath() throws JavaModelException;

    public String[] getRequiredProjectNames() throws JavaModelException;

    public IClasspathEntry[] getResolvedClasspath(boolean var1) throws JavaModelException;

    public boolean hasBuildState();

    public boolean hasClasspathCycle(IClasspathEntry[] var1);

    public boolean isOnClasspath(IJavaElement var1);

    public boolean isOnClasspath(IResource var1);

    public IEvaluationContext newEvaluationContext();

    public ITypeHierarchy newTypeHierarchy(IRegion var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IRegion var1, WorkingCopyOwner var2, IProgressMonitor var3) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IType var1, IRegion var2, IProgressMonitor var3) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IType var1, IRegion var2, WorkingCopyOwner var3, IProgressMonitor var4) throws JavaModelException;

    public IPath readOutputLocation();

    public IClasspathEntry[] readRawClasspath();

    public void setOption(String var1, String var2);

    public void setOptions(Map var1);

    public void setOutputLocation(IPath var1, IProgressMonitor var2) throws JavaModelException;

    public void setRawClasspath(IClasspathEntry[] var1, IPath var2, boolean var3, IProgressMonitor var4) throws JavaModelException;

    public void setRawClasspath(IClasspathEntry[] var1, boolean var2, IProgressMonitor var3) throws JavaModelException;

    public void setRawClasspath(IClasspathEntry[] var1, IClasspathEntry[] var2, IPath var3, IProgressMonitor var4) throws JavaModelException;

    public IClasspathEntry[] getReferencedClasspathEntries() throws JavaModelException;

    public void setRawClasspath(IClasspathEntry[] var1, IProgressMonitor var2) throws JavaModelException;

    public void setRawClasspath(IClasspathEntry[] var1, IPath var2, IProgressMonitor var3) throws JavaModelException;
}

