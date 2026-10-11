/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.Hash;

public final class IntHash
extends Hash {
    private final int fHash;

    public IntHash(int hash) {
        this.fHash = hash;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IntHash) {
            return this.fHash == ((IntHash)obj).fHash;
        }
        return false;
    }

    public int hashCode() {
        return this.fHash;
    }
}

