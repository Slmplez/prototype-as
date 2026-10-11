/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys.formatting;

import org.eclipse.jface.bindings.keys.formatting.EmacsKeyFormatter;
import org.eclipse.jface.bindings.keys.formatting.FormalKeyFormatter;
import org.eclipse.jface.bindings.keys.formatting.IKeyFormatter;

public final class KeyFormatterFactory {
    private static final IKeyFormatter FORMAL_KEY_FORMATTER = new FormalKeyFormatter();
    private static final IKeyFormatter EMACS_KEY_FORMATTER = new EmacsKeyFormatter();
    private static IKeyFormatter defaultKeyFormatter = FORMAL_KEY_FORMATTER;

    public static final IKeyFormatter getDefault() {
        return defaultKeyFormatter;
    }

    public static final IKeyFormatter getEmacsKeyFormatter() {
        return EMACS_KEY_FORMATTER;
    }

    public static final IKeyFormatter getFormalKeyFormatter() {
        return FORMAL_KEY_FORMATTER;
    }

    public static final void setDefault(IKeyFormatter defaultKeyFormatter) {
        if (defaultKeyFormatter == null) {
            throw new NullPointerException();
        }
        KeyFormatterFactory.defaultKeyFormatter = defaultKeyFormatter;
    }

    private KeyFormatterFactory() {
    }
}

