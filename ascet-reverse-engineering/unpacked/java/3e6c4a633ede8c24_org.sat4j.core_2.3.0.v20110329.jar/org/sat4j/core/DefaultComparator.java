/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

import java.io.Serializable;
import java.util.Comparator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class DefaultComparator<A extends Comparable<A>>
implements Comparator<A>,
Serializable {
    private static final long serialVersionUID = 1L;

    @Override
    public int compare(A a, A a2) {
        return a.compareTo(a2);
    }

    @Override
    public /* synthetic */ int compare(Object object, Object object2) {
        return this.compare((A)((Comparable)object), (A)((Comparable)object2));
    }
}

