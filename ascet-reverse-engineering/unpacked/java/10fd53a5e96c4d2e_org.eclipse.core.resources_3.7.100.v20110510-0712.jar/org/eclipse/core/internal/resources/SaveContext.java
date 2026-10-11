/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.SafeFileTable;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;

public class SaveContext
implements ISaveContext {
    protected String pluginId;
    protected int kind;
    protected boolean needDelta;
    protected boolean needSaveNumber;
    protected SafeFileTable fileTable;
    protected int previousSaveNumber;
    protected IProject project;

    protected SaveContext(String pluginId, int kind, IProject project) throws CoreException {
        this.kind = kind;
        this.project = project;
        this.pluginId = pluginId;
        this.needDelta = false;
        this.needSaveNumber = false;
        this.fileTable = new SafeFileTable(pluginId);
        this.previousSaveNumber = this.getWorkspace().getSaveManager().getSaveNumber(pluginId);
    }

    public void commit() throws CoreException {
        if (this.needSaveNumber) {
            IPath oldLocation = this.getWorkspace().getMetaArea().getSafeTableLocationFor(this.pluginId);
            this.getWorkspace().getSaveManager().setSaveNumber(this.pluginId, this.getSaveNumber());
            this.fileTable.setLocation(this.getWorkspace().getMetaArea().getSafeTableLocationFor(this.pluginId));
            this.fileTable.save();
            oldLocation.toFile().delete();
        }
    }

    public IPath[] getFiles() {
        return this.getFileTable().getFiles();
    }

    protected SafeFileTable getFileTable() {
        return this.fileTable;
    }

    public int getKind() {
        return this.kind;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public int getPreviousSaveNumber() {
        return this.previousSaveNumber;
    }

    public IProject getProject() {
        return this.project;
    }

    public int getSaveNumber() {
        int result = this.getPreviousSaveNumber() + 1;
        return result > 0 ? result : 1;
    }

    protected Workspace getWorkspace() {
        return (Workspace)ResourcesPlugin.getWorkspace();
    }

    public boolean isDeltaNeeded() {
        return this.needDelta;
    }

    public IPath lookup(IPath file) {
        return this.getFileTable().lookup(file);
    }

    public void map(IPath file, IPath location) {
        this.getFileTable().map(file, location);
    }

    public void needDelta() {
        this.needDelta = true;
    }

    public void needSaveNumber() {
        this.needSaveNumber = true;
    }
}

