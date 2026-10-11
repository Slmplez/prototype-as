/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.compare.internal.core.patch;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.compare.internal.core.ComparePlugin;
import org.eclipse.compare.internal.core.Messages;
import org.eclipse.compare.internal.core.patch.FilePatch2;
import org.eclipse.compare.internal.core.patch.Hunk;
import org.eclipse.compare.internal.core.patch.HunkResult;
import org.eclipse.compare.internal.core.patch.LineReader;
import org.eclipse.compare.internal.core.patch.Utilities;
import org.eclipse.compare.patch.IFilePatchResult;
import org.eclipse.compare.patch.IHunk;
import org.eclipse.compare.patch.PatchConfiguration;
import org.eclipse.compare.patch.ReaderCreator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.osgi.util.NLS;

public class FileDiffResult
implements IFilePatchResult {
    private FilePatch2 fDiff;
    private boolean fMatches = false;
    private boolean fDiffProblem;
    private String fErrorMessage;
    private Map fHunkResults = new HashMap();
    private List fBeforeLines;
    private List fAfterLines;
    private final PatchConfiguration configuration;
    private String charset;

    public FileDiffResult(FilePatch2 diff, PatchConfiguration configuration) {
        this.fDiff = diff;
        this.configuration = configuration;
    }

    public PatchConfiguration getConfiguration() {
        return this.configuration;
    }

    public boolean canApplyHunk(Hunk hunk) {
        HunkResult result = this.getHunkResult(hunk);
        return result.isOK() && !this.fDiffProblem;
    }

    public void refresh(ReaderCreator content, IProgressMonitor monitor) {
        HunkResult result;
        Hunk hunk;
        int i;
        IHunk[] hunks;
        this.fMatches = false;
        this.fDiffProblem = false;
        boolean create = false;
        this.charset = Utilities.getCharset(content);
        boolean exists = this.targetExists(content);
        if (this.fDiff.getDiffType(this.getConfiguration().isReversed()) == 1) {
            if ((!exists || this.isEmpty(content)) && this.canCreateTarget(content)) {
                this.fMatches = true;
            } else {
                this.fDiffProblem = true;
                this.fErrorMessage = Messages.FileDiffResult_0;
            }
            create = true;
        } else if (exists) {
            this.fMatches = true;
        } else {
            this.fDiffProblem = true;
            this.fErrorMessage = Messages.FileDiffResult_1;
        }
        if (this.fDiffProblem) {
            this.fBeforeLines = new ArrayList(this.getLines(content, false));
            this.fAfterLines = this.fMatches ? new ArrayList() : this.fBeforeLines;
            hunks = this.fDiff.getHunks();
            i = 0;
            while (i < hunks.length) {
                hunk = (Hunk)hunks[i];
                hunk.setCharset(this.getCharset());
                result = this.getHunkResult(hunk);
                result.setMatches(false);
                ++i;
            }
        } else {
            this.patch(this.getLines(content, create), monitor);
        }
        if (this.containsProblems() && this.fMatches) {
            this.fMatches = false;
            hunks = this.fDiff.getHunks();
            i = 0;
            while (i < hunks.length) {
                hunk = (Hunk)hunks[i];
                result = this.getHunkResult(hunk);
                if (result.isOK()) {
                    this.fMatches = true;
                    break;
                }
                ++i;
            }
        }
    }

    protected boolean canCreateTarget(ReaderCreator content) {
        return true;
    }

    protected boolean targetExists(ReaderCreator content) {
        return content != null && content.canCreateReader();
    }

    protected List getLines(ReaderCreator content, boolean create) {
        List lines = LineReader.load(content, create);
        return lines;
    }

    protected boolean isEmpty(ReaderCreator content) {
        if (content == null) {
            return true;
        }
        return LineReader.load(content, false).isEmpty();
    }

    public void patch(List lines, IProgressMonitor monitor) {
        this.fBeforeLines = new ArrayList();
        this.fBeforeLines.addAll(lines);
        if (this.getConfiguration().getFuzz() != 0) {
            this.calculateFuzz(this.fBeforeLines, monitor);
        }
        int shift = 0;
        IHunk[] hunks = this.fDiff.getHunks();
        int i = 0;
        while (i < hunks.length) {
            Hunk hunk = (Hunk)hunks[i];
            hunk.setCharset(this.getCharset());
            HunkResult result = this.getHunkResult(hunk);
            result.setShift(shift);
            if (result.patch(lines)) {
                shift = result.getShift();
            }
            ++i;
        }
        this.fAfterLines = lines;
    }

    public boolean getDiffProblem() {
        return this.fDiffProblem;
    }

    public boolean containsProblems() {
        if (this.fDiffProblem) {
            return true;
        }
        Iterator iterator = this.fHunkResults.values().iterator();
        while (iterator.hasNext()) {
            HunkResult result = (HunkResult)iterator.next();
            if (result.isOK()) continue;
            return true;
        }
        return false;
    }

    public String getLabel() {
        String label = this.getTargetPath().toString();
        if (this.fDiffProblem) {
            return NLS.bind((String)Messages.FileDiffResult_2, (Object[])new String[]{label, this.fErrorMessage});
        }
        return label;
    }

    public boolean hasMatches() {
        return this.fMatches;
    }

    public List getLines() {
        return this.fAfterLines;
    }

    public int calculateFuzz(List lines, IProgressMonitor monitor) {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        this.fBeforeLines = new ArrayList(lines);
        if (this.fDiff.getDiffType(this.getConfiguration().isReversed()) == 1) {
            return -1;
        }
        int shift = 0;
        int highestFuzz = -1;
        String name = this.getTargetPath() != null ? this.getTargetPath().lastSegment() : "";
        IHunk[] hunks = this.fDiff.getHunks();
        int j = 0;
        while (j < hunks.length) {
            Hunk h = (Hunk)hunks[j];
            monitor.subTask(NLS.bind((String)Messages.FileDiffResult_3, (Object[])new String[]{name, Integer.toString(j + 1)}));
            HunkResult result = this.getHunkResult(h);
            result.setShift(shift);
            int fuzz = result.calculateFuzz(lines, monitor);
            shift = result.getShift();
            if (fuzz > highestFuzz) {
                highestFuzz = fuzz;
            }
            monitor.worked(1);
            ++j;
        }
        this.fAfterLines = lines;
        return highestFuzz;
    }

    public IPath getTargetPath() {
        return this.fDiff.getStrippedPath(this.getConfiguration().getPrefixSegmentStripCount(), this.getConfiguration().isReversed());
    }

    private HunkResult getHunkResult(Hunk hunk) {
        HunkResult result = (HunkResult)this.fHunkResults.get(hunk);
        if (result == null) {
            result = new HunkResult(this, hunk);
            this.fHunkResults.put(hunk, result);
        }
        return result;
    }

    public List getFailedHunks() {
        ArrayList<Hunk> failedHunks = new ArrayList<Hunk>();
        IHunk[] hunks = this.fDiff.getHunks();
        int i = 0;
        while (i < hunks.length) {
            HunkResult result = (HunkResult)this.fHunkResults.get(hunks[i]);
            if (result != null && !result.isOK()) {
                failedHunks.add(result.getHunk());
            }
            ++i;
        }
        return failedHunks;
    }

    public FilePatch2 getDiff() {
        return this.fDiff;
    }

    public List getBeforeLines() {
        return this.fBeforeLines;
    }

    public List getAfterLines() {
        return this.fAfterLines;
    }

    public HunkResult[] getHunkResults() {
        ArrayList<HunkResult> results = new ArrayList<HunkResult>();
        IHunk[] hunks = this.fDiff.getHunks();
        int i = 0;
        while (i < hunks.length) {
            HunkResult result = (HunkResult)this.fHunkResults.get(hunks[i]);
            if (result != null) {
                results.add(result);
            }
            ++i;
        }
        return results.toArray(new HunkResult[results.size()]);
    }

    public InputStream getOriginalContents() {
        String contents = LineReader.createString(this.isPreserveLineDelimeters(), this.getBeforeLines());
        return FileDiffResult.asInputStream(contents, this.getCharset());
    }

    public InputStream getPatchedContents() {
        String contents = LineReader.createString(this.isPreserveLineDelimeters(), this.getLines());
        return FileDiffResult.asInputStream(contents, this.getCharset());
    }

    public String getCharset() {
        return this.charset;
    }

    public boolean isPreserveLineDelimeters() {
        return false;
    }

    public IHunk[] getRejects() {
        List failedHunks = this.getFailedHunks();
        return failedHunks.toArray(new IHunk[failedHunks.size()]);
    }

    public boolean hasRejects() {
        return this.getFailedHunks().size() > 0;
    }

    public static InputStream asInputStream(String contents, String charSet) {
        byte[] bytes = null;
        if (charSet != null) {
            try {
                bytes = contents.getBytes(charSet);
            }
            catch (UnsupportedEncodingException e) {
                ComparePlugin.log(e);
            }
        }
        if (bytes == null) {
            bytes = contents.getBytes();
        }
        return new ByteArrayInputStream(bytes);
    }
}

