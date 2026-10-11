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
import com.google.common.collect.BstMutationResult;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstNodeFactory;
import com.google.common.collect.BstOperations;
import com.google.common.collect.BstSide;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class BstCountBasedBalancePolicies {
    private static final int SINGLE_ROTATE_RATIO = 4;
    private static final int SECOND_ROTATE_RATIO = 2;

    private BstCountBasedBalancePolicies() {
    }

    public static <N extends BstNode<?, N>> BstBalancePolicy<N> noRebalancePolicy(final BstAggregate<N> countAggregate) {
        Preconditions.checkNotNull(countAggregate);
        return new BstBalancePolicy<N>(){

            @Override
            public N balance(BstNodeFactory<N> nodeFactory, N source, @Nullable N left, @Nullable N right) {
                return Preconditions.checkNotNull(nodeFactory).createNode(source, left, right);
            }

            @Override
            @Nullable
            public N combine(BstNodeFactory<N> nodeFactory, @Nullable N left, @Nullable N right) {
                if (left == null) {
                    return right;
                }
                if (right == null) {
                    return left;
                }
                if (countAggregate.treeValue(left) > countAggregate.treeValue(right)) {
                    return nodeFactory.createNode(left, ((BstNode)left).childOrNull(BstSide.LEFT), this.combine(nodeFactory, ((BstNode)left).childOrNull(BstSide.RIGHT), right));
                }
                return nodeFactory.createNode(right, this.combine(nodeFactory, left, ((BstNode)right).childOrNull(BstSide.LEFT)), ((BstNode)right).childOrNull(BstSide.RIGHT));
            }
        };
    }

    public static <K, N extends BstNode<K, N>> BstBalancePolicy<N> singleRebalancePolicy(final BstAggregate<N> countAggregate) {
        Preconditions.checkNotNull(countAggregate);
        return new BstBalancePolicy<N>(){

            @Override
            public N balance(BstNodeFactory<N> nodeFactory, N source, @Nullable N left, @Nullable N right) {
                int countR;
                int countL = countAggregate.treeValue(left);
                if (countL + (countR = countAggregate.treeValue(right)) > 1) {
                    if (countR >= 4 * countL) {
                        return this.rotateL(nodeFactory, source, left, right);
                    }
                    if (countL >= 4 * countR) {
                        return this.rotateR(nodeFactory, source, left, right);
                    }
                }
                return nodeFactory.createNode(source, left, right);
            }

            private N rotateL(BstNodeFactory<N> nodeFactory, N source, @Nullable N left, N right) {
                Preconditions.checkNotNull(right);
                Object rl = ((BstNode)right).childOrNull(BstSide.LEFT);
                Object rr = ((BstNode)right).childOrNull(BstSide.RIGHT);
                if (countAggregate.treeValue(rl) >= 2 * countAggregate.treeValue(rr)) {
                    right = this.singleR(nodeFactory, right, rl, rr);
                }
                return this.singleL(nodeFactory, source, left, right);
            }

            private N rotateR(BstNodeFactory<N> nodeFactory, N source, N left, @Nullable N right) {
                Preconditions.checkNotNull(left);
                Object lr = ((BstNode)left).childOrNull(BstSide.RIGHT);
                Object ll = ((BstNode)left).childOrNull(BstSide.LEFT);
                if (countAggregate.treeValue(lr) >= 2 * countAggregate.treeValue(ll)) {
                    left = this.singleL(nodeFactory, left, ll, lr);
                }
                return this.singleR(nodeFactory, source, left, right);
            }

            private N singleL(BstNodeFactory<N> nodeFactory, N source, @Nullable N left, N right) {
                Preconditions.checkNotNull(right);
                return nodeFactory.createNode(right, nodeFactory.createNode(source, left, ((BstNode)right).childOrNull(BstSide.LEFT)), ((BstNode)right).childOrNull(BstSide.RIGHT));
            }

            private N singleR(BstNodeFactory<N> nodeFactory, N source, N left, @Nullable N right) {
                Preconditions.checkNotNull(left);
                return nodeFactory.createNode(left, ((BstNode)left).childOrNull(BstSide.LEFT), nodeFactory.createNode(source, ((BstNode)left).childOrNull(BstSide.RIGHT), right));
            }

            @Override
            @Nullable
            public N combine(BstNodeFactory<N> nodeFactory, @Nullable N left, @Nullable N right) {
                Object newRootSource;
                if (left == null) {
                    return right;
                }
                if (right == null) {
                    return left;
                }
                if (countAggregate.treeValue(left) > countAggregate.treeValue(right)) {
                    BstMutationResult extractLeftMax = BstOperations.extractMax(left, nodeFactory, this);
                    newRootSource = extractLeftMax.getOriginalTarget();
                    left = extractLeftMax.getChangedRoot();
                } else {
                    BstMutationResult extractRightMin = BstOperations.extractMin(right, nodeFactory, this);
                    newRootSource = extractRightMin.getOriginalTarget();
                    right = extractRightMin.getChangedRoot();
                }
                return nodeFactory.createNode(newRootSource, left, right);
            }
        };
    }

    public static <K, N extends BstNode<K, N>> BstBalancePolicy<N> fullRebalancePolicy(final BstAggregate<N> countAggregate) {
        Preconditions.checkNotNull(countAggregate);
        final BstBalancePolicy<N> singleBalancePolicy = BstCountBasedBalancePolicies.singleRebalancePolicy(countAggregate);
        return new BstBalancePolicy<N>(){

            @Override
            public N balance(BstNodeFactory<N> nodeFactory, N source, @Nullable N left, @Nullable N right) {
                int countR;
                if (left == null) {
                    return BstOperations.insertMin(right, source, nodeFactory, singleBalancePolicy);
                }
                if (right == null) {
                    return BstOperations.insertMax(left, source, nodeFactory, singleBalancePolicy);
                }
                int countL = countAggregate.treeValue(left);
                if (4 * countL <= (countR = countAggregate.treeValue(right))) {
                    Object resultLeft = this.balance(nodeFactory, source, left, ((BstNode)right).childOrNull(BstSide.LEFT));
                    return singleBalancePolicy.balance(nodeFactory, right, resultLeft, ((BstNode)right).childOrNull(BstSide.RIGHT));
                }
                if (4 * countR <= countL) {
                    Object resultRight = this.balance(nodeFactory, source, ((BstNode)left).childOrNull(BstSide.RIGHT), right);
                    return singleBalancePolicy.balance(nodeFactory, left, ((BstNode)left).childOrNull(BstSide.LEFT), resultRight);
                }
                return nodeFactory.createNode(source, left, right);
            }

            @Override
            @Nullable
            public N combine(BstNodeFactory<N> nodeFactory, @Nullable N left, @Nullable N right) {
                int countR;
                if (left == null) {
                    return right;
                }
                if (right == null) {
                    return left;
                }
                int countL = countAggregate.treeValue(left);
                if (4 * countL <= (countR = countAggregate.treeValue(right))) {
                    Object resultLeft = this.combine(nodeFactory, left, ((BstNode)right).childOrNull(BstSide.LEFT));
                    return singleBalancePolicy.balance(nodeFactory, right, resultLeft, ((BstNode)right).childOrNull(BstSide.RIGHT));
                }
                if (4 * countR <= countL) {
                    Object resultRight = this.combine(nodeFactory, ((BstNode)left).childOrNull(BstSide.RIGHT), right);
                    return singleBalancePolicy.balance(nodeFactory, left, ((BstNode)left).childOrNull(BstSide.LEFT), resultRight);
                }
                return singleBalancePolicy.combine(nodeFactory, left, right);
            }
        };
    }
}

