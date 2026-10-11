/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.Hash;

public interface IHashFunction {
    public Hash computeHash(CharSequence var1);
}

