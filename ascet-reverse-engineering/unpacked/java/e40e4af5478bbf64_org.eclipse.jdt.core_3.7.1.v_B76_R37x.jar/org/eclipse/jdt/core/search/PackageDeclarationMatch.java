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

public class PackageDeclarationMatch
extends SearchMatch {
    public PackageDeclarationMatch(IJavaElement element, int accuracy, int offset, int length, SearchParticipant participant, IResource resource) {
        super(element, accuracy, offset, length, participant, resource);
    }
}

