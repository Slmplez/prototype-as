/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.eclipse.emf.common.util.AbstractEList;
import org.eclipse.emf.common.util.ECollections;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicEList<E>
extends AbstractEList<E>
implements RandomAccess,
Cloneable,
Serializable {
    private static final long serialVersionUID = 1L;
    protected int size;
    protected transient Object[] data;

    public BasicEList() {
    }

    public BasicEList(int initialCapacity) {
        if (initialCapacity < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + initialCapacity);
        }
        this.data = this.newData(initialCapacity);
    }

    public BasicEList(Collection<? extends E> collection) {
        this.size = collection.size();
        if (this.size > 0) {
            this.data = this.newData(this.size + this.size / 8 + 1);
            collection.toArray(this.data);
        }
    }

    protected BasicEList(int size, Object[] data) {
        this.size = size;
        this.data = data;
    }

    protected Object[] newData(int capacity) {
        return new Object[capacity];
    }

    protected E assign(int index, E object) {
        this.data[index] = object;
        return object;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public boolean contains(Object object) {
        if (this.useEquals() && object != null) {
            int i = 0;
            while (i < this.size) {
                if (object.equals(this.data[i])) {
                    return true;
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < this.size) {
                if (this.data[i] == object) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    @Override
    public int indexOf(Object object) {
        if (this.useEquals() && object != null) {
            int i = 0;
            while (i < this.size) {
                if (object.equals(this.data[i])) {
                    return i;
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < this.size) {
                if (this.data[i] == object) {
                    return i;
                }
                ++i;
            }
        }
        return -1;
    }

    @Override
    public int lastIndexOf(Object object) {
        if (this.useEquals() && object != null) {
            int i = this.size - 1;
            while (i >= 0) {
                if (object.equals(this.data[i])) {
                    return i;
                }
                --i;
            }
        } else {
            int i = this.size - 1;
            while (i >= 0) {
                if (this.data[i] == object) {
                    return i;
                }
                --i;
            }
        }
        return -1;
    }

    @Override
    public Object[] toArray() {
        Object[] result = this.newData(this.size);
        if (this.size > 0) {
            System.arraycopy(this.data, 0, result, 0, this.size);
        }
        return result;
    }

    @Override
    public <T> T[] toArray(T[] array) {
        if (this.size > 0) {
            if (array.length < this.size) {
                Object[] newArray = (Object[])Array.newInstance(array.getClass().getComponentType(), this.size);
                array = newArray;
            }
            System.arraycopy(this.data, 0, array, 0, this.size);
        }
        if (array.length > this.size) {
            array[this.size] = null;
        }
        return array;
    }

    public Object[] data() {
        return this.data;
    }

    public void setData(int size, Object[] data) {
        this.size = size;
        this.data = data;
        ++this.modCount;
    }

    @Override
    public E get(int index) {
        if (index >= this.size) {
            throw new BasicIndexOutOfBoundsException(index, this.size);
        }
        return (E)this.resolve(index, this.data[index]);
    }

    @Override
    public E basicGet(int index) {
        if (index >= this.size) {
            throw new BasicIndexOutOfBoundsException(index, this.size);
        }
        return this.primitiveGet(index);
    }

    @Override
    protected E primitiveGet(int index) {
        return (E)this.data[index];
    }

    @Override
    public E setUnique(int index, E object) {
        Object oldObject = this.data[index];
        this.assign(index, this.validate(index, object));
        this.didSet(index, object, oldObject);
        this.didChange();
        return (E)oldObject;
    }

    @Override
    public void addUnique(E object) {
        this.grow(this.size + 1);
        this.assign(this.size, this.validate(this.size, object));
        this.didAdd(this.size++, object);
        this.didChange();
    }

    @Override
    public void addUnique(int index, E object) {
        this.grow(this.size + 1);
        E validatedObject = this.validate(index, object);
        if (index != this.size) {
            System.arraycopy(this.data, index, this.data, index + 1, this.size - index);
        }
        this.assign(index, validatedObject);
        ++this.size;
        this.didAdd(index, object);
        this.didChange();
    }

    @Override
    public boolean addAllUnique(Collection<? extends E> collection) {
        int growth = collection.size();
        this.grow(this.size + growth);
        Iterator<E> objects = collection.iterator();
        int oldSize = this.size;
        this.size += growth;
        int i = oldSize;
        while (i < this.size) {
            E object = objects.next();
            this.assign(i, this.validate(i, object));
            this.didAdd(i, object);
            this.didChange();
            ++i;
        }
        return growth != 0;
    }

    @Override
    public boolean addAllUnique(int index, Collection<? extends E> collection) {
        int growth = collection.size();
        this.grow(this.size + growth);
        int shifted = this.size - index;
        if (shifted > 0) {
            System.arraycopy(this.data, index, this.data, index + growth, shifted);
        }
        Iterator<E> objects = collection.iterator();
        this.size += growth;
        int i = 0;
        while (i < growth) {
            E object = objects.next();
            this.assign(index, this.validate(index, object));
            this.didAdd(index, object);
            this.didChange();
            ++index;
            ++i;
        }
        return growth != 0;
    }

    @Override
    public boolean addAllUnique(Object[] objects, int start, int end) {
        int growth = end - start;
        this.grow(this.size + growth);
        this.size += growth;
        int index = this.size;
        int i = start;
        while (i < end) {
            Object object = objects[i];
            this.assign(index, this.validate(index, object));
            this.didAdd(index, object);
            this.didChange();
            ++index;
            ++i;
        }
        return growth != 0;
    }

    @Override
    public boolean addAllUnique(int index, Object[] objects, int start, int end) {
        int growth = end - start;
        this.grow(this.size + growth);
        int shifted = this.size - index;
        if (shifted > 0) {
            System.arraycopy(this.data, index, this.data, index + growth, shifted);
        }
        this.size += growth;
        int i = start;
        while (i < end) {
            Object object = objects[i];
            this.assign(index, this.validate(index, object));
            this.didAdd(index, object);
            this.didChange();
            ++index;
            ++i;
        }
        return growth != 0;
    }

    @Override
    public E remove(int index) {
        if (index >= this.size) {
            throw new BasicIndexOutOfBoundsException(index, this.size);
        }
        ++this.modCount;
        Object oldObject = this.data[index];
        int shifted = this.size - index - 1;
        if (shifted > 0) {
            System.arraycopy(this.data, index + 1, this.data, index, shifted);
        }
        this.data[--this.size] = null;
        this.didRemove(index, oldObject);
        this.didChange();
        return (E)oldObject;
    }

    @Override
    public void clear() {
        ++this.modCount;
        Object[] oldData = this.data;
        int oldSize = this.size;
        this.data = null;
        this.size = 0;
        this.didClear(oldSize, oldData);
        this.didChange();
    }

    @Override
    public E move(int targetIndex, int sourceIndex) {
        ++this.modCount;
        if (targetIndex >= this.size) {
            throw new IndexOutOfBoundsException("targetIndex=" + targetIndex + ", size=" + this.size);
        }
        if (sourceIndex >= this.size) {
            throw new IndexOutOfBoundsException("sourceIndex=" + sourceIndex + ", size=" + this.size);
        }
        Object object = this.data[sourceIndex];
        if (targetIndex != sourceIndex) {
            if (targetIndex < sourceIndex) {
                System.arraycopy(this.data, targetIndex, this.data, targetIndex + 1, sourceIndex - targetIndex);
            } else {
                System.arraycopy(this.data, sourceIndex + 1, this.data, sourceIndex, targetIndex - sourceIndex);
            }
            this.assign(targetIndex, object);
            this.didMove(targetIndex, object, sourceIndex);
            this.didChange();
        }
        return (E)object;
    }

    public void shrink() {
        ++this.modCount;
        if (this.size == 0) {
            this.data = null;
        } else if (this.size < this.data.length) {
            Object[] oldData = this.data;
            this.data = this.newData(this.size);
            System.arraycopy(oldData, 0, this.data, 0, this.size);
        }
    }

    public void grow(int minimumCapacity) {
        int oldCapacity;
        ++this.modCount;
        int n = oldCapacity = this.data == null ? 0 : this.data.length;
        if (minimumCapacity > oldCapacity) {
            Object[] oldData = this.data;
            int newCapacity = oldCapacity + oldCapacity / 2 + 4;
            if (newCapacity < minimumCapacity) {
                newCapacity = minimumCapacity;
            }
            this.data = this.newData(newCapacity);
            if (oldData != null) {
                System.arraycopy(oldData, 0, this.data, 0, this.size);
            }
        }
    }

    private synchronized void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.data == null) {
            objectOutputStream.writeInt(0);
        } else {
            objectOutputStream.writeInt(this.data.length);
            int i = 0;
            while (i < this.size) {
                objectOutputStream.writeObject(this.data[i]);
                ++i;
            }
        }
    }

    private synchronized void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int arrayLength = objectInputStream.readInt();
        if (arrayLength > 0) {
            try {
                this.data = this.newData(arrayLength);
            }
            catch (Throwable exception) {
                this.data = new Object[arrayLength];
            }
            int i = 0;
            while (i < this.size) {
                Object object = objectInputStream.readObject();
                this.didAdd(i, this.assign(i, object));
                ++i;
            }
        }
    }

    public Object clone() {
        try {
            BasicEList clone = (BasicEList)super.clone();
            if (this.size > 0) {
                clone.size = this.size;
                clone.data = this.newData(this.size);
                System.arraycopy(this.data, 0, clone.data, 0, this.size);
            }
            return clone;
        }
        catch (CloneNotSupportedException exception) {
            throw new InternalError();
        }
    }

    @Override
    protected List<E> basicList() {
        if (this.size == 0) {
            return ECollections.emptyEList();
        }
        return new UnmodifiableEList(this.size, this.data);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class BasicIndexOutOfBoundsException
    extends AbstractEList.BasicIndexOutOfBoundsException {
        private static final long serialVersionUID = 1L;

        public BasicIndexOutOfBoundsException(int index, int size) {
            super(index, size);
        }
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
            this.cursor = index;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FastCompare<E>
    extends BasicEList<E> {
        private static final long serialVersionUID = 1L;

        public FastCompare() {
        }

        public FastCompare(int initialCapacity) {
            super(initialCapacity);
        }

        public FastCompare(Collection<? extends E> collection) {
            super(collection.size());
            this.addAll(collection);
        }

        @Override
        protected boolean useEquals() {
            return false;
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
    extends BasicEList<E> {
        private static final long serialVersionUID = 1L;

        public UnmodifiableEList(int size, Object[] data) {
            this.size = size;
            this.data = data;
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
        public void shrink() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void grow(int minimumCapacity) {
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

