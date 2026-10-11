/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BstBalancePolicy;
import com.google.common.collect.BstModificationResult;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstNodeFactory;
import com.google.common.collect.BstSide;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class BstMutationResult<K, N extends BstNode<K, N>> {
    private final K targetKey;
    @Nullable
    private N originalRoot;
    @Nullable
    private N changedRoot;
    private final BstModificationResult<N> modificationResult;

    public static <K, N extends BstNode<K, N>> BstMutationResult<K, N> mutationResult(K targetKey, @Nullable N originalRoot, @Nullable N changedRoot, BstModificationResult<N> modificationResult) {
        return new BstMutationResult<K, N>(targetKey, originalRoot, changedRoot, modificationResult);
    }

    private BstMutationResult(K targetKey, @Nullable N originalRoot, @Nullable N changedRoot, BstModificationResult<N> modificationResult) {
        this.targetKey = Preconditions.checkNotNull(targetKey);
        this.originalRoot = originalRoot;
        this.changedRoot = changedRoot;
        this.modificationResult = Preconditions.checkNotNull(modificationResult);
    }

    public K getTargetKey() {
        return this.targetKey;
    }

    @Nullable
    public N getOriginalRoot() {
        return this.originalRoot;
    }

    @Nullable
    public N getChangedRoot() {
        return this.changedRoot;
    }

    @Nullable
    public N getOriginalTarget() {
        return this.modificationResult.getOriginalTarget();
    }

    @Nullable
    public N getChangedTarget() {
        return this.modificationResult.getChangedTarget();
    }

    BstModificationResult.ModificationType modificationType() {
        return this.modificationResult.getType();
    }

    public BstMutationResult<K, N> lift(N liftOriginalRoot, BstSide side, BstNodeFactory<N> nodeFactory, BstBalancePolicy<N> balancePolicy) {
        assert (liftOriginalRoot != null & side != null & nodeFactory != null & balancePolicy != null);
        switch (this.modificationType()) {
            case IDENTITY: {
                this.changedRoot = liftOriginalRoot;
                this.originalRoot = this.changedRoot;
                return this;
            }
            case REBUILDING_CHANGE: 
            case REBALANCING_CHANGE: {
                this.originalRoot = liftOriginalRoot;
                Object resultLeft = ((BstNode)liftOriginalRoot).childOrNull(BstSide.LEFT);
                Object resultRight = ((BstNode)liftOriginalRoot).childOrNull(BstSide.RIGHT);
                switch (side) {
                    case LEFT: {
                        resultLeft = this.changedRoot;
                        break;
                    }
                    case RIGHT: {
                        resultRight = this.changedRoot;
                        break;
                    }
                    default: {
                        throw new AssertionError();
                    }
                }
                this.changedRoot = this.modificationType() == BstModificationResult.ModificationType.REBUILDING_CHANGE ? nodeFactory.createNode(liftOriginalRoot, resultLeft, resultRight) : balancePolicy.balance(nodeFactory, liftOriginalRoot, resultLeft, resultRight);
                return this;
            }
        }
        throw new AssertionError();
    }
}

