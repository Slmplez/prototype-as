/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Region;

public class TypedRegion
extends Region
implements ITypedRegion {
    private String fType;

    public TypedRegion(int offset, int length, String type) {
        super(offset, length);
        this.fType = type;
    }

    public String getType() {
        return this.fType;
    }

    public boolean equals(Object o) {
        if (o instanceof TypedRegion) {
            TypedRegion r = (TypedRegion)o;
            return super.equals(r) && (this.fType == null && r.getType() == null || this.fType.equals(r.getType()));
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

