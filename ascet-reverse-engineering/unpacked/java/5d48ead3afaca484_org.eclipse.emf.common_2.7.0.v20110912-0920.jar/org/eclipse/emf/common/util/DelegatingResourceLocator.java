/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;

public abstract class DelegatingResourceLocator
implements ResourceLocator {
    protected URL baseURL;
    protected ResourceBundle untranslatedResourceBundle;
    protected ResourceBundle resourceBundle;
    protected Map<String, String> strings = new HashMap<String, String>();
    protected Map<String, String> untranslatedStrings = new HashMap<String, String>();
    protected Map<String, Object> images = new HashMap<String, Object>();
    protected boolean shouldTranslate = true;
    private static final URI DOT = URI.createURI(".");

    protected abstract ResourceLocator getPrimaryResourceLocator();

    protected abstract ResourceLocator[] getDelegateResourceLocators();

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public URL getBaseURL() {
        if (this.baseURL != null) return this.baseURL;
        if (this.getPrimaryResourceLocator() == null) {
            try {
                Class<?> theClass = this.getClass();
                URL pluginPropertiesURL = theClass.getResource("plugin.properties");
                if (pluginPropertiesURL == null) {
                    String className = theClass.getName();
                    int index = className.lastIndexOf(".");
                    URL classURL = theClass.getResource(String.valueOf(index == -1 ? className : className.substring(index + 1)) + ".class");
                    URI uri = URI.createURI(classURL.toString());
                    int count = 1;
                    int i = 0;
                    while ((i = className.indexOf(46, i)) != -1) {
                        ++count;
                        ++i;
                    }
                    if (URI.isArchiveScheme((uri = uri.trimSegments(count)).scheme())) {
                        try {
                            InputStream inputStream = new URL(uri.appendSegment("plugin.properties").toString()).openStream();
                            inputStream.close();
                            this.baseURL = new URL(uri.toString());
                        }
                        catch (IOException exception) {
                            uri = URI.createURI(uri.authority()).trimSegments(1);
                        }
                    }
                    if (this.baseURL == null) {
                        String lastSegment = uri.lastSegment();
                        if ("bin".equals(lastSegment) || "runtime".equals(lastSegment)) {
                            uri = uri.trimSegments(1);
                        }
                        uri = uri.appendSegment("plugin.properties");
                        try {
                            InputStream inputStream = new URL(uri.toString()).openStream();
                            inputStream.close();
                            this.baseURL = new URL(DOT.resolve(uri).toString());
                        }
                        catch (IOException iOException) {
                            // empty catch block
                        }
                    }
                    if (this.baseURL != null) return this.baseURL;
                    String resourceName = index == -1 ? "plugin.properties" : String.valueOf(className.substring(0, index + 1).replace('.', '/')) + "plugin.properties";
                    throw new MissingResourceException("Missing properties: " + resourceName, theClass.getName(), "plugin.properties");
                }
                this.baseURL = new URL(DOT.resolve(URI.createURI(pluginPropertiesURL.toString())).toString());
                return this.baseURL;
            }
            catch (IOException exception) {
                throw new WrappedException(exception);
            }
        }
        this.baseURL = this.getPrimaryResourceLocator().getBaseURL();
        return this.baseURL;
    }

    public Object getImage(String key) {
        Object result = this.images.get(key);
        if (result == null) {
            ResourceLocator pluginResourceLocator = this.getPrimaryResourceLocator();
            if (pluginResourceLocator == null) {
                try {
                    result = this.doGetImage(key);
                }
                catch (MalformedURLException exception) {
                    throw new WrappedException(exception);
                }
                catch (IOException exception) {
                    result = this.delegatedGetImage(key);
                }
            } else {
                try {
                    result = pluginResourceLocator.getImage(key);
                }
                catch (MissingResourceException exception) {
                    result = this.delegatedGetImage(key);
                }
            }
            this.images.put(key, result);
        }
        return result;
    }

    protected Object doGetImage(String key) throws IOException {
        URL url = new URL(this.getBaseURL() + "icons/" + key + DelegatingResourceLocator.extensionFor(key));
        InputStream inputStream = url.openStream();
        inputStream.close();
        return url;
    }

    protected static String extensionFor(String key) {
        String extension;
        String result = ".gif";
        int index = key.lastIndexOf(46);
        if (index != -1 && ("png".equalsIgnoreCase(extension = key.substring(index + 1)) || "gif".equalsIgnoreCase(extension) || "bmp".equalsIgnoreCase(extension) || "ico".equalsIgnoreCase(extension) || "jpg".equalsIgnoreCase(extension) || "jpeg".equalsIgnoreCase(extension) || "tif".equalsIgnoreCase(extension) || "tiff".equalsIgnoreCase(extension))) {
            result = "";
        }
        return result;
    }

    protected Object delegatedGetImage(String key) throws MissingResourceException {
        ResourceLocator[] delegateResourceLocators = this.getDelegateResourceLocators();
        int i = 0;
        while (i < delegateResourceLocators.length) {
            try {
                return delegateResourceLocators[i].getImage(key);
            }
            catch (MissingResourceException missingResourceException) {
                ++i;
            }
        }
        throw new MissingResourceException(CommonPlugin.INSTANCE.getString("_UI_ImageResourceNotFound_exception", new Object[]{key}), this.getClass().getName(), key);
    }

    public boolean shouldTranslate() {
        return this.shouldTranslate;
    }

    public void setShouldTranslate(boolean shouldTranslate) {
        this.shouldTranslate = shouldTranslate;
    }

    public String getString(String key) {
        return this.getString(key, this.shouldTranslate());
    }

    public String getString(String key, boolean translate) {
        Map<String, String> stringMap = translate ? this.strings : this.untranslatedStrings;
        String result = stringMap.get(key);
        if (result == null) {
            try {
                ResourceLocator pluginResourceLocator = this.getPrimaryResourceLocator();
                result = pluginResourceLocator == null ? this.doGetString(key, translate) : pluginResourceLocator.getString(key, translate);
            }
            catch (MissingResourceException exception) {
                result = this.delegatedGetString(key, translate);
            }
            stringMap.put(key, result);
        }
        return result;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected String doGetString(String key, boolean translate) throws MissingResourceException {
        ResourceBundle bundle;
        ResourceBundle resourceBundle = bundle = translate ? this.resourceBundle : this.untranslatedResourceBundle;
        if (bundle != null) return bundle.getString(key);
        String packageName = this.getClass().getName();
        int index = packageName.lastIndexOf(".");
        if (index != -1) {
            packageName = packageName.substring(0, index);
        }
        if (translate) {
            try {
                bundle = this.resourceBundle = ResourceBundle.getBundle(String.valueOf(packageName) + ".plugin");
                return bundle.getString(key);
            }
            catch (MissingResourceException exception) {
                try {
                    InputStream inputStream = new URL(String.valueOf(this.getBaseURL().toString()) + "plugin.properties").openStream();
                    this.untranslatedResourceBundle = this.resourceBundle = new PropertyResourceBundle(inputStream);
                    bundle = this.resourceBundle;
                    inputStream.close();
                }
                catch (IOException inputStream) {
                    // empty catch block
                }
                if (bundle != null) return bundle.getString(key);
                throw exception;
            }
        }
        String resourceName = String.valueOf(this.getBaseURL().toString()) + "plugin.properties";
        try {
            InputStream inputStream = new URL(resourceName).openStream();
            bundle = this.untranslatedResourceBundle = new PropertyResourceBundle(inputStream);
            inputStream.close();
            return bundle.getString(key);
        }
        catch (IOException ioException) {
            throw new MissingResourceException("Missing properties: " + resourceName, this.getClass().getName(), "plugin.properties");
        }
    }

    protected String delegatedGetString(String key, boolean translate) {
        ResourceLocator[] delegateResourceLocators = this.getDelegateResourceLocators();
        int i = 0;
        while (i < delegateResourceLocators.length) {
            try {
                return delegateResourceLocators[i].getString(key, translate);
            }
            catch (MissingResourceException missingResourceException) {
                ++i;
            }
        }
        throw new MissingResourceException(MessageFormat.format("The string resource ''{0}'' could not be located", key), this.getClass().getName(), key);
    }

    public String getString(String key, Object[] substitutions) {
        return this.getString(key, substitutions, this.shouldTranslate());
    }

    public String getString(String key, Object[] substitutions, boolean translate) {
        return MessageFormat.format(this.getString(key, translate), substitutions);
    }
}

