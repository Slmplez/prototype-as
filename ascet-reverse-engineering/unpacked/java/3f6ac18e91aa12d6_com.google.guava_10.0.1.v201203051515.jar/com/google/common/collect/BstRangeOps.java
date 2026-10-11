/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BstAggregate;
import com.google.common.collect.BstBalancePolicy;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstNodeFactory;
import com.google.common.collect.BstPath;
import com.google.common.collect.BstPathFactory;
import com.google.common.collect.BstSide;
import com.google.common.collect.GeneralRange;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class BstRangeOps {
    public static <K, N extends BstNode<K, N>> int totalInRange(BstAggregate<? super N> aggregate, GeneralRange<K> range, @Nullable N root) {
        Preconditions.checkNotNull(aggregate);
        Preconditions.checkNotNull(range);
        if (root == null || range.isEmpty()) {
            return 0;
        }
        int total = aggregate.treeValue(root);
        if (range.hasLowerBound()) {
            total -= BstRangeOps.totalBeyondRangeToSide(aggregate, range, BstSide.LEFT, root);
        }
        if (range.hasUpperBound()) {
            total -= BstRangeOps.totalBeyondRangeToSide(aggregate, range, BstSide.RIGHT, root);
        }
        return total;
    }

    private static <K, N extends BstNode<K, N>> int totalBeyondRangeToSide(BstAggregate<? super N> aggregate, GeneralRange<K> range, BstSide side, @Nullable N root) {
        int accum = 0;
        while (root != null) {
            if (BstRangeOps.beyond(range, root.getKey(), side)) {
                accum += aggregate.entryValue(root);
                accum += aggregate.treeValue(root.childOrNull(side));
                root = root.childOrNull(side.other());
                continue;
            }
            root = root.childOrNull(side);
        }
        return accum;
    }

    @Nullable
    public static <K, N extends BstNode<K, N>> N minusRange(GeneralRange<K> range, BstBalancePolicy<N> balancePolicy, BstNodeFactory<N> nodeFactory, @Nullable N root) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(balancePolicy);
        Preconditions.checkNotNull(nodeFactory);
        Object higher = range.hasUpperBound() ? (Object)BstRangeOps.subTreeBeyondRangeToSide(range, balancePolicy, nodeFactory, BstSide.RIGHT, root) : null;
        Object lower = range.hasLowerBound() ? (Object)BstRangeOps.subTreeBeyondRangeToSide(range, balancePolicy, nodeFactory, BstSide.LEFT, root) : null;
        return balancePolicy.combine(nodeFactory, lower, higher);
    }

    @Nullable
    private static <K, N extends BstNode<K, N>> N subTreeBeyondRangeToSide(GeneralRange<K> range, BstBalancePolicy<N> balancePolicy, BstNodeFactory<N> nodeFactory, BstSide side, @Nullable N root) {
        if (root == null) {
            return null;
        }
        if (BstRangeOps.beyond(range, root.getKey(), side)) {
            N left = root.childOrNull(BstSide.LEFT);
            N right = root.childOrNull(BstSide.RIGHT);
            switch (side) {
                case LEFT: {
                    right = BstRangeOps.subTreeBeyondRangeToSide(range, balancePolicy, nodeFactory, BstSide.LEFT, right);
                    break;
                }
                case RIGHT: {
                    left = BstRangeOps.subTreeBeyondRangeToSide(range, balancePolicy, nodeFactory, BstSide.RIGHT, left);
                    break;
                }
                default: {
                    throw new AssertionError();
                }
            }
            return balancePolicy.balance(nodeFactory, root, left, right);
        }
        return BstRangeOps.subTreeBeyondRangeToSide(range, balancePolicy, nodeFactory, side, root.childOrNull(side));
    }

    @Nullable
    public static <K, N extends BstNode<K, N>, P extends BstPath<N, P>> P furthestPath(GeneralRange<K> range, BstSide side, BstPathFactory<N, P> pathFactory, @Nullable N root) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(pathFactory);
        Preconditions.checkNotNull(side);
        if (root == null) {
            return null;
        }
        P path = pathFactory.initialPath(root);
        return BstRangeOps.furthestPath(range, side, pathFactory, path);
    }

    private static <K, N extends BstNode<K, N>, P extends BstPath<N, P>> P furthestPath(GeneralRange<K> range, BstSide side, BstPathFactory<N, P> pathFactory, P currentPath) {
        N tip = currentPath.getTip();
        K tipKey = ((BstNode)tip).getKey();
        if (BstRangeOps.beyond(range, tipKey, side)) {
            if (((BstNode)tip).hasChild(side.other())) {
                currentPath = pathFactory.extension(currentPath, side.other());
                return BstRangeOps.furthestPath(range, side, pathFactory, currentPath);
            }
            return null;
        }
        if (((BstNode)tip).hasChild(side)) {
            P alphaPath = pathFactory.extension(currentPath, side);
            if ((alphaPath = BstRangeOps.furthestPath(range, side, pathFactory, alphaPath)) != null) {
                return alphaPath;
            }
        }
        return BstRangeOps.beyond(range, tipKey, side.other()) ? null : (P)currentPath;
    }

    public static <K> boolean beyond(GeneralRange<K> range, K key, BstSide side) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(key);
        switch (side) {
            case LEFT: {
                return range.tooLow(key);
            }
            case RIGHT: {
                return range.tooHigh(key);
            }
        }
        throw new AssertionError();
    }

    private BstRangeOps() {
    }
}

