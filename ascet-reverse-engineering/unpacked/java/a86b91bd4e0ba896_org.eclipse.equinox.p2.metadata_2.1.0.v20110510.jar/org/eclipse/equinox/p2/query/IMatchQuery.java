/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import org.eclipse.equinox.p2.query.IQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMatchQuery<T>
extends IQuery<T> {
    public boolean isMatch(T var1);
}

