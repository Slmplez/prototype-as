/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElementDeltaBuilder;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CommitWorkingCopyOperation
extends JavaModelOperation {
    public CommitWorkingCopyOperation(ICompilationUnit element, boolean force) {
        super(new IJavaElement[]{element}, force);
    }

    protected void executeOperation() throws JavaModelException {
        try {
            this.beginTask(Messages.workingCopy_commit, 2);
            CompilationUnit workingCopy = this.getCompilationUnit();
            if (" ".equals(workingCopy.getJavaProject().getElementName())) {
                workingCopy.getBuffer().save(this.progressMonitor, this.force);
                return;
            }
            ICompilationUnit primary = workingCopy.getPrimary();
            boolean isPrimary = workingCopy.isPrimary();
            JavaElementDeltaBuilder deltaBuilder = null;
            PackageFragmentRoot root = (PackageFragmentRoot)workingCopy.getAncestor(3);
            boolean isIncluded = !Util.isExcluded(workingCopy);
            IFile resource = (IFile)workingCopy.getResource();
            IJavaProject project = root.getJavaProject();
            if (isPrimary || root.validateOnClasspath().isOK() && isIncluded && resource.isAccessible() && Util.isValidCompilationUnitName(workingCopy.getElementName(), project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true))) {
                if (!isPrimary && !primary.isOpen()) {
                    primary.open(null);
                }
                if (!(!isIncluded || isPrimary && workingCopy.isConsistent())) {
                    deltaBuilder = new JavaElementDeltaBuilder(primary);
                }
                IBuffer primaryBuffer = primary.getBuffer();
                if (!isPrimary) {
                    if (primaryBuffer == null) {
                        return;
                    }
                    char[] primaryContents = primaryBuffer.getCharacters();
                    boolean hasSaved = false;
                    try {
                        IBuffer workingCopyBuffer = workingCopy.getBuffer();
                        if (workingCopyBuffer == null) {
                            return;
                        }
                        primaryBuffer.setContents(workingCopyBuffer.getCharacters());
                        primaryBuffer.save(this.progressMonitor, this.force);
                        primary.makeConsistent(this);
                        hasSaved = true;
                    }
                    finally {
                        if (!hasSaved) {
                            primaryBuffer.setContents(primaryContents);
                        }
                    }
                } else {
                    primaryBuffer.save(this.progressMonitor, this.force);
                    primary.makeConsistent(this);
                }
            } else {
                String encoding = null;
                try {
                    encoding = resource.getCharset();
                }
                catch (CoreException coreException) {}
                String contents = workingCopy.getSource();
                if (contents == null) {
                    return;
                }
                try {
                    byte[] bytes = encoding == null ? contents.getBytes() : contents.getBytes(encoding);
                    ByteArrayInputStream stream = new ByteArrayInputStream(bytes);
                    if (resource.exists()) {
                        resource.setContents((InputStream)stream, this.force ? 3 : 2, null);
                    } else {
                        resource.create((InputStream)stream, this.force, this.progressMonitor);
                    }
                }
                catch (CoreException e) {
                    throw new JavaModelException(e);
                }
                catch (UnsupportedEncodingException e) {
                    throw new JavaModelException(e, 985);
                }
            }
            CommitWorkingCopyOperation.setAttribute("hasModifiedResource", "true");
            workingCopy.updateTimeStamp((CompilationUnit)primary);
            workingCopy.makeConsistent(this);
            this.worked(1);
            if (deltaBuilder != null) {
                deltaBuilder.buildDeltas();
                if (deltaBuilder.delta != null) {
                    this.addDelta(deltaBuilder.delta);
                }
            }
            this.worked(1);
        }
        finally {
            this.done();
        }
    }

    protected CompilationUnit getCompilationUnit() {
        return (CompilationUnit)this.getElementToProcess();
    }

    protected ISchedulingRule getSchedulingRule() {
        IResource resource = this.getElementToProcess().getResource();
        if (resource == null) {
            return null;
        }
        IWorkspace workspace = resource.getWorkspace();
        if (resource.exists()) {
            return workspace.getRuleFactory().modifyRule(resource);
        }
        return workspace.getRuleFactory().createRule(resource);
    }

    public IJavaModelStatus verify() {
        CompilationUnit cu = this.getCompilationUnit();
        if (!cu.isWorkingCopy()) {
            return new JavaModelStatus(967, cu);
        }
        if (cu.hasResourceChanged() && !this.force) {
            return new JavaModelStatus(981);
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

