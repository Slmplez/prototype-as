/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.amd.core.util.AbstractAmdItem
 */
package com.etas.ascet.importer.a2a;

import com.etas.amd.core.util.AbstractAmdItem;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class ConvertedComponentCollector {
    protected Map<String, AbstractAmdItem> compHash = new HashMap<String, AbstractAmdItem>();

    public boolean contains(String packagePath) {
        return this.compHash.containsKey(packagePath);
    }

    public AbstractAmdItem get(String packagePath) {
        return this.compHash.get(packagePath);
    }

    public Set<String> getAllReferences() {
        return this.compHash.keySet();
    }

    public void put(String packagePath, AbstractAmdItem comp) {
        this.compHash.put(packagePath, comp);
    }

    public int getSize() {
        return this.compHash.size();
    }
}

