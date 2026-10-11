/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizerDelegate
 */
package org.eclipse.sphinx.emf.internal.model;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.sphinx.emf.internal.metamodel.InternalMetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.internal.model.IModelDescriptorSyncRequest;
import org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizerDelegate;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicModelDescriptorSynchronizerDelegate
extends AbstractResourceSynchronizerDelegate<IModelDescriptorSyncRequest> {
    public void handleProjectRenamed(int eventType, IProject oldProject, IProject newProject) {
        if (eventType == 1) {
            ((IModelDescriptorSyncRequest)this.syncRequest).addProjectToMoveModelDescriptorsFor(oldProject, newProject);
        }
    }

    public void handleFileAdded(int eventType, IFile file) {
        if (eventType == 1) {
            ((IModelDescriptorSyncRequest)this.syncRequest).addFileToAddModelDescriptorFor(file);
        }
    }

    public void handleProjectClosed(int eventType, IProject project) {
        if (eventType == 1) {
            ((IModelDescriptorSyncRequest)this.syncRequest).addProjectToRemoveModelDescriptorsFor(project);
        }
    }

    public void handleProjectRemoved(int eventType, IProject project) {
        if (eventType == 1) {
            ((IModelDescriptorSyncRequest)this.syncRequest).addProjectToRemoveModelDescriptorsFor(project);
        }
    }

    public void handleFileChanged(int eventType, IFile file) {
        if (eventType == 1) {
            InternalMetaModelDescriptorRegistry.INSTANCE.removeCachedDescriptor(file);
            ((IModelDescriptorSyncRequest)this.syncRequest).addFileToUpdateModelDescriptorFor(file);
        }
    }

    public void handleFileMoved(int eventType, IFile oldFile, IFile newFile) {
        if (eventType == 1) {
            InternalMetaModelDescriptorRegistry.INSTANCE.moveCachedDescriptor(oldFile, newFile);
            ((IModelDescriptorSyncRequest)this.syncRequest).addFileToRemoveModelDescriptorFor(oldFile);
            ((IModelDescriptorSyncRequest)this.syncRequest).addFileToAddModelDescriptorFor(newFile);
        }
    }

    public void handleFileRemoved(int eventType, IFile file) {
        if (eventType == 1) {
            InternalMetaModelDescriptorRegistry.INSTANCE.removeCachedDescriptor(file);
            ((IModelDescriptorSyncRequest)this.syncRequest).addFileToRemoveModelDescriptorFor(file);
        }
    }
}

