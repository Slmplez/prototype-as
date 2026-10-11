/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.internal.texteditor.rulers;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;

public final class DAG {
    private final MultiMap fOut = new MultiMap();
    private final MultiMap fIn = new MultiMap();

    public boolean addEdge(Object origin, Object target) {
        Assert.isLegal((origin != null ? 1 : 0) != 0);
        Assert.isLegal((target != null ? 1 : 0) != 0);
        if (this.hasPath(target, origin)) {
            return false;
        }
        this.fOut.put(origin, target);
        this.fOut.put(target, null);
        this.fIn.put(target, origin);
        this.fIn.put(origin, null);
        return true;
    }

    public void addVertex(Object vertex) {
        Assert.isLegal((vertex != null ? 1 : 0) != 0);
        this.fOut.put(vertex, null);
        this.fIn.put(vertex, null);
    }

    public void removeVertex(Object vertex) {
        Set targets = this.fOut.removeAll(vertex);
        Iterator it = targets.iterator();
        while (it.hasNext()) {
            this.fIn.remove(it.next(), vertex);
        }
        Set origins = this.fIn.removeAll(vertex);
        Iterator it2 = origins.iterator();
        while (it2.hasNext()) {
            this.fOut.remove(it2.next(), vertex);
        }
    }

    public Set getSources() {
        return this.computeZeroEdgeVertices(this.fIn);
    }

    public Set getSinks() {
        return this.computeZeroEdgeVertices(this.fOut);
    }

    private Set computeZeroEdgeVertices(MultiMap map) {
        Set candidates = map.keySet();
        LinkedHashSet roots = new LinkedHashSet(candidates.size());
        Iterator it = candidates.iterator();
        while (it.hasNext()) {
            Object candidate = it.next();
            if (!map.get(candidate).isEmpty()) continue;
            roots.add(candidate);
        }
        return roots;
    }

    public Set getChildren(Object vertex) {
        return Collections.unmodifiableSet(this.fOut.get(vertex));
    }

    private boolean hasPath(Object start, Object end) {
        if (start == end) {
            return true;
        }
        Set children = this.fOut.get(start);
        Iterator it = children.iterator();
        while (it.hasNext()) {
            if (!this.hasPath(it.next(), end)) continue;
            return true;
        }
        return false;
    }

    public String toString() {
        return "Out: " + this.fOut.toString() + " In: " + this.fIn.toString();
    }

    private static final class MultiMap {
        private final Map fMap = new LinkedHashMap();

        private MultiMap() {
        }

        public void put(Object key, Object val) {
            LinkedHashSet<Object> values = (LinkedHashSet<Object>)this.fMap.get(key);
            if (values == null) {
                values = new LinkedHashSet<Object>();
                this.fMap.put(key, values);
            }
            if (val != null) {
                values.add(val);
            }
        }

        public Set get(Object key) {
            Set values = (Set)this.fMap.get(key);
            return values == null ? Collections.EMPTY_SET : values;
        }

        public Set keySet() {
            return this.fMap.keySet();
        }

        public Set removeAll(Object key) {
            Set values = (Set)this.fMap.remove(key);
            return values == null ? Collections.EMPTY_SET : values;
        }

        public void remove(Object key, Object val) {
            Set values = (Set)this.fMap.get(key);
            if (values != null) {
                values.remove(val);
            }
        }

        public String toString() {
            return this.fMap.toString();
        }
    }
}

