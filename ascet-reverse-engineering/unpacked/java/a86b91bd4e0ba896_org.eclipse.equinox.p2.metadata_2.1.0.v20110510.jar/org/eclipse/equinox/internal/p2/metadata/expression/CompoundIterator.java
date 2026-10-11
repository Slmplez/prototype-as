/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompoundIterator<T>
implements Iterator<T> {
    private static final Object NO_ELEMENT = new Object();
    private final Iterator<? extends Object> iteratorIterator;
    private Iterator<T> currentIterator;
    private T nextObject = CompoundIterator.noElement();

    public CompoundIterator(Iterator<? extends Object> iterator) {
        this.iteratorIterator = iterator;
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
        this.nextObject = CompoundIterator.noElement();
        return nxt;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    private boolean positionNext() {
        if (this.nextObject == CompoundIterator.NO_ELEMENT) ** GOTO lbl7
        return true;
lbl-1000:
        // 1 sources

        {
            if (!this.iteratorIterator.hasNext()) {
                return false;
            }
            nextItor = this.iteratorIterator.next();
            v0 /* !! */  = this.currentIterator = nextItor instanceof Iterator != false ? (IRepeatableIterator<T>)nextItor : RepeatableIterator.create(nextItor);
lbl7:
            // 2 sources

            ** while (this.currentIterator == null || !this.currentIterator.hasNext())
        }
lbl8:
        // 1 sources

        this.nextObject = this.currentIterator.next();
        return true;
    }

    private static <T> T noElement() {
        return (T)NO_ELEMENT;
    }
}

