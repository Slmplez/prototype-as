/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal;

import com.ibm.icu.text.MessageFormat;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.branding.IProductConstants;
import org.eclipse.ui.internal.BrandingProperties;
import org.osgi.framework.Bundle;

public class ProductProperties
extends BrandingProperties
implements IProductConstants {
    private final IProduct product;
    private String appName;
    private String aboutText;
    private ImageDescriptor aboutImageDescriptor;
    private ImageDescriptor[] windowImageDescriptors;
    private URL welcomePageUrl;
    private String productName;
    private String productId;
    private static final String ABOUT_MAPPINGS = "$nl$/about.mappings";
    private static HashMap mappingsMap = new HashMap(4);

    private static String[] loadMappings(Bundle definingBundle) {
        PropertyResourceBundle bundle;
        block19: {
            URL location = Platform.find((Bundle)definingBundle, (IPath)new Path(ABOUT_MAPPINGS));
            bundle = null;
            if (location != null) {
                InputStream is = null;
                try {
                    try {
                        is = location.openStream();
                        bundle = new PropertyResourceBundle(is);
                    }
                    catch (IOException iOException) {
                        bundle = null;
                        try {
                            if (is != null) {
                                is.close();
                            }
                            break block19;
                        }
                        catch (IOException iOException2) {}
                        break block19;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        if (is != null) {
                            is.close();
                        }
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
            }
        }
        ArrayList<String> mappingsList = new ArrayList<String>();
        if (bundle != null) {
            boolean found = true;
            int i = 0;
            while (found) {
                try {
                    mappingsList.add(bundle.getString(Integer.toString(i)));
                }
                catch (MissingResourceException missingResourceException) {
                    found = false;
                }
                ++i;
            }
        }
        String[] mappings = mappingsList.toArray(new String[mappingsList.size()]);
        mappingsMap.put(definingBundle, mappings);
        return mappings;
    }

    private static String[] getMappings(Bundle definingBundle) {
        String[] mappings = (String[])mappingsMap.get(definingBundle);
        if (mappings == null) {
            mappings = ProductProperties.loadMappings(definingBundle);
        }
        if (mappings == null) {
            mappings = new String[]{};
        }
        return mappings;
    }

    public ProductProperties(IProduct product) {
        if (product == null) {
            throw new IllegalArgumentException();
        }
        this.product = product;
    }

    public String getAppName() {
        if (this.appName == null) {
            this.appName = ProductProperties.getAppName(this.product);
        }
        return this.appName;
    }

    public String getAboutText() {
        if (this.aboutText == null) {
            this.aboutText = ProductProperties.getAboutText(this.product);
        }
        return this.aboutText;
    }

    public ImageDescriptor getAboutImage() {
        if (this.aboutImageDescriptor == null) {
            this.aboutImageDescriptor = ProductProperties.getAboutImage(this.product);
        }
        return this.aboutImageDescriptor;
    }

    public ImageDescriptor[] getWindowImages() {
        if (this.windowImageDescriptors == null) {
            this.windowImageDescriptors = ProductProperties.getWindowImages(this.product);
        }
        return this.windowImageDescriptors;
    }

    public URL getWelcomePageUrl() {
        if (this.welcomePageUrl == null) {
            this.welcomePageUrl = ProductProperties.getWelcomePageUrl(this.product);
        }
        return this.welcomePageUrl;
    }

    public String getProductName() {
        if (this.productName == null) {
            this.productName = ProductProperties.getProductName(this.product);
        }
        return this.productName;
    }

    public String getProductId() {
        if (this.productId == null) {
            this.productId = ProductProperties.getProductId(this.product);
        }
        return this.productId;
    }

    public static String getAppName(IProduct product) {
        String property = product.getProperty("appName");
        if (property == null) {
            return "";
        }
        if (property.indexOf(123) == -1) {
            return property;
        }
        Object[] mappings = ProductProperties.getMappings(product.getDefiningBundle());
        return MessageFormat.format((String)property, (Object[])mappings);
    }

    public static String getAboutText(IProduct product) {
        String property = product.getProperty("aboutText");
        if (property == null) {
            return "";
        }
        if (property.indexOf(123) == -1) {
            return property;
        }
        Object[] tempMappings = (String[])ProductProperties.getMappings(product.getDefiningBundle()).clone();
        int i = 0;
        while (i < tempMappings.length) {
            Object nextString = tempMappings[i];
            int length = ((String)nextString).length();
            if (length > 2 && ((String)nextString).charAt(0) == '$' && ((String)nextString).charAt(length - 1) == '$') {
                String systemPropertyKey = ((String)nextString).substring(1, length - 1);
                tempMappings[i] = System.getProperty(systemPropertyKey, "");
            }
            ++i;
        }
        return MessageFormat.format((String)property, (Object[])tempMappings);
    }

    public static ImageDescriptor getAboutImage(IProduct product) {
        return ProductProperties.getImage(product.getProperty("aboutImage"), product.getDefiningBundle());
    }

    public static ImageDescriptor[] getWindowImages(IProduct product) {
        String property = product.getProperty("windowImages");
        if (property == null) {
            property = product.getProperty("windowImage");
        }
        return ProductProperties.getImages(property, product.getDefiningBundle());
    }

    public static URL getWelcomePageUrl(IProduct product) {
        return ProductProperties.getUrl(product.getProperty("welcomePage"), product.getDefiningBundle());
    }

    public static String getProductName(IProduct product) {
        return product.getName();
    }

    public static String getProductId(IProduct product) {
        return product.getId();
    }
}

