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
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.eclipse.emf.common.util.AbstractEList;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.ECollections;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ArrayDelegatingEList<E>
extends AbstractEList<E>
implements RandomAccess,
Cloneable,
Serializable {
    private static final long serialVersionUID = 1L;
    private static Object[] EMPTY_ARRAY = new Object[0];

    public ArrayDelegatingEList() {
    }

    public ArrayDelegatingEList(Collection<? extends E> collection) {
        int size = collection.size();
        if (size > 0) {
            Object[] data = this.newData(size);
            collection.toArray(data);
            this.setData(data);
        }
    }

    protected ArrayDelegatingEList(Object[] data) {
        this.setData(data);
    }

    protected Object[] newData(int capacity) {
        return new Object[capacity];
    }

    protected E assign(Object[] data, int index, E object) {
        data[index] = object;
        return object;
    }

    @Override
    public final int size() {
        Object[] data = this.data();
        return data == null ? 0 : data.length;
    }

    @Override
    public boolean isEmpty() {
        return this.data() == null;
    }

    @Override
    public boolean contains(Object object) {
        block6: {
            Object[] data = this.data();
            if (data == null) break block6;
            if (this.useEquals() && object != null) {
                Object[] objectArray = data;
                int n = data.length;
                int n2 = 0;
                while (n2 < n) {
                    Object datum = objectArray[n2];
                    if (object.equals(datum)) {
                        return true;
                    }
                    ++n2;
                }
            } else {
                Object[] objectArray = data;
                int n = data.length;
                int n3 = 0;
                while (n3 < n) {
                    Object datum = objectArray[n3];
                    if (datum == object) {
                        return true;
                    }
                    ++n3;
                }
            }
        }
        return false;
    }

    @Override
    public int indexOf(Object object) {
        block6: {
            Object[] data = this.data();
            if (data == null) break block6;
            if (this.useEquals() && object != null) {
                int i = 0;
                int size = data.length;
                while (i < size) {
                    if (object.equals(data[i])) {
                        return i;
                    }
                    ++i;
                }
            } else {
                int i = 0;
                int size = data.length;
                while (i < size) {
                    if (data[i] == object) {
                        return i;
                    }
                    ++i;
                }
            }
        }
        return -1;
    }

    @Override
    public int lastIndexOf(Object object) {
        block6: {
            Object[] data = this.data();
            if (data == null) break block6;
            if (this.useEquals() && object != null) {
                int i = data.length - 1;
                while (i >= 0) {
                    if (object.equals(data[i])) {
                        return i;
                    }
                    --i;
                }
            } else {
                int i = data.length - 1;
                while (i >= 0) {
                    if (data[i] == object) {
                        return i;
                    }
                    --i;
                }
            }
        }
        return -1;
    }

    @Override
    public Object[] toArray() {
        Object[] data = this.data();
        int size = data == null ? 0 : data.length;
        Object[] result = this.newData(size);
        if (size > 0) {
            System.arraycopy(data, 0, result, 0, size);
        }
        return result;
    }

    @Override
    public <T> T[] toArray(T[] array) {
        int size;
        Object[] data = this.data();
        int n = size = data == null ? 0 : data.length;
        if (size > 0) {
            if (array.length < size) {
                Object[] newArray = (Object[])Array.newInstance(array.getClass().getComponentType(), size);
                array = newArray;
            }
            System.arraycopy(data, 0, array, 0, size);
        }
        if (array.length > size) {
            array[size] = null;
        }
        return array;
    }

    public abstract Object[] data();

    public void setData(Object[] data) {
        ++this.modCount;
    }

    @Override
    public E get(int index) {
        int size;
        Object[] data = this.data();
        int n = size = data == null ? 0 : data.length;
        if (index >= size) {
            throw new AbstractEList.BasicIndexOutOfBoundsException(index, size);
        }
        return (E)this.resolve(index, data[index]);
    }

    @Override
    public E basicGet(int index) {
        int size;
        Object[] data = this.data();
        int n = size = data == null ? 0 : data.length;
        if (index >= size) {
            throw new AbstractEList.BasicIndexOutOfBoundsException(index, size);
        }
        return (E)data[index];
    }

    @Override
    protected E primitiveGet(int index) {
        return (E)this.data()[index];
    }

    @Override
    public E setUnique(int index, E object) {
        Object[] data = this.copy();
        Object oldObject = data[index];
        this.assign(data, index, this.validate(index, object));
        this.setData(data);
        this.didSet(index, object, oldObject);
        this.didChange();
        return (E)oldObject;
    }

    @Override
    public void addUnique(E object) {
        int size = this.size();
        Object[] data = this.grow(size + 1);
        this.assign(data, size, this.validate(size, object));
        this.setData(data);
        this.didAdd(size, object);
        this.didChange();
    }

    @Override
    public void addUnique(int index, E object) {
        Object[] oldData = this.data();
        int size = oldData == null ? 0 : oldData.length;
        Object[] data = this.grow(size + 1);
        E validatedObject = this.validate(index, object);
        if (index != size) {
            System.arraycopy(oldData, index, data, index + 1, size - index);
        }
        this.assign(data, index, validatedObject);
        this.setData(data);
        this.didAdd(index, object);
        this.didChange();
    }

    @Override
    public boolean addAllUnique(Collection<? extends E> collection) {
        int growth = collection.size();
        if (growth != 0) {
            Object object;
            int oldSize = this.size();
            int size = oldSize + growth;
            Object[] data = this.grow(size);
            Iterator<E> objects = collection.iterator();
            int i = oldSize;
            while (i < size) {
                object = objects.next();
                this.assign(data, i, this.validate(i, object));
                ++i;
            }
            this.setData(data);
            i = oldSize;
            while (i < size) {
                object = data[i];
                this.didAdd(i, object);
                this.didChange();
                ++i;
            }
            return true;
        }
        ++this.modCount;
        return false;
    }

    @Override
    public boolean addAllUnique(int index, Collection<? extends E> collection) {
        int growth = collection.size();
        if (growth != 0) {
            Object object;
            Object[] oldData = this.data();
            int oldSize = oldData == null ? 0 : oldData.length;
            int size = oldSize + growth;
            Object[] data = this.grow(size);
            int shifted = oldSize - index;
            if (shifted > 0) {
                System.arraycopy(oldData, index, data, index + growth, shifted);
            }
            Iterator<E> objects = collection.iterator();
            int i = 0;
            while (i < growth) {
                object = objects.next();
                int currentIndex = index + i;
                this.assign(data, currentIndex, this.validate(currentIndex, object));
                ++i;
            }
            this.setData(data);
            i = 0;
            while (i < growth) {
                object = data[index];
                this.didAdd(index, object);
                this.didChange();
                ++index;
                ++i;
            }
            return true;
        }
        ++this.modCount;
        return false;
    }

    @Override
    public boolean addAllUnique(Object[] objects, int start, int end) {
        int growth = end - start;
        if (growth > 0) {
            Object object;
            int oldSize = this.size();
            int size = oldSize + growth;
            Object[] data = this.grow(size);
            int i = start;
            int index = size;
            while (i < end) {
                object = objects[i];
                this.assign(data, index, this.validate(index, object));
                ++i;
                ++index;
            }
            this.setData(data);
            i = start;
            index = size;
            while (i < end) {
                object = objects[i];
                this.didAdd(index, object);
                this.didChange();
                ++i;
                ++index;
            }
            return true;
        }
        ++this.modCount;
        return false;
    }

    @Override
    public boolean addAllUnique(int index, Object[] objects, int start, int end) {
        int growth = end - start;
        if (growth > 0) {
            Object object;
            Object[] oldData = this.data();
            int oldSize = oldData == null ? 0 : oldData.length;
            int size = oldSize + growth;
            Object[] data = this.grow(size);
            int shifted = oldSize - index;
            if (shifted > 0) {
                System.arraycopy(oldData, index, data, index + growth, shifted);
            }
            int i = start;
            int currentIndex = index;
            while (i < end) {
                object = objects[i];
                this.assign(data, currentIndex, this.validate(currentIndex, object));
                ++i;
                ++currentIndex;
            }
            this.setData(data);
            i = start;
            currentIndex = index;
            while (i < end) {
                object = objects[i];
                this.didAdd(currentIndex, object);
                this.didChange();
                ++i;
                ++currentIndex;
            }
            return true;
        }
        ++this.modCount;
        return false;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        Object[] data = this.data();
        int size = data == null ? 0 : data.length;
        boolean modified = false;
        int i = size;
        while (--i >= 0) {
            if (!collection.contains(data[i])) continue;
            this.remove(i);
            modified = true;
        }
        return modified;
    }

    @Override
    public E remove(int index) {
        int size;
        Object[] data = this.data();
        int n = size = data == null ? 0 : data.length;
        if (index >= size) {
            throw new AbstractEList.BasicIndexOutOfBoundsException(index, size);
        }
        Object oldObject = data[index];
        Object[] newData = this.newData(size - 1);
        System.arraycopy(data, 0, newData, 0, index);
        int shifted = size - index - 1;
        if (shifted > 0) {
            System.arraycopy(data, index + 1, newData, index, shifted);
        }
        this.setData(newData);
        this.didRemove(index, oldObject);
        this.didChange();
        return (E)oldObject;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        int size;
        boolean modified = false;
        Object[] data = this.data();
        int i = size = data == null ? 0 : data.length;
        while (--i >= 0) {
            if (collection.contains(data[i])) continue;
            this.remove(i);
            modified = true;
        }
        return modified;
    }

    @Override
    public void clear() {
        ++this.modCount;
        Object[] oldData = this.data();
        int oldSize = oldData == null ? 0 : oldData.length;
        this.setData(null);
        this.didClear(oldSize, oldData);
        this.didChange();
    }

    @Override
    public E move(int targetIndex, int sourceIndex) {
        int size;
        Object[] data = this.copy();
        int n = size = data == null ? 0 : data.length;
        if (targetIndex >= size) {
            throw new IndexOutOfBoundsException("targetIndex=" + targetIndex + ", size=" + size);
        }
        if (sourceIndex >= size) {
            throw new IndexOutOfBoundsException("sourceIndex=" + sourceIndex + ", size=" + size);
        }
        Object object = data[sourceIndex];
        if (targetIndex != sourceIndex) {
            if (targetIndex < sourceIndex) {
                System.arraycopy(data, targetIndex, data, targetIndex + 1, sourceIndex - targetIndex);
            } else {
                System.arraycopy(data, sourceIndex + 1, data, sourceIndex, targetIndex - sourceIndex);
            }
            this.assign(data, targetIndex, object);
            this.setData(data);
            this.didMove(targetIndex, object, sourceIndex);
            this.didChange();
        }
        return (E)object;
    }

    protected Object[] grow(int size) {
        Object[] oldData = this.data();
        Object[] data = this.newData(size);
        if (oldData != null) {
            System.arraycopy(oldData, 0, data, 0, oldData.length);
        }
        return data;
    }

    protected Object[] copy() {
        Object[] data = this.data();
        if (data != null) {
            Object[] newData = this.newData(data.length);
            System.arraycopy(data, 0, newData, 0, data.length);
            return newData;
        }
        return EMPTY_ARRAY;
    }

    private synchronized void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        int size;
        objectOutputStream.defaultWriteObject();
        Object[] data = this.data();
        int n = size = data == null ? 0 : data.length;
        if (data == null) {
            objectOutputStream.writeInt(0);
        } else {
            objectOutputStream.writeInt(size);
            int i = 0;
            while (i < size) {
                objectOutputStream.writeObject(data[i]);
                ++i;
            }
        }
    }

    private synchronized void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int size = objectInputStream.readInt();
        if (size > 0) {
            Object[] data;
            try {
                data = this.newData(size);
            }
            catch (Throwable exception) {
                data = new Object[size];
            }
            this.setData(data);
            int i = 0;
            while (i < size) {
                Object object = objectInputStream.readObject();
                this.didAdd(i, this.assign(data, i, object));
                ++i;
            }
        }
    }

    public Object clone() {
        try {
            int size;
            ArrayDelegatingEList clone = (ArrayDelegatingEList)super.clone();
            Object[] data = this.data();
            int n = size = data == null ? 0 : data.length;
            if (size > 0) {
                Object[] newData = this.newData(size);
                clone.setData(newData);
                System.arraycopy(data, 0, newData, 0, size);
            }
            return clone;
        }
        catch (CloneNotSupportedException exception) {
            throw new InternalError();
        }
    }

    @Override
    public Iterator<E> iterator() {
        return new EIterator();
    }

    @Override
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
            throw new AbstractEList.BasicIndexOutOfBoundsException(index, size);
        }
        return new EListIterator(index);
    }

    @Override
    protected ListIterator<E> basicListIterator() {
        return new NonResolvingEListIterator();
    }

    @Override
    protected ListIterator<E> basicListIterator(int index) {
        int size = this.size();
        if (index < 0 || index > size) {
            throw new AbstractEList.BasicIndexOutOfBoundsException(index, size);
        }
        return new NonResolvingEListIterator(index);
    }

    @Override
    protected List<E> basicList() {
        int size;
        Object[] data = this.data();
        int n = size = data == null ? 0 : data.length;
        if (size == 0) {
            return ECollections.emptyEList();
        }
        return new BasicEList.UnmodifiableEList(size, data);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EIterator<E1>
    extends AbstractEList.EIterator<E1> {
        protected Object[] expectedData;

        protected EIterator() {
            this.expectedData = ArrayDelegatingEList.this.data();
        }

        @Override
        protected void checkModCount() {
            if (ArrayDelegatingEList.this.modCount != this.expectedModCount || ArrayDelegatingEList.this.data() != this.expectedData) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EListIterator<E1>
    extends AbstractEList.EListIterator<E1> {
        protected Object[] expectedData;

        public EListIterator() {
            this.expectedData = ArrayDelegatingEList.this.data();
        }

        public EListIterator(int index) {
            super(index);
            this.expectedData = ArrayDelegatingEList.this.data();
        }

        @Override
        protected void checkModCount() {
            if (ArrayDelegatingEList.this.modCount != this.expectedModCount || ArrayDelegatingEList.this.data() != this.expectedData) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class NonResolvingEIterator<E1>
    extends AbstractEList.NonResolvingEIterator<E1> {
        protected Object[] expectedData;

        protected NonResolvingEIterator() {
            this.expectedData = ArrayDelegatingEList.this.data();
        }

        @Override
        protected void checkModCount() {
            if (ArrayDelegatingEList.this.modCount != this.expectedModCount || ArrayDelegatingEList.this.data() != this.expectedData) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class NonResolvingEListIterator<E1>
    extends AbstractEList.NonResolvingEListIterator<E1> {
        protected Object[] expectedData;

        public NonResolvingEListIterator() {
            this.expectedData = ArrayDelegatingEList.this.data();
        }

        public NonResolvingEListIterator(int index) {
            super(index);
            this.expectedData = ArrayDelegatingEList.this.data();
        }

        @Override
        protected void checkModCount() {
            if (ArrayDelegatingEList.this.modCount != this.expectedModCount || ArrayDelegatingEList.this.data() != this.expectedData) {
                throw new ConcurrentModificationException();
            }
        }
    }
}

