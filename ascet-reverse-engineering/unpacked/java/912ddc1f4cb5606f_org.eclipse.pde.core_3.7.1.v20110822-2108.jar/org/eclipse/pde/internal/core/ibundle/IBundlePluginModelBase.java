/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.pde.core.IEditable;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ISharedExtensionsModel;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;

public interface IBundlePluginModelBase
extends IPluginModelBase,
IEditable {
    public IBundleModel getBundleModel();

    public ISharedExtensionsModel getExtensionsModel();

    public void setBundleModel(IBundleModel var1);

    public void setExtensionsModel(ISharedExtensionsModel var1);

    public IPluginImport createImport();

    public IPluginLibrary createLibrary();

    public void save();

    public String getBundleLocalization();
}

