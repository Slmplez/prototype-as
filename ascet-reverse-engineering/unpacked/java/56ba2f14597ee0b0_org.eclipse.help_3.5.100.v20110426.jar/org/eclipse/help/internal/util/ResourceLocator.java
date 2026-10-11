/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.IHelpContentProducer;
import org.eclipse.help.internal.HelpPlugin;
import org.osgi.framework.Bundle;

public class ResourceLocator {
    public static final String CONTENTPRODUCER_XP_NAME = "contentProducer";
    public static final String BINDING = "binding";
    public static final String CONTENTPRODUCER_XP_FULLNAME = "org.eclipse.help.contentProducer";
    private static Hashtable zipCache = new Hashtable();
    private static final Object ZIP_NOT_FOUND;
    private static final Object STATIC_DOCS_ONLY;
    private static Map contentProducers;
    private static boolean isCheckedForDuplicates;

    static {
        STATIC_DOCS_ONLY = ZIP_NOT_FOUND = new Object();
        contentProducers = new HashMap(2, 0.5f);
        Platform.getExtensionRegistry().addRegistryChangeListener(new IRegistryChangeListener(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public void registryChanged(IRegistryChangeEvent event) {
                IExtensionDelta[] deltas = event.getExtensionDeltas("org.eclipse.help", ResourceLocator.CONTENTPRODUCER_XP_NAME);
                int i = 0;
                while (i < deltas.length) {
                    IExtension extension = deltas[i].getExtension();
                    String affectedPlugin = extension.getContributor().getName();
                    Map map = contentProducers;
                    synchronized (map) {
                        Object obj = contentProducers.get(affectedPlugin);
                        if (obj instanceof ProducerDescriptor) {
                            ProducerDescriptor desc = (ProducerDescriptor)obj;
                            desc.reset();
                        }
                    }
                    ++i;
                }
            }
        });
        isCheckedForDuplicates = false;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static IHelpContentProducer getContentProducer(String pluginId) {
        Map map = contentProducers;
        synchronized (map) {
            Object obj;
            block4: {
                obj = ResourceLocator.getProducerDescriptor(pluginId);
                if (obj != null && obj != STATIC_DOCS_ONLY) break block4;
                return null;
            }
            return ((ProducerDescriptor)obj).getProducer();
        }
    }

    private static Object getProducerDescriptor(String pluginId) {
        Object descriptor = contentProducers.get(pluginId);
        if (descriptor == null) {
            descriptor = ResourceLocator.createContentProducer(pluginId);
            if (descriptor == null) {
                descriptor = STATIC_DOCS_ONLY;
            }
            contentProducers.put(pluginId, descriptor);
        }
        return descriptor;
    }

    private static ProducerDescriptor createContentProducer(String pluginId) {
        IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor(CONTENTPRODUCER_XP_FULLNAME);
        if (elements.length == 0) {
            return null;
        }
        ResourceLocator.checkForDuplicateExtensionElements(elements);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (elements[i].getContributor().getName().equals(pluginId)) {
                if (BINDING.equals(element.getName())) {
                    String refId = element.getAttribute("producerId");
                    if (refId != null) {
                        return ResourceLocator.findContentProducer(elements, refId);
                    }
                } else if (CONTENTPRODUCER_XP_NAME.equals(element.getName())) {
                    return new ProducerDescriptor(element);
                }
            }
            ++i;
        }
        return null;
    }

