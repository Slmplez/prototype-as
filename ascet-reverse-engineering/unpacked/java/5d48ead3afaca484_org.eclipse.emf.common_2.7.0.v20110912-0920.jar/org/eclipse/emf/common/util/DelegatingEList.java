/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.util.AbstractEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DelegatingEList<E>
extends AbstractEList<E>
implements Cloneable,
Serializable {
    private static final long serialVersionUID = 1L;

    public DelegatingEList() {
    }

    public DelegatingEList(Collection<? extends E> collection) {
        this.addAll(collection);
    }

    protected abstract List<E> delegateList();

    @Override
    public int size() {
        return this.delegateSize();
    }

    protected int delegateSize() {
        return this.delegateList().size();
    }

    @Override
    public boolean isEmpty() {
        return this.delegateIsEmpty();
    }

    protected boolean delegateIsEmpty() {
        return this.delegateList().isEmpty();
    }

    @Override
    public boolean contains(Object object) {
        return this.delegateContains(object);
    }

    protected boolean delegateContains(Object object) {
        return this.delegateList().contains(object);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.delegateContainsAll(collection);
    }

    protected boolean delegateContainsAll(Collection<?> collection) {
        return this.delegateList().containsAll(collection);
    }

    @Override
    public int indexOf(Object object) {
        return this.delegateIndexOf(object);
    }

    protected int delegateIndexOf(Object object) {
        return this.delegateList().indexOf(object);
    }

    @Override
    public int lastIndexOf(Object object) {
        return this.delegateLastIndexOf(object);
    }

    protected int delegateLastIndexOf(Object object) {
        return this.delegateList().lastIndexOf(object);
    }

    @Override
    public Object[] toArray() {
        return this.delegateToArray();
    }

    protected Object[] delegateToArray() {
        return this.delegateList().toArray();
    }

    @Override
    public <T> T[] toArray(T[] array) {
        return this.delegateToArray(array);
    }

    protected <T> T[] delegateToArray(T[] array) {
        return this.delegateList().toArray(array);
    }

    @Override
    public E get(int index) {
        return this.resolve(index, this.delegateGet(index));
    }

    protected E delegateGet(int index) {
        return this.delegateList().get(index);
    }

    @Override
    protected E basicGet(int index) {
        return this.delegateGet(index);
    }

    @Override
    protected E primitiveGet(int index) {
        return this.delegateGet(index);
    }

    @Override
    public E setUnique(int index, E object) {
        E oldObject = this.delegateSet(index, this.validate(index, object));
        this.didSet(index, object, oldObject);
        this.didChange();
        return oldObject;
    }

    protected E delegateSet(int index, E object) {
        return this.delegateList().set(index, object);
    }

    @Override
    public void addUnique(E object) {
        ++this.modCount;
        int size = this.size();
        this.delegateAdd(this.validate(size, object));
        this.didAdd(size, object);
        this.didChange();
    }

    protected void delegateAdd(E object) {
        this.delegateList().add(object);
    }

    @Override
    public void addUnique(int index, E object) {
        ++this.modCount;
        this.delegateAdd(index, this.validate(index, object));
        this.didAdd(index, object);
        this.didChange();
    }

    protected void delegateAdd(int index, E object) {
        this.delegateList().add(index, object);
    }

    @Override
    public boolean addAllUnique(Collection<? extends E> collection) {
        ++this.modCount;
        if (collection.isEmpty()) {
            return false;
        }
        int i = this.size();
        for (E object : collection) {
            this.delegateAdd(this.validate(i, object));
            this.didAdd(i, object);
            this.didChange();
            ++i;
        }
        return true;
    }

    @Override
    public boolean addAllUnique(int index, Collection<? extends E> collection) {
        ++this.modCount;
        if (collection.isEmpty()) {
            return false;
        }
        for (E object : collection) {
            this.delegateAdd(index, this.validate(index, object));
            this.didAdd(index, object);
            this.didChange();
            ++index;
        }
        return true;
    }

    @Override
    public boolean addAllUnique(Object[] objects, int start, int end) {
        int growth = end - start;
        ++this.modCount;
        if (growth == 0) {
            return false;
        }
        int index = this.size();
        int i = start;
        while (i < end) {
            Object object = objects[i];
            this.delegateAdd(this.validate(index, object));
            this.didAdd(index, object);
            this.didChange();
            ++i;
            ++index;
        }
        return true;
    }

    @Override
    public boolean addAllUnique(int index, Object[] objects, int start, int end) {
        int growth = end - start;
        ++this.modCount;
        if (growth == 0) {
            return false;
        }
        int i = start;
        while (i < end) {
            Object object = objects[i];
            this.delegateAdd(this.validate(index, object));
            this.didAdd(index, object);
            this.didChange();
            ++i;
            ++index;
        }
        return true;
    }

    @Override
    public boolean remove(Object object) {
        int index = this.indexOf(object);
        if (index >= 0) {
            this.remove(index);
            return true;
        }
        return false;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean modified = false;
        ListIterator i = this.listIterator();
        while (i.hasNext()) {
            if (!collection.contains(i.next())) continue;
            i.remove();
            modified = true;
        }
        return modified;
    }

    @Override
    public E remove(int index) {
        ++this.modCount;
        E oldObject = this.delegateRemove(index);
        this.didRemove(index, oldObject);
        this.didChange();
        return oldObject;
    }

    protected E delegateRemove(int index) {
        return this.delegateList().remove(index);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean modified = false;
        ListIterator i = this.listIterator();
        while (i.hasNext()) {
            if (collection.contains(i.next())) continue;
            i.remove();
            modified = true;
        }
        return modified;
    }

    @Override
    public void clear() {
        this.doClear(this.size(), this.delegateToArray());
    }

    protected void doClear(int oldSize, Object[] oldData) {
        ++this.modCount;
        this.delegateClear();
        this.didClear(oldSize, oldData);
        this.didChange();
    }

    protected void delegateClear() {
        this.delegateList().clear();
    }

    @Override
    public E move(int targetIndex, int sourceIndex) {
        E object;
        ++this.modCount;
        int size = this.size();
        if (targetIndex >= size || targetIndex < 0) {
            throw new IndexOutOfBoundsException("targetIndex=" + targetIndex + ", size=" + size);
        }
        if (sourceIndex >= size || sourceIndex < 0) {
            throw new IndexOutOfBoundsException("sourceIndex=" + sourceIndex + ", size=" + size);
        }
        if (targetIndex != sourceIndex) {
            object = this.delegateMove(targetIndex, sourceIndex);
            this.didMove(targetIndex, object, sourceIndex);
            this.didChange();
        } else {
            object = this.delegateGet(sourceIndex);
        }
        return object;
    }

    protected E delegateMove(int targetIndex, int sourceIndex) {
        E result = this.delegateRemove(sourceIndex);
        this.delegateAdd(targetIndex, result);
        return result;
    }

    @Override
    public boolean equals(Object object) {
        return this.delegateEquals(object);
    }

    protected boolean delegateEquals(Object object) {
        return this.delegateList().equals(object);
    }

    @Override
    public int hashCode() {
        return this.delegateHashCode();
    }

    protected int delegateHashCode() {
        return this.delegateList().hashCode();
    }

    @Override
    public String toString() {
        return this.delegateToString();
    }

    protected String delegateToString() {
        return this.delegateList().toString();
    }

    protected Iterator<E> delegateIterator() {
        return this.delegateList().iterator();
    }

    protected ListIterator<E> delegateListIterator() {
        return this.delegateList().listIterator();
    }

    @Override
    protected List<E> basicList() {
        return this.delegateBasicList();
    }

    protected List<E> delegateBasicList() {
        return this.delegateList();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @Deprecated
    protected class EIterator<E1>
    extends AbstractEList.EIterator<E1> {
        protected EIterator() {
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @Deprecated
    protected class EListIterator<E1>
    extends AbstractEList.EListIterator<E1> {
        public EListIterator() {
        }

        public EListIterator(int index) {
            super(index);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @Deprecated
    protected class NonResolvingEIterator<E1>
    extends AbstractEList.NonResolvingEIterator<E1> {
        protected NonResolvingEIterator() {
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @Deprecated
    protected class NonResolvingEListIterator<E1>
    extends AbstractEList.NonResolvingEListIterator<E1> {
        public NonResolvingEListIterator() {
        }

        public NonResolvingEListIterator(int index) {
            super(index);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class UnmodifiableEList<E>
    extends DelegatingEList<E> {
        private static final long serialVersionUID = 1L;
        protected List<E> underlyingList;

        public UnmodifiableEList(List<E> underlyingList) {
            this.underlyingList = underlyingList;
        }

        @Override
        protected List<E> delegateList() {
            return this.underlyingList;
        }

        @Override
        public E set(int index, E object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean add(E object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void add(int index, E object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(int index, Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(Object object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public E remove(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void move(int index, E object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public E move(int targetIndex, int sourceIndex) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Iterator<E> iterator() {
            return this.basicIterator();
        }

        @Override
        public ListIterator<E> listIterator() {
            return this.basicListIterator();
        }

        @Override
        public ListIterator<E> listIterator(int index) {
            return this.basicListIterator(index);
        }
    }
}

