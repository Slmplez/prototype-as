/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.BstModificationResult;
import com.google.common.collect.BstNode;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
interface BstModifier<K, N extends BstNode<K, N>> {
    public BstModificationResult<N> modify(K var1, @Nullable N var2);
}

