/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.KeyedElement;

public class KeyedHashSet {
    protected static final int MINIMUM_SIZE = 7;
    private int capacity;
    protected int elementCount = 0;
    protected KeyedElement[] elements;
    protected boolean replace;

    public KeyedHashSet() {
        this(7, true);
    }

    public KeyedHashSet(int capacity) {
        this(capacity, true);
    }

    public KeyedHashSet(int capacity, boolean replace) {
        this.elements = new KeyedElement[Math.max(7, capacity * 2)];
        this.replace = replace;
        this.capacity = capacity;
    }

    public boolean add(KeyedElement element) {
        int hash;
        int i = hash = this.hash(element);
        while (i < this.elements.length) {
            if (this.elements[i] == null) {
                this.elements[i] = element;
                ++this.elementCount;
                if (this.shouldGrow()) {
                    this.expand();
                }
                return true;
            }
            if (this.elements[i].compare(element)) {
                if (this.replace) {
                    this.elements[i] = element;
                }
                return this.replace;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            if (this.elements[i] == null) {
                this.elements[i] = element;
                ++this.elementCount;
                if (this.shouldGrow()) {
                    this.expand();
                }
                return true;
            }
            if (this.elements[i].compare(element)) {
                if (this.replace) {
                    this.elements[i] = element;
                }
                return this.replace;
            }
            ++i;
        }
        this.expand();
        return this.add(element);
    }

    public void clear() {
        this.elements = new KeyedElement[Math.max(7, this.capacity * 2)];
        this.elementCount = 0;
    }

    public KeyedElement[] elements() {
        return (KeyedElement[])this.elements(new KeyedElement[this.elementCount]);
    }

    public Object[] elements(Object[] result) {
        int j = 0;
        int i = 0;
        while (i < this.elements.length) {
            KeyedElement element = this.elements[i];
            if (element != null) {
                result[j++] = element;
            }
            ++i;
        }
        return result;
    }

    protected void expand() {
        KeyedElement[] oldElements = this.elements;
        this.elements = new KeyedElement[this.elements.length * 2];
        int maxArrayIndex = this.elements.length - 1;
        int i = 0;
        while (i < oldElements.length) {
            KeyedElement element = oldElements[i];
            if (element != null) {
                int hash = this.hash(element);
                while (this.elements[hash] != null) {
                    if (++hash <= maxArrayIndex) continue;
                    hash = 0;
                }
                this.elements[hash] = element;
            }
            ++i;
        }
    }

    public KeyedElement get(KeyedElement key) {
        KeyedElement element;
        int hash;
        if (this.elementCount == 0) {
            return null;
        }
        int i = hash = this.hash(key);
        while (i < this.elements.length) {
            element = this.elements[i];
            if (element == null) {
                return null;
            }
            if (element.compare(key)) {
                return element;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            element = this.elements[i];
            if (element == null) {
                return null;
            }
            if (element.compare(key)) {
                return element;
            }
            ++i;
        }
        return null;
    }

    public KeyedElement getByKey(Object key) {
        KeyedElement element;
        int hash;
        if (this.elementCount == 0) {
            return null;
        }
        int i = hash = this.keyHash(key);
        while (i < this.elements.length) {
            element = this.elements[i];
            if (element == null) {
                return null;
            }
            if (element.getKey().equals(key)) {
                return element;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            element = this.elements[i];
            if (element == null) {
                return null;
            }
            if (element.getKey().equals(key)) {
                return element;
            }
            ++i;
        }
        return null;
    }

    private int hash(KeyedElement element) {
        return Math.abs(element.getKeyHashCode()) % this.elements.length;
    }

    public boolean isEmpty() {
        return this.elementCount == 0;
    }

    private int keyHash(Object key) {
        return Math.abs(key.hashCode()) % this.elements.length;
    }

    protected void rehashTo(int anIndex) {
        int target = anIndex;
        int index = anIndex + 1;
        if (index >= this.elements.length) {
            index = 0;
        }
        KeyedElement element = this.elements[index];
        while (element != null) {
            boolean match;
            int hashIndex = this.hash(element);
            if (index < target) {
                match = hashIndex <= target && hashIndex > index;
            } else {
                boolean bl = match = hashIndex <= target || hashIndex > index;
            }
            if (match) {
                this.elements[target] = element;
                target = index;
            }
            if (++index >= this.elements.length) {
                index = 0;
            }
            element = this.elements[index];
        }
        this.elements[target] = null;
    }

    public boolean remove(KeyedElement toRemove) {
        KeyedElement element;
        int hash;
        if (this.elementCount == 0) {
            return false;
        }
        int i = hash = this.hash(toRemove);
        while (i < this.elements.length) {
            element = this.elements[i];
            if (element == null) {
                return false;
            }
            if (element.compare(toRemove)) {
                this.rehashTo(i);
                --this.elementCount;
                return true;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            element = this.elements[i];
            if (element == null) {
                return false;
            }
            if (element.compare(toRemove)) {
                this.rehashTo(i);
                --this.elementCount;
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean removeByKey(Object key) {
        KeyedElement element;
        int hash;
        if (this.elementCount == 0) {
            return false;
        }
        int i = hash = this.keyHash(key);
        while (i < this.elements.length) {
            element = this.elements[i];
            if (element == null) {
                return false;
            }
            if (element.getKey().equals(key)) {
                this.rehashTo(i);
                --this.elementCount;
                return true;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            element = this.elements[i];
            if (element == null) {
                return false;
            }
            if (element.getKey().equals(key)) {
                this.rehashTo(i);
                --this.elementCount;
                return true;
            }
            ++i;
        }
        return true;
    }

    private boolean shouldGrow() {
        return (double)this.elementCount > (double)this.elements.length * 0.75;
    }

    public int size() {
        return this.elementCount;
    }

    public String toString() {
        StringBuffer result = new StringBuffer(100);
        result.append("{");
        boolean first = true;
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                if (first) {
                    first = false;
                } else {
                    result.append(", ");
                }
                result.append(this.elements[i]);
            }
            ++i;
        }
        result.append("}");
        return result.toString();
    }
}

