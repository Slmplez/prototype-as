/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;

public abstract class SearchParticipant {
    private IPath lastIndexLocation;

    protected SearchParticipant() {
    }

    public void beginSearching() {
    }

    public void doneSearching() {
    }

    public String getDescription() {
        return "Search participant";
    }

    public abstract SearchDocument getDocument(String var1);

    public abstract void indexDocument(SearchDocument var1, IPath var2);

    public abstract void locateMatches(SearchDocument[] var1, SearchPattern var2, IJavaSearchScope var3, SearchRequestor var4, IProgressMonitor var5) throws CoreException;

    public void removeIndex(IPath indexLocation) {
        IndexManager manager = JavaModelManager.getIndexManager();
        manager.removeIndexPath(indexLocation);
    }

    public final void scheduleDocumentIndexing(SearchDocument document, IPath indexLocation) {
        Path documentPath = new Path(document.getPath());
        Object file = JavaModel.getTarget((IPath)documentPath, true);
        Path containerPath = documentPath;
        if (file instanceof IResource) {
            containerPath = ((IResource)file).getProject().getFullPath();
        } else if (file == null) {
            containerPath = documentPath.removeLastSegments(1);
        }
        IndexManager manager = JavaModelManager.getIndexManager();
        manager.ensureIndexExists(indexLocation, (IPath)containerPath);
        manager.scheduleDocumentIndexing(document, (IPath)containerPath, indexLocation, this);
        if (!indexLocation.equals((Object)this.lastIndexLocation)) {
            manager.updateParticipant(indexLocation, (IPath)containerPath);
            this.lastIndexLocation = indexLocation;
        }
    }

    public abstract IPath[] selectIndexes(SearchPattern var1, IJavaSearchScope var2);
}

