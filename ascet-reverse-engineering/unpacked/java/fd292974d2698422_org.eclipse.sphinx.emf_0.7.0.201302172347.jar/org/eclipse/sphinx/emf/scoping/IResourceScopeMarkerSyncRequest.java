/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest
 */
package org.eclipse.sphinx.emf.scoping;

import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest;

public interface IResourceScopeMarkerSyncRequest
extends IResourceSyncRequest {
    public void addFileToClean(IFile var1);

    public void addFileToValidate(IFile var1);
}

