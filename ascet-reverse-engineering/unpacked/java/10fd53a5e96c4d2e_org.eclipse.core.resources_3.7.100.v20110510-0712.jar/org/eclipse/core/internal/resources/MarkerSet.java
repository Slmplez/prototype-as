/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.StringPool;

public class MarkerSet
implements Cloneable,
IStringPoolParticipant {
    protected static final int MINIMUM_SIZE = 5;
    protected int elementCount = 0;
    protected IMarkerSetElement[] elements;

    public MarkerSet() {
        this(5);
    }

    public MarkerSet(int capacity) {
        this.elements = new IMarkerSetElement[Math.max(5, capacity * 2)];
    }

    public void add(IMarkerSetElement element) {
        int hash;
        if (element == null) {
            return;
        }
        int i = hash = this.hashFor(element.getId()) % this.elements.length;
        while (i < this.elements.length) {
            if (this.elements[i] == null) {
                this.elements[i] = element;
                ++this.elementCount;
                if (this.shouldGrow()) {
                    this.expand();
                }
                return;
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
                return;
            }
            ++i;
        }
        this.expand();
        this.add(element);
    }

    public void addAll(IMarkerSetElement[] toAdd) {
        int i = 0;
        while (i < toAdd.length) {
            this.add(toAdd[i]);
            ++i;
        }
    }

    protected Object clone() {
        try {
            MarkerSet copy = (MarkerSet)super.clone();
            copy.elements = (IMarkerSetElement[])this.elements.clone();
            return copy;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public boolean contains(long id) {
        return this.get(id) != null;
    }

    public IMarkerSetElement[] elements() {
        IMarkerSetElement[] result = new IMarkerSetElement[this.elementCount];
        int j = 0;
        int i = 0;
        while (i < this.elements.length) {
            IMarkerSetElement element = this.elements[i];
            if (element != null) {
                result[j++] = element;
            }
            ++i;
        }
        return result;
    }

    protected void expand() {
        IMarkerSetElement[] array = new IMarkerSetElement[this.elements.length * 2];
        int maxArrayIndex = array.length - 1;
        int i = 0;
        while (i < this.elements.length) {
            IMarkerSetElement element = this.elements[i];
            if (element != null) {
                int hash = this.hashFor(element.getId()) % array.length;
                while (array[hash] != null) {
                    if (++hash <= maxArrayIndex) continue;
                    hash = 0;
                }
                array[hash] = element;
            }
            ++i;
        }
        this.elements = array;
    }

    public IMarkerSetElement get(long id) {
        IMarkerSetElement element;
        int hash;
        if (this.elementCount == 0) {
            return null;
        }
        int i = hash = this.hashFor(id) % this.elements.length;
        while (i < this.elements.length) {
            element = this.elements[i];
            if (element == null) {
                return null;
            }
            if (element.getId() == id) {
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
            if (element.getId() == id) {
                return element;
            }
            ++i;
        }
        return null;
    }

    private int hashFor(long id) {
        return Math.abs((int)id);
    }

    public boolean isEmpty() {
        return this.elementCount == 0;
    }

    protected void rehashTo(int anIndex) {
        int target = anIndex;
        int index = anIndex + 1;
        if (index >= this.elements.length) {
            index = 0;
        }
        IMarkerSetElement element = this.elements[index];
        while (element != null) {
            boolean match;
            int hashIndex = this.hashFor(element.getId()) % this.elements.length;
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

    public void remove(long id) {
        IMarkerSetElement element;
        int hash;
        int i = hash = this.hashFor(id) % this.elements.length;
        while (i < this.elements.length) {
            element = this.elements[i];
            if (element == null) {
                return;
            }
            if (element.getId() == id) {
                this.rehashTo(i);
                --this.elementCount;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            element = this.elements[i];
            if (element == null) {
                return;
            }
            if (element.getId() == id) {
                this.rehashTo(i);
                --this.elementCount;
            }
            ++i;
        }
    }

    public void remove(IMarkerSetElement element) {
        this.remove(element.getId());
    }

    public void removeAll(IMarkerSetElement[] toRemove) {
        int i = 0;
        while (i < toRemove.length) {
            this.remove(toRemove[i]);
            ++i;
        }
    }

    private boolean shouldGrow() {
        return (double)this.elementCount > (double)this.elements.length * 0.75;
    }

    public int size() {
        return this.elementCount;
    }

    public void shareStrings(StringPool set) {
        IMarkerSetElement[] array = this.elements;
        if (array == null) {
            return;
        }
        int i = 0;
        while (i < array.length) {
            IMarkerSetElement o = array[i];
            if (o instanceof String) {
                array[i] = set.add((String)((Object)o));
            }
            if (o instanceof IStringPoolParticipant) {
                ((IStringPoolParticipant)((Object)o)).shareStrings(set);
            }
            ++i;
        }
    }
}

