/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.io.Serializable;
import java.util.Locale;

public final class KeyWithLocale
implements Serializable {
    private static final long serialVersionUID = 8818242663547645188L;
    private final String key;
    private final Locale locale;

    public KeyWithLocale(String key, Locale locale) {
        this.key = key;
        this.locale = locale;
    }

    public String getKey() {
        return this.key;
    }

    public Locale getLocale() {
        return this.locale;
    }
}

