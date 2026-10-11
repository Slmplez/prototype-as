/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.ExternalJavaProject;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;

public abstract class WorkingCopyOwner {
    public static void setPrimaryBufferProvider(WorkingCopyOwner primaryBufferProvider) {
        DefaultWorkingCopyOwner.PRIMARY.primaryBufferProvider = primaryBufferProvider;
    }

    public IBuffer createBuffer(ICompilationUnit workingCopy) {
        return BufferManager.createBuffer(workingCopy);
    }

    public IProblemRequestor getProblemRequestor(ICompilationUnit workingCopy) {
        return null;
    }

    public String findSource(String typeName, String packageName) {
        return null;
    }

    public boolean isPackage(String[] pkg) {
        return false;
    }

    public final ICompilationUnit newWorkingCopy(String name, IClasspathEntry[] classpath, IProblemRequestor problemRequestor, IProgressMonitor monitor) throws JavaModelException {
        ExternalJavaProject project = new ExternalJavaProject(classpath);
        PackageFragment parent = ((PackageFragmentRoot)project.getPackageFragmentRoot((IResource)project.getProject())).getPackageFragment(CharOperation.NO_STRINGS);
        CompilationUnit result = new CompilationUnit(parent, name, this);
        result.becomeWorkingCopy(problemRequestor, monitor);
        return result;
    }

    public final ICompilationUnit newWorkingCopy(String name, IClasspathEntry[] classpath, IProgressMonitor monitor) throws JavaModelException {
        ExternalJavaProject project = new ExternalJavaProject(classpath);
        PackageFragment parent = ((PackageFragmentRoot)project.getPackageFragmentRoot((IResource)project.getProject())).getPackageFragment(CharOperation.NO_STRINGS);
        CompilationUnit result = new CompilationUnit(parent, name, this);
        result.becomeWorkingCopy(this.getProblemRequestor(result), monitor);
        return result;
    }
}

