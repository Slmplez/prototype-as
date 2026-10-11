/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.Version
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.ProductProperties;
import org.osgi.framework.Bundle;
import org.osgi.framework.Version;

public class ProductInfo {
    private IProduct product;
    private String productName;
    private String appName;
    private Version appVersion;
    private ImageDescriptor[] windowImages;
    private ImageDescriptor aboutImage;
    private String aboutText;

    public ProductInfo(IProduct product) {
        this.product = product;
    }

    public String getProductName() {
        if (this.productName == null && this.product != null) {
            this.productName = this.product.getName();
        }
        return this.productName;
    }

    public String getAppName() {
        if (this.appName == null && this.product != null) {
            this.appName = ProductProperties.getAppName(this.product);
        }
        return this.appName;
    }

    public String getAppVersion() {
        if (this.appVersion == null) {
            Bundle bundle;
            if (this.product != null && (bundle = this.product.getDefiningBundle()) != null) {
                this.appVersion = bundle.getVersion();
            }
            if (this.appVersion == null) {
                bundle = Platform.getBundle((String)"org.eclipse.ui");
                this.appVersion = bundle == null ? Version.emptyVersion : bundle.getVersion();
            }
        }
        return this.appVersion.toString();
    }

    public ImageDescriptor getAboutImage() {
        if (this.aboutImage == null && this.product != null) {
            this.aboutImage = ProductProperties.getAboutImage(this.product);
        }
        return this.aboutImage;
    }

    public ImageDescriptor[] getWindowImages() {
        if (this.windowImages == null && this.product != null) {
            this.windowImages = ProductProperties.getWindowImages(this.product);
        }
        return this.windowImages;
    }

    public String getAboutText() {
        if (this.aboutText == null && this.product != null) {
            this.aboutText = ProductProperties.getAboutText(this.product);
        }
        return this.aboutText;
    }
}

