/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.themes;

import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class CascadingMap {
    private Map base;
    private Map override;

    public CascadingMap(Map base, Map override) {
        this.base = base;
        this.override = override;
    }

    public Set keySet() {
        HashSet keySet = new HashSet(this.base.keySet());
        keySet.addAll(this.override.keySet());
        return Collections.unmodifiableSet(keySet);
    }

    public Object get(Object key) {
        if (this.override.containsKey(key)) {
            return this.override.get(key);
        }
        return this.base.get(key);
    }
}

