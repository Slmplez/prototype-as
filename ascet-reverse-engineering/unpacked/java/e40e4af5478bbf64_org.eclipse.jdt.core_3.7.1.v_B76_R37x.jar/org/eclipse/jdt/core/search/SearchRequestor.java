/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;

public abstract class SearchRequestor {
    public abstract void acceptSearchMatch(SearchMatch var1) throws CoreException;

    public void beginReporting() {
    }

    public void endReporting() {
    }

    public void enterParticipant(SearchParticipant participant) {
    }

    public void exitParticipant(SearchParticipant participant) {
    }
}

