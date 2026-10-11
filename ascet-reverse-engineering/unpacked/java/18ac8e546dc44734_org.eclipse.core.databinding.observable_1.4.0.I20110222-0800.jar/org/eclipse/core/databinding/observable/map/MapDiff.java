/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.internal.databinding.observable.Util;

public abstract class MapDiff
implements IDiff {
    public boolean isEmpty() {
        return this.getAddedKeys().isEmpty() && this.getRemovedKeys().isEmpty() && this.getChangedKeys().isEmpty();
    }

    public void applyTo(Map map) {
        Object key;
        Iterator it = this.getAddedKeys().iterator();
        while (it.hasNext()) {
            key = it.next();
            map.put(key, this.getNewValue(key));
        }
        it = this.getChangedKeys().iterator();
        while (it.hasNext()) {
            key = it.next();
            map.put(key, this.getNewValue(key));
        }
        it = this.getRemovedKeys().iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
    }

    public Map simulateOn(Map map) {
        return new DeltaMap(map, this);
    }

    public abstract Set getAddedKeys();

    public abstract Set getRemovedKeys();

    public abstract Set getChangedKeys();

    public abstract Object getOldValue(Object var1);

    public abstract Object getNewValue(Object var1);

    private static abstract class AbstractMapEntry
    implements Map.Entry {
        private AbstractMapEntry() {
        }

        public Object setValue(Object arg0) {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry that = (Map.Entry)obj;
            return Util.equals(this.getKey(), that.getKey()) && Util.equals(this.getValue(), that.getValue());
        }

        public int hashCode() {
            Object key = this.getKey();
            Object value = this.getValue();
            return this.hash(key) ^ this.hash(value);
        }

        private int hash(Object key) {
            return key == null ? 0 : key.hashCode();
        }
    }

    private static class DeltaMap
    extends AbstractMap {
        private final Map map;
        private final MapDiff diff;
        private Set entrySet;

        public DeltaMap(Map map, MapDiff diff) {
            this.map = map;
            this.diff = diff;
        }

        public void clear() {
            throw new UnsupportedOperationException();
        }

        public boolean containsKey(Object key) {
            return this.diff.getAddedKeys().contains(key) || this.map.containsKey(key) && !this.diff.getRemovedKeys().contains(key);
        }

        public Set entrySet() {
            if (this.entrySet == null) {
                this.entrySet = new DeltaMapEntrySet(this.map, this.diff);
            }
            return this.entrySet;
        }

        public Object get(Object key) {
            if (this.diff.getAddedKeys().contains(key)) {
                return this.diff.getNewValue(key);
            }
            if (this.diff.getChangedKeys().contains(key)) {
                return this.diff.getNewValue(key);
            }
            if (this.diff.getRemovedKeys().contains(key)) {
                return null;
            }
            return this.map.get(key);
        }

        public Object put(Object arg0, Object arg1) {
            throw new UnsupportedOperationException();
        }

        public void putAll(Map arg0) {
            throw new UnsupportedOperationException();
        }

        public Object remove(Object key) {
            throw new UnsupportedOperationException();
        }
    }

    private static class DeltaMapEntry
    extends AbstractMapEntry {
        private final Object key;
        private final MapDiff diff;

        public DeltaMapEntry(Object key, MapDiff diff) {
            this.key = key;
            this.diff = diff;
        }

        public Object getKey() {
            return this.key;
        }

        public Object getValue() {
            return this.diff.getNewValue(this.key);
        }
    }

    private static class DeltaMapEntrySet
    extends AbstractSet {
        private final Map map;
        private final MapDiff diff;

        public DeltaMapEntrySet(Map map, MapDiff diff) {
            this.map = map;
            this.diff = diff;
        }

        public Iterator iterator() {
            return new Iterator(this){
                Iterator origEntries;
                Iterator addedKeys;
                boolean haveNext;
                Map.Entry next;
                final /* synthetic */ DeltaMapEntrySet this$1;
                {
                    this.this$1 = deltaMapEntrySet;
                    this.origEntries = DeltaMapEntrySet.access$0(deltaMapEntrySet).entrySet().iterator();
                    this.addedKeys = DeltaMapEntrySet.access$1(deltaMapEntrySet).getAddedKeys().iterator();
                    this.haveNext = false;
                }

                public boolean hasNext() {
                    return this.findNext();
                }

                public Object next() {
                    if (!this.findNext()) {
                        throw new NoSuchElementException();
                    }
                    Map.Entry myNext = this.next;
                    this.haveNext = false;
                    this.next = null;
                    return myNext;
                }

                private boolean findNext() {
                    Map.Entry candidateEntry;
                    block4: {
                        Object candidateKey;
                        if (this.haveNext) {
                            return true;
                        }
                        while (this.origEntries.hasNext()) {
                            candidateEntry = (Map.Entry)this.origEntries.next();
                            candidateKey = candidateEntry.getKey();
                            if (DeltaMapEntrySet.access$1(this.this$1).getRemovedKeys().contains(candidateKey)) continue;
                            candidateEntry = DeltaMapEntrySet.access$1(this.this$1).getChangedKeys().contains(candidateKey) ? new DeltaMapEntry(candidateKey, DeltaMapEntrySet.access$1(this.this$1)) : new MapEntryWrapper(candidateEntry);
                            break block4;
                        }
                        if (this.addedKeys.hasNext()) {
                            candidateKey = this.addedKeys.next();
                            candidateEntry = new DeltaMapEntry(candidateKey, DeltaMapEntrySet.access$1(this.this$1));
                        } else {
                            return false;
                        }
                    }
                    this.haveNext = true;
                    this.next = candidateEntry;
                    return true;
                }

                public void remove() {
                    throw new UnsupportedOperationException();
                }
            };
        }

        public int size() {
            return this.map.size() + this.diff.getAddedKeys().size() - this.diff.getRemovedKeys().size();
        }

        static /* synthetic */ Map access$0(DeltaMapEntrySet deltaMapEntrySet) {
            return deltaMapEntrySet.map;
        }

        static /* synthetic */ MapDiff access$1(DeltaMapEntrySet deltaMapEntrySet) {
            return deltaMapEntrySet.diff;
        }
    }

    private static class MapEntryWrapper
    extends AbstractMapEntry {
        private final Map.Entry entry;

        public MapEntryWrapper(Map.Entry entry) {
            this.entry = entry;
        }

        public Object getKey() {
            return this.entry.getKey();
        }

        public Object getValue() {
            return this.entry.getValue();
        }
    }
}

