/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.exchange.IProductPreferencesService
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.preferences.legacy;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Properties;
import org.eclipse.core.internal.preferences.exchange.IProductPreferencesService;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.Bundle;

public class ProductPreferencesService
implements IProductPreferencesService {
    private static final IPath NL_DIR = new Path("$nl$");
    public static final String PRODUCT_KEY = "preferenceCustomization";
    private static final String LEGACY_PRODUCT_CUSTOMIZATION_FILENAME = "plugin_customization.ini";
    private static final String PROPERTIES_FILE_EXTENSION = "properties";
    private boolean initialized = false;
    private String customizationValue = null;
    private Bundle customizationBundle = null;
    private String productID = null;

    private void initValues() {
        if (this.initialized) {
            return;
        }
        this.initialized = true;
        IProduct product = Platform.getProduct();
        if (product == null) {
            if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                InternalPlatform.message("Product not available to set product default preference overrides.");
            }
            return;
        }
        this.productID = product.getId();
        if (this.productID == null) {
            if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                InternalPlatform.message("Product ID not available to apply product-level preference defaults.");
            }
            return;
        }
        this.customizationBundle = product.getDefiningBundle();
        if (this.customizationBundle == null) {
            if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                InternalPlatform.message("Bundle not available to apply product-level preference defaults for product id: " + this.productID);
            }
            return;
        }
        this.customizationValue = product.getProperty(PRODUCT_KEY);
        if (this.customizationValue == null) {
            if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                InternalPlatform.message("Product : " + this.productID + " does not define preference customization file. Using legacy file: plugin_customization.ini");
            }
            this.customizationValue = LEGACY_PRODUCT_CUSTOMIZATION_FILENAME;
        }
    }

    public Properties getProductCustomization() {
        this.initValues();
        URL url = null;
        if (this.customizationValue != null) {
            try {
                url = new URL(this.customizationValue);
            }
            catch (MalformedURLException malformedURLException) {
                url = FileLocator.find((Bundle)this.customizationBundle, (IPath)new Path(this.customizationValue), null);
            }
        }
        if (url == null && InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
            InternalPlatform.message("Product preference customization file: " + this.customizationValue + " not found for bundle: " + this.productID);
        }
        return this.loadProperties(url);
    }

    public Properties getProductTranslation() {
        this.initValues();
        URL transURL = null;
        if (this.customizationValue != null) {
            transURL = FileLocator.find((Bundle)this.customizationBundle, (IPath)NL_DIR.append(this.customizationValue).removeFileExtension().addFileExtension(PROPERTIES_FILE_EXTENSION), null);
        }
        if (transURL == null && InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
            InternalPlatform.message("No preference translations found for product/file: " + this.customizationBundle.getSymbolicName() + '/' + this.customizationValue);
        }
        return this.loadProperties(transURL);
    }

    private Properties loadProperties(URL url) {
        Properties result;
        block16: {
            result = new Properties();
            if (url == null) {
                return result;
            }
            InputStream input = null;
            try {
                try {
                    input = url.openStream();
                    result.load(input);
                }
                catch (IOException e) {
                    if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                        InternalPlatform.message("Problem opening stream to preference customization file: " + url);
                        e.printStackTrace();
                    }
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException iOException) {}
                    }
                    break block16;
                }
            }
            catch (Throwable throwable) {
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (input != null) {
                try {
                    input.close();
                }
                catch (IOException iOException) {}
            }
        }
        return result;
    }
}

