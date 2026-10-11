/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.ITypedRegion
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.jface.text.ITypedRegion;

public class DirtyRegion
implements ITypedRegion {
    public static final String INSERT = "__insert";
    public static final String REMOVE = "__remove";
    private int fOffset;
    private int fLength;
    private String fType;
    private String fText;

    public DirtyRegion(int offset, int length, String type, String text) {
        this.fOffset = offset;
        this.fLength = length;
        this.fType = this.normalizeTypeValue(type);
        this.fText = text;
    }

    private String normalizeTypeValue(String type) {
        if (INSERT.equals(type)) {
            return INSERT;
        }
        if (REMOVE.equals(type)) {
            return REMOVE;
        }
        return null;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public String getType() {
        return this.fType;
    }

    public String getText() {
        return this.fText;
    }

    void mergeWith(DirtyRegion dr) {
        int start = Math.min(this.fOffset, dr.fOffset);
        int end = Math.max(this.fOffset + this.fLength, dr.fOffset + dr.fLength);
        this.fOffset = start;
        this.fLength = end - start;
        this.fText = dr.fText == null ? this.fText : (this.fText == null ? dr.fText : String.valueOf(this.fText) + dr.fText);
    }
}

