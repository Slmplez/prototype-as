/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.search;

import java.io.EOFException;
import java.io.IOException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class PatternSearchJob
implements IJob {
    protected SearchPattern pattern;
    protected IJavaSearchScope scope;
    protected SearchParticipant participant;
    protected IndexQueryRequestor requestor;
    protected boolean areIndexesReady;
    protected long executionTime = 0L;

    public PatternSearchJob(SearchPattern pattern, SearchParticipant participant, IJavaSearchScope scope, IndexQueryRequestor requestor) {
        this.pattern = pattern;
        this.participant = participant;
        this.scope = scope;
        this.requestor = requestor;
    }

    public boolean belongsTo(String jobFamily) {
        return true;
    }

    public void cancel() {
    }

    public void ensureReadyToRun() {
        if (!this.areIndexesReady) {
            this.getIndexes(null);
        }
    }

    public boolean execute(IProgressMonitor progressMonitor) {
        if (progressMonitor != null && progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        boolean isComplete = true;
        this.executionTime = 0L;
        Index[] indexes = this.getIndexes(progressMonitor);
        try {
            int max = indexes.length;
            if (progressMonitor != null) {
                progressMonitor.beginTask("", max);
            }
            int i = 0;
            while (i < max) {
                isComplete &= this.search(indexes[i], progressMonitor);
                if (progressMonitor != null) {
                    if (progressMonitor.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    progressMonitor.worked(1);
                }
                ++i;
            }
            if (JobManager.VERBOSE) {
                Util.verbose("-> execution time: " + this.executionTime + "ms - " + this);
            }
            boolean bl = isComplete;
            return bl;
        }
        finally {
            if (progressMonitor != null) {
                progressMonitor.done();
            }
        }
    }

    public Index[] getIndexes(IProgressMonitor progressMonitor) {
        IPath[] indexLocations = this.participant.selectIndexes(this.pattern, this.scope);
        int length = indexLocations.length;
        Index[] indexes = JavaModelManager.getIndexManager().getIndexes(indexLocations, progressMonitor);
        this.areIndexesReady = indexes.length == length;
        return indexes;
    }

    public String getJobFamily() {
        return "";
    }

    public boolean search(Index index, IProgressMonitor progressMonitor) {
        if (index == null) {
            return true;
        }
        if (progressMonitor != null && progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        ReadWriteMonitor monitor = index.monitor;
        if (monitor == null) {
            return true;
        }
        try {
            monitor.enterRead();
            long start = System.currentTimeMillis();
            MatchLocator.findIndexMatches(this.pattern, index, this.requestor, this.participant, this.scope, progressMonitor);
            this.executionTime += System.currentTimeMillis() - start;
            return true;
        }
        catch (IOException e) {
            if (e instanceof EOFException) {
                e.printStackTrace();
            }
            return false;
        }
        finally {
            monitor.exitRead();
        }
    }

    public String toString() {
        return "searching " + this.pattern.toString();
    }
}

