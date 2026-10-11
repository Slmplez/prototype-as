/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.core.plugin;

import java.net.URL;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelFactory;
import org.eclipse.pde.core.plugin.ISharedExtensionsModel;

public interface IPluginModelBase
extends ISharedExtensionsModel,
IModelChangeProvider {
    public IPluginBase createPluginBase();

    public IBuildModel getBuildModel();

    public IPluginBase getPluginBase();

    public IPluginBase getPluginBase(boolean var1);

    public boolean isEnabled();

    public boolean isFragmentModel();

    public void setEnabled(boolean var1);

    public IPluginModelFactory getPluginFactory();

    public URL getNLLookupLocation();

    public BundleDescription getBundleDescription();

    public void setBundleDescription(BundleDescription var1);
}

