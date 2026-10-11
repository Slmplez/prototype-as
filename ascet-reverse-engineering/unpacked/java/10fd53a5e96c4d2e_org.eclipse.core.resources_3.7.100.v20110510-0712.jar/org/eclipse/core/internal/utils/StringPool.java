/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

import java.util.HashMap;

public final class StringPool {
    private int savings;
    private final HashMap<String, String> map = new HashMap();

    public String add(String string) {
        if (string == null) {
            return string;
        }
        String result = this.map.get(string);
        if (result != null) {
            if (result != string) {
                this.savings += 44 + 2 * string.length();
            }
            return result;
        }
        this.map.put(string, string);
        return string;
    }

    public int getSavedStringCount() {
        return this.savings;
    }
}

