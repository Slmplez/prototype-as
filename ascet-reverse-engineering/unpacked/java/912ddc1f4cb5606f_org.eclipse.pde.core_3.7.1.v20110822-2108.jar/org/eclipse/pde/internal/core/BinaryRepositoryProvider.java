/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.team.FileModificationValidationContext
 *  org.eclipse.core.resources.team.FileModificationValidator
 *  org.eclipse.core.resources.team.IMoveDeleteHook
 *  org.eclipse.core.resources.team.IResourceTree
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.team.core.RepositoryProvider
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.resources.team.FileModificationValidator;
import org.eclipse.core.resources.team.IMoveDeleteHook;
import org.eclipse.core.resources.team.IResourceTree;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.team.core.RepositoryProvider;

public class BinaryRepositoryProvider
extends RepositoryProvider {
    private IMoveDeleteHook moveDeleteHook = new BinaryMoveDeleteHook();
    private FileModificationValidator fileModificationValidator = new BinaryFileModificationValidator();
    public static final String EXTERNAL_PROJECT_VALUE = "external";

    public void configureProject() throws CoreException {
        IProject project = this.getProject();
        project.setPersistentProperty(PDECore.EXTERNAL_PROJECT_PROPERTY, EXTERNAL_PROJECT_VALUE);
    }

    public void deconfigure() throws CoreException {
        IProject project = this.getProject();
        project.setPersistentProperty(PDECore.EXTERNAL_PROJECT_PROPERTY, null);
    }

    public FileModificationValidator getFileModificationValidator2() {
        return this.fileModificationValidator;
    }

    public String getID() {
        return "org.eclipse.pde.core.BinaryRepositoryProvider";
    }

    public IMoveDeleteHook getMoveDeleteHook() {
        return this.moveDeleteHook;
    }

    /*
     * Unable to fully structure code
     */
    private boolean isBinaryResource(IResource resource, boolean excludeProjectChildren) {
        parent = resource.getParent();
        if (excludeProjectChildren && parent instanceof IProject || !resource.isLinked()) ** GOTO lbl8
        return true;
lbl-1000:
        // 1 sources

        {
            folder = (IFolder)parent;
            if (folder.isLinked()) {
                return true;
            }
            parent = folder.getParent();
lbl8:
            // 2 sources

            ** while (parent instanceof IFolder)
        }
lbl9:
        // 1 sources

        return false;
    }

    private IStatus createProblemStatus() {
        String message = PDECoreMessages.BinaryRepositoryProvider_veto;
        return new Status(4, "org.eclipse.pde.core", 0, message, null);
    }

    private IStatus createOKStatus() {
        return new Status(0, "org.eclipse.pde.core", 0, "", null);
    }

    public boolean canHandleLinkedResources() {
        return true;
    }

    public boolean canHandleLinkedResourcesURI() {
        return true;
    }

    class BinaryFileModificationValidator
    extends FileModificationValidator {
        BinaryFileModificationValidator() {
        }

        public IStatus validateEdit(IFile[] files, FileModificationValidationContext context) {
            int i = 0;
            while (i < files.length) {
                if (BinaryRepositoryProvider.this.isBinaryResource((IResource)files[i], false)) {
                    return BinaryRepositoryProvider.this.createProblemStatus();
                }
                ++i;
            }
            return BinaryRepositoryProvider.this.createOKStatus();
        }

        public IStatus validateSave(IFile file) {
            if (BinaryRepositoryProvider.this.isBinaryResource((IResource)file, false)) {
                return BinaryRepositoryProvider.this.createProblemStatus();
            }
            return BinaryRepositoryProvider.this.createOKStatus();
        }
    }

    class BinaryMoveDeleteHook
    implements IMoveDeleteHook {
        BinaryMoveDeleteHook() {
        }

        public boolean deleteFile(IResourceTree tree, IFile file, int updateFlags, IProgressMonitor monitor) {
            if (BinaryRepositoryProvider.this.isBinaryResource((IResource)file, true)) {
                tree.failed(BinaryRepositoryProvider.this.createProblemStatus());
            } else {
                tree.standardDeleteFile(file, updateFlags, monitor);
            }
            return true;
        }

        public boolean deleteFolder(IResourceTree tree, IFolder folder, int updateFlags, IProgressMonitor monitor) {
            if (BinaryRepositoryProvider.this.isBinaryResource((IResource)folder, true)) {
                tree.failed(BinaryRepositoryProvider.this.createProblemStatus());
            } else {
                tree.standardDeleteFolder(folder, updateFlags, monitor);
            }
            return true;
        }

        public boolean deleteProject(IResourceTree tree, IProject project, int updateFlags, IProgressMonitor monitor) {
            return false;
        }

        public boolean moveFile(IResourceTree tree, IFile source, IFile destination, int updateFlags, IProgressMonitor monitor) {
            if (BinaryRepositoryProvider.this.isBinaryResource((IResource)source, false)) {
                tree.failed(BinaryRepositoryProvider.this.createProblemStatus());
            } else {
                tree.standardMoveFile(source, destination, updateFlags, monitor);
            }
            return true;
        }

        public boolean moveFolder(IResourceTree tree, IFolder source, IFolder destination, int updateFlags, IProgressMonitor monitor) {
            if (BinaryRepositoryProvider.this.isBinaryResource((IResource)source, false)) {
                tree.failed(BinaryRepositoryProvider.this.createProblemStatus());
            } else {
                tree.standardMoveFolder(source, destination, updateFlags, monitor);
            }
            return true;
        }

        public boolean moveProject(IResourceTree tree, IProject source, IProjectDescription description, int updateFlags, IProgressMonitor monitor) {
            return false;
        }
    }
}

