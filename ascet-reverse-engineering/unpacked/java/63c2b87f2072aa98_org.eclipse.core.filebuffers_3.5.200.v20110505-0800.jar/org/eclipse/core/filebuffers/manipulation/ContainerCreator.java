/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.filebuffers.manipulation;

import org.eclipse.core.filebuffers.manipulation.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.NLSUtility;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public class ContainerCreator {
    private IPath fContainerFullPath;
    private IContainer fContainer;
    private IWorkspace fWorkspace;

    public ContainerCreator(IWorkspace workspace, IPath fullPath) {
        this.fWorkspace = workspace;
        this.fContainerFullPath = fullPath;
    }

    public IContainer createContainer(IProgressMonitor progressMonitor) throws CoreException {
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public void run(IProgressMonitor monitor) throws CoreException {
                monitor.beginTask(FileBuffersMessages.ContainerCreator_task_creatingContainer, ContainerCreator.this.fContainerFullPath.segmentCount());
                if (ContainerCreator.this.fContainer != null) {
                    return;
                }
                IWorkspaceRoot root = ContainerCreator.this.fWorkspace.getRoot();
                IResource found = root.findMember(ContainerCreator.this.fContainerFullPath);
                if (found instanceof IContainer) {
                    ContainerCreator.this.fContainer = (IContainer)found;
                    return;
                }
                if (found != null) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, NLSUtility.format(FileBuffersMessages.ContainerCreator_destinationMustBeAContainer, ContainerCreator.this.fContainerFullPath), null));
                }
                ContainerCreator.this.fContainer = (IContainer)root;
                int i = 0;
                while (i < ContainerCreator.this.fContainerFullPath.segmentCount()) {
                    SubProgressMonitor subMonitor;
                    String currentSegment = ContainerCreator.this.fContainerFullPath.segment(i);
                    IResource resource = ContainerCreator.this.fContainer.findMember(currentSegment);
                    if (resource != null) {
                        if (!(resource instanceof IContainer)) throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, NLSUtility.format(FileBuffersMessages.ContainerCreator_destinationMustBeAContainer, resource.getFullPath()), null));
                        ContainerCreator.this.fContainer = (IContainer)resource;
                        monitor.worked(1);
                    } else if (i == 0) {
                        IProject projectHandle = ContainerCreator.this.createProjectHandle(root, currentSegment);
                        subMonitor = new SubProgressMonitor(monitor, 1);
                        ContainerCreator.this.fContainer = (IContainer)ContainerCreator.this.createProject(projectHandle, (IProgressMonitor)subMonitor);
                        subMonitor.done();
                    } else {
                        IFolder folderHandle = ContainerCreator.this.createFolderHandle(ContainerCreator.this.fContainer, currentSegment);
                        subMonitor = new SubProgressMonitor(monitor, 1);
                        ContainerCreator.this.fContainer = (IContainer)ContainerCreator.this.createFolder(folderHandle, (IProgressMonitor)subMonitor);
                        subMonitor.done();
                    }
                    ++i;
                }
            }
        };
        IWorkspaceRoot root = this.fWorkspace.getRoot();
        IPath existingParentPath = this.fContainerFullPath;
        while (!root.exists(existingParentPath)) {
            existingParentPath = existingParentPath.removeLastSegments(1);
        }
        IResource schedulingRule = root.findMember(existingParentPath);
        this.fWorkspace.run(runnable, (ISchedulingRule)schedulingRule, 1, progressMonitor);
        return this.fContainer;
    }

    private IFolder createFolder(IFolder folderHandle, IProgressMonitor monitor) throws CoreException {
        folderHandle.create(false, true, monitor);
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        return folderHandle;
    }

    private IFolder createFolderHandle(IContainer container, String folderName) {
        return container.getFolder((IPath)new Path(folderName));
    }

    private IProject createProject(IProject projectHandle, IProgressMonitor monitor) throws CoreException {
        monitor.beginTask("", 100);
        try {
            SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 50);
            projectHandle.create((IProgressMonitor)subMonitor);
            subMonitor.done();
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            subMonitor = new SubProgressMonitor(monitor, 50);
            projectHandle.open((IProgressMonitor)subMonitor);
            subMonitor.done();
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
        }
        finally {
            monitor.done();
        }
        return projectHandle;
    }

    private IProject createProjectHandle(IWorkspaceRoot root, String projectName) {
        return root.getProject(projectName);
    }
}