    private static void checkForDuplicateExtensionElements(IConfigurationElement[] elements) {
        if (isCheckedForDuplicates) {
            return;
        }
        isCheckedForDuplicates = true;
        HashSet<String> logged = new HashSet<String>();
        HashSet<String> keys = new HashSet<String>();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            String pluginName = element.getContributor().getName();
            String key = pluginName;
            if (!logged.contains(key)) {
                if (keys.contains(key)) {
                    HelpPlugin.logWarning("Extension org.eclipse.help.contentProducerin " + pluginName + " contains more than  <" + CONTENTPRODUCER_XP_NAME + "> or <" + BINDING + "> element. All but the first have been ignored.");
                    logged.add(key);
                } else {
                    keys.add(key);
                }
            }
            ++i;
        }
    }

    private static ProducerDescriptor findContentProducer(IConfigurationElement[] elements, String refId) {
        Iterator iter = contentProducers.values().iterator();
        while (iter.hasNext()) {
            ProducerDescriptor desc;
            Object obj = iter.next();
            if (!(obj instanceof ProducerDescriptor) || !(desc = (ProducerDescriptor)obj).matches(refId)) continue;
            return desc;
        }
        int i = 0;
        while (i < elements.length) {
            Object obj;
            String id;
            if (CONTENTPRODUCER_XP_NAME.equals(elements[i].getName()) && refId.equals(id = elements[i].getDeclaringExtension().getUniqueIdentifier()) && (obj = ResourceLocator.getProducerDescriptor(elements[i].getContributor().getName())) instanceof ProducerDescriptor) {
                return (ProducerDescriptor)obj;
            }
            ++i;
        }
        return null;
    }

    public static InputStream openFromProducer(Bundle pluginDesc, String file, String locale) {
        IHelpContentProducer producer = ResourceLocator.getContentProducer(pluginDesc.getSymbolicName());
        if (producer == null) {
            return null;
        }
        if (locale == null || locale.length() <= 0) {
            locale = Platform.getNL();
        }
        Locale l = locale.length() >= 5 ? new Locale(locale.substring(0, 2), locale.substring(3, 5)) : (locale.length() >= 2 ? new Locale(locale.substring(0, 2), "") : Locale.getDefault());
        return producer.getInputStream(pluginDesc.getSymbolicName(), file, l);
    }

    public static InputStream openFromPlugin(String pluginId, String file, String locale) {
        Bundle bundle = Platform.getBundle((String)pluginId);
        if (bundle != null) {
            return ResourceLocator.openFromPlugin(bundle, file, locale);
        }
        return null;
    }

    public static InputStream openFromZip(Bundle pluginDesc, String zip, String file, String locale) {
        String pluginID = pluginDesc.getSymbolicName();
        Hashtable cache = zipCache;
        ArrayList pathPrefix = ResourceLocator.getPathPrefix(locale);
        int i = 0;
        while (i < pathPrefix.size()) {
            Object cached = cache.get(String.valueOf(pluginID) + '/' + pathPrefix.get(i) + zip);
            if (cached == null) {
                try {
                    URL url = FileLocator.find((Bundle)pluginDesc, (IPath)new Path(pathPrefix.get(i) + zip), null);
                    if (url != null) {
                        URL realZipURL = FileLocator.toFileURL((URL)FileLocator.resolve((URL)url));
                        cached = realZipURL.toExternalForm();
                    } else {
                        cached = ZIP_NOT_FOUND;
                    }
                }
                catch (IOException iOException) {
                    cached = ZIP_NOT_FOUND;
                }
                cache.put(String.valueOf(pluginID) + '/' + pathPrefix.get(i) + zip, cached);
            }
            if (cached != ZIP_NOT_FOUND && !cached.toString().startsWith("jar:")) {
                try {
                    URL jurl = new URL("jar", "", String.valueOf((String)cached) + "!/" + file);
                    URLConnection jconnection = jurl.openConnection();
                    jconnection.setDefaultUseCaches(false);
                    jconnection.setUseCaches(false);
                    return jconnection.getInputStream();
                }
                catch (IOException iOException) {}
            }
            ++i;
        }
        return null;
    }

    public static InputStream openFromPlugin(Bundle pluginDesc, String file, String locale) {
        ArrayList pathPrefix = ResourceLocator.getPathPrefix(locale);
        URL flatFileURL = ResourceLocator.find(pluginDesc, (IPath)new Path(file), pathPrefix);
        if (flatFileURL != null) {
            try {
                return flatFileURL.openStream();
            }
            catch (IOException iOException) {
                return null;
            }
        }
        return null;
    }

    public static URL find(Bundle pluginDesc, IPath flatFilePath, ArrayList pathPrefix) {
        int i = 0;
        while (i < pathPrefix.size()) {
            URL url = FileLocator.find((Bundle)pluginDesc, (IPath)new Path(String.valueOf((String)pathPrefix.get(i)) + flatFilePath), null);
            if (url != null) {
                return url;
            }
            ++i;
        }
        return null;
    }

    public static void clearZipCache() {
        zipCache = new Hashtable();
    }

    public static ArrayList getPathPrefix(String locale) {
        ArrayList<String> pathPrefix = new ArrayList<String>(5);
        String ws = Platform.getWS();
        String os = Platform.getOS();
        if (locale == null) {
            locale = Platform.getNL();
        }
        if (ws != null) {
            pathPrefix.add("ws/" + ws + '/');
        }
        if (os != null && !os.equals("OS_UNKNOWN")) {
            pathPrefix.add("os/" + os + '/');
        }
        if (locale != null && locale.length() >= 5) {
            pathPrefix.add("nl/" + locale.substring(0, 2) + '/' + locale.substring(3, 5) + '/');
        }
        if (locale != null && locale.length() >= 2) {
            pathPrefix.add("nl/" + locale.substring(0, 2) + '/');
        }
        pathPrefix.add("");
        return pathPrefix;
    }

    public static Set findTopicPaths(Bundle pluginDesc, String directory, String locale) {
        HashSet ret = new HashSet();
        ResourceLocator.findTopicPaths(pluginDesc, directory, locale, ret);
        return ret;
    }

    private static void findTopicPaths(Bundle pluginDesc, String directory, String locale, Set paths) {
        if (directory.endsWith("/")) {
            directory = directory.substring(0, directory.length() - 1);
        }
        ArrayList pathPrefix = ResourceLocator.getPathPrefix(locale);
        int i = 0;
        while (i < pathPrefix.size()) {
            Enumeration entries;
            String path = pathPrefix.get(i) + directory;
            if (path.length() == 0) {
                path = "/";
            }
            if ((entries = pluginDesc.getEntryPaths(path)) != null) {
                while (entries.hasMoreElements()) {
                    String topicPath = (String)entries.nextElement();
                    if (topicPath.endsWith("/")) {
                        ResourceLocator.findTopicPaths(pluginDesc, topicPath, locale, paths);
                        continue;
                    }
                    paths.add(topicPath);
                }
            }
            ++i;
        }
    }

    public static String getErrorPath(String pluginId, String file, String locale) {
        String resolvedPath = String.valueOf(pluginId) + '/' + file;
        try {
            ArrayList pathPrefix = ResourceLocator.getPathPrefix(locale);
            Bundle bundle = Platform.getBundle((String)pluginId);
            URL rawURL = ResourceLocator.find(bundle, (IPath)new Path(file), pathPrefix);
            URL resolvedURL = FileLocator.resolve((URL)rawURL);
            resolvedPath = String.valueOf(resolvedPath) + ", URL = " + resolvedURL.toExternalForm();
        }
        catch (Exception exception) {}
        return resolvedPath;
    }

    static class ProducerDescriptor {
        private IHelpContentProducer producer;
        private IConfigurationElement config;

        public ProducerDescriptor(IConfigurationElement config) {
            this.config = config;
        }

        public boolean matches(String refId) {
            IExtension ex = this.config.getDeclaringExtension();
            String id = ex.getUniqueIdentifier();
            return id != null && id.equals(refId);
        }

        public void reset() {
            this.producer = null;
        }

        public IHelpContentProducer getProducer() {
            if (this.producer == null) {
                try {
                    Object o = this.config.createExecutableExtension("producer");
                    if (o instanceof IHelpContentProducer) {
                        this.producer = (IHelpContentProducer)o;
                    }
                }
                catch (CoreException ce) {
                    HelpPlugin.logError("Exception occurred creating help content producer for plug-in " + this.config.getContributor().getName() + ".", ce);
                }
            }
            return this.producer;
        }
    }
}

