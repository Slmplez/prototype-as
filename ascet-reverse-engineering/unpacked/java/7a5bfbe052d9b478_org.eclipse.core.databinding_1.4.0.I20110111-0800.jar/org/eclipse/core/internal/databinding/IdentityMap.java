/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.databinding.IdentityMap;
import org.eclipse.core.internal.databinding.IdentityWrapper;
import org.eclipse.core.internal.databinding.Util;
import org.eclipse.core.runtime.Assert;

public class IdentityMap
implements Map {
    private Map wrappedMap = new HashMap();

    public IdentityMap() {
    }

    public IdentityMap(Map map) {
        this();
        Assert.isNotNull((Object)map);
        this.putAll(map);
    }

    public void clear() {
        this.wrappedMap.clear();
    }

    public boolean containsKey(Object key) {
        return this.wrappedMap.containsKey(IdentityWrapper.wrap(key));
    }

    public boolean containsValue(Object value) {
        return this.wrappedMap.containsValue(value);
    }

    public Set entrySet() {
        final Set wrappedEntrySet = this.wrappedMap.entrySet();
        return new Set(){

            public boolean add(Object o) {
                throw new UnsupportedOperationException();
            }

            public boolean addAll(Collection c) {
                throw new UnsupportedOperationException();
            }

            public void clear() {
                wrappedEntrySet.clear();
            }

            public boolean contains(Object o) {
                Iterator iterator = this.iterator();
                while (iterator.hasNext()) {
                    if (!iterator.next().equals(o)) continue;
                    return true;
                }
                return false;
            }

            public boolean containsAll(Collection c) {
                Iterator iterator = c.iterator();
                while (iterator.hasNext()) {
                    if (this.contains(iterator.next())) continue;
                    return false;
                }
                return true;
            }

            public boolean isEmpty() {
                return wrappedEntrySet.isEmpty();
            }

            public Iterator iterator() {
                Iterator wrappedIterator = wrappedEntrySet.iterator();
                return new Iterator(this, wrappedIterator){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ Iterator val$wrappedIterator;
                    {
                        this.this$1 = var1_1;
                        this.val$wrappedIterator = iterator;
                    }

                    public boolean hasNext() {
                        return this.val$wrappedIterator.hasNext();
                    }

                    public Object next() {
                        Map.Entry wrappedEntry = (Map.Entry)this.val$wrappedIterator.next();
                        return new Map.Entry(this, wrappedEntry){
                            final /* synthetic */ 2 this$2;
                            private final /* synthetic */ Map.Entry val$wrappedEntry;
                            {
                                this.this$2 = var1_1;
                                this.val$wrappedEntry = entry;
                            }

                            public Object getKey() {
                                return ((IdentityWrapper)this.val$wrappedEntry.getKey()).unwrap();
                            }

                            public Object getValue() {
                                return this.val$wrappedEntry.getValue();
                            }

                            public Object setValue(Object value) {
                                return this.val$wrappedEntry.setValue(value);
                            }

                            public boolean equals(Object obj) {
                                if (obj == this) {
                                    return true;
                                }
                                if (obj == null || !(obj instanceof Map.Entry)) {
                                    return false;
                                }
                                Map.Entry that = (Map.Entry)obj;
                                return this.getKey() == that.getKey() && Util.equals(this.getValue(), that.getValue());
                            }

                            public int hashCode() {
                                return this.val$wrappedEntry.hashCode();
                            }
                        };
                    }

                    public void remove() {
                        this.val$wrappedIterator.remove();
                    }
                };
            }

            public boolean remove(Object o) {
                Map.Entry unwrappedEntry = (Map.Entry)o;
                IdentityWrapper wrappedKey = IdentityWrapper.wrap(unwrappedEntry.getKey());
                Map.Entry wrappedEntry = new Map.Entry(this, wrappedKey, unwrappedEntry){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ IdentityWrapper val$wrappedKey;
                    private final /* synthetic */ Map.Entry val$unwrappedEntry;
                    {
                        this.this$1 = var1_1;
                        this.val$wrappedKey = identityWrapper;
                        this.val$unwrappedEntry = entry;
                    }

                    public Object getKey() {
                        return this.val$wrappedKey;
                    }

                    public Object getValue() {
                        return this.val$unwrappedEntry.getValue();
                    }

                    public Object setValue(Object value) {
                        throw new UnsupportedOperationException();
                    }

                    public boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (obj == null || !(obj instanceof Map.Entry)) {
                            return false;
                        }
                        Map.Entry that = (Map.Entry)obj;
                        return Util.equals(this.val$wrappedKey, that.getKey()) && Util.equals(this.getValue(), that.getValue());
                    }

                    public int hashCode() {
                        return this.val$wrappedKey.hashCode() ^ (this.getValue() == null ? 0 : this.getValue().hashCode());
                    }
                };
                return wrappedEntrySet.remove(wrappedEntry);
            }

            public boolean removeAll(Collection c) {
                boolean changed = false;
                Iterator iterator = c.iterator();
                while (iterator.hasNext()) {
                    changed |= this.remove(iterator.next());
                }
                return changed;
            }

            public boolean retainAll(Collection c) {
                boolean changed = false;
                Object[] toRetain = c.toArray();
                Iterator iterator = this.iterator();
                block0: while (iterator.hasNext()) {
                    Object entry = iterator.next();
                    int i = 0;
                    while (i < toRetain.length) {
                        if (entry.equals(toRetain[i])) continue block0;
                        ++i;
                    }
                    iterator.remove();
                    changed = true;
                }
                return changed;
            }

            public int size() {
                return wrappedEntrySet.size();
            }

            public Object[] toArray() {
                return this.toArray(new Object[this.size()]);
            }

            public Object[] toArray(Object[] a) {
                int size = this.size();
                if (a.length < size) {
                    a = (Object[])Array.newInstance(a.getClass().getComponentType(), size);
                }
                int i = 0;
                Iterator iterator = this.iterator();
                while (iterator.hasNext()) {
                    a[i] = iterator.next();
                    ++i;
                }
                return a;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj == null || !(obj instanceof Set)) {
                    return false;
                }
                Set that = (Set)obj;
                return this.size() == that.size() && this.containsAll((Collection)that);
            }

            public int hashCode() {
                return wrappedEntrySet.hashCode();
            }
        };
    }

    public Object get(Object key) {
        return this.wrappedMap.get(IdentityWrapper.wrap(key));
    }

    public boolean isEmpty() {
        return this.wrappedMap.isEmpty();
    }

    public Set keySet() {
        final Set wrappedKeySet = this.wrappedMap.keySet();
        return new Set(){

            public boolean add(Object o) {
                throw new UnsupportedOperationException();
            }

            public boolean addAll(Collection c) {
                throw new UnsupportedOperationException();
            }

            public void clear() {
                wrappedKeySet.clear();
            }

            public boolean contains(Object o) {
                return wrappedKeySet.contains(IdentityWrapper.wrap(o));
            }

            public boolean containsAll(Collection c) {
                Iterator iterator = c.iterator();
                while (iterator.hasNext()) {
                    if (wrappedKeySet.contains(IdentityWrapper.wrap(iterator.next()))) continue;
                    return false;
                }
                return true;
            }

            public boolean isEmpty() {
                return wrappedKeySet.isEmpty();
            }

            public Iterator iterator() {
                Iterator wrappedIterator = wrappedKeySet.iterator();
                return new Iterator(this, wrappedIterator){
                    final /* synthetic */ 5 this$1;
                    private final /* synthetic */ Iterator val$wrappedIterator;
                    {
                        this.this$1 = var1_1;
                        this.val$wrappedIterator = iterator;
                    }

                    public boolean hasNext() {
                        return this.val$wrappedIterator.hasNext();
                    }

                    public Object next() {
                        return ((IdentityWrapper)this.val$wrappedIterator.next()).unwrap();
                    }

                    public void remove() {
                        this.val$wrappedIterator.remove();
                    }
                };
            }

            public boolean remove(Object o) {
                return wrappedKeySet.remove(IdentityWrapper.wrap(o));
            }

            public boolean removeAll(Collection c) {
                boolean changed = false;
                Iterator iterator = c.iterator();
                while (iterator.hasNext()) {
                    changed |= wrappedKeySet.remove(IdentityWrapper.wrap(iterator.next()));
                }
                return changed;
            }

            public boolean retainAll(Collection c) {
                boolean changed = false;
                Object[] toRetain = c.toArray();
                Iterator iterator = this.iterator();
                block0: while (iterator.hasNext()) {
                    Object element = iterator.next();
                    int i = 0;
                    while (i < toRetain.length) {
                        if (element == toRetain[i]) continue block0;
                        ++i;
                    }
                    this.remove(element);
                    changed = true;
                }
                return changed;
            }

            public int size() {
                return wrappedKeySet.size();
            }

            public Object[] toArray() {
                return this.toArray(new Object[wrappedKeySet.size()]);
            }

            public Object[] toArray(Object[] a) {
                int size = wrappedKeySet.size();
                IdentityWrapper[] wrappedArray = wrappedKeySet.toArray(new IdentityWrapper[size]);
                Object[] result = a;
                if (a.length < size) {
                    result = (Object[])Array.newInstance(a.getClass().getComponentType(), size);
                }
                int i = 0;
                while (i < size) {
                    result[i] = wrappedArray[i].unwrap();
                    ++i;
                }
                return result;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj == null || !(obj instanceof Set)) {
                    return false;
                }
                Set that = (Set)obj;
                return this.size() == that.size() && this.containsAll((Collection)that);
            }

            public int hashCode() {
                return wrappedKeySet.hashCode();
            }
        };
    }

    public Object put(Object key, Object value) {
        return this.wrappedMap.put(IdentityWrapper.wrap(key), value);
    }

    public void putAll(Map other) {
        Iterator iterator = other.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            this.wrappedMap.put(IdentityWrapper.wrap(entry.getKey()), entry.getValue());
        }
    }

    public Object remove(Object key) {
        return this.wrappedMap.remove(IdentityWrapper.wrap(key));
    }

    public int size() {
        return this.wrappedMap.size();
    }

    public Collection values() {
        return this.wrappedMap.values();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof Map)) {
            return false;
        }
        Map that = (Map)obj;
        return this.entrySet().equals(that.entrySet());
    }

    public int hashCode() {
        return this.wrappedMap.hashCode();
    }
}

