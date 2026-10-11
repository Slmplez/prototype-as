/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IQueryResult<T>
extends IQueryable<T> {
    public boolean isEmpty();

    public Iterator<T> iterator();

    public T[] toArray(Class<T> var1);

    public Set<T> toSet();

    public Set<T> toUnmodifiableSet();
}

