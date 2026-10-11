/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;

public abstract class IntersectingPattern
extends JavaSearchPattern {
    public IntersectingPattern(int patternKind, int matchRule) {
        super(patternKind, matchRule);
    }

    public void findIndexMatches(Index index, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor progressMonitor) throws IOException {
        if (progressMonitor != null && progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        this.resetQuery();
        SimpleSet intersectedNames = null;
        try {
            index.startQuery();
            do {
                SearchPattern pattern;
                EntryResult[] entries;
                if ((entries = (pattern = this.currentPattern()).queryIn(index)) == null) {
                    return;
                }
                SearchPattern decodedResult = pattern.getBlankPattern();
                SimpleSet newIntersectedNames = new SimpleSet(3);
                int i = 0;
                int l = entries.length;
                while (i < l) {
                    if (progressMonitor != null && progressMonitor.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    EntryResult entry = entries[i];
                    decodedResult.decodeIndexKey(entry.getWord());
                    if (pattern.matchesDecodedKey(decodedResult)) {
                        int n;
                        int j;
                        String[] names = entry.getDocumentNames(index);
                        if (intersectedNames != null) {
                            j = 0;
                            n = names.length;
                            while (j < n) {
                                if (intersectedNames.includes(names[j])) {
                                    newIntersectedNames.add(names[j]);
                                }
                                ++j;
                            }
                        } else {
                            j = 0;
                            n = names.length;
                            while (j < n) {
                                newIntersectedNames.add(names[j]);
                                ++j;
                            }
                        }
                    }
                    ++i;
                }
                if (newIntersectedNames.elementSize == 0) {
                    return;
                }
                intersectedNames = newIntersectedNames;
            } while (this.hasNextQuery());
        }
        finally {
            index.stopQuery();
        }
        String containerPath = index.containerPath;
        char separator = index.separator;
        Object[] names = intersectedNames.values;
        int i = 0;
        int l = names.length;
        while (i < l) {
            if (names[i] != null) {
                this.acceptMatch((String)names[i], containerPath, separator, null, requestor, participant, scope, progressMonitor);
            }
            ++i;
        }
    }

    protected abstract boolean hasNextQuery();

    protected abstract void resetQuery();
}

