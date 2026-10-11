/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest
 */
package org.eclipse.sphinx.emf.internal.model;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest;

public interface IModelDescriptorSyncRequest
extends IResourceSyncRequest {
    public void addProjectToMoveModelDescriptorsFor(IProject var1, IProject var2);

    public void addProjectToRemoveModelDescriptorsFor(IProject var1);

    public void addFileToAddModelDescriptorFor(IFile var1);

    public void addFileToRemoveModelDescriptorFor(IFile var1);

    public void addFileToUpdateModelDescriptorFor(IFile var1);
}

