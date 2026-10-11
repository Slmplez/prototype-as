/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public class WeakHashSet {
    HashableWeakReference[] values;
    public int elementSize = 0;
    int threshold;
    ReferenceQueue referenceQueue = new ReferenceQueue();

    public WeakHashSet() {
        this(5);
    }

    public WeakHashSet(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.values = new HashableWeakReference[extraRoom];
    }

    public Object add(Object obj) {
        HashableWeakReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (obj.hashCode() & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            Object referent = currentValue.get();
            if (obj.equals(referent)) {
                return referent;
            }
            if (++index != valuesLength) continue;
            index = 0;
        }
        this.values[index] = new HashableWeakReference(obj, this.referenceQueue);
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return obj;
    }

    private void addValue(HashableWeakReference value) {
        HashableWeakReference currentValue;
        Object obj = value.get();
        if (obj == null) {
            return;
        }
        int valuesLength = this.values.length;
        int index = (value.hashCode & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            if (obj.equals(currentValue.get())) {
                return;
            }
            if (++index != valuesLength) continue;
            index = 0;
        }
        this.values[index] = value;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
    }

    private void cleanupGarbageCollectedValues() {
        HashableWeakReference toBeRemoved;
        block0: while ((toBeRemoved = (HashableWeakReference)this.referenceQueue.poll()) != null) {
            HashableWeakReference currentValue;
            int hashCode = toBeRemoved.hashCode;
            int valuesLength = this.values.length;
            int index = (hashCode & Integer.MAX_VALUE) % valuesLength;
            while ((currentValue = this.values[index]) != null) {
                if (currentValue == toBeRemoved) {
                    int current;
                    int sameHash = index;
                    while ((currentValue = this.values[current = (sameHash + 1) % valuesLength]) != null && currentValue.hashCode == hashCode) {
                        sameHash = current;
                    }
                    this.values[index] = this.values[sameHash];
                    this.values[sameHash] = null;
                    --this.elementSize;
                    continue block0;
                }
                if (++index != valuesLength) continue;
                index = 0;
            }
        }
    }

    public boolean contains(Object obj) {
        return this.get(obj) != null;
    }

    public Object get(Object obj) {
        HashableWeakReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (obj.hashCode() & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            Object referent = currentValue.get();
            if (obj.equals(referent)) {
                return referent;
            }
            if (++index != valuesLength) continue;
            index = 0;
        }
        return null;
    }

    private void rehash() {
        WeakHashSet newHashSet = new WeakHashSet(this.elementSize * 2);
        newHashSet.referenceQueue = this.referenceQueue;
        int i = 0;
        int length = this.values.length;
        while (i < length) {
            HashableWeakReference currentValue = this.values[i];
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
        HashableWeakReference currentValue;
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
            if (++index != valuesLength) continue;
            index = 0;
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
            HashableWeakReference value = this.values[i];
            if (value != null && (ref = value.get()) != null) {
                buffer.append(ref.toString());
                buffer.append(", ");
            }
            ++i;
        }
        buffer.append("}");
        return buffer.toString();
    }

    public static class HashableWeakReference
    extends WeakReference {
        public int hashCode;

        public HashableWeakReference(Object referent, ReferenceQueue queue) {
            super(referent, queue);
            this.hashCode = referent.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof HashableWeakReference)) {
                return false;
            }
            Object referent = this.get();
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
            Object referent = this.get();
            if (referent == null) {
                return "[hashCode=" + this.hashCode + "] <referent was garbage collected>";
            }
            return "[hashCode=" + this.hashCode + "] " + referent.toString();
        }
    }
}

