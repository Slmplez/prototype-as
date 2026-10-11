/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.common;

import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class CommonPlugin
extends EMFPlugin {
    public static final CommonPlugin INSTANCE = new CommonPlugin();
    private static Implementation plugin;
    private static final Method COLLATOR_GET_INSTANCE_METHOD;

    static {
        Method collatorGetInstanceMethod = null;
        try {
            Class<?> collatorClass = CommonPlugin.loadClass("com.ibm.icu", "com.ibm.icu.text.Collator");
            collatorGetInstanceMethod = collatorClass.getMethod("getInstance", Locale.class);
        }
        catch (Throwable throwable) {
            // empty catch block
        }
        COLLATOR_GET_INSTANCE_METHOD = collatorGetInstanceMethod;
    }

    private CommonPlugin() {
        super(new ResourceLocator[0]);
    }

    @Override
    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static URI asLocalURI(URI uri) {
        return plugin == null ? uri : Implementation.asLocalURI(uri);
    }

    public static URI resolve(URI uri) {
        return plugin == null ? uri : Implementation.resolve(uri);
    }

    public static Class<?> loadClass(String pluginID, String className) throws ClassNotFoundException {
        return plugin == null ? Class.forName(className) : Implementation.loadClass(pluginID, className);
    }

    public Comparator<String> getComparator() {
        return this.getComparator(Locale.getDefault());
    }

    public Comparator<String> getComparator(Locale locale) {
        if (COLLATOR_GET_INSTANCE_METHOD != null) {
            try {
                return (Comparator)COLLATOR_GET_INSTANCE_METHOD.invoke(null, locale);
            }
            catch (Throwable throwable) {
                // empty catch block
            }
        }
        return Collator.getInstance(locale);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        public Implementation() {
            plugin = this;
        }

        protected static URI asLocalURI(URI uri) {
            try {
                String fragment = uri.fragment();
                URL url = FileLocator.toFileURL((URL)new URL(uri.trimFragment().toString()));
                return Implementation.fix(url, fragment);
            }
            catch (IOException iOException) {
                return uri;
            }
        }

        protected static URI resolve(URI uri) {
            String fragment = uri.fragment();
            URI uriWithoutFragment = uri.trimFragment();
            String uriWithoutFragmentToString = uriWithoutFragment.toString();
            URL url = null;
            try {
                url = FileLocator.resolve((URL)new URL(uriWithoutFragmentToString));
            }
            catch (IOException exception1) {
                try {
                    uriWithoutFragmentToString = URI.decode(uriWithoutFragmentToString);
                    url = FileLocator.resolve((URL)new URL(uriWithoutFragmentToString));
                }
                catch (IOException iOException) {
                    // empty catch block
                }
            }
            if (url != null) {
                try {
                    return Implementation.fix(url, fragment);
                }
                catch (IOException iOException) {
                    // empty catch block
                }
            }
            return uri;
        }

        protected static URI fix(URL url, String fragment) throws IOException {
            URI result;
            URI uRI = result = "file".equalsIgnoreCase(url.getProtocol()) ? URI.createFileURI(URI.decode(url.getFile())) : URI.createURI(url.toString());
            if (fragment != null) {
                result = result.appendFragment(fragment);
            }
            return result;
        }

        public static Class<?> loadClass(String pluginID, String className) throws ClassNotFoundException {
            Bundle bundle = Platform.getBundle((String)pluginID);
            if (bundle == null) {
                throw new ClassNotFoundException(String.valueOf(className) + " cannot be loaded because because bundle " + pluginID + " cannot be resolved");
            }
            return bundle.loadClass(className);
        }
    }
}

