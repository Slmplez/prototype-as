/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.internal;

import java.util.Map;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BlockChangePropagationOption
extends BasicTransactionOptionMetadata {
    public BlockChangePropagationOption() {
        super("block_cd_prop", false, false, Boolean.class, Boolean.FALSE);
    }

    @Override
    public void inherit(Map<?, ?> parentOptions, Map<Object, Object> childOptions, boolean force) {
    }
}

