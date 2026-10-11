/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.Collection;
import org.eclipse.emf.common.util.BasicEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UniqueEList<E>
extends BasicEList<E> {
    private static final long serialVersionUID = 1L;

    public UniqueEList() {
    }

    public UniqueEList(int initialCapacity) {
        super(initialCapacity);
    }

    public UniqueEList(Collection<? extends E> collection) {
        super(collection.size());
        this.addAll(collection);
    }

    @Override
    protected boolean isUnique() {
        return true;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FastCompare<E>
    extends UniqueEList<E> {
        private static final long serialVersionUID = 1L;

        public FastCompare() {
        }

        public FastCompare(int initialCapacity) {
            super(initialCapacity);
        }

        public FastCompare(Collection<? extends E> collection) {
            super(collection.size());
            this.addAll(collection);
        }

        @Override
        protected boolean useEquals() {
            return false;
        }
    }
}

