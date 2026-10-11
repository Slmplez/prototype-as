/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IAboutInfo;
import org.eclipse.pde.internal.core.iproduct.IArgumentsInfo;
import org.eclipse.pde.internal.core.iproduct.IConfigurationFileInfo;
import org.eclipse.pde.internal.core.iproduct.IConfigurationProperty;
import org.eclipse.pde.internal.core.iproduct.IIntroInfo;
import org.eclipse.pde.internal.core.iproduct.IJREInfo;
import org.eclipse.pde.internal.core.iproduct.ILauncherInfo;
import org.eclipse.pde.internal.core.iproduct.ILicenseInfo;
import org.eclipse.pde.internal.core.iproduct.IPluginConfiguration;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.iproduct.IProductFeature;
import org.eclipse.pde.internal.core.iproduct.IProductPlugin;
import org.eclipse.pde.internal.core.iproduct.ISplashInfo;
import org.eclipse.pde.internal.core.iproduct.IWindowImages;

public interface IProductModelFactory {
    public IProduct createProduct();

    public IAboutInfo createAboutInfo();

    public IProductPlugin createPlugin();

    public IPluginConfiguration createPluginConfiguration();

    public IConfigurationProperty createConfigurationProperty();

    public IProductFeature createFeature();

    public IConfigurationFileInfo createConfigFileInfo();

    public IWindowImages createWindowImages();

    public ISplashInfo createSplashInfo();

    public ILauncherInfo createLauncherInfo();

    public IArgumentsInfo createLauncherArguments();

    public IIntroInfo createIntroInfo();

    public IJREInfo createJVMInfo();

    public ILicenseInfo createLicenseInfo();
}

