/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys;

import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.SWTKeyLookup;

public final class KeyLookupFactory {
    private static final SWTKeyLookup SWT_KEY_LOOKUP = new SWTKeyLookup();
    private static IKeyLookup defaultLookup = SWT_KEY_LOOKUP;

    public static final IKeyLookup getSWTKeyLookup() {
        return SWT_KEY_LOOKUP;
    }

    public static final IKeyLookup getDefault() {
        return defaultLookup;
    }

    public static final void setDefault(IKeyLookup defaultLookup) {
        if (defaultLookup == null) {
            throw new NullPointerException("The look-up must not be null");
        }
        KeyLookupFactory.defaultLookup = defaultLookup;
    }

    private KeyLookupFactory() {
    }
}

