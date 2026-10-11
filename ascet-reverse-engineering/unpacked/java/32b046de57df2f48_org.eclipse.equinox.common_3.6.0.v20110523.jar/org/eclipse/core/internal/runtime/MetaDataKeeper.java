/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import org.eclipse.core.internal.runtime.DataArea;

public class MetaDataKeeper {
    private static DataArea metaArea = null;

    public static DataArea getMetaArea() {
        if (metaArea != null) {
            return metaArea;
        }
        metaArea = new DataArea();
        return metaArea;
    }
}

