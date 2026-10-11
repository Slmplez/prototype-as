/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.internal.text.revisions;

import org.eclipse.core.runtime.Assert;

public final class Hunk {
    public final int line;
    public final int delta;
    public final int changed;

    public Hunk(int line, int delta, int changed) {
        Assert.isLegal((line >= 0 ? 1 : 0) != 0);
        Assert.isLegal((changed >= 0 ? 1 : 0) != 0);
        this.line = line;
        this.delta = delta;
        this.changed = changed;
    }

    public String toString() {
        return "Hunk [" + this.line + ">" + this.changed + (this.delta < 0 ? "-" : "+") + Math.abs(this.delta) + "]";
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.changed;
        result = 31 * result + this.delta;
        result = 31 * result + this.line;
        return result;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Hunk) {
            Hunk other = (Hunk)obj;
            return other.line == this.line && other.delta == this.delta && other.changed == this.changed;
        }
        return false;
    }
}

