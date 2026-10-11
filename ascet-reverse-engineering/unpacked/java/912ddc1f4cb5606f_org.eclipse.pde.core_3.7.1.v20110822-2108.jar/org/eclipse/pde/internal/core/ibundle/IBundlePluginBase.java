/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.pde.core.IModelChangedListener;
import org.eclipse.pde.core.plugin.IPluginBase;

public interface IBundlePluginBase
extends IPluginBase,
IModelChangedListener {
    public String getTargetVersion();

    public void setTargetVersion(String var1);
}

