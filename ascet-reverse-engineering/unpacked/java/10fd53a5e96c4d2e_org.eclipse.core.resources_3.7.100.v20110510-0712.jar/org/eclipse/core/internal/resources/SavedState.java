/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.events.ResourceDelta;
import org.eclipse.core.internal.events.ResourceDeltaFactory;
import org.eclipse.core.internal.resources.SafeFileTable;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ISavedState;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class SavedState
implements ISavedState {
    ElementTree oldTree;
    ElementTree newTree;
    SafeFileTable fileTable;
    String pluginId;
    Workspace workspace;

    SavedState(Workspace workspace, String pluginId, ElementTree oldTree, ElementTree newTree) throws CoreException {
        this.workspace = workspace;
        this.pluginId = pluginId;
        this.newTree = newTree;
        this.oldTree = oldTree;
        this.fileTable = this.restoreFileTable();
    }

    void forgetTrees() {
        this.newTree = null;
        this.oldTree = null;
        this.workspace.saveManager.clearDeltaExpiration(this.pluginId);
    }

    public int getSaveNumber() {
        return this.workspace.getSaveManager().getSaveNumber(this.pluginId);
    }

    protected SafeFileTable getFileTable() {
        return this.fileTable;
    }

    protected SafeFileTable restoreFileTable() throws CoreException {
        if (this.fileTable == null) {
            this.fileTable = new SafeFileTable(this.pluginId);
        }
        return this.fileTable;
    }

    public IPath lookup(IPath file) {
        return this.getFileTable().lookup(file);
    }

    public IPath[] getFiles() {
        return this.getFileTable().getFiles();
    }

    public void processResourceChangeEvents(IResourceChangeListener listener) {
        try {
            IWorkspaceRoot rule = this.workspace.getRoot();
            try {
                this.workspace.prepareOperation(rule, null);
                if (this.oldTree == null || this.newTree == null) {
                    return;
                }
                this.workspace.beginOperation(true);
                ResourceDelta delta = ResourceDeltaFactory.computeDelta(this.workspace, this.oldTree, this.newTree, (IPath)Path.ROOT, -1L);
                this.forgetTrees();
                this.workspace.getNotificationManager().broadcastChanges(listener, 16, delta);
            }
            finally {
                this.workspace.endOperation(rule, false, null);
            }
        }
        catch (CoreException e) {
            Policy.log(e);
        }
    }
}

