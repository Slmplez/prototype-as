/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.keys;

import org.eclipse.ui.keys.Key;
import org.eclipse.ui.keys.KeySequence;
import org.eclipse.ui.keys.KeyStroke;

public interface IKeyFormatter {
    public String format(Key var1);

    public String format(KeySequence var1);

    public String format(KeyStroke var1);
}

