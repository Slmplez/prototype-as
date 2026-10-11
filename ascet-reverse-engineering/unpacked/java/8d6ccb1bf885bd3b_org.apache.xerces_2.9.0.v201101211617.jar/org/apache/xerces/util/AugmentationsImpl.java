/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.NoSuchElementException;
import org.apache.xerces.xni.Augmentations;

public class AugmentationsImpl
implements Augmentations {
    private AugmentationsItemsContainer fAugmentationsContainer = new SmallContainer();

    public Object putItem(String string, Object object) {
        Object object2 = this.fAugmentationsContainer.putItem(string, object);
        if (object2 == null && this.fAugmentationsContainer.isFull()) {
            this.fAugmentationsContainer = this.fAugmentationsContainer.expand();
        }
        return object2;
    }

    public Object getItem(String string) {
        return this.fAugmentationsContainer.getItem(string);
    }

    public Object removeItem(String string) {
        return this.fAugmentationsContainer.removeItem(string);
    }

    public Enumeration keys() {
        return this.fAugmentationsContainer.keys();
    }

    public void removeAllItems() {
        this.fAugmentationsContainer.clear();
    }

    public String toString() {
        return this.fAugmentationsContainer.toString();
    }

    abstract class AugmentationsItemsContainer {
        AugmentationsItemsContainer() {
        }

        public abstract Object putItem(Object var1, Object var2);

        public abstract Object getItem(Object var1);

        public abstract Object removeItem(Object var1);

        public abstract Enumeration keys();

        public abstract void clear();

        public abstract boolean isFull();

        public abstract AugmentationsItemsContainer expand();
    }

    class LargeContainer
    extends AugmentationsItemsContainer {
        final Hashtable fAugmentations = new Hashtable();

        LargeContainer() {
        }

        public Object getItem(Object object) {
            return this.fAugmentations.get(object);
        }

        public Object putItem(Object object, Object object2) {
            return this.fAugmentations.put(object, object2);
        }

        public Object removeItem(Object object) {
            return this.fAugmentations.remove(object);
        }

        public Enumeration keys() {
            return this.fAugmentations.keys();
        }

        public void clear() {
            this.fAugmentations.clear();
        }

        public boolean isFull() {
            return false;
        }

        public AugmentationsItemsContainer expand() {
            return this;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("LargeContainer");
            Enumeration enumeration = this.fAugmentations.keys();
            while (enumeration.hasMoreElements()) {
                Object k = enumeration.nextElement();
                stringBuffer.append("\nkey == ");
                stringBuffer.append(k);
                stringBuffer.append("; value == ");
                stringBuffer.append(this.fAugmentations.get(k));
            }
            return stringBuffer.toString();
        }
    }

    class SmallContainer
    extends AugmentationsItemsContainer {
        static final int SIZE_LIMIT = 10;
        final Object[] fAugmentations = new Object[20];
        int fNumEntries = 0;

        SmallContainer() {
        }

        public Enumeration keys() {
            return new SmallContainerKeyEnumeration();
        }

        public Object getItem(Object object) {
            int n = 0;
            while (n < this.fNumEntries * 2) {
                if (this.fAugmentations[n].equals(object)) {
                    return this.fAugmentations[n + 1];
                }
                n += 2;
            }
            return null;
        }

        public Object putItem(Object object, Object object2) {
            int n = 0;
            while (n < this.fNumEntries * 2) {
                if (this.fAugmentations[n].equals(object)) {
                    Object object3 = this.fAugmentations[n + 1];
                    this.fAugmentations[n + 1] = object2;
                    return object3;
                }
                n += 2;
            }
            this.fAugmentations[this.fNumEntries * 2] = object;
            this.fAugmentations[this.fNumEntries * 2 + 1] = object2;
            ++this.fNumEntries;
            return null;
        }

        public Object removeItem(Object object) {
            int n = 0;
            while (n < this.fNumEntries * 2) {
                if (this.fAugmentations[n].equals(object)) {
                    Object object2 = this.fAugmentations[n + 1];
                    int n2 = n;
                    while (n2 < this.fNumEntries * 2 - 2) {
                        this.fAugmentations[n2] = this.fAugmentations[n2 + 2];
                        this.fAugmentations[n2 + 1] = this.fAugmentations[n2 + 3];
                        n2 += 2;
                    }
                    this.fAugmentations[this.fNumEntries * 2 - 2] = null;
                    this.fAugmentations[this.fNumEntries * 2 - 1] = null;
                    --this.fNumEntries;
                    return object2;
                }
                n += 2;
            }
            return null;
        }

        public void clear() {
            int n = 0;
            while (n < this.fNumEntries * 2) {
                this.fAugmentations[n] = null;
                this.fAugmentations[n + 1] = null;
                n += 2;
            }
            this.fNumEntries = 0;
        }

        public boolean isFull() {
            return this.fNumEntries == 10;
        }

        public AugmentationsItemsContainer expand() {
            LargeContainer largeContainer = new LargeContainer();
            int n = 0;
            while (n < this.fNumEntries * 2) {
                largeContainer.putItem(this.fAugmentations[n], this.fAugmentations[n + 1]);
                n += 2;
            }
            return largeContainer;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("SmallContainer - fNumEntries == ").append(this.fNumEntries);
            int n = 0;
            while (n < 20) {
                stringBuffer.append("\nfAugmentations[");
                stringBuffer.append(n);
                stringBuffer.append("] == ");
                stringBuffer.append(this.fAugmentations[n]);
                stringBuffer.append("; fAugmentations[");
                stringBuffer.append(n + 1);
                stringBuffer.append("] == ");
                stringBuffer.append(this.fAugmentations[n + 1]);
                n += 2;
            }
            return stringBuffer.toString();
        }

        class SmallContainerKeyEnumeration
        implements Enumeration {
            Object[] enumArray;
            int next;

            SmallContainerKeyEnumeration() {
                this.enumArray = new Object[SmallContainer.this.fNumEntries];
                this.next = 0;
                int n = 0;
                while (n < SmallContainer.this.fNumEntries) {
                    this.enumArray[n] = SmallContainer.this.fAugmentations[n * 2];
                    ++n;
                }
            }

            public boolean hasMoreElements() {
                return this.next < this.enumArray.length;
            }

            public Object nextElement() {
                if (this.next >= this.enumArray.length) {
                    throw new NoSuchElementException();
                }
                Object object = this.enumArray[this.next];
                this.enumArray[this.next] = null;
                ++this.next;
                return object;
            }
        }
    }
}

