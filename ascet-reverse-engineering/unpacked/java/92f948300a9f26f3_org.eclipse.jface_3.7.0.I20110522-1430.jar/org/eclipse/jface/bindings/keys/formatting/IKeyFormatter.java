/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys.formatting;

import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;

public interface IKeyFormatter {
    public String format(int var1);

    public String format(KeySequence var1);

    public String format(KeyStroke var1);
}

