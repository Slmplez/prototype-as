/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import java.util.NoSuchElementException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MatchIteratorFilter<T>
implements Iterator<T> {
    private static final Object NO_ELEMENT = new Object();
    private final Iterator<? extends T> innerIterator;
    private T nextObject = MatchIteratorFilter.noElement();

    public MatchIteratorFilter(Iterator<? extends T> iterator) {
        this.innerIterator = iterator;
    }

    @Override
    public boolean hasNext() {
        return this.positionNext();
    }

    @Override
    public T next() {
        if (!this.positionNext()) {
            throw new NoSuchElementException();
        }
        T nxt = this.nextObject;
        this.nextObject = MatchIteratorFilter.noElement();
        return nxt;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    protected Iterator<? extends T> getInnerIterator() {
        return this.innerIterator;
    }

    protected abstract boolean isMatch(T var1);

    /*
     * Unable to fully structure code
     */
    private boolean positionNext() {
        if (this.nextObject == MatchIteratorFilter.NO_ELEMENT) ** GOTO lbl7
        return true;
lbl-1000:
        // 1 sources

        {
            nxt = this.innerIterator.next();
            if (!this.isMatch(nxt)) continue;
            this.nextObject = nxt;
            return true;
lbl7:
            // 2 sources

            ** while (this.innerIterator.hasNext())
        }
lbl8:
        // 1 sources

        return false;
    }

    private static <T> T noElement() {
        return (T)NO_ELEMENT;
    }
}

