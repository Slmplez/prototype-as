/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.Hash;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.IHashFunction;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.IntHash;

public class SystemHashFunction
implements IHashFunction {
    public Hash computeHash(CharSequence seq) {
        return new IntHash(seq.toString().hashCode());
    }
}

