/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import org.eclipse.jdt.core.compiler.CharOperation;

public class WeakHashSetOfCharArray {
    HashableWeakReference[] values;
    public int elementSize = 0;
    int threshold;
    ReferenceQueue referenceQueue = new ReferenceQueue();

    public WeakHashSetOfCharArray() {
        this(5);
    }

    public WeakHashSetOfCharArray(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.values = new HashableWeakReference[extraRoom];
    }

    public char[] add(char[] array) {
        HashableWeakReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (CharOperation.hashCode(array) & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            char[] referent = (char[])currentValue.get();
            if (CharOperation.equals(array, referent)) {
                return referent;
            }
            if (++index != valuesLength) continue;
            index = 0;
        }
        this.values[index] = new HashableWeakReference(array, this.referenceQueue);
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return array;
    }

    private void addValue(HashableWeakReference value) {
        HashableWeakReference currentValue;
        char[] array = (char[])value.get();
        if (array == null) {
            return;
        }
        int valuesLength = this.values.length;
        int index = (value.hashCode & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            if (CharOperation.equals(array, (char[])currentValue.get())) {
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

    public boolean contains(char[] array) {
        return this.get(array) != null;
    }

    public char[] get(char[] array) {
        HashableWeakReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (CharOperation.hashCode(array) & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            char[] referent = (char[])currentValue.get();
            if (CharOperation.equals(array, referent)) {
                return referent;
            }
            if (++index != valuesLength) continue;
            index = 0;
        }
        return null;
    }

    private void rehash() {
        WeakHashSetOfCharArray newHashSet = new WeakHashSetOfCharArray(this.elementSize * 2);
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

    public char[] remove(char[] array) {
        HashableWeakReference currentValue;
        this.cleanupGarbageCollectedValues();
        int valuesLength = this.values.length;
        int index = (CharOperation.hashCode(array) & Integer.MAX_VALUE) % valuesLength;
        while ((currentValue = this.values[index]) != null) {
            char[] referent = (char[])currentValue.get();
            if (CharOperation.equals(array, referent)) {
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
            char[] ref;
            HashableWeakReference value = this.values[i];
            if (value != null && (ref = (char[])value.get()) != null) {
                buffer.append('\"');
                buffer.append(ref);
                buffer.append("\", ");
            }
            ++i;
        }
        buffer.append("}");
        return buffer.toString();
    }

    public static class HashableWeakReference
    extends WeakReference {
        public int hashCode;

        public HashableWeakReference(char[] referent, ReferenceQueue queue) {
            super(referent, queue);
            this.hashCode = CharOperation.hashCode(referent);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof HashableWeakReference)) {
                return false;
            }
            char[] referent = (char[])this.get();
            char[] other = (char[])((HashableWeakReference)obj).get();
            if (referent == null) {
                return other == null;
            }
            return CharOperation.equals(referent, other);
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            char[] referent = (char[])this.get();
            if (referent == null) {
                return "[hashCode=" + this.hashCode + "] <referent was garbage collected>";
            }
            return "[hashCode=" + this.hashCode + "] \"" + new String(referent) + '\"';
        }
    }
}

