/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ShrinkableEntrySetValueCollection<E>
extends AbstractCollection<E>
implements Collection<E> {
    private final Set<? extends Map.Entry<?, ? extends E>> entrySet;

    public ShrinkableEntrySetValueCollection(Set<? extends Map.Entry<?, ? extends E>> e) {
        if (e == null) {
            throw new NullPointerException();
        }
        this.entrySet = e;
    }

    @Override
    public void clear() {
        this.entrySet.clear();
    }

    @Override
    public boolean isEmpty() {
        return this.entrySet.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return new ValueIterator(this.entrySet.iterator());
    }

    @Override
    public int size() {
        return this.entrySet.size();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class ValueIterator<E>
    implements Iterator<E> {
        private final Iterator<? extends Map.Entry<?, ? extends E>> iter;

        ValueIterator(Iterator<? extends Map.Entry<?, ? extends E>> i) {
            this.iter = i;
        }

        @Override
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override
        public E next() {
            Map.Entry<?, E> entry = this.iter.next();
            return entry.getValue();
        }

        @Override
        public void remove() {
            this.iter.remove();
        }
    }
}

