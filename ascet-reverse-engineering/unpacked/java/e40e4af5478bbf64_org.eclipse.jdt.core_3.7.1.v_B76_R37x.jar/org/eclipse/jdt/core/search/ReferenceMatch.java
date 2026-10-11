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

public abstract class ReferenceMatch
extends SearchMatch {
    IJavaElement localElement;

    public ReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, boolean insideDocComment, SearchParticipant participant, IResource resource) {
        super(enclosingElement, accuracy, offset, length, participant, resource);
        this.setInsideDocComment(insideDocComment);
    }

    public final IJavaElement getLocalElement() {
        return this.localElement;
    }

    public final void setLocalElement(IJavaElement element) {
        this.localElement = element;
    }
}

