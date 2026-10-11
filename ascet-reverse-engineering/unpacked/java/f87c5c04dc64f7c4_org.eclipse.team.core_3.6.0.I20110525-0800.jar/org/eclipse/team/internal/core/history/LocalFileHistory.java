/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFileState
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.history;

import java.util.ArrayList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.history.provider.FileHistory;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.history.LocalFileRevision;

public class LocalFileHistory
extends FileHistory {
    protected IFile file;
    protected IFileRevision[] revisions;
    private final boolean includeCurrent;

    public LocalFileHistory(IFile file, boolean includeCurrent) {
        this.file = file;
        this.includeCurrent = includeCurrent;
    }

    public IFileRevision[] getContributors(IFileRevision revision) {
        IFileRevision[] revisions = this.getFileRevisions();
        IFileRevision fileRevision = null;
        int i = 0;
        while (i < revisions.length) {
            if (((LocalFileRevision)revisions[i]).isPredecessorOf(revision)) {
                if (fileRevision == null) {
                    fileRevision = revisions[i];
                }
                if (fileRevision != null && revisions[i].getTimestamp() > fileRevision.getTimestamp()) {
                    fileRevision = revisions[i];
                }
            }
            ++i;
        }
        if (fileRevision == null) {
            return new IFileRevision[0];
        }
        return new IFileRevision[]{fileRevision};
    }

    public IFileRevision getFileRevision(String id) {
        if (this.revisions != null) {
            int i = 0;
            while (i < this.revisions.length) {
                IFileRevision revision = this.revisions[i];
                if (revision.getContentIdentifier().equals(id)) {
                    return revision;
                }
                ++i;
            }
        }
        return null;
    }

    public IFileRevision[] getFileRevisions() {
        if (this.revisions == null) {
            return new IFileRevision[0];
        }
        return this.revisions;
    }

    public IFileRevision[] getTargets(IFileRevision revision) {
        IFileRevision[] revisions = this.getFileRevisions();
        ArrayList<IFileRevision> directDescendents = new ArrayList<IFileRevision>();
        int i = 0;
        while (i < revisions.length) {
            if (((LocalFileRevision)revisions[i]).isDescendentOf(revision)) {
                directDescendents.add(revisions[i]);
            }
            ++i;
        }
        return directDescendents.toArray(new IFileRevision[directDescendents.size()]);
    }

    public void refresh(IProgressMonitor monitor) throws TeamException {
        monitor.beginTask(Messages.LocalFileHistory_RefreshLocalHistory, 300);
        try {
            try {
                LocalFileRevision currentRevision = this.includeRevisionForFile() ? new LocalFileRevision(this.file) : null;
                IFileState[] fileStates = this.file.getHistory(monitor);
                int numRevisions = fileStates.length + (currentRevision != null ? 1 : 0);
                this.revisions = new LocalFileRevision[numRevisions];
                int i = 0;
                while (i < fileStates.length) {
                    this.revisions[i] = new LocalFileRevision(fileStates[i]);
                    ++i;
                }
                if (currentRevision != null) {
                    this.revisions[fileStates.length] = currentRevision;
                }
            }
            catch (CoreException e) {
                throw TeamException.asTeamException(e);
            }
        }
        finally {
            monitor.done();
        }
    }

    private boolean includeRevisionForFile() {
        return this.file.exists() && this.includeCurrent;
    }
}

