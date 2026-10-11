/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IncrementalProjectBuilder
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.WorkspaceModelManager;
import org.eclipse.pde.internal.core.builders.DefaultSAXParser;
import org.eclipse.pde.internal.core.builders.FeatureErrorReporter;
import org.eclipse.pde.internal.core.project.PDEProject;

public class FeatureConsistencyChecker
extends IncrementalProjectBuilder {
    protected IProject[] build(int kind, Map args, IProgressMonitor monitor) throws CoreException {
        if (PDECore.getDefault().getBundle().getState() != 32 || monitor.isCanceled()) {
            return new IProject[0];
        }
        if (WorkspaceModelManager.isBinaryProject(this.getProject())) {
            return new IProject[0];
        }
        IResourceDelta delta = null;
        if (kind != 6) {
            delta = this.getDelta(this.getProject());
        }
        if (delta == null || kind == 6) {
            this.checkProject(monitor);
        } else {
            delta.accept((IResourceDeltaVisitor)new DeltaVisitor(monitor));
        }
        return new IProject[0];
    }

    private void checkProject(IProgressMonitor monitor) {
        IFile file = PDEProject.getFeatureXml(this.getProject());
        if (file.exists()) {
            this.checkFile(file, monitor);
        }
    }

    private void checkFile(IFile file, IProgressMonitor monitor) {
        String message = NLS.bind((String)PDECoreMessages.Builders_verifying, (Object)file.getFullPath().toString());
        monitor.subTask(message);
        FeatureErrorReporter reporter = new FeatureErrorReporter(file);
        DefaultSAXParser.parse(file, reporter);
        if (reporter.getErrorCount() == 0) {
            reporter.validateContent(monitor);
        }
        monitor.subTask(PDECoreMessages.Builders_updating);
        monitor.done();
    }

    private boolean isManifestFile(IFile file) {
        return file.equals((Object)PDEProject.getFeatureXml(file.getProject()));
    }

    protected void clean(IProgressMonitor monitor) throws CoreException {
        IFile file = PDEProject.getFeatureXml(this.getProject());
        if (file.exists()) {
            SubMonitor localmonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)NLS.bind((String)PDECoreMessages.FeatureConsistencyChecker_0, (Object)file.getName()), (int)1);
            try {
                file.deleteMarkers("org.eclipse.pde.core.problem", true, 0);
                localmonitor.worked(1);
            }
            finally {
                localmonitor.done();
            }
        }
    }

    class DeltaVisitor
    implements IResourceDeltaVisitor {
        private IProgressMonitor monitor;

        public DeltaVisitor(IProgressMonitor monitor) {
            this.monitor = monitor;
        }

        public boolean visit(IResourceDelta delta) {
            IFile candidate;
            IResource resource = delta.getResource();
            if (resource instanceof IProject) {
                IProject project = (IProject)resource;
                try {
                    return project.hasNature("org.eclipse.pde.FeatureNature");
                }
                catch (CoreException e) {
                    PDECore.logException(e);
                    return false;
                }
            }
            if (resource instanceof IFile && FeatureConsistencyChecker.this.isManifestFile(candidate = (IFile)resource) && delta.getKind() != 2) {
                FeatureConsistencyChecker.this.checkFile(candidate, this.monitor);
                return true;
            }
            return false;
        }
    }
}

