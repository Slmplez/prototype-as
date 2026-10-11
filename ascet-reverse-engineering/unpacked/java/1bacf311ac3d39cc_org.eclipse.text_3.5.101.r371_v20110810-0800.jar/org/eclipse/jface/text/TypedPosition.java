/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;

public class TypedPosition
extends Position {
    private String fType;

    public TypedPosition(int offset, int length, String type) {
        super(offset, length);
        this.fType = type;
    }

    public TypedPosition(ITypedRegion region) {
        super(region.getOffset(), region.getLength());
        this.fType = region.getType();
    }

    public String getType() {
        return this.fType;
    }

    public boolean equals(Object o) {
        if (o instanceof TypedPosition && super.equals(o)) {
            TypedPosition p = (TypedPosition)o;
            return this.fType == null && p.getType() == null || this.fType.equals(p.getType());
        }
        return false;
    }

    public int hashCode() {
        int type = this.fType == null ? 0 : this.fType.hashCode();
        return super.hashCode() | type;
    }

    public String toString() {
        return String.valueOf(this.fType) + " - " + super.toString();
    }
}

