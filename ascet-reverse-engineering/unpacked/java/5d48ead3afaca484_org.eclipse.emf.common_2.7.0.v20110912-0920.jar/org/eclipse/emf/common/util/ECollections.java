/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ECollections {
    public static final EList<?> EMPTY_ELIST = new EmptyUnmodifiableEList();
    public static final EMap<?, ?> EMPTY_EMAP = new EmptyUnmodifiableEMap();

    private ECollections() {
    }

    public static <T> void move(List<T> list, int newPosition, T object) {
        if (list instanceof EList) {
            ((EList)list).move(newPosition, object);
        } else {
            list.remove(object);
            list.add(newPosition, object);
        }
    }

    public static <T> T move(List<T> list, int targetIndex, int sourceIndex) {
        if (list instanceof EList) {
            return (T)((EList)list).move(targetIndex, sourceIndex);
        }
        T object = list.remove(sourceIndex);
        list.add(targetIndex, object);
        return object;
    }

    public static void reverse(EList<?> list) {
        int last = list.size() - 1;
        int i = 0;
        while (i < last) {
            list.move(i, last);
            ++i;
        }
    }

    public static int indexOf(List<?> list, Object o, int fromIndex) {
        if (fromIndex < 0) {
            fromIndex = 0;
        }
        int size = list.size();
        int i = fromIndex;
        while (i < size) {
            Object element = list.get(i);
            if (o == null ? element == null : o == element || o.equals(element)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static void sort(EList<?> list) {
        Object[] listAsArray = list.toArray();
        Arrays.sort(listAsArray);
        int i = 0;
        while (i < listAsArray.length) {
            int oldIndex = ECollections.indexOf(list, listAsArray[i], i);
            if (i != oldIndex) {
                list.move(i, oldIndex);
            }
            ++i;
        }
    }

    public static <T> void sort(EList<T> list, Comparator<? super T> comparator) {
        Object[] listAsArray = list.toArray();
        Comparator<? super T> objectComparator = comparator;
        Arrays.sort(listAsArray, objectComparator);
        int i = 0;
        while (i < listAsArray.length) {
            int oldIndex = ECollections.indexOf(list, listAsArray[i], i);
            if (i != oldIndex) {
                list.move(i, oldIndex);
            }
            ++i;
        }
    }

    public static <T> void setEList(EList<T> eList, List<? extends T> prototypeList) {
        int index = 0;
        for (T prototypeObject : prototypeList) {
            if (eList.size() <= index) {
                eList.add(prototypeObject);
            } else {
                boolean done;
                do {
                    done = true;
                    Object targetObject = eList.get(index);
                    if (!(targetObject == null ? prototypeObject != null : !targetObject.equals(prototypeObject))) continue;
                    int position = ECollections.indexOf(eList, prototypeObject, index);
                    if (position != -1) {
                        int targetIndex = ECollections.indexOf(prototypeList, targetObject, index);
                        if (targetIndex == -1) {
                            eList.remove(index);
                            done = false;
                            continue;
                        }
                        if (targetIndex > position) {
                            if (eList.size() <= targetIndex) {
                                targetIndex = eList.size() - 1;
                            }
                            eList.move(targetIndex, index);
                            done = false;
                            continue;
                        }
                        eList.move(index, position);
                        continue;
                    }
                    eList.add(index, prototypeObject);
                } while (!done);
            }
            ++index;
        }
        int i = eList.size();
        while (i > index) {
            eList.remove(--i);
        }
    }

    public static <T> EList<T> unmodifiableEList(EList<? extends T> list) {
        return new UnmodifiableEList<T>(list);
    }

    public static <K, V> EMap<K, V> unmodifiableEMap(EMap<? extends K, ? extends V> map) {
        return new UnmodifiableEMap<K, V>(map);
    }

    public static <T> EList<T> emptyEList() {
        return EMPTY_ELIST;
    }

    public static <K, V> EMap<K, V> emptyEMap() {
        return EMPTY_EMAP;
    }

    public static <T> List<T> singletonEList(T o) {
        return new UnmodifiableEList<T>(Collections.singletonList(o));
    }

    public static <K, V> EMap<K, V> singletonEMap(K key, V value) {
        BasicEMap<K, V> result = new BasicEMap<K, V>(1);
        result.put(key, value);
        return new UnmodifiableEMap(result);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class BasicEmptyUnmodifiableEList<E> {
        ListIterator<E> listIterator = new ListIterator<E>(){

            @Override
            public boolean hasNext() {
                return false;
            }

            @Override
            public E next() {
                throw new NoSuchElementException();
            }

            @Override
            public boolean hasPrevious() {
                return false;
            }

            @Override
            public E previous() {
                throw new NoSuchElementException();
            }

            @Override
            public int nextIndex() {
                return 0;
            }

            @Override
            public int previousIndex() {
                return -1;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override
            public void set(E o) {
                throw new UnsupportedOperationException();
            }

            @Override
            public void add(E o) {
                throw new UnsupportedOperationException();
            }
        };

        private BasicEmptyUnmodifiableEList() {
        }

        public int size() {
            return 0;
        }

        public boolean isEmpty() {
            return true;
        }

        public boolean equals(Object o) {
            return Collections.EMPTY_LIST.equals(o);
        }

        public int hashCode() {
            return Collections.EMPTY_LIST.hashCode();
        }

        public E get(int index) {
            Collections.EMPTY_LIST.get(index);
            return null;
        }

        public boolean contains(Object o) {
            return false;
        }

        public int indexOf(Object o) {
            return -1;
        }

        public int lastIndexOf(Object o) {
            return -1;
        }

        public Iterator<E> iterator() {
            return this.listIterator;
        }

        public ListIterator<E> listIterator() {
            return this.listIterator;
        }

        public ListIterator<E> listIterator(int index) {
            return this.listIterator;
        }

        public List<E> subList(int fromIndex, int toIndex) {
            return Collections.emptyList().subList(fromIndex, toIndex);
        }

        public Object[] toArray() {
            return Collections.EMPTY_LIST.toArray();
        }

        public <T> T[] toArray(T[] a) {
            return Collections.emptyList().toArray(a);
        }

        public String toString() {
            return Collections.EMPTY_LIST.toString();
        }

        public boolean add(E o) {
            throw new UnsupportedOperationException();
        }

        public boolean remove(Object o) {
            throw new UnsupportedOperationException();
        }

        public boolean containsAll(Collection<?> coll) {
            return false;
        }

        public boolean addAll(Collection<? extends E> coll) {
            throw new UnsupportedOperationException();
        }

        public boolean removeAll(Collection<?> coll) {
            throw new UnsupportedOperationException();
        }

        public boolean retainAll(Collection<?> coll) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            throw new UnsupportedOperationException();
        }

        public E set(int index, E element) {
            throw new UnsupportedOperationException();
        }

        public void add(int index, E element) {
            throw new UnsupportedOperationException();
        }

        public E remove(int index) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(int index, Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public void move(int newPosition, E o) {
            throw new UnsupportedOperationException();
        }

        public E move(int newPosition, int oldPosition) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EmptyUnmodifiableEList
    extends BasicEmptyUnmodifiableEList<Object>
    implements EList<Object> {
        private EmptyUnmodifiableEList() {
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EmptyUnmodifiableEMap
    extends BasicEmptyUnmodifiableEList<Map.Entry<Object, Object>>
    implements EMap<Object, Object> {
        private EmptyUnmodifiableEMap() {
        }

        @Override
        public boolean containsKey(Object key) {
            return false;
        }

        @Override
        public boolean containsValue(Object value) {
            return false;
        }

        @Override
        public Set<Map.Entry<Object, Object>> entrySet() {
            return Collections.emptySet();
        }

        @Override
        public Object get(Object key) {
            return null;
        }

        @Override
        public int indexOfKey(Object key) {
            return -1;
        }

        @Override
        public Set<Object> keySet() {
            return Collections.emptySet();
        }

        @Override
        public Map<Object, Object> map() {
            return Collections.emptyMap();
        }

        @Override
        public Collection<Object> values() {
            return Collections.emptyList();
        }

        @Override
        public Object put(Object key, Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(EMap<? extends Object, ? extends Object> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(Map<? extends Object, ? extends Object> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object removeKey(Object key) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class UnmodifiableEList<E>
    implements EList<E> {
        protected List<? extends E> list;

        public UnmodifiableEList(List<? extends E> list) {
            this.list = list;
        }

        @Override
        public int size() {
            return this.list.size();
        }

        @Override
        public boolean isEmpty() {
            return this.list.isEmpty();
        }

        @Override
        public boolean contains(Object o) {
            return this.list.contains(o);
        }

        @Override
        public Object[] toArray() {
            return this.list.toArray();
        }

        @Override
        public <T> T[] toArray(T[] a) {
            return this.list.toArray(a);
        }

        public String toString() {
            return this.list.toString();
        }

        @Override
        public Iterator<E> iterator() {
            return new Iterator<E>(){
                Iterator<? extends E> i;
                {
                    this.i = UnmodifiableEList.this.list.iterator();
                }

                @Override
                public boolean hasNext() {
                    return this.i.hasNext();
                }

                @Override
                public E next() {
                    return this.i.next();
                }

                @Override
                public void remove() {
                    throw new UnsupportedOperationException();
                }
            };
        }

        @Override
        public boolean add(E o) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(Object o) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean containsAll(Collection<?> coll) {
            return this.list.containsAll(coll);
        }

        @Override
        public boolean addAll(Collection<? extends E> coll) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> coll) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection<?> coll) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean equals(Object o) {
            return this.list.equals(o);
        }

        @Override
        public int hashCode() {
            return this.list.hashCode();
        }

        @Override
        public E get(int index) {
            return this.list.get(index);
        }

        @Override
        public E set(int index, E element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void add(int index, Object element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public E remove(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int indexOf(Object o) {
            return this.list.indexOf(o);
        }

        @Override
        public int lastIndexOf(Object o) {
            return this.list.lastIndexOf(o);
        }

        @Override
        public boolean addAll(int index, Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public ListIterator<E> listIterator() {
            return this.listIterator(0);
        }

        @Override
        public ListIterator<E> listIterator(int index) {
            return new ListIterator<E>(index){
                ListIterator<? extends E> i;
                {
                    this.i = UnmodifiableEList.this.list.listIterator(n);
                }

                @Override
                public boolean hasNext() {
                    return this.i.hasNext();
                }

                @Override
                public E next() {
                    return this.i.next();
                }

                @Override
                public boolean hasPrevious() {
                    return this.i.hasPrevious();
                }

                @Override
                public E previous() {
                    return this.i.previous();
                }

                @Override
                public int nextIndex() {
                    return this.i.nextIndex();
                }

                @Override
                public int previousIndex() {
                    return this.i.previousIndex();
                }

                @Override
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override
                public void set(E o) {
                    throw new UnsupportedOperationException();
                }

                @Override
                public void add(E o) {
                    throw new UnsupportedOperationException();
                }
            };
        }

        @Override
        public List<E> subList(int fromIndex, int toIndex) {
            return new UnmodifiableEList<E>(new BasicEList<E>(this.list.subList(fromIndex, toIndex)));
        }

        @Override
        public void move(int newPosition, E o) {
            throw new UnsupportedOperationException();
        }

        @Override
        public E move(int newPosition, int oldPosition) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class UnmodifiableEMap<K, V>
    extends UnmodifiableEList<Map.Entry<K, V>>
    implements EMap<K, V> {
        protected EMap<? extends K, ? extends V> eMap;

        public UnmodifiableEMap(EMap<? extends K, ? extends V> eMap) {
            super(eMap);
            this.eMap = eMap;
        }

        @Override
        public boolean containsKey(Object key) {
            return this.eMap.containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            return this.eMap.containsValue(value);
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return Collections.unmodifiableSet(this.eMap.entrySet());
        }

        @Override
        public V get(Object key) {
            return this.eMap.get(key);
        }

        @Override
        public int indexOfKey(Object key) {
            return this.eMap.indexOf(key);
        }

        @Override
        public Set<K> keySet() {
            return Collections.unmodifiableSet(this.eMap.keySet());
        }

        @Override
        public Map<K, V> map() {
            return Collections.unmodifiableMap(this.eMap.map());
        }

        @Override
        public Collection<V> values() {
            return Collections.unmodifiableCollection(this.eMap.values());
        }

        @Override
        public V put(K key, V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(EMap<? extends K, ? extends V> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V removeKey(Object key) {
            throw new UnsupportedOperationException();
        }
    }
}

