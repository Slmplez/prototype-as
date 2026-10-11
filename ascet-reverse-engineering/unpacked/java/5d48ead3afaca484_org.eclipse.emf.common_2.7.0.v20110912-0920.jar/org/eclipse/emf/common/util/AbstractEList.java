/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.AbstractList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.UniqueEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractEList<E>
extends AbstractList<E>
implements EList<E> {
    protected boolean useEquals() {
        return true;
    }

    protected boolean equalObjects(Object firstObject, Object secondObject) {
        return this.useEquals() && firstObject != null ? firstObject.equals(secondObject) : firstObject == secondObject;
    }

    protected boolean canContainNull() {
        return true;
    }

    protected boolean isUnique() {
        return false;
    }

    protected E validate(int index, E object) {
        if (!this.canContainNull() && object == null) {
            throw new IllegalArgumentException("The 'no null' constraint is violated");
        }
        return object;
    }

    protected E resolve(int index, E object) {
        return object;
    }

    protected void didSet(int index, E newObject, E oldObject) {
    }

    protected void didAdd(int index, E newObject) {
    }

    protected void didRemove(int index, E oldObject) {
    }

    protected void didClear(int size, Object[] oldObjects) {
        if (oldObjects != null) {
            int i = 0;
            while (i < size) {
                Object object = oldObjects[i];
                this.didRemove(i, object);
                ++i;
            }
        }
    }

    protected void didMove(int index, E movedObject, int oldIndex) {
    }

    protected void didChange() {
    }

    protected E basicGet(int index) {
        int size = this.size();
        if (index >= size) {
            throw new BasicIndexOutOfBoundsException(index, size);
        }
        return this.primitiveGet(index);
    }

    protected abstract E primitiveGet(int var1);

    @Override
    public E set(int index, E object) {
        int currentIndex;
        int size = this.size();
        if (index >= size) {
            throw new BasicIndexOutOfBoundsException(index, size);
        }
        if (this.isUnique() && (currentIndex = this.indexOf(object)) >= 0 && currentIndex != index) {
            throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
        }
        return this.setUnique(index, object);
    }

    public abstract E setUnique(int var1, E var2);

    @Override
    public boolean add(E object) {
        if (this.isUnique() && this.contains(object)) {
            return false;
        }
        this.addUnique(object);
        return true;
    }

    public abstract void addUnique(E var1);

    @Override
    public void add(int index, E object) {
        int size = this.size();
        if (index > size) {
            throw new BasicIndexOutOfBoundsException(index, size);
        }
        if (this.isUnique() && this.contains(object)) {
            throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
        }
        this.addUnique(index, object);
    }

    public abstract void addUnique(int var1, E var2);

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        if (this.isUnique()) {
            collection = this.getNonDuplicates(collection);
        }
        return this.addAllUnique(collection);
    }

    public abstract boolean addAllUnique(Collection<? extends E> var1);

    @Override
    public boolean addAll(int index, Collection<? extends E> collection) {
        int size = this.size();
        if (index > size) {
            throw new BasicIndexOutOfBoundsException(index, size);
        }
        if (this.isUnique()) {
            collection = this.getNonDuplicates(collection);
        }
        return this.addAllUnique(index, collection);
    }

    public abstract boolean addAllUnique(int var1, Collection<? extends E> var2);

    public abstract boolean addAllUnique(Object[] var1, int var2, int var3);

    public abstract boolean addAllUnique(int var1, Object[] var2, int var3, int var4);

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
        int i = this.size();
        while (--i >= 0) {
            if (!collection.contains(this.primitiveGet(i))) continue;
            this.remove(i);
            modified = true;
        }
        return modified;
    }

    @Override
    public abstract E remove(int var1);

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean modified = false;
        int i = this.size();
        while (--i >= 0) {
            if (collection.contains(this.primitiveGet(i))) continue;
            this.remove(i);
            modified = true;
        }
        return modified;
    }

    @Override
    public void move(int index, E object) {
        this.move(index, this.indexOf(object));
    }

    @Override
    public abstract E move(int var1, int var2);

    @Override
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof List)) {
            return false;
        }
        List list = (List)object;
        int size = this.size();
        if (list.size() != size) {
            return false;
        }
        Iterator objects = list.iterator();
        if (this.useEquals()) {
            int i = 0;
            while (i < size) {
                E o1 = this.primitiveGet(i);
                Object o2 = objects.next();
                if (o1 == null ? o2 != null : !o1.equals(o2)) {
                    return false;
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < size) {
                Object o2;
                E o1 = this.primitiveGet(i);
                if (o1 != (o2 = objects.next())) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hashCode = 1;
        int i = 0;
        int size = this.size();
        while (i < size) {
            E object = this.primitiveGet(i);
            hashCode = 31 * hashCode + (object == null ? 0 : object.hashCode());
            ++i;
        }
        return hashCode;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        int i = 0;
        int size = this.size();
        while (i < size) {
            stringBuffer.append(String.valueOf(this.primitiveGet(i)));
            if (++i >= size) continue;
            stringBuffer.append(", ");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override
    public Iterator<E> iterator() {
        return new EIterator();
    }

    protected Iterator<E> basicIterator() {
        return new NonResolvingEIterator();
    }

    @Override
    public ListIterator<E> listIterator() {
        return new EListIterator();
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        int size = this.size();
        if (index < 0 || index > size) {
            throw new BasicIndexOutOfBoundsException(index, size);
        }
        return new EListIterator(index);
    }

    protected ListIterator<E> basicListIterator() {
        return new NonResolvingEListIterator();
    }

    protected ListIterator<E> basicListIterator(int index) {
        int size = this.size();
        if (index < 0 || index > size) {
            throw new BasicIndexOutOfBoundsException(index, size);
        }
        return new NonResolvingEListIterator(index);
    }

    protected abstract List<E> basicList();

    protected Collection<E> getDuplicates(Collection<?> collection) {
        if (collection.isEmpty()) {
            return ECollections.emptyEList();
        }
        BasicEList<E> filteredResult = this.useEquals() ? new BasicEList<E>(collection.size()) : new BasicEList.FastCompare(collection.size());
        for (E object : this) {
            if (!collection.contains(object)) continue;
            filteredResult.add(object);
        }
        return filteredResult;
    }

    protected Collection<E> getNonDuplicates(Collection<? extends E> collection) {
        UniqueEList<E> result = this.useEquals() ? new UniqueEList<E>(collection.size()) : new UniqueEList.FastCompare(collection.size());
        for (E object : collection) {
            if (this.contains(object)) continue;
            result.add(object);
        }
        return result;
    }

    protected static class BasicIndexOutOfBoundsException
    extends IndexOutOfBoundsException {
        private static final long serialVersionUID = 1L;

        public BasicIndexOutOfBoundsException(int index, int size) {
            super("index=" + index + ", size=" + size);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EIterator<E1>
    implements Iterator<E1> {
        protected int cursor = 0;
        protected int lastCursor = -1;
        protected int expectedModCount;

        protected EIterator() {
            this.expectedModCount = AbstractEList.this.modCount;
        }

        @Override
        public boolean hasNext() {
            return this.cursor != AbstractEList.this.size();
        }

        @Override
        public E1 next() {
            return (E1)this.doNext();
        }

        protected E doNext() {
            try {
                Object next = AbstractEList.this.get(this.cursor);
                this.checkModCount();
                this.lastCursor = this.cursor++;
                return next;
            }
            catch (IndexOutOfBoundsException exception) {
                this.checkModCount();
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            if (this.lastCursor == -1) {
                throw new IllegalStateException();
            }
            this.checkModCount();
            try {
                AbstractEList.this.remove(this.lastCursor);
                this.expectedModCount = AbstractEList.this.modCount;
                if (this.lastCursor < this.cursor) {
                    --this.cursor;
                }
                this.lastCursor = -1;
            }
            catch (IndexOutOfBoundsException exception) {
                throw new ConcurrentModificationException();
            }
        }

        protected void checkModCount() {
            if (AbstractEList.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EListIterator<E1>
    extends EIterator<E1>
    implements ListIterator<E1> {
        public EListIterator() {
        }

        public EListIterator(int index) {
            this.cursor = index;
        }

        @Override
        public boolean hasPrevious() {
            return this.cursor != 0;
        }

        @Override
        public E1 previous() {
            return (E1)this.doPrevious();
        }

        protected E doPrevious() {
            try {
                Object previous = AbstractEList.this.get(--this.cursor);
                this.checkModCount();
                this.lastCursor = this.cursor;
                return previous;
            }
            catch (IndexOutOfBoundsException exception) {
                this.checkModCount();
                throw new NoSuchElementException();
            }
        }

        @Override
        public int nextIndex() {
            return this.cursor;
        }

        @Override
        public int previousIndex() {
            return this.cursor - 1;
        }

        @Override
        public void set(E1 object) {
            this.doSet(object);
        }

        protected void doSet(E object) {
            if (this.lastCursor == -1) {
                throw new IllegalStateException();
            }
            this.checkModCount();
            try {
                AbstractEList.this.set(this.lastCursor, object);
            }
            catch (IndexOutOfBoundsException exception) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void add(E1 object) {
            this.doAdd(object);
        }

        protected void doAdd(E object) {
            this.checkModCount();
            try {
                AbstractEList.this.add(this.cursor++, object);
                this.expectedModCount = AbstractEList.this.modCount;
                this.lastCursor = -1;
            }
            catch (IndexOutOfBoundsException exception) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class NonResolvingEIterator<E1>
    extends EIterator<E1> {
        protected NonResolvingEIterator() {
        }

        @Override
        protected E doNext() {
            try {
                Object next = AbstractEList.this.primitiveGet(this.cursor);
                this.checkModCount();
                this.lastCursor = this.cursor++;
                return next;
            }
            catch (IndexOutOfBoundsException exception) {
                this.checkModCount();
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class NonResolvingEListIterator<E1>
    extends EListIterator<E1> {
        public NonResolvingEListIterator() {
        }

        public NonResolvingEListIterator(int index) {
            super(index);
        }

        @Override
        protected E doNext() {
            try {
                Object next = AbstractEList.this.primitiveGet(this.cursor);
                this.checkModCount();
                this.lastCursor = this.cursor++;
                return next;
            }
            catch (IndexOutOfBoundsException exception) {
                this.checkModCount();
                throw new NoSuchElementException();
            }
        }

        @Override
        protected E doPrevious() {
            try {
                Object previous = AbstractEList.this.primitiveGet(--this.cursor);
                this.checkModCount();
                this.lastCursor = this.cursor;
                return previous;
            }
            catch (IndexOutOfBoundsException exception) {
                this.checkModCount();
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void set(E1 object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void add(E1 object) {
            throw new UnsupportedOperationException();
        }
    }
}

