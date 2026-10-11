/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

public abstract class Hash
implements Cloneable {
    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException x) {
            throw new AssertionError((Object)x);
        }
    }

    public abstract boolean equals(Object var1);

    public abstract int hashCode();
}

