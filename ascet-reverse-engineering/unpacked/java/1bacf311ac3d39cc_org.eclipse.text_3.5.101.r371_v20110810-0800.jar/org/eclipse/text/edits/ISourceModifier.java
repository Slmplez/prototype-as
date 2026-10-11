/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import org.eclipse.text.edits.ReplaceEdit;

public interface ISourceModifier {
    public ReplaceEdit[] getModifications(String var1);

    public ISourceModifier copy();
}

