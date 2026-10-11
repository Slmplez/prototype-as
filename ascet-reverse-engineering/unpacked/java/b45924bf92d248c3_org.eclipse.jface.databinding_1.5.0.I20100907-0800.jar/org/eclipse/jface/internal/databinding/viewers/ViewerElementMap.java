/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.IElementComparer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementMap;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementWrapper;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.IElementComparer;

public class ViewerElementMap
implements Map {
    private Map wrappedMap;
    private IElementComparer comparer;

    public ViewerElementMap(IElementComparer comparer) {
        Assert.isNotNull((Object)comparer);
        this.wrappedMap = new HashMap();
        this.comparer = comparer;
    }

    public ViewerElementMap(Map map, IElementComparer comparer) {
        this(comparer);
        Assert.isNotNull((Object)map);
        this.putAll(map);
    }

    public void clear() {
        this.wrappedMap.clear();
    }

    public boolean containsKey(Object key) {
        return this.wrappedMap.containsKey(new ViewerElementWrapper(key, this.comparer));
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
                                return ((ViewerElementWrapper)this.val$wrappedEntry.getKey()).unwrap();
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
                                return ViewerElementMap.access$0(1.access$0(2.access$0(this.this$2))).equals(this.getKey(), that.getKey()) && Util.equals((Object)this.getValue(), that.getValue());
                            }

                            public int hashCode() {
                                return this.val$wrappedEntry.hashCode();
                            }
                        };
                    }

                    public void remove() {
                        this.val$wrappedIterator.remove();
                    }

                    static /* synthetic */ 1 access$0(2 var0) {
                        return var0.this$1;
                    }
                };
            }

            public boolean remove(Object o) {
                Map.Entry unwrappedEntry = (Map.Entry)o;
                ViewerElementWrapper wrappedKey = new ViewerElementWrapper(unwrappedEntry.getKey(), ViewerElementMap.this.comparer);
                Map.Entry wrappedEntry = new Map.Entry(this, wrappedKey, unwrappedEntry){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ ViewerElementWrapper val$wrappedKey;
                    private final /* synthetic */ Map.Entry val$unwrappedEntry;
                    {
                        this.this$1 = var1_1;
                        this.val$wrappedKey = viewerElementWrapper;
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
                        return Util.equals((Object)this.val$wrappedKey, that.getKey()) && Util.equals((Object)this.getValue(), that.getValue());
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

            static /* synthetic */ ViewerElementMap access$0(1 var0) {
                return var0.ViewerElementMap.this;
            }
        };
    }

    public Object get(Object key) {
        return this.wrappedMap.get(new ViewerElementWrapper(key, this.comparer));
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
                return wrappedKeySet.contains(new ViewerElementWrapper(o, ViewerElementMap.this.comparer));
            }

            public boolean containsAll(Collection c) {
                Iterator iterator = c.iterator();
                while (iterator.hasNext()) {
                    if (wrappedKeySet.contains(new ViewerElementWrapper(iterator.next(), ViewerElementMap.this.comparer))) continue;
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
                        return ((ViewerElementWrapper)this.val$wrappedIterator.next()).unwrap();
                    }

                    public void remove() {
                        this.val$wrappedIterator.remove();
                    }
                };
            }

            public boolean remove(Object o) {
                return wrappedKeySet.remove(new ViewerElementWrapper(o, ViewerElementMap.this.comparer));
            }

            public boolean removeAll(Collection c) {
                boolean changed = false;
                Iterator iterator = c.iterator();
                while (iterator.hasNext()) {
                    changed |= wrappedKeySet.remove(new ViewerElementWrapper(iterator.next(), ViewerElementMap.this.comparer));
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
                        if (ViewerElementMap.this.comparer.equals(element, toRetain[i])) continue block0;
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
                ViewerElementWrapper[] wrappedArray = wrappedKeySet.toArray(new ViewerElementWrapper[size]);
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
        return this.wrappedMap.put(new ViewerElementWrapper(key, this.comparer), value);
    }

    public void putAll(Map other) {
        Iterator iterator = other.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            this.wrappedMap.put(new ViewerElementWrapper(entry.getKey(), this.comparer), entry.getValue());
        }
    }

    public Object remove(Object key) {
        return this.wrappedMap.remove(new ViewerElementWrapper(key, this.comparer));
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

    public static Map withComparer(IElementComparer comparer) {
        if (comparer == null) {
            return new HashMap();
        }
        return new ViewerElementMap(comparer);
    }
}

