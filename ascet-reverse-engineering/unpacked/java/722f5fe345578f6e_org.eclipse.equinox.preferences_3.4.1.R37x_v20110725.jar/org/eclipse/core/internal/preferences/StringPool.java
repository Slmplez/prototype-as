/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.preferences;

import java.util.HashMap;

public final class StringPool {
    private int savings;
    private final HashMap map = new HashMap();

    public String add(String string) {
        if (string == null) {
            return string;
        }
        Object result = this.map.get(string);
        if (result != null) {
            if (result != string) {
                this.savings += 44 + 2 * string.length();
            }
            return (String)result;
        }
        this.map.put(string, string);
        return string;
    }

    public int getSavedStringCount() {
        return this.savings;
    }
}

