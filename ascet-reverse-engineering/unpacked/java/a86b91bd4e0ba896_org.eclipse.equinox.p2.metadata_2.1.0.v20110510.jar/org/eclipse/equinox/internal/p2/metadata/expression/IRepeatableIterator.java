/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IRepeatableIterator<T>
extends Iterator<T> {
    public IRepeatableIterator<T> getCopy();

    public Object getIteratorProvider();
}

