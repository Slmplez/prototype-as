/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchIteratorFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Everything<T>
extends MatchIteratorFilter<T>
implements IRepeatableIterator<T> {
    private boolean atStart = true;
    private final Class<? extends T> elementClass;

    public Everything(Class<? extends T> elementClass, Collection<T> collection) {
        super(RepeatableIterator.create(collection == null ? CollectionUtils.emptyList() : collection));
        this.elementClass = elementClass;
    }

    public Everything(Class<? extends T> elementClass, Iterator<? extends T> iterator, Expression expression) {
        this(elementClass, iterator, Everything.needsRepeadedAccessToEverything(expression));
    }

    public Everything(Class<? extends T> elementClass, IIndexProvider<? extends T> indexProvider) {
        super(RepeatableIterator.create(indexProvider));
        this.elementClass = elementClass;
    }

    Everything(Class<? extends T> elementClass, Iterator<? extends T> iterator, boolean needsRepeat) {
        super(needsRepeat ? RepeatableIterator.create(iterator) : iterator);
        this.elementClass = elementClass;
    }

    @Override
    public IRepeatableIterator<T> getCopy() {
        Iterator iterator = this.getInnerIterator();
        if (iterator instanceof IRepeatableIterator) {
            return new Everything<T>(this.elementClass, ((IRepeatableIterator)iterator).getCopy(), false);
        }
        if (this.atStart) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override
    public T next() {
        this.atStart = false;
        return super.next();
    }

    public Class<? extends T> getElementClass() {
        return this.elementClass;
    }

    @Override
    public Object getIteratorProvider() {
        Iterator iterator = this.getInnerIterator();
        if (iterator instanceof IRepeatableIterator) {
            return ((IRepeatableIterator)iterator).getIteratorProvider();
        }
        return this;
    }

    @Override
    protected boolean isMatch(T val) {
        return this.elementClass.isInstance(val);
    }

    private static boolean needsRepeadedAccessToEverything(Expression expression) {
        return expression.countAccessToEverything() > 1;
    }
}

