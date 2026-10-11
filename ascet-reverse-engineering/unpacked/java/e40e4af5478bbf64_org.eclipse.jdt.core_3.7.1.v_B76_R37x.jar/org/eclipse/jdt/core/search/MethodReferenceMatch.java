/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.search.ReferenceMatch;
import org.eclipse.jdt.core.search.SearchParticipant;

public class MethodReferenceMatch
extends ReferenceMatch {
    private boolean constructor;
    private boolean synthetic;
    private boolean superInvocation;

    public MethodReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, boolean insideDocComment, SearchParticipant participant, IResource resource) {
        super(enclosingElement, accuracy, offset, length, insideDocComment, participant, resource);
    }

    public MethodReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, boolean constructor, boolean synthetic, boolean insideDocComment, SearchParticipant participant, IResource resource) {
        this(enclosingElement, accuracy, offset, length, insideDocComment, participant, resource);
        this.constructor = constructor;
        this.synthetic = synthetic;
    }

    public MethodReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, boolean constructor, boolean synthetic, boolean superInvocation, boolean insideDocComment, SearchParticipant participant, IResource resource) {
        this(enclosingElement, accuracy, offset, length, constructor, synthetic, insideDocComment, participant, resource);
        this.superInvocation = superInvocation;
    }

    public final boolean isConstructor() {
        return this.constructor;
    }

    public final boolean isSynthetic() {
        return this.synthetic;
    }

    public boolean isSuperInvocation() {
        return this.superInvocation;
    }
}

