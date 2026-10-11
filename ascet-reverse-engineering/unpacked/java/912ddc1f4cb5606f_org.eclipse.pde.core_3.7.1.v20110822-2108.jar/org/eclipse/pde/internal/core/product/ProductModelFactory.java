/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

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
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.iproduct.IProductModelFactory;
import org.eclipse.pde.internal.core.iproduct.IProductPlugin;
import org.eclipse.pde.internal.core.iproduct.ISplashInfo;
import org.eclipse.pde.internal.core.iproduct.IWindowImages;
import org.eclipse.pde.internal.core.product.AboutInfo;
import org.eclipse.pde.internal.core.product.ArgumentsInfo;
import org.eclipse.pde.internal.core.product.ConfigurationFileInfo;
import org.eclipse.pde.internal.core.product.ConfigurationProperty;
import org.eclipse.pde.internal.core.product.IntroInfo;
import org.eclipse.pde.internal.core.product.JREInfo;
import org.eclipse.pde.internal.core.product.LauncherInfo;
import org.eclipse.pde.internal.core.product.LicenseInfo;
import org.eclipse.pde.internal.core.product.PluginConfiguration;
import org.eclipse.pde.internal.core.product.Product;
import org.eclipse.pde.internal.core.product.ProductFeature;
import org.eclipse.pde.internal.core.product.ProductPlugin;
import org.eclipse.pde.internal.core.product.SplashInfo;
import org.eclipse.pde.internal.core.product.WindowImages;

public class ProductModelFactory
implements IProductModelFactory {
    private IProductModel fModel;

    public ProductModelFactory(IProductModel model) {
        this.fModel = model;
    }

    public IProduct createProduct() {
        return new Product(this.fModel);
    }

    public IAboutInfo createAboutInfo() {
        return new AboutInfo(this.fModel);
    }

    public IProductPlugin createPlugin() {
        return new ProductPlugin(this.fModel);
    }

    public IPluginConfiguration createPluginConfiguration() {
        return new PluginConfiguration(this.fModel);
    }

    public IConfigurationProperty createConfigurationProperty() {
        return new ConfigurationProperty(this.fModel);
    }

    public IConfigurationFileInfo createConfigFileInfo() {
        return new ConfigurationFileInfo(this.fModel);
    }

    public IWindowImages createWindowImages() {
        return new WindowImages(this.fModel);
    }

    public ISplashInfo createSplashInfo() {
        return new SplashInfo(this.fModel);
    }

    public ILauncherInfo createLauncherInfo() {
        return new LauncherInfo(this.fModel);
    }

    public IProductFeature createFeature() {
        return new ProductFeature(this.fModel);
    }

    public IArgumentsInfo createLauncherArguments() {
        return new ArgumentsInfo(this.fModel);
    }

    public IIntroInfo createIntroInfo() {
        return new IntroInfo(this.fModel);
    }

    public IJREInfo createJVMInfo() {
        return new JREInfo(this.fModel);
    }

    public ILicenseInfo createLicenseInfo() {
        return new LicenseInfo(this.fModel);
    }
}

