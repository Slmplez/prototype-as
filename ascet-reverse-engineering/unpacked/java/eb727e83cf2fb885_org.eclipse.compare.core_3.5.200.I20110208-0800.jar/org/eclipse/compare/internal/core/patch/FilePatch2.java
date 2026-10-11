/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.compare.internal.core.patch;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.compare.internal.core.patch.DiffProject;
import org.eclipse.compare.internal.core.patch.FileDiffResult;
import org.eclipse.compare.internal.core.patch.Hunk;
import org.eclipse.compare.patch.IFilePatch2;
import org.eclipse.compare.patch.IFilePatchResult;
import org.eclipse.compare.patch.IHunk;
import org.eclipse.compare.patch.PatchConfiguration;
import org.eclipse.compare.patch.ReaderCreator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;

public class FilePatch2
implements IFilePatch2 {
    public static final int ADDITION = 1;
    public static final int DELETION = 2;
    public static final int CHANGE = 3;
    private IPath fOldPath;
    private IPath fNewPath;
    private long oldDate;
    private long newDate;
    private List fHunks = new ArrayList();
    private DiffProject fProject;
    private String header;
    private int addedLines;
    private int removedLines;

    public FilePatch2(IPath oldPath, long oldDate, IPath newPath, long newDate) {
        this.fOldPath = oldPath;
        this.oldDate = oldDate;
        this.fNewPath = newPath;
        this.newDate = newDate;
    }

    public DiffProject getProject() {
        return this.fProject;
    }

    void setProject(DiffProject diffProject) {
        if (this.fProject == diffProject) {
            return;
        }
        if (this.fProject != null) {
            this.fProject.remove(this);
        }
        this.fProject = diffProject;
    }

    public IPath getPath(boolean reverse) {
        if (this.getDiffType(reverse) == 1) {
            if (reverse) {
                return this.fOldPath;
            }
            return this.fNewPath;
        }
        if (reverse && this.fNewPath != null) {
            return this.fNewPath;
        }
        if (this.fOldPath != null) {
            return this.fOldPath;
        }
        return this.fNewPath;
    }

    public void add(Hunk hunk) {
        this.fHunks.add(hunk);
        hunk.setParent(this);
    }

    protected void remove(Hunk hunk) {
        this.fHunks.remove(hunk);
    }

    public IHunk[] getHunks() {
        return this.fHunks.toArray(new IHunk[this.fHunks.size()]);
    }

    public int getHunkCount() {
        return this.fHunks.size();
    }

    public int getDiffType(boolean reverse) {
        if (this.fHunks.size() == 1) {
            boolean add = false;
            boolean delete = false;
            Iterator iter = this.fHunks.iterator();
            while (iter.hasNext()) {
                Hunk hunk = (Hunk)iter.next();
                int type = hunk.getHunkType(reverse);
                if (type == 1) {
                    add = true;
                    continue;
                }
                if (type != 2) continue;
                delete = true;
            }
            if (add && !delete) {
                return 1;
            }
            if (!add && delete) {
                return 2;
            }
        }
        return 3;
    }

    public IPath getStrippedPath(int strip, boolean reverse) {
        IPath path = this.getPath(reverse);
        if (strip > 0 && strip < path.segmentCount()) {
            path = path.removeFirstSegments(strip);
        }
        return path;
    }

    public int segmentCount() {
        int length = 99;
        if (this.fOldPath != null) {
            length = Math.min(length, this.fOldPath.segmentCount());
        }
        if (this.fNewPath != null) {
            length = Math.min(length, this.fNewPath.segmentCount());
        }
        return length;
    }

    public IFilePatchResult apply(ReaderCreator content, PatchConfiguration configuration, IProgressMonitor monitor) {
        FileDiffResult result = new FileDiffResult(this, configuration);
        result.refresh(content, monitor);
        return result;
    }

    public IPath getTargetPath(PatchConfiguration configuration) {
        return this.getStrippedPath(configuration.getPrefixSegmentStripCount(), configuration.isReversed());
    }

    public FilePatch2 asRelativeDiff() {
        if (this.fProject == null) {
            return this;
        }
        IPath adjustedOldPath = null;
        if (this.fOldPath != null) {
            adjustedOldPath = new Path(null, this.fProject.getName()).append(this.fOldPath);
        }
        IPath adjustedNewPath = null;
        if (this.fNewPath != null) {
            adjustedNewPath = new Path(null, this.fProject.getName()).append(this.fNewPath);
        }
        FilePatch2 diff = this.create(adjustedOldPath, 0L, adjustedNewPath, 0L);
        Iterator iterator = this.fHunks.iterator();
        while (iterator.hasNext()) {
            Hunk hunk = (Hunk)iterator.next();
            new Hunk(diff, hunk);
        }
        return diff;
    }

    protected FilePatch2 create(IPath oldPath, long oldDate, IPath newPath, long newDate) {
        return new FilePatch2(oldPath, oldDate, newPath, newDate);
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getHeader() {
        return this.header;
    }

    public long getBeforeDate() {
        return this.oldDate;
    }

    public long getAfterDate() {
        return this.newDate;
    }

    public void setAddedLines(int addedLines) {
        this.addedLines = addedLines;
    }

    public void setRemovedLines(int removedLines) {
        this.removedLines = removedLines;
    }

    public int getAddedLines() {
        return this.addedLines;
    }

    public int getRemovedLines() {
        return this.removedLines;
    }
}

