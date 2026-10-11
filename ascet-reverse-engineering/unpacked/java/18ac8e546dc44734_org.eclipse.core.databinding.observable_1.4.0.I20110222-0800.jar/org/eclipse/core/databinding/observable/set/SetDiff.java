/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.eclipse.core.databinding.observable.IDiff;

public abstract class SetDiff
implements IDiff {
    public abstract Set getAdditions();

    public abstract Set getRemovals();

    public boolean isEmpty() {
        return this.getAdditions().isEmpty() && this.getRemovals().isEmpty();
    }

    public void applyTo(Set set) {
        set.addAll(this.getAdditions());
        set.removeAll(this.getRemovals());
    }

    public Set simulateOn(Set set) {
        return new DeltaSet(set, this);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.getClass().getName()).append("{additions [").append(this.getAdditions() != null ? this.getAdditions().toString() : "null").append("], removals [").append(this.getRemovals() != null ? this.getRemovals().toString() : "null").append("]}");
        return buffer.toString();
    }

    private static class DeltaSet
    extends AbstractSet {
        private Set original;
        private final SetDiff diff;

        public DeltaSet(Set original, SetDiff diff) {
            this.original = original;
            this.diff = diff;
        }

        public Iterator iterator() {
            return new Iterator(this){
                Iterator orig;
                Iterator add;
                boolean haveNext;
                Object next;
                final /* synthetic */ DeltaSet this$1;
                {
                    this.this$1 = deltaSet;
                    this.orig = DeltaSet.access$0(deltaSet).iterator();
                    this.add = DeltaSet.access$1(deltaSet).getAdditions().iterator();
                    this.haveNext = false;
                }

                public boolean hasNext() {
                    return this.findNext();
                }

                public Object next() {
                    if (!this.findNext()) {
                        throw new NoSuchElementException();
                    }
                    Object myNext = this.next;
                    this.haveNext = false;
                    this.next = null;
                    return myNext;
                }

                private boolean findNext() {
                    E candidate;
                    if (this.haveNext) {
                        return true;
                    }
                    do {
                        if (this.orig.hasNext()) {
                            candidate = this.orig.next();
                            continue;
                        }
                        if (this.add.hasNext()) {
                            candidate = this.add.next();
                            continue;
                        }
                        return false;
                    } while (DeltaSet.access$1(this.this$1).getRemovals().contains(candidate));
                    this.haveNext = true;
                    this.next = candidate;
                    return true;
                }

                public void remove() {
                    throw new UnsupportedOperationException();
                }
            };
        }

        public boolean contains(Object o) {
            return (this.original.contains(o) || this.diff.getAdditions().contains(o)) && !this.diff.getRemovals().contains(o);
        }

        public int size() {
            return this.original.size() + this.diff.getAdditions().size() - this.diff.getRemovals().size();
        }

        static /* synthetic */ Set access$0(DeltaSet deltaSet) {
            return deltaSet.original;
        }

        static /* synthetic */ SetDiff access$1(DeltaSet deltaSet) {
            return deltaSet.diff;
        }
    }
}

