/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BstNode;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class BstModificationResult<N extends BstNode<?, N>> {
    @Nullable
    private final N originalTarget;
    @Nullable
    private final N changedTarget;
    private final ModificationType type;

    static <N extends BstNode<?, N>> BstModificationResult<N> identity(@Nullable N target) {
        return new BstModificationResult<N>(target, target, ModificationType.IDENTITY);
    }

    static <N extends BstNode<?, N>> BstModificationResult<N> rebuildingChange(@Nullable N originalTarget, @Nullable N changedTarget) {
        return new BstModificationResult<N>(originalTarget, changedTarget, ModificationType.REBUILDING_CHANGE);
    }

    static <N extends BstNode<?, N>> BstModificationResult<N> rebalancingChange(@Nullable N originalTarget, @Nullable N changedTarget) {
        return new BstModificationResult<N>(originalTarget, changedTarget, ModificationType.REBALANCING_CHANGE);
    }

    private BstModificationResult(@Nullable N originalTarget, @Nullable N changedTarget, ModificationType type) {
        this.originalTarget = originalTarget;
        this.changedTarget = changedTarget;
        this.type = Preconditions.checkNotNull(type);
    }

    @Nullable
    N getOriginalTarget() {
        return this.originalTarget;
    }

    @Nullable
    N getChangedTarget() {
        return this.changedTarget;
    }

    ModificationType getType() {
        return this.type;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static enum ModificationType {
        IDENTITY,
        REBUILDING_CHANGE,
        REBALANCING_CHANGE;

    }
}

