/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstNodeFactory;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
interface BstBalancePolicy<N extends BstNode<?, N>> {
    public N balance(BstNodeFactory<N> var1, N var2, @Nullable N var3, @Nullable N var4);

    @Nullable
    public N combine(BstNodeFactory<N> var1, @Nullable N var2, @Nullable N var3);
}

