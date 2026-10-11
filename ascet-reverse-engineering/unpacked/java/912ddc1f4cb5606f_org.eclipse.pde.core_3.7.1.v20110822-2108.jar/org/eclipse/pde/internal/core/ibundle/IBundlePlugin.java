/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginBase;

public interface IBundlePlugin
extends IBundlePluginBase,
IPlugin {
    public boolean hasExtensibleAPI();
}

