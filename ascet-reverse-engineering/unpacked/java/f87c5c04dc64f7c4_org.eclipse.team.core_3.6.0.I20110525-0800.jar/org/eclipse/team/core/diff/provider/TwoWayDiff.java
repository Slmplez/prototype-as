/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.core.diff.provider;

import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.diff.ITwoWayDiff;
import org.eclipse.team.core.diff.provider.Diff;

public class TwoWayDiff
extends Diff
implements ITwoWayDiff {
    protected static final int FLAG_MASK = 65280;

    public TwoWayDiff(IPath path, int kind, int flags) {
        super(path, kind & 0xFF | flags & 0xFFFFFF00);
    }

    public int getFlags() {
        return this.getStatus() & 0xFFFFFF00;
    }

    public IPath getToPath() {
        return null;
    }

    public IPath getFromPath() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj) && obj instanceof TwoWayDiff) {
            TwoWayDiff other = (TwoWayDiff)obj;
            return this.pathsEqual(this.getFromPath(), other.getFromPath()) && this.pathsEqual(this.getToPath(), other.getToPath());
        }
        return false;
    }

    private boolean pathsEqual(IPath path1, IPath path2) {
        if (path1 == null) {
            return path2 == null;
        }
        if (path2 == null) {
            return false;
        }
        return path1.equals((Object)path2);
    }
}

