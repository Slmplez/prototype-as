/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.index;

import java.util.Iterator;
import org.eclipse.equinox.p2.metadata.index.IIndex;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IIndexProvider<T> {
    public IIndex<T> getIndex(String var1);

    public Iterator<T> everything();

    public Object getManagedProperty(Object var1, String var2, Object var3);
}

