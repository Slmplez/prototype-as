/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleException
 */
package org.eclipse.core.internal.runtime;

import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.DevClassPathHelper;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;

public class ResourceTranslator {
    private static final String KEY_PREFIX = "%";
    private static final String KEY_DOUBLE_PREFIX = "%%";

    public static String getResourceString(Bundle bundle, String value) {
        return ResourceTranslator.getResourceString(bundle, value, null);
    }

    public static String getResourceString(Bundle bundle, String value, ResourceBundle resourceBundle) {
        String dflt;
        String s = value.trim();
        if (!s.startsWith(KEY_PREFIX, 0)) {
            return s;
        }
        if (s.startsWith(KEY_DOUBLE_PREFIX, 0)) {
            return s.substring(1);
        }
        int ix = s.indexOf(32);
        String key = ix == -1 ? s : s.substring(0, ix);
        String string = dflt = ix == -1 ? s : s.substring(ix + 1);
        if (resourceBundle == null && bundle != null) {
            try {
                resourceBundle = ResourceTranslator.getResourceBundle(bundle);
            }
            catch (MissingResourceException missingResourceException) {}
        }
        if (resourceBundle == null) {
            return dflt;
        }
        try {
            return resourceBundle.getString(key.substring(1));
        }
        catch (MissingResourceException missingResourceException) {
            return dflt;
        }
    }

    public static ResourceBundle getResourceBundle(Bundle bundle) throws MissingResourceException {
        return ResourceTranslator.getResourceBundle(bundle, null);
    }

    private static ResourceBundle getResourceBundle(Bundle bundle, String language) throws MissingResourceException {
        if (ResourceTranslator.hasRuntime21(bundle)) {
            Locale locale = language == null ? Locale.getDefault() : new Locale(language);
            return ResourceBundle.getBundle("plugin", locale, ResourceTranslator.createTempClassloader(bundle));
        }
        return Activator.getDefault().getLocalization(bundle, language);
    }

    public static String[] getResourceString(Bundle bundle, String[] nonTranslated, String locale) {
        if (bundle == null) {
            return nonTranslated;
        }
        ResourceBundle resourceBundle = ResourceTranslator.getResourceBundle(bundle, locale);
        String[] translated = new String[nonTranslated.length];
        int i = 0;
        while (i < nonTranslated.length) {
            translated[i] = ResourceTranslator.getResourceString(bundle, nonTranslated[i], resourceBundle);
            ++i;
        }
        return translated;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static boolean hasRuntime21(Bundle b) {
        try {
            ManifestElement[] prereqs = ManifestElement.parseHeader((String)"Require-Bundle", (String)((String)b.getHeaders("").get("Require-Bundle")));
            if (prereqs == null) {
                return false;
            }
            int i = 0;
            while (true) {
                if (i >= prereqs.length) {
                    return false;
                }
                if ("2.1".equals(prereqs[i].getAttribute("bundle-version")) && "org.eclipse.core.runtime".equals(prereqs[i].getValue())) {
                    return true;
                }
                ++i;
            }
        }
        catch (BundleException bundleException) {
            return false;
        }
    }

    private static ClassLoader createTempClassloader(Bundle b) {
        ArrayList classpath = new ArrayList();
        ResourceTranslator.addClasspathEntries(b, classpath);
        ResourceTranslator.addBundleRoot(b, classpath);
        ResourceTranslator.addDevEntries(b, classpath);
        ResourceTranslator.addFragments(b, classpath);
        URL[] urls = new URL[classpath.size()];
        return new URLClassLoader(classpath.toArray(urls));
    }

    private static void addFragments(Bundle host, ArrayList classpath) {
        Activator activator = Activator.getDefault();
        if (activator == null) {
            return;
        }
        Bundle[] fragments = activator.getFragments(host);
        if (fragments == null) {
            return;
        }
        int i = 0;
        while (i < fragments.length) {
            ResourceTranslator.addClasspathEntries(fragments[i], classpath);
            ResourceTranslator.addDevEntries(fragments[i], classpath);
            ++i;
        }
    }

    private static void addClasspathEntries(Bundle b, ArrayList classpath) {
        try {
            ManifestElement[] classpathElements = ManifestElement.parseHeader((String)"Bundle-ClassPath", (String)((String)b.getHeaders("").get("Bundle-ClassPath")));
            if (classpathElements == null) {
                return;
            }
            int i = 0;
            while (i < classpathElements.length) {
                URL classpathEntry = b.getEntry(classpathElements[i].getValue());
                if (classpathEntry != null) {
                    classpath.add(classpathEntry);
                }
                ++i;
            }
        }
        catch (BundleException bundleException) {}
    }

    private static void addBundleRoot(Bundle b, ArrayList classpath) {
        classpath.add(b.getEntry("/"));
    }

    private static void addDevEntries(Bundle b, ArrayList classpath) {
        if (!DevClassPathHelper.inDevelopmentMode()) {
            return;
        }
        String[] binaryPaths = DevClassPathHelper.getDevClassPath(b.getSymbolicName());
        int i = 0;
        while (i < binaryPaths.length) {
            URL classpathEntry = b.getEntry(binaryPaths[i]);
            if (classpathEntry != null) {
                classpath.add(classpathEntry);
            }
            ++i;
        }
    }
}

