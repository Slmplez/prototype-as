/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CreateCompilationUnitOperation
extends JavaModelOperation {
    protected String name;
    protected String source = null;

    public CreateCompilationUnitOperation(IPackageFragment parentElement, String name, String source, boolean force) {
        super(null, new IJavaElement[]{parentElement}, force);
        this.name = name;
        this.source = source;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void executeOperation() throws JavaModelException {
        try {
            this.beginTask(Messages.operation_createUnitProgress, 2);
            JavaElementDelta delta = this.newJavaElementDelta();
            ICompilationUnit unit = this.getCompilationUnit();
            IPackageFragment pkg = (IPackageFragment)this.getParentElement();
            IContainer folder = (IContainer)pkg.getResource();
            this.worked(1);
            IFile compilationUnitFile = folder.getFile((IPath)new Path(this.name));
            if (compilationUnitFile.exists()) {
                if (!this.force) throw new JavaModelException(new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, compilationUnitFile.getFullPath().toString())));
                IBuffer buffer = unit.getBuffer();
                if (buffer == null) {
                    return;
                }
                buffer.setContents(this.source);
                unit.save((IProgressMonitor)new NullProgressMonitor(), false);
                this.resultElements = new IJavaElement[]{unit};
                if (!Util.isExcluded(unit) && unit.getParent().exists()) {
                    int i = 0;
                    while (i < this.resultElements.length) {
                        delta.changed(this.resultElements[i], 1);
                        ++i;
                    }
                    this.addDelta(delta);
                }
            } else {
                try {
                    String encoding = null;
                    try {
                        encoding = folder.getDefaultCharset();
                    }
                    catch (CoreException coreException) {}
                    ByteArrayInputStream stream = new ByteArrayInputStream(encoding == null ? this.source.getBytes() : this.source.getBytes(encoding));
                    this.createFile(folder, unit.getElementName(), stream, this.force);
                    this.resultElements = new IJavaElement[]{unit};
                    if (!Util.isExcluded(unit) && unit.getParent().exists()) {
                        int i = 0;
                        while (i < this.resultElements.length) {
                            delta.added(this.resultElements[i]);
                            ++i;
                        }
                        this.addDelta(delta);
                    }
                }
                catch (IOException e) {
                    throw new JavaModelException(e, 985);
                }
            }
            this.worked(1);
            return;
        }
        finally {
            this.done();
        }
    }

    protected ICompilationUnit getCompilationUnit() {
        return ((IPackageFragment)this.getParentElement()).getCompilationUnit(this.name);
    }

    protected ISchedulingRule getSchedulingRule() {
        IResource resource = this.getCompilationUnit().getResource();
        IWorkspace workspace = resource.getWorkspace();
        if (resource.exists()) {
            return workspace.getRuleFactory().modifyRule(resource);
        }
        return workspace.getRuleFactory().createRule(resource);
    }

    public IJavaModelStatus verify() {
        if (this.getParentElement() == null) {
            return new JavaModelStatus(968);
        }
        IJavaProject project = this.getParentElement().getJavaProject();
        if (JavaConventions.validateCompilationUnitName(this.name, project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4) {
            return new JavaModelStatus(983, this.name);
        }
        if (this.source == null) {
            return new JavaModelStatus(984);
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

