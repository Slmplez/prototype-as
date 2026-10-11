/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.internal;

import java.util.Map;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AllowChangePropagationBlockingOption
extends BasicTransactionOptionMetadata {
    public AllowChangePropagationBlockingOption() {
        super("allow_block_cd_prop", false, true, Boolean.class, Boolean.FALSE);
    }

    @Override
    public void inherit(Map<?, ?> parentOptions, Map<Object, Object> childOptions, boolean force) {
        if (!childOptions.containsKey("block_cd_prop")) {
            childOptions.put(this.getOption(), this.getValue(parentOptions));
        }
    }
}

