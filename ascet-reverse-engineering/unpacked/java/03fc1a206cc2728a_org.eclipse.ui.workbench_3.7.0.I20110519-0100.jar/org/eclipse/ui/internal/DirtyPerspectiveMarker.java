/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

public class DirtyPerspectiveMarker {
    public String perspectiveId;

    public DirtyPerspectiveMarker(String id) {
        this.perspectiveId = id;
    }

    public int hashCode() {
        return this.perspectiveId.hashCode();
    }

    public boolean equals(Object o) {
        if (o instanceof DirtyPerspectiveMarker) {
            return this.perspectiveId.equals(((DirtyPerspectiveMarker)o).perspectiveId);
        }
        return false;
    }
}

