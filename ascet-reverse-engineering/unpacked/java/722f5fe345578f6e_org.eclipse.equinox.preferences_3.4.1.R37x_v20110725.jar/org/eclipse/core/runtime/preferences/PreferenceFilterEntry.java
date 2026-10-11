/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.preferences;

public final class PreferenceFilterEntry {
    private String key;
    private String matchType;

    public PreferenceFilterEntry(String key) {
        if (key == null || key.length() == 0) {
            throw new IllegalArgumentException();
        }
        this.key = key;
    }

    public PreferenceFilterEntry(String key, String matchType) {
        this(key);
        this.matchType = matchType;
    }

    public String getKey() {
        return this.key;
    }

    public String getMatchType() {
        return this.matchType;
    }
}

