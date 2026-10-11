/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.PatternSearchJob;

public class SubTypeSearchJob
extends PatternSearchJob {
    SimpleSet indexes = new SimpleSet(5);

    public SubTypeSearchJob(SearchPattern pattern, SearchParticipant participant, IJavaSearchScope scope, IndexQueryRequestor requestor) {
        super(pattern, participant, scope, requestor);
    }

    public void finished() {
        Object[] values = this.indexes.values;
        int i = 0;
        int l = values.length;
        while (i < l) {
            if (values[i] != null) {
                ((Index)values[i]).stopQuery();
            }
            ++i;
        }
    }

    public Index[] getIndexes(IProgressMonitor progressMonitor) {
        if (this.indexes.elementSize == 0) {
            return super.getIndexes(progressMonitor);
        }
        this.areIndexesReady = true;
        Object[] values = new Index[this.indexes.elementSize];
        this.indexes.asArray(values);
        return values;
    }

    public boolean search(Index index, IProgressMonitor progressMonitor) {
        if (index == null) {
            return true;
        }
        if (this.indexes.addIfNotIncluded(index) == index) {
            index.startQuery();
        }
        return super.search(index, progressMonitor);
    }
}

