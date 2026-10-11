/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;

public class LocalVariableReferenceMatch
extends SearchMatch {
    private boolean isReadAccess;
    private boolean isWriteAccess;

    public LocalVariableReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, boolean isReadAccess, boolean isWriteAccess, boolean insideDocComment, SearchParticipant participant, IResource resource) {
        super(enclosingElement, accuracy, offset, length, participant, resource);
        this.isReadAccess = isReadAccess;
        this.isWriteAccess = isWriteAccess;
        this.setInsideDocComment(insideDocComment);
    }

    public final boolean isReadAccess() {
        return this.isReadAccess;
    }

    public final boolean isWriteAccess() {
        return this.isWriteAccess;
    }
}

