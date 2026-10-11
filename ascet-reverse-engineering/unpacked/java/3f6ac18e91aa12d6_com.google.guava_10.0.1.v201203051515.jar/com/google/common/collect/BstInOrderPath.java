/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstPath;
import com.google.common.collect.BstPathFactory;
import com.google.common.collect.BstSide;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class BstInOrderPath<N extends BstNode<?, N>>
extends BstPath<N, BstInOrderPath<N>> {
    private final BstSide sideExtension;
    private transient Optional<BstInOrderPath<N>> prevInOrder;
    private transient Optional<BstInOrderPath<N>> nextInOrder;

    public static <N extends BstNode<?, N>> BstPathFactory<N, BstInOrderPath<N>> inOrderFactory() {
        return new BstPathFactory<N, BstInOrderPath<N>>(){

            @Override
            public BstInOrderPath<N> extension(BstInOrderPath<N> path, BstSide side) {
                return BstInOrderPath.extension(path, side);
            }

            @Override
            public BstInOrderPath<N> initialPath(N root) {
                return new BstInOrderPath((BstNode)root, null, null, null);
            }
        };
    }

    private static <N extends BstNode<?, N>> BstInOrderPath<N> extension(BstInOrderPath<N> path, BstSide side) {
        Preconditions.checkNotNull(path);
        Object tip = path.getTip();
        return new BstInOrderPath<N>(((BstNode)tip).getChild(side), side, path);
    }

    private BstInOrderPath(N tip, @Nullable BstSide sideExtension, @Nullable BstInOrderPath<N> tail) {
        super(tip, tail);
        this.sideExtension = sideExtension;
        assert (sideExtension == null == (tail == null));
    }

    private Optional<BstInOrderPath<N>> computeNextInOrder(BstSide side) {
        if (((BstNode)this.getTip()).hasChild(side)) {
            BstInOrderPath<N> path = BstInOrderPath.extension(this, side);
            BstSide otherSide = side.other();
            while (((BstNode)path.getTip()).hasChild(otherSide)) {
                path = BstInOrderPath.extension(path, otherSide);
            }
            return Optional.of(path);
        }
        BstInOrderPath current = this;
        while (current.sideExtension == side) {
            current = (BstInOrderPath)current.getPrefix();
        }
        current = (BstInOrderPath)current.prefixOrNull();
        return Optional.fromNullable(current);
    }

    private Optional<BstInOrderPath<N>> nextInOrder(BstSide side) {
        switch (side) {
            case LEFT: {
                Optional<BstInOrderPath<N>> result = this.prevInOrder;
                return result == null ? (this.prevInOrder = this.computeNextInOrder(side)) : result;
            }
            case RIGHT: {
                Optional<BstInOrderPath<N>> result = this.nextInOrder;
                return result == null ? (this.nextInOrder = this.computeNextInOrder(side)) : result;
            }
        }
        throw new AssertionError();
    }

    public boolean hasNext(BstSide side) {
        return this.nextInOrder(side).isPresent();
    }

    public BstInOrderPath<N> next(BstSide side) {
        if (!this.hasNext(side)) {
            throw new NoSuchElementException();
        }
        return this.nextInOrder(side).get();
    }

    public BstSide getSideOfExtension() {
        return this.sideExtension;
    }

    /* synthetic */ BstInOrderPath(BstNode x0, BstSide x1, BstInOrderPath x2, 1 x3) {
        this(x0, x1, x2);
    }
}

