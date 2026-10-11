/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;

public class ReferenceHashSet {
    HashedReference[] values;
    public int elementSize = 0;
    int threshold;
    ReferenceQueue referenceQueue = new ReferenceQueue();
    public static final int HARD = 0;
    public static final int SOFT = 1;
    public static final int WEAK = 2;

    public ReferenceHashSet() {
        this(5);
    }

    public ReferenceHashSet(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.values = new HashedReference[extraRoom];
    }

    private HashedReference toReference(int type, Object referent) {
        switch (type) {
            case 0: {
                return new StrongReference(referent, this.referenceQueue);
            }
            case 1: {
                return new HashableSoftReference(referent, this.referenceQueue);
            }
            case 2: {
                return new HashableWeakReference(referent, this.referenceQueue);
            }
        }
        throw new Error();
    }

    public Object add(Object obj, int referenceType) {
        HashedReference currentValue;
        this.cleanupGarbageCollectedValues();
        int index = (obj.hashCode() & Integer.MAX_VALUE) % this.values.length;
        while ((currentValue = this.values[index]) != null) {
            Object referent = currentValue.get();
            if (obj.equals(referent)) {
                return referent;
            }
            index = (index + 1) % this.values.length;
        }
        this.values[index] = this.toReference(referenceType, obj);
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return obj;
    }

    private void addValue(HashedReference value) {
        HashedReference currentValue;
        Object obj = value.get();
        if (obj == null) {
            return;
        }
        int valuesLength = this.values.length;
        int index = (value.hashCode() & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            if (obj.equals(currentValue.get())) {
                return;
            }
            index = (index + 1) % valuesLength;
        }
        this.values[index] = value;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
    }

    private void cleanupGarbageCollectedValues() {
        HashedReference toBeRemoved;
        block0: while ((toBeRemoved = (HashedReference)((Object)this.referenceQueue.poll())) != null) {
            HashedReference currentValue;
            int hashCode = toBeRemoved.hashCode();
            int valuesLength = this.values.length;
            int index = (hashCode & Integer.MAX_VALUE) % valuesLength;
            while ((currentValue = this.values[index]) != null) {
                if (currentValue == toBeRemoved) {
                    int current;
                    int sameHash = index;
                    while ((currentValue = this.values[current = (sameHash + 1) % valuesLength]) != null && currentValue.hashCode() == hashCode) {
                        sameHash = current;
                    }
                    this.values[index] = this.values[sameHash];
                    this.values[sameHash] = null;
                    --this.elementSize;
                    continue block0;
                }
                index = (index + 1) % valuesLength;
            }
        }
    }

    public boolean contains(Object obj) {
        return this.get(obj) != null;
    }

    public Object get(Object obj) {
        HashedReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (obj.hashCode() & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            Object referent = currentValue.get();
            if (obj.equals(referent)) {
                return referent;
            }
            index = (index + 1) % valuesLength;
        }
        return null;
    }

    private void rehash() {
        ReferenceHashSet newHashSet = new ReferenceHashSet(this.elementSize * 2);
        newHashSet.referenceQueue = this.referenceQueue;
        int i = 0;
        int length = this.values.length;
        while (i < length) {
            HashedReference currentValue = this.values[i];
            if (currentValue != null) {
                newHashSet.addValue(currentValue);
            }
            ++i;
        }
        this.values = newHashSet.values;
        this.threshold = newHashSet.threshold;
        this.elementSize = newHashSet.elementSize;
    }

    public Object remove(Object obj) {
        HashedReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (obj.hashCode() & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            Object referent = currentValue.get();
            if (obj.equals(referent)) {
                --this.elementSize;
                this.values[index] = null;
                this.rehash();
                return referent;
            }
            index = (index + 1) % valuesLength;
        }
        return null;
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer("{");
        int i = 0;
        int length = this.values.length;
        while (i < length) {
            Object ref;
            HashedReference value = this.values[i];
            if (value != null && (ref = value.get()) != null) {
                buffer.append(ref.toString());
                buffer.append(", ");
            }
            ++i;
        }
        buffer.append("}");
        return buffer.toString();
    }

    public Object[] toArray() {
        this.cleanupGarbageCollectedValues();
        Object[] result = new Object[this.elementSize];
        int resultSize = 0;
        int i = 0;
        while (i < this.values.length) {
            Object tmp;
            if (this.values[i] != null && (tmp = this.values[i].get()) != null) {
                result[resultSize++] = tmp;
            }
            ++i;
        }
        if (result.length == resultSize) {
            return result;
        }
        Object[] finalResult = new Object[resultSize];
        System.arraycopy(result, 0, finalResult, 0, resultSize);
        return finalResult;
    }

    private class HashableSoftReference
    extends SoftReference
    implements HashedReference {
        public int hashCode;

        public HashableSoftReference(Object referent, ReferenceQueue queue) {
            super(referent, queue);
            this.hashCode = referent.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof HashableWeakReference)) {
                return false;
            }
            Object referent = super.get();
            Object other = ((HashableWeakReference)obj).get();
            if (referent == null) {
                return other == null;
            }
            return referent.equals(other);
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            Object referent = super.get();
            if (referent == null) {
                return "[hashCode=" + this.hashCode + "] <referent was garbage collected>";
            }
            return "[hashCode=" + this.hashCode + "] " + referent.toString();
        }
    }

    private class HashableWeakReference
    extends WeakReference
    implements HashedReference {
        public int hashCode;

        public HashableWeakReference(Object referent, ReferenceQueue queue) {
            super(referent, queue);
            this.hashCode = referent.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof HashableWeakReference)) {
                return false;
            }
            Object referent = super.get();
            Object other = ((HashableWeakReference)obj).get();
            if (referent == null) {
                return other == null;
            }
            return referent.equals(other);
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            Object referent = super.get();
            if (referent == null) {
                return "[hashCode=" + this.hashCode + "] <referent was garbage collected>";
            }
            return "[hashCode=" + this.hashCode + "] " + referent.toString();
        }
    }

    private static interface HashedReference {
        public int hashCode();

        public Object get();
    }

    private class StrongReference
    implements HashedReference {
        private Object referent;

        public StrongReference(Object referent, ReferenceQueue queue) {
            this.referent = referent;
        }

        public int hashCode() {
            return this.referent.hashCode();
        }

        public Object get() {
            return this.referent;
        }

        public boolean equals(Object obj) {
            return this.referent.equals(obj);
        }
    }
}

