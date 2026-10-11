/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.Iterator;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.TreeIterator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractTreeIterator<E>
extends BasicEList<Iterator<? extends E>>
implements TreeIterator<E> {
    private static final long serialVersionUID = 1L;
    protected boolean includeRoot;
    protected Object object;
    protected Iterator<? extends E> nextPruneIterator;
    protected Iterator<? extends E> nextRemoveIterator;

    public AbstractTreeIterator(E object) {
        this.object = object;
        this.includeRoot = true;
    }

    public AbstractTreeIterator(Object object, boolean includeRoot) {
        this.object = object;
        this.includeRoot = includeRoot;
    }

    protected abstract Iterator<? extends E> getChildren(Object var1);

    @Override
    public boolean hasNext() {
        if (this.data == null && !this.includeRoot) {
            return this.hasAnyChildren();
        }
        return this.hasMoreChildren();
    }

    private boolean hasAnyChildren() {
        Iterator<Object> nextPruneIterator = this.nextPruneIterator;
        nextPruneIterator = this.getChildren(this.object);
        this.add(nextPruneIterator);
        return nextPruneIterator.hasNext();
    }

    private boolean hasMoreChildren() {
        return this.data == null || !this.isEmpty() && ((Iterator)this.data[this.size - 1]).hasNext();
    }

    @Override
    public E next() {
        if (this.data == null) {
            this.nextPruneIterator = this.getChildren(this.object);
            this.add(this.nextPruneIterator);
            if (this.includeRoot) {
                Object result = this.object;
                return (E)result;
            }
        }
        Iterator currentIterator = (Iterator)this.data[this.size - 1];
        Object result = currentIterator.next();
        this.nextRemoveIterator = currentIterator;
        Iterator<E> iterator = this.getChildren(result);
        if (iterator.hasNext()) {
            this.nextPruneIterator = iterator;
            this.add(iterator);
        } else {
            this.nextPruneIterator = null;
            while (!currentIterator.hasNext()) {
                Iterator nextIterator;
                this.data[--this.size] = null;
                if (this.isEmpty()) break;
                currentIterator = nextIterator = (Iterator)this.data[this.size - 1];
            }
        }
        return result;
    }

    @Override
    public void remove() {
        if (this.nextRemoveIterator == null) {
            throw new IllegalStateException("There is no valid object to remove.");
        }
        this.nextRemoveIterator.remove();
    }

    @Override
    public void prune() {
        if (this.nextPruneIterator != null) {
            if (!this.isEmpty() && this.data[this.size - 1] == this.nextPruneIterator) {
                this.data[--this.size] = null;
                while (!this.isEmpty() && !((Iterator)this.data[this.size - 1]).hasNext()) {
                    this.data[--this.size] = null;
                }
            }
            this.nextPruneIterator = null;
        }
    }
}

