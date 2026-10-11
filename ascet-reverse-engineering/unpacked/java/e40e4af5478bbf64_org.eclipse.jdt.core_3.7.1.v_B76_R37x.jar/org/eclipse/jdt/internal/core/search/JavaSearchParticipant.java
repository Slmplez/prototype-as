/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.search.IndexSelector;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.search.indexing.BinaryIndexer;
import org.eclipse.jdt.internal.core.search.indexing.SourceIndexer;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;

public class JavaSearchParticipant
extends SearchParticipant {
    private ThreadLocal indexSelector = new ThreadLocal();

    public void beginSearching() {
        super.beginSearching();
        this.indexSelector.set(null);
    }

    public void doneSearching() {
        this.indexSelector.set(null);
        super.doneSearching();
    }

    public String getDescription() {
        return "Java";
    }

    public SearchDocument getDocument(String documentPath) {
        return new JavaSearchDocument(documentPath, this);
    }

    public void indexDocument(SearchDocument document, IPath indexPath) {
        document.removeAllIndexEntries();
        String documentPath = document.getPath();
        if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(documentPath)) {
            new SourceIndexer(document).indexDocument();
        } else if (Util.isClassFileName(documentPath)) {
            new BinaryIndexer(document).indexDocument();
        }
    }

    public void locateMatches(SearchDocument[] indexMatches, SearchPattern pattern, IJavaSearchScope scope, SearchRequestor requestor, IProgressMonitor monitor) throws CoreException {
        MatchLocator matchLocator = new MatchLocator(pattern, requestor, scope, monitor);
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        matchLocator.locateMatches(indexMatches);
    }

    public IPath[] selectIndexes(SearchPattern pattern, IJavaSearchScope scope) {
        IndexSelector selector = (IndexSelector)this.indexSelector.get();
        if (selector == null) {
            selector = new IndexSelector(scope, pattern);
            this.indexSelector.set(selector);
        }
        return selector.getIndexLocations();
    }
}

