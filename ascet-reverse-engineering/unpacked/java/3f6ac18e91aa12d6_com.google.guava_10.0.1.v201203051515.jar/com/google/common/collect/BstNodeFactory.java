/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.BstNode;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
abstract class BstNodeFactory<N extends BstNode<?, N>> {
    BstNodeFactory() {
    }

    public abstract N createNode(N var1, @Nullable N var2, @Nullable N var3);

    public final N createLeaf(N source) {
        return this.createNode(source, null, null);
    }
}

