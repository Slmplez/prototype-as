/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IBuildConfiguration;

public interface IBuildContext {
    public IBuildConfiguration[] getAllReferencedBuildConfigs();

    public IBuildConfiguration[] getAllReferencingBuildConfigs();

    public IBuildConfiguration[] getRequestedConfigs();
}

