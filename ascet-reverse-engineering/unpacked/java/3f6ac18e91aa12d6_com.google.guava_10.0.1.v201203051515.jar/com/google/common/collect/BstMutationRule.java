/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BstBalancePolicy;
import com.google.common.collect.BstModifier;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstNodeFactory;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class BstMutationRule<K, N extends BstNode<K, N>> {
    private final BstModifier<K, N> modifier;
    private final BstBalancePolicy<N> balancePolicy;
    private final BstNodeFactory<N> nodeFactory;

    public static <K, N extends BstNode<K, N>> BstMutationRule<K, N> createRule(BstModifier<K, N> modifier, BstBalancePolicy<N> balancePolicy, BstNodeFactory<N> nodeFactory) {
        return new BstMutationRule<K, N>(modifier, balancePolicy, nodeFactory);
    }

    private BstMutationRule(BstModifier<K, N> modifier, BstBalancePolicy<N> balancePolicy, BstNodeFactory<N> nodeFactory) {
        this.balancePolicy = Preconditions.checkNotNull(balancePolicy);
        this.nodeFactory = Preconditions.checkNotNull(nodeFactory);
        this.modifier = Preconditions.checkNotNull(modifier);
    }

    public BstModifier<K, N> getModifier() {
        return this.modifier;
    }

    public BstBalancePolicy<N> getBalancePolicy() {
        return this.balancePolicy;
    }

    public BstNodeFactory<N> getNodeFactory() {
        return this.nodeFactory;
    }
}

