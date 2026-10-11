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
abstract class BstPath<N extends BstNode<?, N>, P extends BstPath<N, P>> {
    private final N tip;
    @Nullable
    private final P prefix;

    BstPath(N tip, @Nullable P prefix) {
        this.tip = (BstNode)Preconditions.checkNotNull(tip);
        this.prefix = prefix;
    }

    public final N getTip() {
        return this.tip;
    }

    public final boolean hasPrefix() {
        return this.prefix != null;
    }

    @Nullable
    public final P prefixOrNull() {
        return this.prefix;
    }

    public final P getPrefix() {
        Preconditions.checkState(this.hasPrefix());
        return this.prefix;
    }
}

