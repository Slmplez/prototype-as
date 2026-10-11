/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.core.JavaElement;

public class SearchMatch {
    public static final int A_ACCURATE = 0;
    public static final int A_INACCURATE = 1;
    private Object element;
    private int length;
    private int offset;
    private int accuracy;
    private SearchParticipant participant;
    private IResource resource;
    private boolean insideDocComment = false;
    private static final int ALL_GENERIC_FLAVORS = 112;
    private int rule = 112;
    private boolean raw = false;
    private boolean implicit = false;

    public SearchMatch(IJavaElement element, int accuracy, int offset, int length, SearchParticipant participant, IResource resource) {
        this.element = element;
        this.offset = offset;
        this.length = length;
        this.accuracy = accuracy & 1;
        if (accuracy > 1) {
            int genericFlavors = accuracy & 0x70;
            if (genericFlavors > 0) {
                this.rule &= 0xFFFFFF8F;
            }
            this.rule |= accuracy & 0xFFFFFFFE;
        }
        this.participant = participant;
        this.resource = resource;
    }

    public final int getAccuracy() {
        return this.accuracy;
    }

    public final Object getElement() {
        return this.element;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final SearchParticipant getParticipant() {
        return this.participant;
    }

    public final IResource getResource() {
        return this.resource;
    }

    public final int getRule() {
        return this.rule;
    }

    public final boolean isEquivalent() {
        return this.isErasure() && (this.rule & 0x20) != 0;
    }

    public final boolean isErasure() {
        return (this.rule & 0x10) != 0;
    }

    public final boolean isExact() {
        return this.isEquivalent() && (this.rule & 0x40) != 0;
    }

    public final boolean isImplicit() {
        return this.implicit;
    }

    public final boolean isRaw() {
        return this.raw;
    }

    public final boolean isInsideDocComment() {
        return this.insideDocComment;
    }

    public final void setAccuracy(int accuracy) {
        this.accuracy = accuracy;
    }

    public final void setElement(Object element) {
        this.element = element;
    }

    public final void setInsideDocComment(boolean insideDoc) {
        this.insideDocComment = insideDoc;
    }

    public final void setImplicit(boolean implicit) {
        this.implicit = implicit;
    }

    public final void setLength(int length) {
        this.length = length;
    }

    public final void setOffset(int offset) {
        this.offset = offset;
    }

    public final void setParticipant(SearchParticipant participant) {
        this.participant = participant;
    }

    public final void setResource(IResource resource) {
        this.resource = resource;
    }

    public final void setRule(int rule) {
        this.rule = rule;
    }

    public final void setRaw(boolean raw) {
        this.raw = raw;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Search match");
        buffer.append("\n  accuracy=");
        buffer.append(this.accuracy == 0 ? "ACCURATE" : "INACCURATE");
        buffer.append("\n  rule=");
        if ((this.rule & 0x40) != 0) {
            buffer.append("EXACT");
        } else if ((this.rule & 0x20) != 0) {
            buffer.append("EQUIVALENT");
        } else if ((this.rule & 0x10) != 0) {
            buffer.append("ERASURE");
        }
        buffer.append("\n  raw=");
        buffer.append(this.raw);
        buffer.append("\n  offset=");
        buffer.append(this.offset);
        buffer.append("\n  length=");
        buffer.append(this.length);
        if (this.element != null) {
            buffer.append("\n  element=");
            buffer.append(((JavaElement)this.getElement()).toStringWithAncestors());
        }
        buffer.append("\n");
        return buffer.toString();
    }
}

