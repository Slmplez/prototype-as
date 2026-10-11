/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.util.Headers;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ManifestLocalization {
    static final String DEFAULT_ROOT = FrameworkProperties.getProperty("equinox.root.locale", "en");
    private final AbstractBundle bundle;
    private final Dictionary<String, String> rawHeaders;
    private Dictionary<String, String> defaultLocaleHeaders = null;
    private final Hashtable<String, BundleResourceBundle> cache = new Hashtable(5);

    public ManifestLocalization(AbstractBundle bundle, Dictionary<String, String> rawHeaders) {
        this.bundle = bundle;
        this.rawHeaders = rawHeaders;
    }

    Dictionary<String, String> getHeaders(String localeString) {
        if (localeString.length() == 0) {
            return this.rawHeaders;
        }
        boolean isDefaultLocale = localeString.equals(Locale.getDefault().toString());
        Dictionary<String, String> currentDefault = this.defaultLocaleHeaders;
        if (isDefaultLocale && currentDefault != null) {
            return currentDefault;
        }
        try {
            this.bundle.checkValid();
        }
        catch (IllegalStateException illegalStateException) {
            if (currentDefault != null) {
                return currentDefault;
            }
            return this.rawHeaders;
        }
        ResourceBundle localeProperties = this.getResourceBundle(localeString, isDefaultLocale);
        Enumeration<String> e = this.rawHeaders.keys();
        Headers<String, String> localeHeaders = new Headers<String, String>(this.rawHeaders.size());
        while (e.hasMoreElements()) {
            String key = e.nextElement();
            String value = this.rawHeaders.get(key);
            if (value.startsWith("%") && value.length() > 1) {
                String propertiesKey = value.substring(1);
                try {
                    value = localeProperties == null ? propertiesKey : (String)localeProperties.getObject(propertiesKey);
                }
                catch (MissingResourceException missingResourceException) {
                    value = propertiesKey;
                }
            }
            localeHeaders.set(key, value);
        }
        localeHeaders.setReadOnly();
        if (isDefaultLocale) {
            this.defaultLocaleHeaders = localeHeaders;
        }
        return localeHeaders;
    }

    private String[] buildNLVariants(String nl) {
        ArrayList<String> result = new ArrayList<String>();
        while (nl.length() > 0) {
            result.add(nl);
            int i = nl.lastIndexOf(95);
            String string = nl = i < 0 ? "" : nl.substring(0, i);
        }
        result.add("");
        return result.toArray(new String[result.size()]);
    }

    ResourceBundle getResourceBundle(String localeString, boolean isDefaultLocale) {
        BundleResourceBundle resourceBundle = this.lookupResourceBundle(localeString);
        if (isDefaultLocale) {
            return (ResourceBundle)((Object)resourceBundle);
        }
        if (resourceBundle == null || resourceBundle.isStemEmpty()) {
            return (ResourceBundle)((Object)this.lookupResourceBundle(Locale.getDefault().toString()));
        }
        return (ResourceBundle)((Object)resourceBundle);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private BundleResourceBundle lookupResourceBundle(String localeString) {
        String localizationHeader = this.rawHeaders.get("Bundle-Localization");
        if (localizationHeader == null) {
            localizationHeader = "OSGI-INF/l10n/bundle";
        }
        Hashtable<String, BundleResourceBundle> hashtable = this.cache;
        synchronized (hashtable) {
            BundleResourceBundle result = this.cache.get(localeString);
            if (result != null) {
                return result.isEmpty() ? null : result;
            }
            String[] nlVarients = this.buildNLVariants(localeString);
            BundleResourceBundle parent = null;
            int i = nlVarients.length - 1;
            while (i >= 0) {
                BundleResourceBundle varientBundle;
                block24: {
                    varientBundle = null;
                    URL varientURL = this.findResource(new StringBuffer(String.valueOf(localizationHeader)).append(nlVarients[i].equals("") ? nlVarients[i] : new StringBuffer(String.valueOf('_')).append(nlVarients[i]).toString()).append(".properties").toString());
                    if (varientURL == null) {
                        varientBundle = this.cache.get(nlVarients[i]);
                    } else {
                        InputStream resourceStream = null;
                        try {
                            try {
                                resourceStream = varientURL.openStream();
                                varientBundle = new LocalizationResourceBundle(resourceStream);
                            }
                            catch (IOException iOException) {
                                if (resourceStream != null) {
                                    try {
                                        resourceStream.close();
                                    }
                                    catch (IOException iOException2) {}
                                }
                                break block24;
                            }
                        }
                        catch (Throwable throwable) {
                            if (resourceStream != null) {
                                try {
                                    resourceStream.close();
                                }
                                catch (IOException iOException) {}
                            }
                            throw throwable;
                        }
                        if (resourceStream != null) {
                            try {
                                resourceStream.close();
                            }
                            catch (IOException iOException) {}
                        }
                    }
                }
                if (varientBundle == null) {
                    varientBundle = new EmptyResouceBundle(nlVarients[i]);
                }
                if (parent != null) {
                    varientBundle.setParent((ResourceBundle)((Object)parent));
                }
                this.cache.put(nlVarients[i], varientBundle);
                parent = varientBundle;
                --i;
            }
            result = this.cache.get(localeString);
            BundleResourceBundle bundleResourceBundle = result.isEmpty() ? null : result;
            return bundleResourceBundle;
        }
    }

    private URL findResource(String resource) {
        AbstractBundle searchBundle = this.bundle;
        if (this.bundle.isResolved()) {
            if (this.bundle.isFragment() && this.bundle.getHosts() != null && (searchBundle = this.bundle.getHosts()[0]).getState() == 1) {
                searchBundle = this.bundle;
            }
            return ManifestLocalization.findInResolved(resource, searchBundle);
        }
        return searchBundle.getEntry0(resource);
    }

    private static URL findInResolved(String filePath, AbstractBundle bundleHost) {
        URL result = bundleHost.getEntry0(filePath);
        if (result != null) {
            return result;
        }
        return ManifestLocalization.findInFragments(filePath, bundleHost);
    }

    private static URL findInFragments(String filePath, AbstractBundle searchBundle) {
        BundleFragment[] fragments = searchBundle.getFragments();
        URL fileURL = null;
        int i = 0;
        while (fragments != null && i < fragments.length && fileURL == null) {
            if (fragments[i].getState() != 1) {
                fileURL = fragments[i].getEntry0(filePath);
            }
            ++i;
        }
        return fileURL;
    }

    private static interface BundleResourceBundle {
        public void setParent(ResourceBundle var1);

        public boolean isEmpty();

        public boolean isStemEmpty();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class EmptyResouceBundle
    extends ResourceBundle
    implements BundleResourceBundle {
        private final String localeString;

        public EmptyResouceBundle(String locale) {
            this.localeString = locale;
        }

        @Override
        public Enumeration<String> getKeys() {
            return null;
        }

        @Override
        protected Object handleGetObject(String arg0) throws MissingResourceException {
            return null;
        }

        @Override
        public void setParent(ResourceBundle parent) {
            super.setParent(parent);
        }

        @Override
        public boolean isEmpty() {
            if (this.parent == null) {
                return true;
            }
            return ((BundleResourceBundle)((Object)this.parent)).isEmpty();
        }

        @Override
        public boolean isStemEmpty() {
            if (DEFAULT_ROOT.equals(this.localeString)) {
                return false;
            }
            if (this.parent == null) {
                return true;
            }
            return ((BundleResourceBundle)((Object)this.parent)).isStemEmpty();
        }
    }

    private class LocalizationResourceBundle
    extends PropertyResourceBundle
    implements BundleResourceBundle {
        public LocalizationResourceBundle(InputStream in) throws IOException {
            super(in);
        }

        public void setParent(ResourceBundle parent) {
            super.setParent(parent);
        }

        public boolean isEmpty() {
            return false;
        }

        public boolean isStemEmpty() {
            return this.parent == null;
        }
    }
}

