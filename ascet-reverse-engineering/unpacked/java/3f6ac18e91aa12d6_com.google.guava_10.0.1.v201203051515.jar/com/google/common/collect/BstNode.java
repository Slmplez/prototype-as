/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BstSide;
import java.util.Comparator;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
class BstNode<K, N extends BstNode<K, N>> {
    private final K key;
    @Nullable
    private final N left;
    @Nullable
    private final N right;

    BstNode(K key, @Nullable N left, @Nullable N right) {
        this.key = Preconditions.checkNotNull(key);
        this.left = left;
        this.right = right;
    }

    public final K getKey() {
        return this.key;
    }

    @Nullable
    public final N childOrNull(BstSide side) {
        switch (side) {
            case LEFT: {
                return this.left;
            }
            case RIGHT: {
                return this.right;
            }
        }
        throw new AssertionError();
    }

    public final boolean hasChild(BstSide side) {
        return this.childOrNull(side) != null;
    }

    public final N getChild(BstSide side) {
        N child = this.childOrNull(side);
        Preconditions.checkState(child != null);
        return child;
    }

    protected final boolean orderingInvariantHolds(Comparator<? super K> comparator) {
        Preconditions.checkNotNull(comparator);
        boolean result = true;
        if (this.hasChild(BstSide.LEFT)) {
            result &= comparator.compare(((BstNode)this.getChild(BstSide.LEFT)).getKey(), this.key) < 0;
        }
        if (this.hasChild(BstSide.RIGHT)) {
            result &= comparator.compare(((BstNode)this.getChild(BstSide.RIGHT)).getKey(), this.key) > 0;
        }
        return result;
    }
}

