/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;
import java.util.RandomAccess;
import java.util.Set;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CollectionUtils {
    public static int hashCode(Object[] objects) {
        if (objects == null) {
            return 0;
        }
        int result = 1;
        int idx = objects.length;
        while (--idx >= 0) {
            Object object = objects[idx];
            result = 17 * result + (object == null ? 0 : object.hashCode());
        }
        return result;
    }

    public static <T> List<T> emptyList() {
        return Collections.EMPTY_LIST;
    }

    public static <T> Set<T> emptySet() {
        return Collections.EMPTY_SET;
    }

    public static <K, V> Map<K, V> emptyMap() {
        return Collections.EMPTY_MAP;
    }

    public static <T> List<T> unmodifiableList(T[] array) {
        return array == null || array.length == 0 ? CollectionUtils.emptyList() : new UnmodifiableArrayList<T>(array);
    }

    public static Map<String, String> loadProperties(InputStream stream) throws IOException {
        Properties properties = new Properties();
        properties.load(stream);
        return CollectionUtils.toMap(properties);
    }

    public static Map<String, String> toMap(Properties properties) {
        if (properties == null || properties.isEmpty()) {
            return CollectionUtils.emptyMap();
        }
        HashMap<String, String> props = new HashMap<String, String>(properties.size());
        CollectionUtils.putAll(properties, props);
        return props;
    }

    public static void putAll(Properties properties, Map<String, String> result) {
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            String key = (String)keys.nextElement();
            result.put(key, properties.getProperty(key));
        }
    }

    public static void storeProperties(Map<String, String> properties, OutputStream stream, String comment) throws IOException {
        Properties props = new Properties();
        props.putAll(properties);
        props.store(stream, comment);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class UnmodifiableArrayList<E>
    extends AbstractList<E>
    implements RandomAccess,
    Serializable {
        private static final long serialVersionUID = 7435304230643855579L;
        final E[] array;

        UnmodifiableArrayList(E[] array) {
            this.array = array;
        }

        @Override
        public boolean contains(Object o) {
            return this.indexOf(o) != -1;
        }

        @Override
        public E get(int index) {
            return this.array[index];
        }

        @Override
        public int indexOf(Object o) {
            int size = this.array.length;
            if (o == null) {
                int i = 0;
                while (i < size) {
                    if (this.array[i] == null) {
                        return i;
                    }
                    ++i;
                }
            } else {
                int i = 0;
                while (i < size) {
                    if (o.equals(this.array[i])) {
                        return i;
                    }
                    ++i;
                }
            }
            return -1;
        }

        @Override
        public Iterator<E> iterator() {
            return this.listIterator();
        }

        @Override
        public ListIterator<E> listIterator() {
            return new ListIterator<E>(){
                private int index = 0;

                @Override
                public boolean hasNext() {
                    return this.index < UnmodifiableArrayList.this.array.length;
                }

                @Override
                public E next() {
                    if (this.index >= UnmodifiableArrayList.this.array.length) {
                        throw new NoSuchElementException();
                    }
                    return UnmodifiableArrayList.this.array[this.index++];
                }

                @Override
                public boolean hasPrevious() {
                    return this.index > 0;
                }

                @Override
                public E previous() {
                    if (--this.index < 0) {
                        ++this.index;
                        throw new NoSuchElementException();
                    }
                    return UnmodifiableArrayList.this.array[this.index];
                }

                @Override
                public int nextIndex() {
                    return this.index;
                }

                @Override
                public int previousIndex() {
                    return this.index - 1;
                }

                @Override
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override
                public void set(E e) {
                    throw new UnsupportedOperationException();
                }

                @Override
                public void add(E e) {
                    throw new UnsupportedOperationException();
                }
            };
        }

        /*
         * Unable to fully structure code
         */
        @Override
        public int lastIndexOf(Object o) {
            block2: {
                idx = this.array.length;
                if (o != null) ** GOTO lbl9
                while (--idx >= 0) {
                    if (this.array[idx] != null) continue;
                    return idx;
                }
                break block2;
lbl-1000:
                // 1 sources

                {
                    if (!o.equals(this.array[idx])) continue;
                    return idx;
lbl9:
                    // 2 sources

                    ** while (--idx >= 0)
                }
            }
            return -1;
        }

        @Override
        public E set(int index, E element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.array.length;
        }

        @Override
        public Object[] toArray() {
            return (Object[])this.array.clone();
        }

        @Override
        public <T> T[] toArray(T[] a) {
            int size = this.array.length;
            if (a.length < size) {
                a = (Object[])Array.newInstance(a.getClass().getComponentType(), size);
            }
            System.arraycopy(this.array, 0, a, 0, size);
            while (size < a.length) {
                a[size++] = null;
            }
            return a;
        }
    }
}

