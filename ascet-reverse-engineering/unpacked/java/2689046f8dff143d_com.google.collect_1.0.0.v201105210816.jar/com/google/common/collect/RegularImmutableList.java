/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableIterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
final class RegularImmutableList<E>
extends ImmutableList<E> {
    private final transient int offset;
    private final transient int size;
    private final transient Object[] array;

    RegularImmutableList(Object[] array, int offset, int size) {
        this.offset = offset;
        this.size = size;
        this.array = array;
    }

    RegularImmutableList(Object[] array) {
        this(array, 0, array.length);
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public boolean contains(Object target) {
        return this.indexOf(target) != -1;
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return Iterators.forArray(this.array, this.offset, this.size);
    }

    @Override
    public Object[] toArray() {
        Object[] newArray = new Object[this.size()];
        System.arraycopy(this.array, this.offset, newArray, 0, this.size);
        return newArray;
    }

    @Override
    public <T> T[] toArray(T[] other) {
        if (other.length < this.size) {
            other = ObjectArrays.newArray(other, this.size);
        } else if (other.length > this.size) {
            other[this.size] = null;
        }
        System.arraycopy(this.array, this.offset, other, 0, this.size);
        return other;
    }

    @Override
    public E get(int index) {
        Preconditions.checkElementIndex(index, this.size);
        return (E)this.array[index + this.offset];
    }

    @Override
    public int indexOf(Object target) {
        if (target != null) {
            for (int i = this.offset; i < this.offset + this.size; ++i) {
                if (!this.array[i].equals(target)) continue;
                return i - this.offset;
            }
        }
        return -1;
    }

    @Override
    public int lastIndexOf(Object target) {
        if (target != null) {
            for (int i = this.offset + this.size - 1; i >= this.offset; --i) {
                if (!this.array[i].equals(target)) continue;
                return i - this.offset;
            }
        }
        return -1;
    }

    @Override
    public ImmutableList<E> subList(int fromIndex, int toIndex) {
        Preconditions.checkPositionIndexes(fromIndex, toIndex, this.size);
        return fromIndex == toIndex ? ImmutableList.of() : new RegularImmutableList<E>(this.array, this.offset + fromIndex, toIndex - fromIndex);
    }

    @Override
    public ListIterator<E> listIterator() {
        return this.listIterator(0);
    }

    @Override
    public ListIterator<E> listIterator(final int start) {
        Preconditions.checkPositionIndex(start, this.size);
        return new ListIterator<E>(){
            int index;
            {
                this.index = start;
            }

            @Override
            public boolean hasNext() {
                return this.index < RegularImmutableList.this.size;
            }

            @Override
            public boolean hasPrevious() {
                return this.index > 0;
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
            public E next() {
                Object result;
                try {
                    result = RegularImmutableList.this.get(this.index);
                }
                catch (IndexOutOfBoundsException rethrown) {
                    throw new NoSuchElementException();
                }
                ++this.index;
                return result;
            }

            @Override
            public E previous() {
                Object result;
                try {
                    result = RegularImmutableList.this.get(this.index - 1);
                }
                catch (IndexOutOfBoundsException rethrown) {
                    throw new NoSuchElementException();
                }
                --this.index;
                return result;
            }

            @Override
            public void set(E o) {
                throw new UnsupportedOperationException();
            }

            @Override
            public void add(E o) {
                throw new UnsupportedOperationException();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override
    public boolean equals(@Nullable Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof List)) {
            return false;
        }
        List that = (List)object;
        if (this.size() != that.size()) {
            return false;
        }
        int index = this.offset;
        if (object instanceof RegularImmutableList) {
            RegularImmutableList other = (RegularImmutableList)object;
            for (int i = other.offset; i < other.offset + other.size; ++i) {
                if (this.array[index++].equals(other.array[i])) continue;
                return false;
            }
        } else {
            for (Object element : that) {
                if (this.array[index++].equals(element)) continue;
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hashCode = 1;
        for (int i = this.offset; i < this.offset + this.size; ++i) {
            hashCode = 31 * hashCode + this.array[i].hashCode();
        }
        return hashCode;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder(this.size() * 16);
        sb.append('[').append(this.array[this.offset]);
        for (int i = this.offset + 1; i < this.offset + this.size; ++i) {
            sb.append(", ").append(this.array[i]);
        }
        return sb.append(']').toString();
    }
}

