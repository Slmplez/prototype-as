/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FeatureMap
extends EList<Entry> {
    public ValueListIterator<Object> valueListIterator();

    public ValueListIterator<Object> valueListIterator(int var1);

    public <T> EList<T> list(EStructuralFeature var1);

    public EStructuralFeature getEStructuralFeature(int var1);

    public Object getValue(int var1);

    public Object setValue(int var1, Object var2);

    public Object get(EStructuralFeature var1, boolean var2);

    public void set(EStructuralFeature var1, Object var2);

    public boolean isSet(EStructuralFeature var1);

    public void unset(EStructuralFeature var1);

    public boolean add(EStructuralFeature var1, Object var2);

    public void add(int var1, EStructuralFeature var2, Object var3);

    public boolean addAll(EStructuralFeature var1, Collection<?> var2);

    public boolean addAll(int var1, EStructuralFeature var2, Collection<?> var3);

    public static interface Entry {
        public EStructuralFeature getEStructuralFeature();

        public Object getValue();

        public static interface Internal
        extends Entry {
            public NotificationChain inverseAdd(InternalEObject var1, int var2, NotificationChain var3);

            public NotificationChain inverseRemove(InternalEObject var1, int var2, NotificationChain var3);

            public NotificationChain inverseAdd(InternalEObject var1, Object var2, int var3, NotificationChain var4);

            public NotificationChain inverseRemove(InternalEObject var1, Object var2, int var3, NotificationChain var4);

            public void validate(Object var1);

            public Internal createEntry(Object var1);

            public Internal createEntry(InternalEObject var1);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Internal
    extends FeatureMap,
    InternalEList<Entry>,
    EStructuralFeature.Setting {
        public int getModCount();

        @Override
        public EObject getEObject();

        public Object resolveProxy(EStructuralFeature var1, int var2, int var3, Object var4);

        public int size(EStructuralFeature var1);

        public boolean isEmpty(EStructuralFeature var1);

        public boolean contains(EStructuralFeature var1, Object var2);

        public boolean containsAll(EStructuralFeature var1, Collection<?> var2);

        public int indexOf(EStructuralFeature var1, Object var2);

        public int lastIndexOf(EStructuralFeature var1, Object var2);

        public Iterator<Object> iterator(EStructuralFeature var1);

        public ListIterator<Object> listIterator(EStructuralFeature var1);

        public ListIterator<Object> listIterator(EStructuralFeature var1, int var2);

        public EStructuralFeature.Setting setting(EStructuralFeature var1);

        public List<Object> basicList(EStructuralFeature var1);

        public Iterator<Object> basicIterator(EStructuralFeature var1);

        public ListIterator<Object> basicListIterator(EStructuralFeature var1);

        public ListIterator<Object> basicListIterator(EStructuralFeature var1, int var2);

        public Object[] basicToArray(EStructuralFeature var1);

        public <T> T[] basicToArray(EStructuralFeature var1, T[] var2);

        public int basicIndexOf(EStructuralFeature var1, Object var2);

        public int basicLastIndexOf(EStructuralFeature var1, Object var2);

        public boolean basicContains(EStructuralFeature var1, Object var2);

        public boolean basicContainsAll(EStructuralFeature var1, Collection<?> var2);

        public Object[] toArray(EStructuralFeature var1);

        public <T> T[] toArray(EStructuralFeature var1, T[] var2);

        public void add(EStructuralFeature var1, int var2, Object var3);

        public boolean addAll(EStructuralFeature var1, int var2, Collection<?> var3);

        public void addUnique(EStructuralFeature var1, Object var2);

        public void addUnique(EStructuralFeature var1, int var2, Object var3);

        @Override
        public boolean addAllUnique(Collection<? extends Entry> var1);

        @Override
        public void addUnique(Entry.Internal var1);

        public boolean addAllUnique(Entry.Internal[] var1, int var2, int var3);

        public boolean addAllUnique(int var1, Entry.Internal[] var2, int var3, int var4);

        public NotificationChain basicAdd(EStructuralFeature var1, Object var2, NotificationChain var3);

        public boolean remove(EStructuralFeature var1, Object var2);

        public Object remove(EStructuralFeature var1, int var2);

        public boolean removeAll(EStructuralFeature var1, Collection<?> var2);

        public NotificationChain basicRemove(EStructuralFeature var1, Object var2, NotificationChain var3);

        public boolean retainAll(EStructuralFeature var1, Collection<?> var2);

        public void clear(EStructuralFeature var1);

        public void move(EStructuralFeature var1, int var2, Object var3);

        public Object move(EStructuralFeature var1, int var2, int var3);

        public Object get(EStructuralFeature var1, int var2, boolean var3);

        public Object set(EStructuralFeature var1, int var2, Object var3);

        public Object setUnique(EStructuralFeature var1, int var2, Object var3);

        public Wrapper getWrapper();

        public void setWrapper(Wrapper var1);

        public static interface Wrapper {
            public FeatureMap featureMap();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface ValueListIterator<E>
    extends EContentsEList.FeatureListIterator<E> {
        public void add(EStructuralFeature var1, Object var2);
    }
}

