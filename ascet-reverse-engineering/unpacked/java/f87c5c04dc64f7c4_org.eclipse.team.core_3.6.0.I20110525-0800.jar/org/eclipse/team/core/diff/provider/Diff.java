/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.core.diff.provider;

import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.internal.core.mapping.SyncInfoToDiffConverter;

public abstract class Diff
implements IDiff {
    public static final int KIND_MASK = 255;
    private final IPath path;
    private final int status;

    protected Diff(IPath path, int status) {
        this.path = path;
        this.status = status;
    }

    public IPath getPath() {
        return this.path;
    }

    public int getKind() {
        return this.getStatus() & 0xFF;
    }

    public final int getStatus() {
        return this.status;
    }

    public String toDiffString() {
        int kind = this.getKind();
        String label = SyncInfoToDiffConverter.diffKindToString(kind);
        return label;
    }

    public int hashCode() {
        return this.getPath().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Diff) {
            Diff other = (Diff)obj;
            return other.getPath().equals((Object)this.getPath()) && this.getStatus() == other.getStatus();
        }
        return false;
    }
}

