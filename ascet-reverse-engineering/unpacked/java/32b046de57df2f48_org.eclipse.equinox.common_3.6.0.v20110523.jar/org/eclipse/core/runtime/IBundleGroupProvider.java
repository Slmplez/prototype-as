/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IBundleGroup;

public interface IBundleGroupProvider {
    public String getName();

    public IBundleGroup[] getBundleGroups();
}

