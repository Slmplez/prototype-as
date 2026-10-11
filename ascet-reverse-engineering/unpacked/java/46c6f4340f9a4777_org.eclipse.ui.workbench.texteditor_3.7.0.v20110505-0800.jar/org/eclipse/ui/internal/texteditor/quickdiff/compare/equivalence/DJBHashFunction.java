/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.Hash;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.IHashFunction;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.IntHash;

public final class DJBHashFunction
implements IHashFunction {
    public Hash computeHash(CharSequence string) {
        return new IntHash(this.hash(string));
    }

    private int hash(CharSequence seq) {
        int hash = 5381;
        int len = seq.length();
        int i = 0;
        while (i < len) {
            char ch = seq.charAt(i);
            hash = (hash << 5) + hash + ch;
            ++i;
        }
        return hash;
    }
}

